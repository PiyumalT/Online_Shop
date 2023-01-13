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
    $operation = $_GET["operation"];

    echo $operation;
    if($operation != '1' && $operation != '0') {
        echo "Invalid option";
        header("Location: cart.php");

        die();
        
    }
    
    // Get the price for the item from the price table
    $price_query = "SELECT * FROM item WHERE item_id = $item_id";
    $price_result = mysqli_query($connect, $price_query);
    $row = mysqli_fetch_assoc($price_result);
    $price=$row["price"];
    $max_qty=$row['qty'];

    // Update the quantity and price in the items table
    if ($operation == "1") {
        if($qty<$max_qty){
            $qty++;
        }
        $order_price=$price*$qty;
        $qty2=$qty-1;
        $update_query = "UPDATE cart SET qty = $qty, price = $order_price WHERE item_id = $item_id AND user_id =$user_id AND options='$options' AND qty=$qty2";
    } else if ($operation == "0") {
        if($qty>1){
            $qty--;
        }
        $order_price=$price*$qty;
        $qty2=$qty+1;
        $update_query = "UPDATE cart SET qty = $qty, price = $order_price WHERE item_id = $item_id AND user_id =$user_id AND options='$options' AND qty=$qty2";
    }
    echo $update_query;
    $result = mysqli_query($connect, $update_query); 
    header("Location: cart.php");
}   
?>