<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true || $_SESSION["role"] !== 'admin'){
    header("location: ../login.php");
    exit;
}

require_once "../includes/db.php";

if (isset($_GET["id"]) && !empty(trim($_GET["id"]))) {
    $id = trim($_GET["id"]);

    // Before deleting the health condition, remove any references from recipes and user_health_preferences
    // Set health_condition_id to NULL in recipes table
    $sql_update_recipes = "UPDATE recipes SET health_condition_id = NULL WHERE health_condition_id = ?";
    if ($stmt_update_recipes = mysqli_prepare($link, $sql_update_recipes)) {
        mysqli_stmt_bind_param($stmt_update_recipes, "i", $id);
        mysqli_stmt_execute($stmt_update_recipes);
        mysqli_stmt_close($stmt_update_recipes);
    }

    // Delete associated user health preferences
    $sql_delete_user_prefs = "DELETE FROM user_health_preferences WHERE health_id = ?";
    if ($stmt_delete_user_prefs = mysqli_prepare($link, $sql_delete_user_prefs)) {
        mysqli_stmt_bind_param($stmt_delete_user_prefs, "i", $id);
        mysqli_stmt_execute($stmt_delete_user_prefs);
        mysqli_stmt_close($stmt_delete_user_prefs);
    }

    // Now delete the health condition itself
    $sql = "DELETE FROM health_conditions WHERE id = ?";
    if ($stmt = mysqli_prepare($link, $sql)) {
        mysqli_stmt_bind_param($stmt, "i", $id);
        if (mysqli_stmt_execute($stmt)) {
            header("location: health_conditions.php");
            exit();
        }
        mysqli_stmt_close($stmt);
    }
    mysqli_close($link);
}
?>
