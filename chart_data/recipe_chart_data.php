<?php
header('Content-Type: application/json');

// This is a placeholder. In a real application, you would fetch this data from your database.
$data = [
    'labels' => ['Appetizers', 'Main Courses', 'Desserts', 'Soups', 'Salads'],
    'values' => [12, 19, 3, 5, 2]
];

echo json_encode($data);
