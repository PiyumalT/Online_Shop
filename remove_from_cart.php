<?php
include "connect.php";

if (isset($_COOKIE['user_id'])) {
    $user_id = $_COOKIE['user_id'];
} else {
    // The cookie has not been set
    $user_id = null;
    header("Location: login.php");
    exit;
}
if (isset($_GET["item_id"]) && isset($_GET["qty"]) && isset($_GET["options"])) {
    // Get the values passed to the page
    $item_id = $_GET["item_id"];
    $qty = $_GET["qty"];
    $options = $_GET["options"];
    $sql="DELETE FROM cart WHERE user_id = $user_id AND item_id = $item_id AND options = '$options' AND qty = $qty";
    $result = mysqli_query($connect, $sql); 
    header("Location: cart.php");
}