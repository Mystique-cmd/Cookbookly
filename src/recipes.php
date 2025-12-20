<?php include 'includes/header.php'; ?>

<main id="main-content">
    <!-- Hero Section for Recipes -->
    <section class="hero" aria-labelledby="recipes-hero-heading">
        <div class="container">
            <h1 id="recipes-hero-heading">Explore Our Delicious Recipes</h1>
            <p>Find your next favorite meal from our extensive collection.</p>
            <form action="/search.php" method="get" class="search-bar" role="search">
                <input type="text" name="query" placeholder="Search all recipes..." aria-label="Search all recipes">
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
    </section>

    <!-- Latest Recipes Section -->
    <section class="featured-recipes" aria-labelledby="latest-recipes-heading">
        <div class="container">
            <h2 id="latest-recipes-heading">Latest Recipes</h2>
            <div class="recipe-cards">
                <div class="recipe-card">
                    <img data-src="https://placehold.co/400x300" alt="Recipe Image" class="lazy-load">
                    <h3><a href="/recipe.php?id=5">Creamy Tomato Pasta</a></h3>
                    <p>A quick and easy weeknight dinner.</p>
                </div>
                <div class="recipe-card">
                    <img data-src="https://placehold.co/400x300" alt="Recipe Image" class="lazy-load">
                    <h3><a href="/recipe.php?id=6">Vegetable Stir-fry</a></h3>
                    <p>Healthy and flavorful, customizable with your favorite veggies.</p>
                </div>
                <div class="recipe-card">
                    <img data-src="https://placehold.co/400x300" alt="Recipe Image" class="lazy-load">
                    <h3><a href="/recipe.php?id=7">Lemon Herb Roasted Chicken</a></h3>
                    <p>Juicy chicken with aromatic herbs and zesty lemon.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Call to Action Section -->
    <section class="cta" aria-labelledby="cta-heading-recipes">
        <div class="container">
            <h2 id="cta-heading-recipes">Can't find what you're looking for?</h2>
            <p>Submit your own recipe and share it with the community!</p>
            <a href="/user/add_recipe.php" class="btn btn-primary">Submit Your Recipe</a>
        </div>
    </section>
</main>

<?php include 'includes/footer.php'; ?>
