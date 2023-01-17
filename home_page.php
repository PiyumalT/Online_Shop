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
    <link href="./css/navigation.css" rel="stylesheet"/>
    <link crossorigin="anonymous" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
          integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
          referrerpolicy="no-referrer" rel="stylesheet"/>

    <style>
        footer {
            background-color: #333;
            color: #fff;
            padding: 1em;
            width: 100%;
            margin-top: 50px;
            margin-left: 0 !important;
        }

        .footer-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .footer-left {
            flex-basis: 30%;
        }

        .footer-center {
            flex-basis: 30%;
        }

        .footer-right {
            flex-basis: 30%;
        }

        footer a {
            color: #fff;
            text-decoration: none;
            margin-left: 1em;
        }

        .bottom-tx {
            /*position: fixed;*/
            /*left: 0;*/
            /*bottom: 0;*/
            width: 100%;
            background-color: #333;
            color: white;
            text-align: center;
        }


    </style>

</head>
<body>

<div class="main">
    <div class="navbar">
        <div class="icon">
            <img alt="logo" id="img" src="./site_img/logo.png">
        </div>

        <div class="search">
            <input class="srch" id="search-bar" name="search" placeholder="Search Items" type="search">
            <button class="btn"><label for="search-bar"><i class="fa-solid fa-magnifying-glass"></i></label></button>
        </div>

        <div class="menu">
            <ul>
                <li><a href="./cart.php">Cart</a></li>
                <li><a href="./account.php">Account</a></li>
                <li><a href="./logout.php">Logout</a></li>
            </ul>
        </div>

    </div>

    <div class="navbar2">
        <ul>
            <li>
                <div class="car">
                    <a href="./search.php?search=car">Car Part</a>
                </div>

            </li>

            <li>
                <div class="Motor">
                    <a href="./search.php?search=Motorcycle">Motorcycle Part</a>
                </div>
            </li>

            <li>
                <div class="other">
                    <a href="./search.php?search=other">Other Part</a>
                </div>
            </li>

            <li>
                <div class="tools">
                    <a href="./search.php?search=tools">Tools</a>
                </div>

            </li>

            <li>
                <div class="tyres">
                    <a href="./search.php?search=tyres">Tyres</a>
                </div>
            </li>

            <li>
                <div class="access">
                    <a href="./search.php?search=Accessories">Accessories</a>
                </div>
            </li>

        </ul>
    </div>
</div>


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
                $sql2 = "SELECT * FROM item WHERE item_id=$item_id ";
                $result2 = mysqli_query($connect, $sql2);
                $row2 = mysqli_fetch_assoc($result2);

                $item_price = $row2['price'];
                $item_name = $row2['name'];
                // echo "Item ID: " . $item_id . "<br>";
                echo '<a href="item_details.php?item_id=' . $item_id . '">';
                echo '<div class="category-img"><img src="item_pics/' . $item_id . '.jpg" alt="name"> 
                <div>' . $item_price . 'LKR</div> <div>' . $item_name . '</div></div></a>';
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
                $item_price = $row['price'];
                $item_name = $row['name'];
                // echo "Item ID: " . $item_id . "<br>";
                echo '<a href="item_details.php?item_id=' . $item_id . '">';
                echo '<div class="category-img"><img src="item_pics/' . $item_id . '.jpg" alt="name"> 
                <div>' . $item_price . 'LKR</div> <div>' . $item_name . '</div></div></a>';
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


<footer>
    <div class="footer-container">
        <div class="footer-left">
            <nav>
                <a href="#">Contact Us</a>
                <ul>
                    <li><a href="#">FB</a></li>
                    <li><a href="#">YT</a></li>
                    <li><a href="#">Email</a></li>
                </ul>
            </nav>
        </div>
        <div class="footer-center">
            <nav>
                <a href="#">Shopping</a>
                <ul>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Payment Method</a></li>
                    <li><a href="#">User Guide</a></li>
                </ul>
            </nav>
        </div>
        <div class="footer-right">
            <nav>
                <a href="#">Company</a>
                <ul>
                    <li><a href="#">Terms and Conditions</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                </ul>
            </nav>
        </div>

    </div>
    <div class="bottom-tx">
        <p>Copyright © 2021 Nayantha Yasiru, Tharindu Piyumal, Nimesha Kavindi, Pathum Sanjana</p>
    </div>

</footer>
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
