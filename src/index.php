<?php include 'includes/header.php'; ?>

<main id="main-content">
    <!-- Hero Section -->
    <section class="hero py-5 text-center bg-light" aria-labelledby="hero-heading">
        <div class="container">
            <h1 id="hero-heading" class="display-4 fw-bold">Find Your Favorite Recipe</h1>
            <p class="lead">Discover thousands of recipes from around the world.</p>
            <form action="/search.php" method="get" class="input-group mb-3 mx-auto" style="max-width: 500px;" role="search">
                <input type="text" name="query" placeholder="Search for a recipe..." aria-label="Search for a recipe" class="form-control">
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
    </section>

    <!-- Featured Recipes Section -->
    <section class="featured-recipes py-5" aria-labelledby="featured-recipes-heading">
        <div class="container">
            <h2 id="featured-recipes-heading" class="text-center mb-4">Featured Recipes</h2>
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="card shadow-sm">
                        <img data-src="https://placehold.co/400x300" alt="Recipe Image" class="lazy-load card-img-top">
                        <div class="card-body">
                            <h3 class="card-title"><a href="/recipe.php?id=1">Spaghetti Carbonara</a></h3>
                            <p class="card-text">A classic Italian pasta dish.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card shadow-sm">
                        <img data-src="https://placehold.co/400x300" alt="Recipe Image" class="lazy-load card-img-top">
                        <div class="card-body">
                            <h3 class="card-title"><a href="/recipe.php?id=2">Chicken Tikka Masala</a></h3>
                            <p class="card-text">Creamy and flavorful Indian curry.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card shadow-sm">
                        <img data-src="https://placehold.co/400x300" alt="Recipe Image" class="lazy-load card-img-top">
                        <div class="card-body">
                            <h3 class="card-title"><a href="/recipe.php?id=3">Chocolate Chip Cookies</a></h3>
                            <p class="card-text">The perfect homemade cookies.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Recipe of the Day Section -->
    <section class="recipe-of-the-day py-5 bg-light" aria-labelledby="recipe-of-the-day-heading">
        <div class="container">
            <h2 id="recipe-of-the-day-heading" class="text-center mb-4">Recipe of the Day</h2>
            <div class="card mb-3 shadow-sm">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img data-src="https://placehold.co/600x400" alt="Recipe Image" class="lazy-load img-fluid rounded-start w-100 h-100 object-fit-cover">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h3 class="card-title"><a href="/recipe.php?id=4">Classic Beef Stew</a></h3>
                            <p class="card-text">A hearty and comforting beef stew, perfect for a cold day.</p>
                            <a href="/recipe.php?id=4" class="btn btn-primary">View Recipe</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Categories Section -->
    <section class="categories py-5" aria-labelledby="categories-heading">
        <div class="container">
            <h2 id="categories-heading" class="text-center mb-4">Browse by Category</h2>
            <div class="d-flex flex-wrap justify-content-center gap-2">
                <a href="/category.php?name=Italian" class="btn btn-outline-primary">Italian</a>
                <a href="/category.php?name=Indian" class="btn btn-outline-primary">Indian</a>
                <a href="/category.php?name=Desserts" class="btn btn-outline-primary">Desserts</a>
                <a href="/category.php?name=American" class="btn btn-outline-primary">American</a>
            </div>
        </div>
    </section>

    <!-- Call to Action Section -->
    <section class="cta py-5 bg-primary text-white text-center" aria-labelledby="cta-heading">
        <div class="container">
            <h2 class="mb-3">Share Your Own Recipes</h2>
            <p class="lead">Join our community and share your culinary creations with the world.</p>
            <a href="/register" class="btn btn-light btn-lg mt-3">Join Now</a>
        </div>
    </section>
</main>

<?php include 'includes/footer.php'; ?>