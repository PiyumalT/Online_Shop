<?php
include "connect.php";

// check if user is logged in
if (isset($_COOKIE['user_id'])) {
    $user_id = $_COOKIE['user_id'];
} else {
    $user_id = null;
    header("Location: login.php");
    exit;
}

// retrieve unpaid orders for the logged in user
$sql = "SELECT * FROM orders WHERE cus_id = $user_id AND paid IS NULL ORDER BY order_id DESC";
$result = mysqli_query($connect, $sql);

if (mysqli_num_rows($result) > 0) {
    echo '<div class="box">';
    echo '<h2> Unpaid Orders </h2>';
    while ($row = mysqli_fetch_assoc($result)) {
        $order_id = $row['order_id'];
        $order_total = 0;
        $address_id = $row['address_id'];
        echo '<table>';
        echo '<tr>';
        echo '<th>Item ID</th>';
        echo '<th>Price</th>';
        echo '<th>Option</th>';
        echo '<th>Quantity</th>';
        echo '<th>Total</th>';
        echo '</tr>';
        // retrieve item details from the order_details table
        $sql2 = "SELECT * FROM order_details WHERE order_id = $order_id";
        $result2 = mysqli_query($connect, $sql2);
        while ($row2 = mysqli_fetch_assoc($result2)) {
            $item_id = $row2['item_id'];
            $price = $row2['price'];
            $qty = $row2['qty'];
            $option = $row2['options'];
            $order_total = $order_total+($price*$qty);

            $sql5 = "SELECT name FROM item WHERE item_id = $item_id";
            $result5 = mysqli_query($connect, $sql5);

            if (mysqli_num_rows($result5) > 0) {
                $row5 = mysqli_fetch_assoc($result5);
                $item_name = $row5['name'];
            } else {
                $item_name = "Undifined";
            

            echo '<tr>';
            echo '<td>' . $item_name . '</td>';
            echo '<td>' . $price . '</td>';
            echo '<td>' . $option . '</td>';
            echo '<td>' . $qty . '</td>';
            echo '<td>' . ($price*$qty) . '</td>';
            echo '</tr>';
        }
        echo '<tr>';
        echo '<td colspan="4">Order Total:</td>';
        echo '<td> <b>$' . $order_total . '</b> </td>';
        echo '</tr>';
        echo '<tr>';
        echo '<td colspan="5">';
        if ($order_total>0){
          if ($address_id) {
            echo ' <button onclick="window.location.href =\'payment.php?order_id=' . $order_id . '\'" class="pay-now">Pay Now</button> ';
                  
        } else {
            echo '<button onclick="window.location.href =\'enter_address.php?order_id=' . $order_id . '\'" class="pay-now">Pay Now</button>';
            }
        }
        echo '<button class="cancel-order" onclick="window.location.href=\'cancel_order.php?order_id=' . $order_id . '\'">Cancel Order</button> </td>';
        
        echo '</tr>';
        echo '</table><br><br><br>';
    }
    echo '</div>';
} else {
    echo '<h2> You have no unpaid orders </h2>';
}

?>
<script>
    function payNow(orderId) {
        // code to redirect to payment page and pass the orderId as a parameter
    }

    function cancelOrder(orderId) {
        // code to cancel the order and update the status in the database
    }
</script>
<style>
    .box {
        width: 50%;
        margin: 0 auto;
        text-align: center;
        padding: 20px;
        border-width: 3px;
        border: 1px solid black;
        padding: 2%;
        border-radius: 10px;
    }

    table {
        width: 100%;
        margin: 10px 0;
        border-collapse: collapse;
        border: 1px solid gray;
    }

    tr {
        background-color: #f2f2f2;
    }

    th, td {
        border: 1px solid gray;
        text-align: center;
        padding: 8px;
    }

    .pay-now, .cancel-order {
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
        text-align: center;
        margin: 3px;
    }

    .cancel-order {
        background-color: #f44336;
    }
</style>