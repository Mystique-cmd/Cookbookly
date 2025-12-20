<?php
// router.php
$request_uri = $_SERVER["REQUEST_URI"];

// Remove query string for routing purposes
$request_path = parse_url($request_uri, PHP_URL_PATH);

// Serve static files directly
if (preg_match('/\.(?:png|jpg|jpeg|gif|css|js)$/', $request_path)) {
    return false;
}

// Custom routing for specific pages
if ($request_path === '/register') {
    require 'register.php';
} elseif ($request_path === '/login') {
    require 'login.php';
} else {
    // Fallback to index.php for all other requests
    require 'index.php';
}
?>