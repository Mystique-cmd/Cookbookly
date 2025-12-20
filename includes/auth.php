<?php
session_start();

function isLoggedIn() {
    return isset($_SESSION['user_id']);
}

function redirectIfNotLoggedIn($redirect_url = 'login.php') {
    if (!isLoggedIn()) {
        header("Location: " . $redirect_url);
        exit();
    }
}

function loginUser($user_id, $username, $role) {
    $_SESSION['user_id'] = $user_id;
    $_SESSION['username'] = $username;
    $_SESSION['role'] = $role;
}

function logoutUser() {
    session_unset();
    session_destroy();
}
?>