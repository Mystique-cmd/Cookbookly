<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

// Initialize the session
session_start();

require_once "includes/db.php";

$search_query = "";
$recipes = [];

if (isset($_GET["query"]) && !empty(trim($_GET["query"]))) {
    $search_query = trim($_GET["query"]);

    // Sanitize the search query to prevent SQL injection
    $sanitized_query = mysqli_real_escape_string($link, $search_query);

    // Fetch recipes matching the search query in title or description
    $sql_recipes = "SELECT id, title, description, recipe_image FROM recipes ";
    $sql_recipes .= "WHERE (title LIKE '%" . $sanitized_query . "%' OR description LIKE '%" . $sanitized_query . "%') AND status = 'active' ";
    $sql_recipes .= "ORDER BY created_at DESC";

    $result_recipes = mysqli_query($link, $sql_recipes);
    if ($result_recipes) {
        $recipes = mysqli_fetch_all($result_recipes, MYSQLI_ASSOC);
    } else {
        echo "<div class='alert alert-danger'>Error: " . mysqli_error($link) . "</div>";
    }

} else {
    // If no search query, display a message or redirect
    $search_query = ""; // Clear query for display
}


mysqli_close($link);

?>
<?php include 'includes/header.php'; ?>

<main id="main-content" class="py-5">
    <div class="container">
        <h1 class="text-center mb-4">Search Results for "<?php echo htmlspecialchars($search_query); ?>"</h1>
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
                <p class="text-center">No recipes found matching your search.</p>
            <?php endif; ?>
        </div>
    </div>
</main>

<?php include 'includes/footer.php'; ?>
