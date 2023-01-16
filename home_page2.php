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
//    else {
//    // No one is logged in (guest)
//    }
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
                echo '<div class="category-img"><img src="item_pics/' . $item_id . '.jpg"></div></a>';
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
                echo '<div class="category-img"><img src="item_pics/' . $item_id . '.jpg"></div></a>';
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
