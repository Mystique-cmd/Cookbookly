<?php
require_once '../includes/auth_check.php';
check_admin_access();

require_once "../includes/db.php";

if (isset($_GET["id"]) && !empty(trim($_GET["id"]))) {
    $id = trim($_GET["id"]);
    $sql = "DELETE FROM categories WHERE id = ?";
    if ($stmt = mysqli_prepare($link, $sql)) {
        mysqli_stmt_bind_param($stmt, "i", $id);
        if (mysqli_stmt_execute($stmt)) {
            header("location: categories.php");
            exit();
        }
        mysqli_stmt_close($stmt);
    }
}
?>
