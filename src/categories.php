<?php
// Initialize the session
session_start();

require_once "includes/db.php";

$categories = [];

// Fetch all categories
$sql = "SELECT id, name, description FROM categories WHERE status = 1 ORDER BY name ASC";
$result = mysqli_query($link, $sql);
$categories = mysqli_fetch_all($result, MYSQLI_ASSOC);

mysqli_close($link);

?>
<?php include 'includes/header.php'; ?>

<main>
    <h1>Recipe Categories</h1>
    <div class="category-list">
        <?php if (!empty($categories)) : ?>
            <?php foreach ($categories as $category) : ?>
                <div class="category-item">
                    <a href="category.php?id=<?php echo $category['id']; ?>">
                        <img src="src/assets/images/placeholder_category.png" alt="<?php echo $category['name']; ?>" width="200">
                        <h3><?php echo $category['name']; ?></h3>
                        <p><?php echo $category['description']; ?></p>
                    </a>
                </div>
            <?php endforeach; ?>
        <?php else : ?>
            <p>No categories found.</p>
        <?php endif; ?>
    </div>
</main>

<?php include 'includes/footer.php'; ?>
