<?php
// Initialize the session
session_start();

require_once "includes/db.php";

$recipe = null;
$ingredients = [];
$steps = [];
$related_recipes = [];

if (isset($_GET["id"]) && !empty(trim($_GET["id"]))) {
    $recipe_id = trim($_GET["id"]);

    // Fetch recipe details
    $sql_recipe = "SELECT recipes.*, categories.name AS category_name, users.username AS author_name ";
    $sql_recipe .= "FROM recipes ";
    $sql_recipe .= "LEFT JOIN categories ON recipes.category_id = categories.id ";
    $sql_recipe .= "LEFT JOIN users ON recipes.user_id = users.id ";
    $sql_recipe .= "WHERE recipes.id = ?";

    if ($stmt_recipe = mysqli_prepare($link, $sql_recipe)) {
        mysqli_stmt_bind_param($stmt_recipe, "i", $recipe_id);
        if (mysqli_stmt_execute($stmt_recipe)) {
            $result_recipe = mysqli_stmt_get_result($stmt_recipe);
            if (mysqli_num_rows($result_recipe) == 1) {
                $recipe = mysqli_fetch_assoc($result_recipe);

                // Update views count
                $sql_update_views = "UPDATE recipes SET views_count = views_count + 1 WHERE id = ?";
                if ($stmt_update_views = mysqli_prepare($link, $sql_update_views)) {
                    mysqli_stmt_bind_param($stmt_update_views, "i", $recipe_id);
                    mysqli_stmt_execute($stmt_update_views);
                    mysqli_stmt_close($stmt_update_views);
                }

                // Add to recently viewed if user is logged in
                if (isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true) {
                    $user_id = $_SESSION["id"];
                    // Check if already viewed
                    $sql_check_viewed = "SELECT id FROM recently_viewed WHERE user_id = ? AND recipe_id = ?";
                    if ($stmt_check_viewed = mysqli_prepare($link, $sql_check_viewed)) {
                        mysqli_stmt_bind_param($stmt_check_viewed, "ii", $user_id, $recipe_id);
                        mysqli_stmt_execute($stmt_check_viewed);
                        mysqli_stmt_store_result($stmt_check_viewed);
                        if (mysqli_stmt_num_rows($stmt_check_viewed) == 0) {
                            $sql_insert_view = "INSERT INTO recently_viewed (user_id, recipe_id) VALUES (?, ?)";
                            if ($stmt_insert_view = mysqli_prepare($link, $sql_insert_view)) {
                                mysqli_stmt_bind_param($stmt_insert_view, "ii", $user_id, $recipe_id);
                                mysqli_stmt_execute($stmt_insert_view);
                                mysqli_stmt_close($stmt_insert_view);
                            }
                        }
                        mysqli_stmt_close($stmt_check_viewed);
                    }

                    // Add activity for viewing recipe
                    $activity_type = "viewed_recipe";
                    $activity_details = "Viewed recipe: " . $recipe['title'];
                    $sql_insert_activity = "INSERT INTO user_activity (user_id, activity_type, activity_details) VALUES (?, ?, ?)";
                    if ($stmt_insert_activity = mysqli_prepare($link, $sql_insert_activity)) {
                        mysqli_stmt_bind_param($stmt_insert_activity, "iss", $user_id, $activity_type, $activity_details);
                        mysqli_stmt_execute($stmt_insert_activity);
                        mysqli_stmt_close($stmt_insert_activity);
                    }
                }

            } else {
                echo "Recipe not found.";
                exit();
            }
        }
        mysqli_stmt_close($stmt_recipe);
    }

    // Fetch ingredients
    $sql_ingredients = "SELECT name, quantity, unit, notes FROM recipe_ingredients WHERE recipe_id = ? ORDER BY ingredient_order ASC";
    if ($stmt_ingredients = mysqli_prepare($link, $sql_ingredients)) {
        mysqli_stmt_bind_param($stmt_ingredients, "i", $recipe_id);
        if (mysqli_stmt_execute($stmt_ingredients)) {
            $result_ingredients = mysqli_stmt_get_result($stmt_ingredients);
            $ingredients = mysqli_fetch_all($result_ingredients, MYSQLI_ASSOC);
        }
        mysqli_stmt_close($stmt_ingredients);
    }

    // Fetch steps
    $sql_steps = "SELECT step_number, instruction FROM recipe_steps WHERE recipe_id = ? ORDER BY step_number ASC";
    if ($stmt_steps = mysqli_prepare($link, $sql_steps)) {
        mysqli_stmt_bind_param($stmt_steps, "i", $recipe_id);
        if (mysqli_stmt_execute($stmt_steps)) {
            $result_steps = mysqli_stmt_get_result($stmt_steps);
            $steps = mysqli_fetch_all($result_steps, MYSQLI_ASSOC);
        }
        mysqli_stmt_close($stmt_steps);
    }

    // Fetch related recipes (e.g., same category, excluding current recipe)
    if ($recipe && !empty($recipe['category_id'])) {
        $sql_related = "SELECT id, title, recipe_image FROM recipes WHERE category_id = ? AND id != ? LIMIT 4";
        if ($stmt_related = mysqli_prepare($link, $sql_related)) {
            mysqli_stmt_bind_param($stmt_related, "ii", $recipe['category_id'], $recipe_id);
            if (mysqli_stmt_execute($stmt_related)) {
                $result_related = mysqli_stmt_get_result($stmt_related);
                $related_recipes = mysqli_fetch_all($result_related, MYSQLI_ASSOC);
            }
            mysqli_stmt_close($stmt_related);
        }
    }

} else {
    echo "Recipe ID parameter is missing.";
    exit();
}

mysqli_close($link);

?>
<?php include 'includes/header.php'; ?>

<main>
    <?php if ($recipe) : ?>
        <div class="recipe-detail">
            <h1><?php echo $recipe['title']; ?></h1>
            <p class="recipe-meta">
                Category: <a href="category.php?id=<?php echo $recipe['category_id']; ?>"><?php echo $recipe['category_name']; ?></a> |
                Author: <?php echo $recipe['author_name']; ?> |
                Prep Time: <?php echo $recipe['prep_time']; ?> | Cook Time: <?php echo $recipe['cook_time']; ?> |
                Servings: <?php echo $recipe['servings']; ?> |
                Views: <?php echo $recipe['views_count']; ?>
            </p>

            <?php if (!empty($recipe['recipe_image'])) : ?>
                <img src="uploads/recipes/<?php echo $recipe['recipe_image']; ?>" alt="<?php echo $recipe['title']; ?>" class="recipe-image">
            <?php endif; ?>

            <h2>Description</h2>
            <p><?php echo nl2br($recipe['description']); ?></p>

            <h2>Ingredients</h2>
            <ul>
                <?php if (!empty($ingredients)) : ?>
                    <?php foreach ($ingredients as $ingredient) : ?>
                        <li><?php echo $ingredient['quantity'] . " " . $ingredient['unit'] . " " . $ingredient['name']; ?><?php echo !empty($ingredient['notes']) ? " (" . $ingredient['notes'] . ")" : ''; ?></li>
                    <?php endforeach; ?>
                <?php else : ?>
                    <li>Ingredients not available.</li>
                <?php endif; ?>
            </ul>

            <h2>Instructions</h2>
            <ol>
                <?php if (!empty($steps)) : ?>
                    <?php foreach ($steps as $step) : ?>
                        <li><?php echo $step['instruction']; ?></li>
                    <?php endforeach; ?>
                <?php else : ?>
                    <li>Instructions not available.</li>
                <?php endif; ?>
            </ol>

            <?php if (!empty($recipe['nutrition_info'])) : // Assuming 'nutrition_info' is a column in recipes table ?>
                <h2>Nutrition Information</h2>
                <p><?php echo nl2br($recipe['nutrition_info']); ?></p>
            <?php endif; ?>

            <?php if (isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true) : ?>
                <div class="user-actions">
                    <form action="add_favorite.php" method="post" style="display:inline;">
                        <input type="hidden" name="recipe_id" value="<?php echo $recipe['id']; ?>">
                        <button type="submit">Add to Favorites</button>
                    </form>
                    <form action="submit_review.php" method="get" style="display:inline;">
                        <input type="hidden" name="recipe_id" value="<?php echo $recipe['id']; ?>">
                        <button type="submit">Write a Review</button>
                    </form>
                </div>
            <?php endif; ?>

            <?php if (!empty($related_recipes)) : ?>
                <h2>Related Recipes</h2>
                <div class="related-recipes">
                    <?php foreach ($related_recipes as $related) : ?>
                        <div class="related-recipe-item">
                            <a href="recipe.php?id=<?php echo $related['id']; ?>">
                                <img src="uploads/recipes/<?php echo $related['recipe_image']; ?>" alt="<?php echo $related['title']; ?>" width="150">
                                <p><?php echo $related['title']; ?></p>
                            </a>
                        </div>
                    <?php endforeach; ?>
                </div>
            <?php endif; ?>

        </div>
    <?php else : ?>
        <p>Recipe not found.</p>
    <?php endif; ?>
</main>

<?php include 'includes/footer.php'; ?>
