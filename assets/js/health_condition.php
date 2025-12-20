<?php
// Initialize the session
session_start();

require_once "includes/db.php";

$condition_name = "";
$recipes = [];

if (isset($_GET["id"]) && !empty(trim($_GET["id"]))) {
    $health_condition_id = trim($_GET["id"]);

    // Fetch health condition name
    $sql_condition_name = "SELECT name FROM health_conditions WHERE id = ?";
    if ($stmt_condition_name = mysqli_prepare($link, $sql_condition_name)) {
        mysqli_stmt_bind_param($stmt_condition_name, "i", $health_condition_id);
        if (mysqli_stmt_execute($stmt_condition_name)) {
            $result_condition_name = mysqli_stmt_get_result($stmt_condition_name);
            if (mysqli_num_rows($result_condition_name) == 1) {
                $condition = mysqli_fetch_assoc($result_condition_name);
                $condition_name = $condition['name'];
            } else {
                echo "Health condition not found.";
                exit();
            }
        }
        mysqli_stmt_close($stmt_condition_name);
    }

    // Fetch recipes for this health condition
    $sql_recipes = "SELECT id, title, description, recipe_image FROM recipes WHERE health_condition_id = ? AND status = 'active' ORDER BY created_at DESC";
    if ($stmt_recipes = mysqli_prepare($link, $sql_recipes)) {
        mysqli_stmt_bind_param($stmt_recipes, "i", $health_condition_id);
        if (mysqli_stmt_execute($stmt_recipes)) {
            $result_recipes = mysqli_stmt_get_result($stmt_recipes);
            $recipes = mysqli_fetch_all($result_recipes, MYSQLI_ASSOC);
        }
        mysqli_stmt_close($stmt_recipes);
    }

} else {
    echo "Health Condition ID parameter is missing.";
    exit();
}

mysqli_close($link);

?>
<?php include 'includes/header.php'; ?>

<main>
    <h1>Recipes for <?php echo $condition_name; ?></h1>
    <div class="recipe-grid">
        <?php if (!empty($recipes)) : ?>
            <?php foreach ($recipes as $recipe) : ?>
                <div class="recipe-card">
                    <a href="recipe.php?id=<?php echo $recipe['id']; ?>">
                        <img src="uploads/recipes/<?php echo $recipe['recipe_image']; ?>" alt="<?php echo $recipe['title']; ?>">
                        <h3><?php echo $recipe['title']; ?></h3>
                        <p><?php echo substr($recipe['description'], 0, 100); ?>...</p>
                    </a>
                </div>
            <?php endforeach; ?>
        <?php else : ?>
            <p>No recipes found for this health condition.</p>
        <?php endif; ?>
    </div>
</main>

<?php include 'includes/footer.php'; ?>
