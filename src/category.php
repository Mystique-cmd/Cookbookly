<?php
// Initialize the session
session_start();

require_once "includes/db.php";

$category_name = "";
$recipes = [];

if (isset($_GET["id"]) && !empty(trim($_GET["id"]))) {
    $category_id = trim($_GET["id"]);

    // Fetch category name
    $sql_category_name = "SELECT name FROM categories WHERE id = ?";
    if ($stmt_category_name = mysqli_prepare($link, $sql_category_name)) {
        mysqli_stmt_bind_param($stmt_category_name, "i", $category_id);
        if (mysqli_stmt_execute($stmt_category_name)) {
            $result_category_name = mysqli_stmt_get_result($stmt_category_name);
            if (mysqli_num_rows($result_category_name) == 1) {
                $category = mysqli_fetch_assoc($result_category_name);
                $category_name = $category['name'];
            } else {
                echo "Category not found.";
                exit();
            }
        }
        mysqli_stmt_close($stmt_category_name);
    }

    // Fetch recipes for this category
    $sql_recipes = "SELECT id, title, description, recipe_image FROM recipes WHERE category_id = ? AND status = 'active' ORDER BY created_at DESC";
    if ($stmt_recipes = mysqli_prepare($link, $sql_recipes)) {
        mysqli_stmt_bind_param($stmt_recipes, "i", $category_id);
        if (mysqli_stmt_execute($stmt_recipes)) {
            $result_recipes = mysqli_stmt_get_result($stmt_recipes);
            $recipes = mysqli_fetch_all($result_recipes, MYSQLI_ASSOC);
        }
        mysqli_stmt_close($stmt_recipes);
    }

} else {
    echo "Category ID parameter is missing.";
    exit();
}

mysqli_close($link);

?>
<?php include 'includes/header.php'; ?>

<main id="main-content" class="py-5">
    <div class="container">
        <h1 class="text-center mb-4">Recipes in <?php echo $category_name; ?></h1>
        <div class="row">
            <?php if (!empty($recipes)) : ?>
                <?php foreach ($recipes as $recipe) : ?>
                    <div class="col-md-4 mb-4">
                        <div class="card shadow-sm">
                            <a href="recipe.php?id=<?php echo $recipe['id']; ?>">
                                <img src="uploads/recipes/<?php echo $recipe['recipe_image']; ?>" alt="<?php echo $recipe['title']; ?>" class="card-img-top">
                                <div class="card-body">
                                    <h3 class="card-title"><?php echo $recipe['title']; ?></h3>
                                    <p class="card-text"><?php echo substr($recipe['description'], 0, 100); ?>...</p>
                                </div>
                            </a>
                        </div>
                    </div>
                <?php endforeach; ?>
            <?php else : ?>
                <p class="text-center">No recipes found in this category.</p>
            <?php endif; ?>
        </div>
    </div>
</main>

<?php include 'includes/footer.php'; ?>
