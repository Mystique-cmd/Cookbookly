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

    // Delete associated user activity
    $sql_activity = "DELETE FROM user_activity WHERE user_id = ?";
    if ($stmt_activity = mysqli_prepare($link, $sql_activity)) {
        mysqli_stmt_bind_param($stmt_activity, "i", $id);
        mysqli_stmt_execute($stmt_activity);
        mysqli_stmt_close($stmt_activity);
    }

    // Delete associated recently viewed recipes
    $sql_recently_viewed = "DELETE FROM recently_viewed WHERE user_id = ?";
    if ($stmt_recently_viewed = mysqli_prepare($link, $sql_recently_viewed)) {
        mysqli_stmt_bind_param($stmt_recently_viewed, "i", $id);
        mysqli_stmt_execute($stmt_recently_viewed);
        mysqli_stmt_close($stmt_recently_viewed);
    }

    // Delete associated user health preferences
    $sql_user_prefs = "DELETE FROM user_health_preferences WHERE user_id = ?";
    if ($stmt_user_prefs = mysqli_prepare($link, $sql_user_prefs)) {
        mysqli_stmt_bind_param($stmt_user_prefs, "i", $id);
        mysqli_stmt_execute($stmt_user_prefs);
        mysqli_stmt_close($stmt_user_prefs);
    }

    // Delete associated reviews
    $sql_reviews = "DELETE FROM reviews WHERE user_id = ?";
    if ($stmt_reviews = mysqli_prepare($link, $sql_reviews)) {
        mysqli_stmt_bind_param($stmt_reviews, "i", $id);
        mysqli_stmt_execute($stmt_reviews);
        mysqli_stmt_close($stmt_reviews);
    }

    // Delete associated favorites
    $sql_favorites = "DELETE FROM favorites WHERE user_id = ?";
    if ($stmt_favorites = mysqli_prepare($link, $sql_favorites)) {
        mysqli_stmt_bind_param($stmt_favorites, "i", $id);
        mysqli_stmt_execute($stmt_favorites);
        mysqli_stmt_close($stmt_favorites);
    }

    // Delete associated contact messages
    $sql_contact = "DELETE FROM contact_messages WHERE user_id = ?";
    if ($stmt_contact = mysqli_prepare($link, $sql_contact)) {
        mysqli_stmt_bind_param($stmt_contact, "i", $id);
        mysqli_stmt_execute($stmt_contact);
        mysqli_stmt_close($stmt_contact);
    }

    // Delete associated recipe steps and ingredients for recipes posted by this user
    // First, get all recipe_ids for this user
    $recipe_ids_to_delete = [];
    $sql_get_recipes = "SELECT id FROM recipes WHERE user_id = ?";
    if ($stmt_get_recipes = mysqli_prepare($link, $sql_get_recipes)) {
        mysqli_stmt_bind_param($stmt_get_recipes, "i", $id);
        mysqli_stmt_execute($stmt_get_recipes);
        $result_get_recipes = mysqli_stmt_get_result($stmt_get_recipes);
        while ($row = mysqli_fetch_assoc($result_get_recipes)) {
            $recipe_ids_to_delete[] = $row['id'];
        }
        mysqli_stmt_close($stmt_get_recipes);
    }

    if (!empty($recipe_ids_to_delete)) {
        $in_clause = implode(',', array_fill(0, count($recipe_ids_to_delete), '?'));

        // Delete recipe steps
        $sql_delete_steps = "DELETE FROM recipe_steps WHERE recipe_id IN ($in_clause)";
        if ($stmt_delete_steps = mysqli_prepare($link, $sql_delete_steps)) {
            mysqli_stmt_bind_param($stmt_delete_steps, str_repeat('i', count($recipe_ids_to_delete)), ...$recipe_ids_to_delete);
            mysqli_stmt_execute($stmt_delete_steps);
            mysqli_stmt_close($stmt_delete_steps);
        }

        // Delete recipe ingredients
        $sql_delete_ingredients = "DELETE FROM recipe_ingredients WHERE recipe_id IN ($in_clause)";
        if ($stmt_delete_ingredients = mysqli_prepare($link, $sql_delete_ingredients)) {
            mysqli_stmt_bind_param($stmt_delete_ingredients, str_repeat('i', count($recipe_ids_to_delete)), ...$recipe_ids_to_delete);
            mysqli_stmt_execute($stmt_delete_ingredients);
            mysqli_stmt_close($stmt_delete_ingredients);
        }

        // Finally, delete the recipes themselves
        $sql_delete_recipes = "DELETE FROM recipes WHERE user_id = ?";
        if ($stmt_delete_recipes = mysqli_prepare($link, $sql_delete_recipes)) {
            mysqli_stmt_bind_param($stmt_delete_recipes, "i", $id);
            mysqli_stmt_execute($stmt_delete_recipes);
            mysqli_stmt_close($stmt_delete_recipes);
        }
    }


    // Now delete the user itself
    $sql = "DELETE FROM users WHERE id = ?";
    if ($stmt = mysqli_prepare($link, $sql)) {
        mysqli_stmt_bind_param($stmt, "i", $id);
        if (mysqli_stmt_execute($stmt)) {
            header("location: users.php");
            exit();
        }
        mysqli_stmt_close($stmt);
    }
    mysqli_close($link);
}
?>
