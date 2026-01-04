<?php
session_start();

function check_access($required_role) {
    if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true) {
        header("location: /login");
        exit;
    }

    if (!isset($_SESSION["role"]) || $_SESSION["role"] !== $required_role) {
        // Redirect to a generic unauthorized page or home page
        header("location: /404"); // Assuming 404.php can serve as an unauthorized page
        exit;
    }
}

function check_admin_access() {
    check_access('admin');
}

function check_user_access() {
    // Users and Admins can access user pages
    if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true) {
        header("location: /login");
        exit;
    }
    if (!isset($_SESSION["role"]) || ($_SESSION["role"] !== 'user' && $_SESSION["role"] !== 'admin')) {
        header("location: /404");
        exit;
    }
}
?>