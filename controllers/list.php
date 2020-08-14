<?php

require_once './services/db_connection.php';

$result = $pdo->query('SELECT * FROM products');
$products = $result->fetchAll();

$categories = "SELECT * FROM categories";

$allcategories = $pdo->query($categories);

$categories = $allcategories->fetchAll();
