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
    <link rel="stylesheet" href="css/reset.css">
    <!--    <link rel="stylesheet" href="css/nav_bar.css">-->
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
<form class="login-form" method="post">
    <h1>Log in</h1>
    <?php if ($wrong_credentials) {
        echo "<div class='wrong-credentials'>Wrong Credentials</div>";
    } ?>
    <div class="email-field"><label for="email">E-mail</label>
        <input required title="" pattern="[a-zA-Z0-9._+-]+@[a-zA-Z0-9 -]+\.[a-z]{2,}" type="email" name="email"
               id="email">
        <div class="error-text"></div>
    </div>
    <div class="password-field">
        <label for="password">Password</label>
        <div class="password-input">
            <input required title="" pattern="[a-zA-Z0-9]{8,20}" type="password" name="password" id="password">
            <div class="icon" id="password-hide-show" data-ps-hidden="true">
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
</body>
</html>