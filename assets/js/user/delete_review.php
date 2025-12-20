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
    $review_id = trim($_GET["id"]);

    // Delete the review entry, ensuring it belongs to the logged-in user
    $sql = "DELETE FROM reviews WHERE id = ? AND user_id = ?";
    if ($stmt = mysqli_prepare($link, $sql)) {
        mysqli_stmt_bind_param($stmt, "ii", $review_id, $user_id);
        if (mysqli_stmt_execute($stmt)) {
            header("location: my_reviews.php");
            exit();
        } else {
            echo "Something went wrong. Please try again later.";
        }
        mysqli_stmt_close($stmt);
    }
    mysqli_close($link);
} else {
    echo "Review ID parameter is missing.";
    exit();
}
?>
