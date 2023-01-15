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
if(isset($_GET['order_id'])){
    $order_id = $_GET['order_id'];

    // Remove data from orders table
    $sql = "DELETE FROM orders WHERE order_id = $order_id";
    if(mysqli_query($connect, $sql)) {
        // Remove data from order_details table
        $sql2 = "DELETE FROM order_details WHERE order_id = $order_id";
        if(mysqli_query($connect, $sql2)) {
            // Go back to previous page
            //echo '<script> window.history.back(); location.reload(); </script>';
            header("Location: unpaid_orders.php");

        } else {
            echo "Error deleting data from order_details table: " . mysqli_error($connect);
        }
    } else {
        echo "Error deleting data from orders table: " . mysqli_error($connect);
    }
}

?>