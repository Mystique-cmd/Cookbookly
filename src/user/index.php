<?php
require_once '../includes/auth_check.php';
check_user_access();
?>
<?php include '../includes/header.php'; ?>

<main class="container mt-4">
    <h2 class="mb-4">User Dashboard</h2>
    <div class="row">
        <div class="col-md-6 col-lg-4 mb-4">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-book"></i> My Recipes</h5>
                    <p class="card-text">View and manage recipes you have submitted.</p>
                    <a href="my_recipes.php" class="btn btn-primary">Go to My Recipes</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-4 mb-4">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-heart"></i> Favorite Recipes</h5>
                    <p class="card-text">Browse your saved favorite recipes.</p>
                    <a href="favorites.php" class="btn btn-primary">Go to Favorites</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-4 mb-4">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-user-circle"></i> My Profile</h5>
                    <p class="card-text">Update your personal information and preferences.</p>
                    <a href="profile.php" class="btn btn-primary">Edit Profile</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-4 mb-4">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-notes-medical"></i> Health Preferences</h5>
                    <p class="card-text">Manage your dietary and health-related preferences.</p>
                    <a href="health_preferences.php" class="btn btn-primary">Edit Preferences</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-4 mb-4">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-comment-dots"></i> My Reviews</h5>
                    <p class="card-text">View and manage your submitted recipe reviews.</p>
                    <a href="my_reviews.php" class="btn btn-primary">Go to My Reviews</a>
                </div>
            </div>
        </div>
    </div>
</main>

<?php include '../includes/footer.php'; ?>