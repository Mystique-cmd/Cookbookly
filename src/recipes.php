<?php include 'includes/header.php'; ?>

<main id="main-content">
    <!-- Hero Section for Recipes -->
    <section class="hero py-5 text-center bg-light" aria-labelledby="recipes-hero-heading">
        <div class="container">
            <h1 id="recipes-hero-heading" class="display-4 fw-bold">Explore Our Delicious Recipes</h1>
            <p class="lead">Find your next favorite meal from our extensive collection.</p>
            <form action="/search.php" method="get" class="input-group mb-3 mx-auto" style="max-width: 500px;" role="search">
                <input type="text" name="query" placeholder="Search all recipes..." aria-label="Search all recipes" class="form-control">
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
    </section>

    <!-- Latest Recipes Section -->
    <section class="featured-recipes py-5" aria-labelledby="latest-recipes-heading">
        <div class="container">
            <h2 id="latest-recipes-heading" class="text-center mb-4">Latest Recipes</h2>
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="card shadow-sm">
                        <img src="https://plus.unsplash.com/premium_photo-1701013639121-db90aefda5f2?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y3JlYW15JTIwdG9tYXRvJTIwcGFzdGF8ZW58MHx8MHx8fDA%3D" alt="Recipe Image" class="lazy-load card-img-top">
                        <div class="card-body">
                            <h3 class="card-title"><a href="/recipe.php?id=5">Creamy Tomato Pasta</a></h3>
                            <p class="card-text">A quick and easy weeknight dinner.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card shadow-sm">
                        <img src="https://images.unsplash.com/photo-1758979690131-11e2aa0b142b?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dmVnZXRhYmxlJTIwc3RpciUyMGZyeXxlbnwwfHwwfHx8MA%3D%3D" alt="Recipe Image" class="lazy-load card-img-top">
                        <div class="card-body">
                            <h3 class="card-title"><a href="/recipe.php?id=6">Vegetable Stir-fry</a></h3>
                            <p class="card-text">Healthy and flavorful, customizable.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card shadow-sm">
                        <img src="https://plus.unsplash.com/premium_photo-1668616816737-ac363cc4db2e?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bGVtb24lMjBoZXJiJTIwcm9hc3RlZCUyMGNoaWNrZW58ZW58MHx8MHx8fDA%3D" alt="Recipe Image" class="lazy-load card-img-top">
                        <div class="card-body">
                            <h3 class="card-title"><a href="/recipe.php?id=7">Lemon Herb Roasted Chicken</a></h3>
                            <p class="card-text">Juicy chicken with aromatic herbs and zesty lemon.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Call to Action Section -->
    <section class="cta py-5 bg-primary text-white text-center" aria-labelledby="cta-heading-recipes">
        <div class="container">
            <h2 id="cta-heading-recipes" class="mb-3">Can't find what you're looking for?</h2>
            <p class="lead">Submit your own recipe and share it with the community!</p>
            <a href="/user/add_recipe" class="btn btn-light btn-lg mt-3">Submit Your Recipe</a>
        </div>
    </section>
</main>

<?php include 'includes/footer.php'; ?>
