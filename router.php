<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// router.php
$request_uri = $_SERVER['REQUEST_URI'];
$request_path = parse_url($request_uri, PHP_URL_PATH);

// Serve static files directly from the src/assets folder
if (preg_match('/^\/src\/assets\//', $request_path)) {
    $asset_path = '.' . $request_path;
    if (file_exists($asset_path)) {
        return false;
    }
}

// Route requests to the appropriate controller
switch ($request_path) {
    case '/':
        require __DIR__ . '/src/index.php';
        break;
    case '/recipes':
        require __DIR__ . '/src/recipes.php';
        break;
    case '/recipe':
        require __DIR__ . '/src/recipe.php';
        break;
    case '/categories':
        require __DIR__ . '/src/categories.php';
        break;
    case '/category':
        require __DIR__ . '/src/category.php';
        break;
    case '/about':
        require __DIR__ . '/src/about.php';
        break;
    case '/contact':
        require __DIR__ . '/src/contact.php';
        break;
    case '/login':
        require __DIR__ . '/src/login.php';
        break;
    case '/register':
        require __DIR__ . '/src/register.php';
        break;
    case '/search':
        require __DIR__ . '/src/search.php';
        break;
    default:
        // Handle admin and user routes
        if (preg_match('/^\/admin\//', $request_path)) {
            require __DIR__ . '/src/admin/router.php';
        } elseif (preg_match('/^\/user\//', $request_path)) {
            require __DIR__ . '/src/user/router.php';
        } else {
            http_response_code(404);
            require __DIR__ . '/src/404.php';
        }
        break;
}