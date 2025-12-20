<?php
$servername ="localhost";
$username = "root";
$password = "";
$dbname = "recipe_website";

$link = mysqli_connect("localhost", "root", "", "recipe_website");

if (!$link) {
    die("Connection failed: " . mysqli_connect_error());
}

echo "<h2>✔ Database connection successful!</h2>";

?>
