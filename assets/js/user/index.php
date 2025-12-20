<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: ../login.php");
    exit;
}
?>
<?php include 'includes/header.php'; ?>

<main>
    <h2>Welcome to your Dashboard</h2>
    <p>Here you can manage your recipes, favorites, and profile.</p>
</main>

<?php include 'includes/footer.php'; ?>