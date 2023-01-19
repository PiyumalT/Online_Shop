<!DOCTYPE html>
<html>
<head>
    <title>Order Success</title>
    </title>
    <link rel="icon" type="image/png" href="site_img/icon.png">
    <style>
        /* Center the container on the page */
        .container {
            display: flex;
            align-items: center;
            justify-content: center;
            
        }

        /* Add some padding and styling to the content */
        .content {
            padding: 20px;
            background-color: #f2f2f2;
            text-align: center;
            font-size: large;
            background-color: rgba(0, 0, 0, 0.8); /* Transparent background */
            color: #cad3dc;
        }
        body {
            background-color: #3e5986;
            background: url(site_img/s-l1600.jpg);

        }

    </style>

    <link rel="stylesheet" href="css/nav_bar.css">
    <link href="./css/navigation.css" rel="stylesheet"/>
    <link crossorigin="anonymous" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
          integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
          referrerpolicy="no-referrer" rel="stylesheet"/>
    <link rel="stylesheet" href="./css/footer.css">
</head>
<body>
<div class="main">
    <div class="navbar">
        <div class="icon">
            <a href="index.php">
                <img alt="logo" id="img" src="./site_img/logo.png">
            </a>
        </div>
        <div class="search">
            <form action="search.php">
                <input class="search" id="search-bar" name="search" placeholder="Search Items" type="search">
                <button class="btn"><label for="search-bar"><i class="fa-solid fa-magnifying-glass"></i></label>
                </button>
            </form>
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
<br>
<br>
<div class="container">
    <div class="content">
        <?php
        //check user loged in
        if (isset($_COOKIE['user_id'])) {
            $user_id = $_COOKIE['user_id'];
        } else {
            $user_id = null;
            header("Location: login.php");
            exit;
        }
        if (isset($_POST['make_payment'])){
        $order_id = $_POST['order_id'];
        $order_total = $_POST['price'];
        $c_date = date('Y-m-d H:i:s');
        include "connect.php";

        if (true){//if payment success
        $sql = "UPDATE orders SET price = '$order_total', `date` = '$c_date', `paid` = '1' WHERE order_id = $order_id";
        $result = mysqli_query($connect, $sql);
        if ($result){
        ?>
        <h1>Order Success</h1>
        <p>Thank you for your purchase!</p>

        <hr>
        <h2>Order Details</h2>
        <p>Order Number:# <?php echo $order_id ?></p>
        <p>Order Date: <?php echo $c_date ?></p>
        <p>Your order deliver within 7 days</p><br>
        <p><a href="index.php"> Go To Home </a></p>
    </div>
</div>
<?php
} else {
    ?>
    <h1>Order Failed</h1>
    <hr>
    <h2>Try again later</h2>
    <p><a href="index.php"> Go To Home </a></p>
    </div>
    </div>

    <?php
}

}

} ?>
<footer style="margin-top: 100px">
    <div class="footer-container">
        <div class="footer-left">
            <nav>
                <a href="contactus.html">Contact Us</a>
                <ul>
                    <li><a href="contactus.html">FB</a></li>
                    <li><a href="contactus.html">YT</a></li>
                    <li><a href="contactus.html">Email</a></li>
                </ul>
            </nav>
        </div>
        <div class="footer-center">
            <nav>
              <a href="FAQ.html">Shopping</a>
                <ul>
                    <li><a href="FAQ.html">FAQ</a></li>
                    <li><a href="FAQ.html">Payment Method</a></li>
                    <li><a href="FAQ.html">User Guide</a></li>
                </ul></ul>
            </nav>
        </div>
        <div class="footer-right">
            <nav>
             <a href="about.html">Company</a>
                <ul>
                    <li><a href="about.html">Terms and Conditions</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="about.html">Privacy Policy</a></li>
                </ul>
            </nav>
        </div>

    </div>
    <div class="bottom-tx">
        <p>Copyright © 2021 Nayantha Yasiru, Tharindu Piyumal, Nimesha Kavindi, Pathum Sanjana,Siva Tharsan</p>
    </div>

</footer>

</body>
</html>

