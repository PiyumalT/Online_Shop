<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/register.css">
    <script src="js/register.js" type="text/javascript"></script>
    <title>Regiser New Account</title>

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
include "connect.php";
//checking email already exist
$email_already = false;
$error_email = "";
if (isset($_POST['submit'])) {
    $email = $_POST['email'];
    $sql_email = "select email from users where email='$email'";
    $result_email = mysqli_query($connect, $sql_email);
    //if email alredy exist
    if (mysqli_num_rows($result_email) > 0) {
        $error_email = "Email Already exisit";
        $email_already = true;
        //echo $error_email;
        header("Location:" . $_SERVER['PHP_SELF'] . "?error=" . $error_email);
    } else {
        //save registration data to temp_user table
        $password = $_POST['password'];
        $otp = rand(100000, 999999);

        //todo - add update if already email in the temp table

        $sql_check_temp = "select email from temp_users where email='$email'";
        $result_temp_table = mysqli_query($connect, $sql_check_temp);
        $password = md5($password);
        if (mysqli_num_rows($result_temp_table) > 0) {
            $sql = "UPDATE temp_users SET password = '$password', otp = '$otp' WHERE email = '$email'";
        } else {
            $sql = "INSERT INTO temp_users (email, password, otp) VALUES ('$email', '$password', '$otp')";
        }
        $result_reg = mysqli_query($connect, $sql);
        if ($result_reg) {
            session_start();
            $_SESSION['email'] = $email;
            header("Location:send_mail.php");
            exit;
        }
        alert("Error from server");
    }
} else {
    if (isset($_REQUEST['error'])) {
        $error_email = $_REQUEST['error'];
    } else {
        $error_email = "";
    }
    //HTML file for register form
    ?>
    <div class="form-box">
        <form action="<?php echo $_SERVER["PHP_SELF"] ?>" method="post" onsubmit="return validate_all()">
            <h1 style="text-align: center">Create New Account</h1>
            <label for="email">Email:</label>
            <br>
            <input type="email" id="email" name="email" style="width:100%" onchange="validateEmail()" required>
            <br>
            <p id="emailError"><?php echo $error_email ?></p>
            <br>
            <label for="password">Password:</label>
            <br>
            <input type="password" id="password" name="password" style="width:100%" onchange="validatePassword()"
                   required>
            <br>
            <p id="passwordError"></p>
            <br>
            <label for="confirmPassword">Confirm Password:</label>
            <br>
            <input type="password" id="confirmPassword" name="confirmPassword" style="width:100%"
                   onchange="validateConfirmPassword()" required>
            <br>
            <p id="confirmPasswordError"></p>
            <br>
            <input type="submit" style="width:100%" value="Create Account" id="submit" name="submit">
            <br>
            <br>
            <div style="text-align: center">
                <a href="login.php" style="text-align: center; color:white">Already have an account? Login here</a>
            </div>

        </form>
    </div>
    <?php
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
