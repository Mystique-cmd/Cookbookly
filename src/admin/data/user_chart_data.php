<?php
header('Content-Type: application/json');

// This is a placeholder. In a real application, you would fetch this data from your database.
$data = [
    'labels' => ['January', 'February', 'March', 'April', 'May', 'June'],
    'values' => [10, 20, 15, 25, 30, 45]
];

echo json_encode($data);
