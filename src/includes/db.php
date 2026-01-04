<?php
// includes/db.php

// Hardcode database credentials for testing purposes
$servername = 'localhost';
$username = 'admin';
$password = 'password'; // <--- IMPORTANT: REPLACE THIS WITH YOUR REAL DATABASE PASSWORD
$dbname = 'cookbookly';

// The rest of the original .env loading and parsing code is commented out or removed
// as we are bypassing it for this test.
/*
// Function to parse .env file
function parseEnv($filePath) {
    // ... (original parseEnv function content)
}

// Load environment variables
$dotenv = __DIR__ . '/../.env';
if (file_exists($dotenv)) {
    parseEnv($dotenv);
}
*/
// The variables below will now use the hardcoded values above instead of $_ENV
// $servername = $_ENV['DB_HOST'] ?? 'localhost';
// $username = $_ENV['DB_USERNAME'] ?? 'root';
// $password = $_ENV['DB_PASSWORD'] ?? '';
// $dbname = $_ENV['DB_DATABASE'] ?? 'recipe_website';

$link = mysqli_connect($servername, $username, $password, $dbname);

if (!$link) {
    die("Connection failed: " . mysqli_connect_error());
}
