<?php
require_once("code_segments/header.php");
require_once("./login_function.php");
$wrong_credentials = !loginFunction("admin");
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Log In</title>
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/nav_bar.css">
    <link rel="stylesheet" href="./css/login.css">


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
            <form action="search.php" onsubmit="return check_search_value()" class="search-form">
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
<form class="login-form" method="post">
    <h1>Log in</h1>
    <?php if ($wrong_credentials) {
        echo "<div class='wrong-credentials'>Wrong Credentials</div>";
    } ?>
    <div class="email-field"><label for="email">E-mail</label>
        <input required title="" pattern="[a-zA-Z0-9._+-]+@[a-zA-Z0-9 -]+\.[a-z]{2,}" type="email" name="email"
               id="email" style="color: white;">
        <div class="error-text"></div>
    </div>
    <div class="password-field">
        <label for="password">Password</label>
        <div class="password-input">
            <input required title="" pattern="[a-zA-Z0-9]{8,20}" type="password" name="password" id="password" style="color: white;">
            <div class="icon" id="password-hide-show" data-ps-hidden="true" style="background-color: #7cbbe0;">
                <img src="./icons/eye-solid.svg" alt="eye-icon">
            </div>
        </div>
        <div class="error-text"></div>
    </div>

    <div class="remember-me">
        <input type="checkbox" name="remember-me" id="remember-me">
        <label for="remember-me">Remember Me</label>
    </div>
    <button id="login-btn" type="submit">login</button>
    <div class="ps-forgot"><a href="#">Forgot password?</a></div>
    <div class="ps-forgot"><a href="./register.php">Not have an account? Sign Up now.</a></div>
</form>
<script src="js/password-visibility-toggle.js"></script>
<script src="js/remove_effect_of_invalid_and_valid_css_effect.js"></script>
<footer style="margin-top: 100px;width: 100%;">
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
<script>
    let hideSearchButton = !!document.getElementById("search-bar").value;
</script>
</body>
</html>