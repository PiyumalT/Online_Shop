<?php
require_once("code_segments/header.php");
if (isset($_POST) and count($_POST) > 0) {
    include "connect.php";
    $table = "users";
    $email = $_POST["email"];
    $password = $_POST["password"];
    if (isset($_POST["remember-me"])) {
        $rememberMe = $_POST["remember-me"];
    }
    $sql = "SELECT id, email,password FROM $table WHERE email='$email' AND password='$password'";
    $result = mysqli_query($connect, $sql);
    if (mysqli_num_rows($result)) {
        $user_id = mysqli_fetch_assoc($result)['id'];
        echo "good";
        if (isset($rememberMe) && $rememberMe) {
            echo "good";
            setcookie("user_id", $user_id, time() + 60 * 60 * 24 * 50); // with time sec * min * hours * day
        } else {
            setcookie("user_id", $user_id);
        }
        header("Location: home_page.php");
    } else {
        $wrong_credentials = true;
    }
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Log In</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/nav_bar.css">
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
<form class="login-form" method="post">
    <h1>Log in</h1>
    <?php if (isset($wrong_credentials) and $wrong_credentials) {
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
<script>
    const inputs = document.querySelectorAll("input");
    for (let i = 0; i < inputs.length; i++) {
        inputs[i].style.borderBottom = "1px solid black";
        inputs[i].addEventListener("click", () => {
            inputs[i].style.borderBottom = "";
        });
    }

</script>
</body>
</html>