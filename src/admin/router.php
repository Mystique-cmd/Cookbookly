<?php
// admin/router.php
$request_uri = $_SERVER['REQUEST_URI'];
$request_path = parse_url($request_uri, PHP_URL_PATH);

// Remove /admin prefix
$request_path = str_replace('/admin', '', $request_path);

switch ($request_path) {
    case '/':
    case '/index':
        require 'index.php';
        break;
    case '/recipes':
        require 'recipes.php';
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
    case '/categories':
        require 'categories.php';
        break;
    case '/edit_category':
        require 'edit_category.php';
        break;
    case '/delete_category':
        require 'delete_category.php';
        break;
    case '/users':
        require 'users.php';
        break;
    case '/edit_user':
        require 'edit_user.php';
        break;
    case '/delete_user':
        require 'delete_user.php';
        break;
    case '/health_conditions':
        require 'health_conditions.php';
        break;
    case '/edit_health_condition':
        require 'edit_health_condition.php';
        break;
    case '/delete_health_condition':
        require 'delete_health_condition.php';
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
