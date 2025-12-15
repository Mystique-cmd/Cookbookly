<?php
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
        echo "Error: " . mysqli_error($link);
    }

} else {
    // If no search query, display a message or redirect
    $search_query = ""; // Clear query for display
}


mysqli_close($link);

?>
<?php include 'includes/header.php'; ?>

<main>
    <h1>Search Results for "<?php echo htmlspecialchars($search_query); ?>"</h1>
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
            <p>No recipes found matching your search.</p>
        <?php endif; ?>
    </div>
</main>

<?php include 'includes/footer.php'; ?>
