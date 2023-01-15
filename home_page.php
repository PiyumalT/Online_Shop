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
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/nav_bar.css">
    <link rel="stylesheet" href="./css/footer.css">
    <link rel="stylesheet" href="./css/home_page.css">
</head>
<body>

<?php

function create_header(): void
{
    session_start();
    $logged_in = false;
    if (isset($_COOKIE['user_id'])) {
        $logged_in = true;
    }
    ?>
    <button class="menu-icon" aria-expanded="false">menu icon</button>
    <nav>
        <div class="logo">LOGO</div>
        <div class="search_box">
            <label for="search_bar"></label>
            <input type="text" name="search_bar" id="search_bar">
            <i class="search-icon">S</i>
        </div>
        <div class="cart">cart</div>
        <?php
        if ($logged_in) {
            echo "<div class=\"account\">account</div>";
        } else {
            echo "<div class>Log in / Sign Up</div>";
        }
        ?>
    </nav>
    <?php
}

create_header();
?>


<main>
    <div class="hero-img">
    </div>
</main>
<section class="popular category">
    <h2 class="category-tag">Popular</h2>
    <div class="image-container">
        <?php
        for ($i = 0; $i < 5; $i++) {
            echo "<div class='category-img'><img src='item-image.jpg' alt='item-$i'></div>";
        }
        ?>
    </div>
</section>
<section class="latest category">
    <h2 class="category-tag">Latest</h2>
    <div class="image-container">
        <?php
        for ($i = 0; $i < 5; $i++) {
            echo "<div class='category-img'><img src='item-image.jpg' alt='item-$i'></div>";
        }
        ?>
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
