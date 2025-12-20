<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: ../login.php");
    exit;
}

require_once "../includes/db.php";

$user_id = $_SESSION["id"];

if (isset($_GET["id"]) && !empty(trim($_GET["id"]))) {
    $id = trim($_GET["id"]);

    // Verify the recipe belongs to the logged-in user before proceeding with deletion
    $sql_verify_owner = "SELECT id FROM recipes WHERE id = ? AND user_id = ?";
    if ($stmt_verify_owner = mysqli_prepare($link, $sql_verify_owner)) {
        mysqli_stmt_bind_param($stmt_verify_owner, "ii", $id, $user_id);
        mysqli_stmt_execute($stmt_verify_owner);
        mysqli_stmt_store_result($stmt_verify_owner);
        if (mysqli_stmt_num_rows($stmt_verify_owner) == 0) {
            echo "Recipe not found or you don't have permission to delete it.";
            exit();
        }
        mysqli_stmt_close($stmt_verify_owner);
    }

    // Delete associated recipe ingredients
    $sql_ingredients = "DELETE FROM recipe_ingredients WHERE recipe_id = ?";
    if ($stmt_ingredients = mysqli_prepare($link, $sql_ingredients)) {
        mysqli_stmt_bind_param($stmt_ingredients, "i", $id);
        mysqli_stmt_execute($stmt_ingredients);
        mysqli_stmt_close($stmt_ingredients);
    }

    // Delete associated recipe steps
    $sql_steps = "DELETE FROM recipe_steps WHERE recipe_id = ?";
    if ($stmt_steps = mysqli_prepare($link, $sql_steps)) {
        mysqli_stmt_bind_param($stmt_steps, "i", $id);
        mysqli_stmt_execute($stmt_steps);
        mysqli_stmt_close($stmt_steps);
    }

    // Delete associated favorites
    $sql_favorites = "DELETE FROM favorites WHERE recipe_id = ?";
    if ($stmt_favorites = mysqli_prepare($link, $sql_favorites)) {
        mysqli_stmt_bind_param($stmt_favorites, "i", $id);
        mysqli_stmt_execute($stmt_favorites);
        mysqli_stmt_close($stmt_favorites);
    }

    // Delete associated reviews
    $sql_reviews = "DELETE FROM reviews WHERE recipe_id = ?";
    if ($stmt_reviews = mysqli_prepare($link, $sql_reviews)) {
        mysqli_stmt_bind_param($stmt_reviews, "i", $id);
        mysqli_stmt_execute($stmt_reviews);
        mysqli_stmt_close($stmt_reviews);
    }

    // Delete associated recently viewed
    $sql_recently_viewed = "DELETE FROM recently_viewed WHERE recipe_id = ?";
    if ($stmt_recently_viewed = mysqli_prepare($link, $sql_recently_viewed)) {
        mysqli_stmt_bind_param($stmt_recently_viewed, "i", $id);
        mysqli_stmt_execute($stmt_recently_viewed);
        mysqli_stmt_close($stmt_recently_viewed);
    }

    // Now delete the recipe itself
    $sql = "DELETE FROM recipes WHERE id = ? AND user_id = ?";
    if ($stmt = mysqli_prepare($link, $sql)) {
        mysqli_stmt_bind_param($stmt, "ii", $id, $user_id);
        if (mysqli_stmt_execute($stmt)) {
            header("location: my_recipes.php");
            exit();
        }
        mysqli_stmt_close($stmt);
    }
    mysqli_close($link);
} else {
    echo "ID parameter is missing.";
    exit();
}
?>
