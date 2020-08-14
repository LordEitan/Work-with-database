<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="../Css/Fire.css">
    <script src="../Jquery/jquery-3.4.1.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Audiowide&display=swap" rel="stylesheet">
</head>
<body>
<header>
    <div id="logo">
        <a href="../index.php"><span>UPG</span></a>
    </div>
</header>

<main>

<div id="big-card">
        <?php foreach ($allproducts as $product) {?>
            <div class="card">
                <img src="../uploads/<?=$product['image']?>" height="300px" width="300px" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><?=$product['name']?></h5>
                    <p class="card-text"><?=$product['description']?></p>
                    <a href="#" class="button">Go somewhere</a>
                </div>
            </div>
        <?php }?>
</div>
</main>


</body>
</html>