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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
          integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
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
        <img src="" alt="">
    </div>
</main>
<section class="popular category">
    <h2 class="category-tag">Popular</h2>
    <!--    <button class="left-btn .hide"><i class="fa-solid fa-arrow-left"></i></button>-->
    <div class="image-container">
        <?php
        for ($i = 0; $i < 5; $i++) {
            echo "<div class='category-img'> <img src='./item-image.jpg' alt='item-$i'></div>";
        }
        ?>
    </div>
    <!--    <button class="right-btn"><i class="fa-solid fa-arrow-right"></i></button>-->
</section>
<section class="latest category">
    <h2 class="category-tag">Latest</h2>
    <!--    <button class="left-btn .hide"><i class="fa-solid fa-arrow-left"></i></button>-->
    <div class="image-container">
        <?php
        for ($i = 0; $i < 5; $i++) {
            echo "<div class='category-img'><img src='./item_pics/6.jpg' alt='item-$i'></div>";
        }
        ?>
    </div>
    <!--    <button class="right-btn"><i class="fa-solid fa-arrow-right"></i></button>-->
</section>
<script>
    // change hero img
    let i = 0;
    const imgChangeTime = 5000;
    const imageRemoveTime = 500;

    function changeHeroImg() {
        const imgArray = ['./item-image.jpg', "./item_pics/6.jpg"]; //php retrieve here
        const imgElement = document.createElement("img");
        imgElement.src = imgArray[i];
        imgElement.classList.add("slide-out");
        imgElement.style.animationDelay = `${imgChangeTime - imageRemoveTime}ms`;
        imgElement.style.animationDuration = `${imageRemoveTime}ms`;
        imgElement.style.aspectRatio = `${imgElement.width} / ${imgElement.height}`
        i = (i + 1) % imgArray.length;
        heroImg.querySelector("img").remove();
        heroImg.innerHTML = "";
        heroImg.append(imgElement);
    }

    const heroImg = document.querySelector("main");
    changeHeroImg();
    setInterval(changeHeroImg, imgChangeTime);
</script>
<!--<script src="./js/home_page_carousel.js"></script>-->
</body>
</html>
