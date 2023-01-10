<?php
include_once("connect.php");
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Index Page</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/nav_bar.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/home_page.css">
</head>
<body>
<main>
    <div class="hero-img">
    </div>
</main>
<section class="popular category">
    <div class="category-tag">Popular</div>
    <div class="image-container">
        <div class="category-img"></div>
        <div class="category-img"></div>
        <div class="category-img"></div>
        <div class="category-img"></div>
        <div class="category-img"></div>
    </div>
</section>
<section class="latest category">
    <div class="category-tag">Latest</div>
    <div class="image-container">
        <div class="category-img"></div>
        <div class="category-img"></div>
        <div class="category-img"></div>
        <div class="category-img"></div>
        <div class="category-img"></div>
    </div>
</section>
<script>
    // change hero img
    let i = 0;

    function changeHeroImg() {
        const colorArray = ["red", "pink", "black"]; //php retrieve here
        heroImg.style.background = colorArray[colorArray[i] % colorArray.length];
        i = (i + 1) % colorArray.length;
        heroImg.style.background = colorArray[i];
    }

    const heroImg = document.querySelector("main");
    setInterval(changeHeroImg, 5000);
</script>
</body>
</html>
