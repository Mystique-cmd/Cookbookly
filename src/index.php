<?php include 'includes/header.php'; ?>

<main id="main-content">
    <!-- Hero Section -->
    <section class="hero" aria-labelledby="hero-heading">
        <div class="container">
            <h1 id="hero-heading">Find Your Favorite Recipe</h1>
            <p>Discover thousands of recipes from around the world.</p>
            <form action="/search.php" method="get" class="search-bar" role="search">
                <input type="text" name="query" placeholder="Search for a recipe..." aria-label="Search for a recipe">
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
    </section>

    <!-- Featured Recipes Section -->
    <section class="featured-recipes" aria-labelledby="featured-recipes-heading">
        <div class="container">
            <h2 id="featured-recipes-heading">Featured Recipes</h2>
            <div class="recipe-cards">
                <div class="recipe-card">
                    <img data-src="https://placehold.co/400x300" alt="Recipe Image" class="lazy-load">
                    <h3><a href="/recipe.php?id=1">Spaghetti Carbonara</a></h3>
                    <p>A classic Italian pasta dish.</p>
                </div>
                <div class="recipe-card">
                    <img data-src="https://placehold.co/400x300" alt="Recipe Image" class="lazy-load">
                    <h3><a href="/recipe.php?id=2">Chicken Tikka Masala</a></h3>
                    <p>Creamy and flavorful Indian curry.</p>
                </div>
                <div class="recipe-card">
                    <img data-src="https://placehold.co/400x300" alt="Recipe Image" class="lazy-load">
                    <h3><a href="/recipe.php?id=3">Chocolate Chip Cookies</a></h3>
                    <p>The perfect homemade cookies.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Recipe of the Day Section -->
    <section class="recipe-of-the-day" aria-labelledby="recipe-of-the-day-heading">
        <div class="container">
            <h2 id="recipe-of-the-day-heading">Recipe of the Day</h2>
            <div class="recipe-card">
                <img data-src="https://placehold.co/600x400" alt="Recipe Image" class="lazy-load">
                <div class="recipe-content">
                    <h3><a href="/recipe.php?id=4">Classic Beef Stew</a></h3>
                    <p>A hearty and comforting beef stew, perfect for a cold day.</p>
                    <a href="/recipe.php?id=4" class="btn btn-primary">View Recipe</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Categories Section -->
    <section class="categories" aria-labelledby="categories-heading">
        <div class="container">
            <h2 id="categories-heading">Browse by Category</h2>
            <div class="category-links">
                <a href="/category.php?name=Italian" class="category-link">Italian</a>
                <a href="/category.php?name=Indian" class="category-link">Indian</a>
                <a href="/category.php?name=Desserts" class="category-link">Desserts</a>
                <a href="/category.php?name=American" class="category-link">American</a>
            </div>
        </div>
    </section>

    <!-- Call to Action Section -->
    <section class="cta" aria-labelledby="cta-heading">
        <div class="container">
            <h2>Share Your Own Recipes</h2>
            <p>Join our community and share your culinary creations with the world.</p>
            <a href="/register.php" class="btn btn-primary">Join Now</a>
        </div>
    </section>
</main>

<?php include 'includes/footer.php'; ?>