<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: ../login.php");
    exit;
}

require_once "../includes/db.php";

$user_id = $_SESSION["id"];

$title_err = $description_err = $category_id_err = $prep_time_err = $cook_time_err = $servings_err = $recipe_image_err = $ingredients_err = $instructions_err = "";

// Fetch categories and health conditions for dropdowns
$sql_categories = "SELECT id, name FROM categories";
$result_categories = mysqli_query($link, $sql_categories);
$categories = mysqli_fetch_all($result_categories, MYSQLI_ASSOC);

$sql_health_conditions = "SELECT id, name FROM health_conditions";
$result_health_conditions = mysqli_query($link, $sql_health_conditions);
$health_conditions = mysqli_fetch_all($result_health_conditions, MYSQLI_ASSOC);

// Process form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $title = trim($_POST["title"]);
    $description = trim($_POST["description"]);
    $category_id = trim($_POST["category_id"]);
    $health_condition_id = isset($_POST["health_condition_id"]) && !empty($_POST["health_condition_id"]) ? trim($_POST["health_condition_id"]) : NULL;
    $prep_time = trim($_POST["prep_time"]);
    $cook_time = trim($_POST["cook_time"]);
    $servings = trim($_POST["servings"]);
    $ingredients = trim($_POST["ingredients"]);
    $instructions = trim($_POST["instructions"]);

    // Validate inputs (basic validation, enhance as needed)
    if (empty($title)) $title_err = "Please enter a title.";
    if (empty($description)) $description_err = "Please enter a description.";
    if (empty($category_id)) $category_id_err = "Please select a category.";
    if (empty($prep_time)) $prep_time_err = "Please enter preparation time.";
    if (empty($cook_time)) $cook_time_err = "Please enter cooking time.";
    if (empty($servings)) $servings_err = "Please enter number of servings.";
    if (empty($ingredients)) $ingredients_err = "Please enter ingredients.";
    if (empty($instructions)) $instructions_err = "Please enter instructions.";

    $recipe_image = ""; // Default empty image name
    // Handle image upload
    if (isset($_FILES["recipe_image"]) && $_FILES["recipe_image"]["error"] == 0) {
        $target_dir = "../uploads/recipes/";
        $imageFileType = strtolower(pathinfo($_FILES["recipe_image"]["name"],PATHINFO_EXTENSION));
        $new_image_name = uniqid() . "." . $imageFileType;
        $target_file = $target_dir . $new_image_name;

        $check = getimagesize($_FILES["recipe_image"]["tmp_name"]);
        if($check !== false) {
            if (move_uploaded_file($_FILES["recipe_image"]["tmp_name"], $target_file)) {
                $recipe_image = $new_image_name;
            } else {
                $recipe_image_err = "Sorry, there was an error uploading your file.";
            }
        } else {
            $recipe_image_err = "File is not an image.";
        }
    } else {
        $recipe_image_err = "Please upload a recipe image.";
    }

    // Check input errors before inserting in database
    if (empty($title_err) && empty($description_err) && empty($category_id_err) && empty($prep_time_err) && empty($cook_time_err) && empty($servings_err) && empty($recipe_image_err) && empty($ingredients_err) && empty($instructions_err)) {

        $sql = "INSERT INTO recipes (user_id, title, description, category_id, health_condition_id, prep_time, cook_time, servings, recipe_image, ingredients, instructions) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        if ($stmt = mysqli_prepare($link, $sql)) {
            mysqli_stmt_bind_param($stmt, "isssissssss", $user_id, $title, $description, $category_id, $health_condition_id, $prep_time, $cook_time, $servings, $recipe_image, $ingredients, $instructions);
            if (mysqli_stmt_execute($stmt)) {
                header("location: my_recipes.php");
                exit();
            } else {
                echo "Something went wrong. Please try again later.";
            }
            mysqli_stmt_close($stmt);
        }
    }
    mysqli_close($link);
}

?>
<?php include 'includes/header.php'; ?>

<main>
    <h2>Add New Recipe</h2>
    <form action="add_recipe.php" method="post" enctype="multipart/form-data">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" value="<?php echo $title ?? ''; ?>" required>
        <span><?php echo $title_err; ?></span>

        <label for="description">Description:</label>
        <textarea id="description" name="description" required><?php echo $description ?? ''; ?></textarea>
        <span><?php echo $description_err; ?></span>

        <label for="category">Category:</label>
        <select id="category" name="category_id" required>
            <option value="">Select Category</option>
            <?php foreach ($categories as $category) : ?>
                <option value="<?php echo $category['id']; ?>" <?php echo (isset($category_id) && $category_id == $category['id']) ? 'selected' : ''; ?>><?php echo $category['name']; ?></option>
            <?php endforeach; ?>
        </select>
        <span><?php echo $category_id_err; ?></span>

        <label for="health_condition">Health Condition (optional):</label>
        <select id="health_condition" name="health_condition_id">
            <option value="">Select Health Condition</option>
            <?php foreach ($health_conditions as $health_condition) : ?>
                <option value="<?php echo $health_condition['id']; ?>" <?php echo (isset($health_condition_id) && $health_condition_id == $health_condition['id']) ? 'selected' : ''; ?>><?php echo $health_condition['name']; ?></option>
            <?php endforeach; ?>
        </select>

        <label for="prep_time">Preparation Time:</label>
        <input type="text" id="prep_time" name="prep_time" value="<?php echo $prep_time ?? ''; ?>" required>
        <span><?php echo $prep_time_err; ?></span>

        <label for="cook_time">Cooking Time:</label>
        <input type="text" id="cook_time" name="cook_time" value="<?php echo $cook_time ?? ''; ?>" required>
        <span><?php echo $cook_time_err; ?></span>

        <label for="servings">Servings:</label>
        <input type="number" id="servings" name="servings" value="<?php echo $servings ?? ''; ?>" required>
        <span><?php echo $servings_err; ?></span>

        <label for="recipe_image">Recipe Image:</label>
        <input type="file" id="recipe_image" name="recipe_image" required>
        <span><?php echo $recipe_image_err; ?></span>

        <label for="ingredients">Ingredients (one per line):</label>
        <textarea id="ingredients" name="ingredients" required><?php echo $ingredients ?? ''; ?></textarea>
        <span><?php echo $ingredients_err; ?></span>

        <label for="instructions">Instructions (one step per line):</label>
        <textarea id="instructions" name="instructions" required><?php echo $instructions ?? ''; ?></textarea>
        <span><?php echo $instructions_err; ?></span>

        <button type="submit">Add Recipe</button>
    </form>
</main>

<?php include 'includes/footer.php'; ?>
