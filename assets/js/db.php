<?php
$servername ="localhost";
$username = "root";
$password = "password";
$dbname = "Cookbookly";

$link = mysqli_connect("localhost", "root", "password", "Cookbookly");

if (!$link) {
    die("Connection failed: " . mysqli_connect_error());
}

echo "<h2>✔ Database connection successful!</h2>";

?>