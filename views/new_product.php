<?php require_once 'layouts/header.php'; ?>
<main>
<div class="new-product">

    <form action="../controllers/new_product.php" method="post" enctype="multipart/form-data">

    <div class="form-group">
        <label for="title">Title:</label><br>
        <input type="text" class="form-control" id="title" aria-describedby="emailHelp" name="name">
    </div>
    <br>
    <div class="form-group">
        <label for="description">Description</label>
        <textarea name="description" id="description" cols="30" rows="10"></textarea>
    </div>
    <br>
    <div class="form-group">
        <label for="image">Image</label>
        <input type="file" name="image" id="choose-file">
    </div>
    <br>
        <button type="submit" class="new-button">Create</button>

    </form>
    
</div>
</main>
