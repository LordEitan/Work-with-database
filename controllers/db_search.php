<?php

include_once '../services/db_connection.php';

$allproducts = "SELECT * FROM products WHERE category_id = :category_id ";

$cat = $pdo->prepare($allproducts);

$cat ->execute(['category_id'=>$_GET['products']]);

$allproducts = $cat->fetchAll();

include_once '../views/found_products.php';

