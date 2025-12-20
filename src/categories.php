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

<main id="main-content">
    <!-- Hero Section for Categories -->
    <section class="hero" aria-labelledby="categories-hero-heading">
        <div class="container">
            <h1 id="categories-hero-heading">Discover Recipe Categories</h1>
            <p>Explore a wide variety of cuisines and meal types.</p>
            <form action="/search.php" method="get" class="search-bar" role="search">
                <input type="text" name="query" placeholder="Search categories..." aria-label="Search categories">
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
    </section>

    <!-- Categories Listing Section -->
    <section class="featured-recipes" aria-labelledby="all-categories-heading">
        <div class="container">
            <h2 id="all-categories-heading">All Categories</h2>
            <div class="recipe-cards"> <!-- Reusing recipe-cards for consistent styling -->
                <?php if (!empty($categories)) : ?>
                    <?php foreach ($categories as $category) : ?>
                        <div class="recipe-card">
                            <a href="category.php?id=<?php echo $category['id']; ?>">
                                <img data-src="assets/images/placeholder_category.png" alt="<?php echo $category['name']; ?>" class="lazy-load">
                                <h3><?php echo $category['name']; ?></h3>
                                <p><?php echo $category['description']; ?></p>
                            </a>
                        </div>
                    <?php endforeach; ?>
                <?php else : ?>
                    <p>No categories found.</p>
                <?php endif; ?>
            </div>
        </div>
    </section>

    <!-- Call to Action Section -->
    <section class="cta" aria-labelledby="cta-heading-categories">
        <div class="container">
            <h2 id="cta-heading-categories">Have a new category idea?</h2>
            <p>Suggest a new category to expand our collection!</p>
            <a href="/contact.php" class="btn btn-primary">Suggest Category</a>
        </div>
    </section>
</main>

<?php include 'includes/footer.php'; ?>
