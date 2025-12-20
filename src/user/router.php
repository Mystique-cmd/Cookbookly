<?php
// user/router.php
$request_uri = $_SERVER['REQUEST_URI'];
$request_path = parse_url($request_uri, PHP_URL_PATH);

// Remove /user prefix
$request_path = str_replace('/user', '', $request_path);

switch ($request_path) {
    case '/':
    case '/index':
        require 'index.php';
        break;
    case '/my_recipes':
        require 'my_recipes.php';
        break;
    case '/add_recipe':
        require 'add_recipe.php';
        break;
    case '/edit_recipe':
        require 'edit_recipe.php';
        break;
    case '/delete_recipe':
        require 'delete_recipe.php';
        break;
    case '/my_reviews':
        require 'my_reviews.php';
        break;
    case '/edit_review':
        require 'edit_review.php';
        break;
    case '/delete_review':
        require 'delete_review.php';
        break;
    case '/favorites':
        require 'favorites.php';
        break;
    case '/remove_favorite':
        require 'remove_favorite.php';
        break;
    case '/health_preferences':
        require 'health_preferences.php';
        break;
    case '/profile':
        require 'profile.php';
        break;
    case '/logout':
        require 'logout.php';
        break;
    default:
        http_response_code(404);
        require '../404.php';
        break;
}
