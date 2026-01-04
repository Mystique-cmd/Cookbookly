<?php
require_once '../includes/auth_check.php';
check_admin_access();
?>
<?php include '../includes/header.php'; ?>

<main class="container mt-4">
    <h2 class="mb-4">Admin Dashboard</h2>
    <div class="row">
        <div class="col-md-6 col-lg-4 mb-4">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-utensils"></i> Manage Recipes</h5>
                    <p class="card-text">View, add, edit, or delete recipes.</p>
                    <a href="recipes.php" class="btn btn-primary">Go to Recipes</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-4 mb-4">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-list"></i> Manage Categories</h5>
                    <p class="card-text">Add, edit, or delete recipe categories.</p>
                    <a href="categories.php" class="btn btn-primary">Go to Categories</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-4 mb-4">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-users"></i> Manage Users</h5>
                    <p class="card-text">View, edit, or delete user accounts.</p>
                    <a href="users.php" class="btn btn-primary">Go to Users</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-4 mb-4">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-heartbeat"></i> Manage Health Conditions</h5>
                    <p class="card-text">Add, edit, or delete health conditions.</p>
                    <a href="health_conditions.php" class="btn btn-primary">Go to Health Conditions</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-4 mb-4">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-chart-line"></i> Analytics</h5>
                    <p class="card-text">View recipe and user statistics.</p>
                    <a href="data/recipe_chart_data.php" class="btn btn-primary">View Analytics</a>
                </div>
            </div>
        </div>
    </div>
</main>

<?php include '../includes/footer.php'; ?>