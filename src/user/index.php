<?php
require_once '../includes/auth_check.php';
check_user_access();
?>
<?php include '../includes/header.php'; ?>

<main>
    <h2>Welcome to your Dashboard</h2>
    <p>Here you can manage your recipes, favorites, and profile.</p>
</main>

<?php include '../includes/footer.php'; ?>