<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/style2.css">
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
            <a href="home_page.php">
                <img alt="logo" id="img" src="./site_img/logo.png">
            </a>
        </div>
        <script>
            if (document.getElementById("search-bar").value) {
                return true;
            } else {
                return false;
            }
        </script>

        <div class="search">
            <form action="search.php" onsubmit="return check_search_value()">
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

<?php

session_start();
if (isset($_SESSION['email'])) {
    $email = $_SESSION['email'];
    //echo "Email: " . $email;
    if (isset($_REQUEST['error'])) {
        $error_otp = $_REQUEST['error'];
    } else {
        $error_otp = "";
    }
    ?>
    <div class="form-box">
        <h1 style="text-align: center">Verify OTP</h1>
        <p>An OTP has been sent to <b> <?php echo $email ?>. </b></p><br>
        <p> If you did not receive the OTP, you can:</p>
        <button type="button" onclick="changeEmail()">Change Email</button>
        or
        <button type="button" onclick="resendEmail()">Resend Email</button>
        <br>
        <br>
        <form action="otp_confirm.php" method="post" onsubmit="return validdata()">
            <label for="otp">OTP:</label>
            <br>
            <input type="text" id="otp" name="otp" style="width:100%; font-size: larger" required>
            <br>
            <p id="otpError"><?php echo $error_otp ?></p>
            <br>
            <input type="submit" value="Confirm OTP" name="Confirm_OTP" id="Confirm_OTP" style="width:100%"></button>
        </form>
    </div>
    <?php
} else {
    header("Location:register.php");
}
?>
<footer style="margin-top: 100px">
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
</body>
</html>
