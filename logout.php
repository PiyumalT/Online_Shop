<?php
    //Remove the user_id cookie
    setcookie("user_id", "", time() - 3600);
    //Remove the admin_id cookie
    setcookie("admin_id", "", time() - 3600);
    //Redirect the user to the home page
    header("Location: home_page.php");
    exit;
?>
