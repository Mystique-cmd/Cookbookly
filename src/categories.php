<?php
// Initialize the session
session_start();

require_once "includes/db.php";

$categories = [];

// Fetch all categories
$sql = "SELECT id, name, description, image_url FROM categories WHERE status = 1 ORDER BY name ASC";
$result = mysqli_query($link, $sql);
$categories = mysqli_fetch_all($result, MYSQLI_ASSOC);

mysqli_close($link);

?>
<?php include 'includes/header.php'; ?>

<main id="main-content">
    <!-- Hero Section for Categories -->
    <section class="hero py-5 text-center bg-light" aria-labelledby="categories-hero-heading">
        <div class="container">
            <h1 id="categories-hero-heading" class="display-4 fw-bold">Discover Recipe Categories</h1>
            <p class="lead">Explore a wide variety of cuisines and meal types.</p>
            <form action="/search.php" method="get" class="input-group mb-3 mx-auto" style="max-width: 500px;" role="search">
                <input type="text" name="query" placeholder="Search categories..." aria-label="Search categories" class="form-control">
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
    </section>

    <!-- Categories Listing Section -->
    <section class="featured-recipes py-5" aria-labelledby="all-categories-heading">
        <div class="container">
            <h2 id="all-categories-heading" class="text-center mb-4">All Categories</h2>
            <div class="row">
                <?php if (!empty($categories)) : ?>
                    <?php foreach ($categories as $category) : ?>
                        <div class="col-md-4 mb-4">
                            <div class="card shadow-sm">
                                <a href="category.php?id=<?php echo $category['id']; ?>">
                                    <img src="uploads/categories/<?php echo $category['image_url']; ?>" alt="<?php echo $category['name']; ?>" class="card-img-top">
                                    <div class="card-body">
                                        <h3 class="card-title"><?php echo $category['name']; ?></h3>
                                        <p class="card-text"><?php echo $category['description']; ?></p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    <?php endforeach; ?>
                <?php else : ?>
                    <p class="text-center">No categories found.</p>
                <?php endif; ?>
            </div>
        </div>
    </section>

    <!-- Call to Action Section -->
    <section class="cta py-5 bg-primary text-white text-center" aria-labelledby="cta-heading-categories">
        <div class="container">
            <h2 id="cta-heading-categories" class="mb-3">Have a new category idea?</h2>
            <p class="lead">Suggest a new category to expand our collection!</p>
            <a href="/register" class="btn btn-light btn-lg mt-3">Suggest Category</a>
        </div>
    </section>
</main>

<?php include 'includes/footer.php'; ?>
