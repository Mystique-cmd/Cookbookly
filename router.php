<?php
// router.php
$request_uri = $_SERVER['REQUEST_URI'];
$request_path = parse_url($request_uri, PHP_URL_PATH);

// Serve static files directly from the src/assets folder
if (preg_match('/^\/src\/assets\//', $request_path)) {
    return false;
}

// Route requests to the appropriate controller
switch ($request_path) {
    case '/':
        require 'src/index.php';
        break;
    case '/recipes':
        require 'src/recipes.php';
        break;
    case '/recipe':
        require 'src/recipe.php';
        break;
    case '/categories':
        require 'src/categories.php';
        break;
    case '/category':
        require 'src/category.php';
        break;
    case '/about':
        require 'src/about.php';
        break;
    case '/contact':
        require 'src/contact.php';
        break;
    case '/login':
        require 'src/login.php';
        break;
    case '/register':
        require 'src/register.php';
        break;
    case '/search':
        require 'src/search.php';
        break;
    default:
        // Handle admin and user routes
        if (preg_match('/^\/admin\//', $request_path)) {
            require 'src/admin/router.php';
        } elseif (preg_match('/^\/user\//', $request_path)) {
            require 'src/user/router.php';
        } else {
            http_response_code(404);
            require 'src/404.php';
        }
        break;
}