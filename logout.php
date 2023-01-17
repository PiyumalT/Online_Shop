<?php
    //Remove the user_id cookie
    setcookie("user_id", "", time() - 3600);
    //Redirect the user to the login page
    header("Location: home_page.php");
    exit;
?>
