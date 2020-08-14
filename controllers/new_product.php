 <?php

require_once './services/db_connection.php';

move_uploaded_file($_FILES['image']['tmp_name'],'../uploads/' . $_FILES['image']['name']);

$query = 'INSERT INTO products (name, description, image) VALUES(:name, :description, :image)';
$product = $pdo->prepare($query);
$product->execute([
    'name' => $_POST['name'],
    'description' => $_POST['description'],
    'image' => $_FILES['image']['name'],
]);



header('location:../index.php');
