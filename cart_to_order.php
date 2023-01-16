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

if(isset($user_id)){
    include "connect.php";
    $sql1="INSERT INTO orders (order_id, cus_id, address_id, price) VALUES (NULL, '$user_id', NULL, NULL)";
    $result1 = mysqli_query($connect, $sql1); 
    if ($result1) {
        $order_id = mysqli_insert_id($connect);
        $sql2="SELECT * FROM cart WHERE user_id = $user_id";
        $result2 = mysqli_query($connect, $sql2);
        $row = mysqli_fetch_assoc($result2);
        while ($row) {
            $item_id = $row["item_id"];
            $options = $row["options"];
            $qty = $row["qty"];
            $price = $row["price"];
            
            // Prepare the insert query using the variables
            $insert_query = "INSERT INTO order_details (order_id,item_id, options, qty, price) VALUES ('$order_id','$item_id', '$options', '$qty', '$price')";
            $result3 =mysqli_query($connect, $insert_query);
            $row = mysqli_fetch_assoc($result2);
            
            $get_query="SELECT qty FROM item where item_id=$item_id";
            $result6 =mysqli_query($connect, $get_query);
            $row6 = mysqli_fetch_assoc($result6);

            $available_qty=$row6['qty'];
            $available_qty=$available_qty-$qty;

            $update_query = "UPDATE item SET qty = '$available_qty' WHERE item_id = $item_id ";
            $result3 =mysqli_query($connect, $update_query);

            

    
        }
    }
    $sql1="DELETE FROM cart WHERE user_id = $user_id ";
    $result1 = mysqli_query($connect, $sql1);

    $url = "enter_address.php?order_id=$order_id";
    header("Location: $url");
    exit;

}