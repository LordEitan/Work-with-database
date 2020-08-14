
<?php include_once 'layouts/header.php'; ?>
<main>

<div class="new-product-button">
    <a href="./new_product.php" class="new-button">New product</a>
</div>

<div class="name-product">
<h1>List of products</h1>
</div>

    <form method="GET" name="category_id" action="./controllers/db_search.php">
        <div class="name-product">
            <?php foreach($categories as $category) {?>
            <ul>
                <li><input name="products" type="radio" value="<?= $category['id'] ?>"><?= $category['title'] ?></li>
            </ul>
            <?php }?>
        </div>
        <input name="filter" type="submit" value="Подобрать">
    </form>

    <div id="big-card">
        <?php foreach ($products as $product) {?>
            <div class="card">
                <img src="uploads/<?=$product['image']?>" height="300px" width="300px" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><?=$product['name']?></h5>
                    <p class="card-text"><?=$product['description']?></p>
                    <a href="#" class="button">Go somewhere</a>
                </div>
            </div>
        <?php }?>
    </div>
</main>

