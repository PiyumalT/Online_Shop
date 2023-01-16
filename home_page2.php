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
    <link rel="stylesheet" href="css/home_page2.css">
</head>
<body>

<?php

function create_header(): void
{
    session_start();
    $logged_in = false;
    if (isset($_COOKIE['user_id'])) {
        $logged_in = true;
        // User is logged in
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
        <div class="account">account</div>
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
    <div class="category-tag"><h2>Popular</h2></div>
    <div class="image-container">
        <?php
        include "connect.php";
        $sql = "SELECT item_id, COUNT(item_id) as count FROM order_details GROUP BY item_id ORDER BY count DESC LIMIT 5";
        $result = mysqli_query($connect, $sql);
        $i = 0;
        if (mysqli_num_rows($result) > 0) {
            while ($i < mysqli_num_rows($result) && $i < 5) {
                $row = mysqli_fetch_assoc($result);
                $item_id = $row['item_id'];
                // echo "Item ID: " . $item_id . "<br>";
                echo '<a href="item_details.php?item_id=' . $item_id . '">';
                echo '<div class="category-img"><img src="item_pics/' . $item_id . '.jpg" alt=""></div></a>';
                $i++;
            }
            for (; $i < 5; $i++) {
                echo '<div class="category-img">No Data</div>';
            }
        } else {
            for ($i = 0; $i < 5; $i++) {
                echo '<div class="category-img">No Data</div>';
            }
        }
        ?>
    </div>
</section>
<section class="latest category">
    <div class="category-tag"><h2>Latest</h2></div>
    <div class="image-container">
        <?php
        include "connect.php";
        $sql = "SELECT * FROM item ORDER BY item_id DESC ";
        $result = mysqli_query($connect, $sql);
        $i = 0;
        if (mysqli_num_rows($result) > 0) {
            while ($i < mysqli_num_rows($result) && $i < 5) {
                $row = mysqli_fetch_assoc($result);
                $item_id = $row['item_id'];
                // echo "Item ID: " . $item_id . "<br>";
                echo '<a href="item_details.php?item_id=' . $item_id . '">';
                echo '<div class="category-img"><img src="item_pics/' . $item_id . '.jpg" alt="name"> <div>price</div> <div>name</div></div></a>';
                $i++;
            }
            for (; $i < 5; $i++) {
                echo '<div class="category-img">No Data</div>';
            }
        } else {
            for ($i = 0; $i < 5; $i++) {
                echo '<div class="category-img">No Data</div>';
            }
        }
        ?>
    </div>
</section>
<script>
    // change hero img
    let i = 0;
    const imgChangeTime = 5000;
    const imageRemoveTime = 500;

    function changeHeroImg() {
        const imgArray = ['./item-image.jpg', "./item_pics/1.jpg"]; //php retrieve here
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

    const imgContainers = document.querySelectorAll(".category .image-container");
    // setInterval(() => {
    for (let i = 0; i < imgContainers.length; i++) {
        imgContainers[i].style.animationDelay = `${i + 1}00ms`;
        imgContainers[i].style.animationDuration = `${(Math.random() * 5) + 5}s`
    }
    // }, 5000)
</script>
</body>
</html>
