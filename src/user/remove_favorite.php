<?php
require_once '../includes/auth_check.php';
check_user_access();

require_once "../includes/db.php";

$user_id = $_SESSION["id"];

if (isset($_GET["id"]) && !empty(trim($_GET["id"]))) {
    $favorite_id = trim($_GET["id"]);

    // Delete the favorite entry, ensuring it belongs to the logged-in user
    $sql = "DELETE FROM favorites WHERE id = ? AND user_id = ?";
    if ($stmt = mysqli_prepare($link, $sql)) {
        mysqli_stmt_bind_param($stmt, "ii", $favorite_id, $user_id);
        if (mysqli_stmt_execute($stmt)) {
            header("location: favorites.php");
            exit();
        } else {
            echo "Something went wrong. Please try again later.";
        }
        mysqli_stmt_close($stmt);
    }
    mysqli_close($link);
} else {
    echo "Favorite ID parameter is missing.";
    exit();
}
?>
