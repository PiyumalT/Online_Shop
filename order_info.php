<!DOCTYPE html>
<html>
<head>
  <title>Order Details</title>
  
</head>
<body>
  <h2> Order Details </h2>
  <div class="container">
    <div class="item-details">
      <h3>Item Summery</h1>
      <table>
      <tr>
          <th>Item</th>
          <th>Price</th>
          <th>Option</th>
          <th>Quantity</th>
          <th>Total</th>
        </tr>
<?php
if(isset($_REQUEST['order_id'])){
    //check user loged in
    if (isset($_COOKIE['user_id'])) {
        $user_id = $_COOKIE['user_id'];
    } else {
        $user_id = null;
        header("Location: login.php");
        exit;
    }
    if(!isset($_REQUEST['order_id'])){
        echo '<script> window.history.back(); </script>';
        exit;
    }

    $order_id =$_REQUEST['order_id'];
    include "connect.php";

    $sql = "SELECT * FROM orders WHERE order_id = $order_id";
    $result = mysqli_query($connect, $sql);

    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $address_id=$row['address_id'];
        $sql = "SELECT * FROM order_details WHERE order_id = $order_id";
        $result = mysqli_query($connect, $sql);
        $i=0;
        //// mod
        $order_subtotal=0;
        while($i<mysqli_num_rows($result)){
          $i=$i+1;
          $row = mysqli_fetch_assoc($result);
          $item_id = $row['item_id'];
          $qty = $row['qty'];
          $options=$row['options'];
          $price=$row['price'];
          $order_subtotal=$order_subtotal+$price;
    
          $sql2 = "SELECT * FROM item WHERE item_id = $item_id";
          $result2 = mysqli_query($connect, $sql2);
    
          if (mysqli_num_rows($result2) > 0) {
              $row2 = mysqli_fetch_assoc($result2);
              $item_price = $row2['price'];
              $item_name= $row2['name'];
          }
          else{
              $item_price = "Error";
          }
          //////////////////////
          ?>
          <tr>
          <td><?php echo $item_name ?></td>
          <td class="a_right"><?php echo $item_price ?></td>
          <td class="a_center"><?php echo $options ?></td>
          <td class="a_center"><?php echo $qty ?></td>
          <td class="a_right"><?php echo $price ?></td>
        
          </tr><?php
        }
          $shipping_fee=0;
          $tax=0;
          $discounts=0;
          $order_total=$order_subtotal + $shipping_fee + $tax - $discounts;
          ?>
              <tr>
                <td colspan="4">Order Subtotal:</td>
                <td class="a_right"><b><?php echo $order_subtotal?></b></td>
              </tr>
              <tr>
                <td colspan="4">Shipping Fee:</td>
                <td class="a_right"><?php echo $shipping_fee?></td>
              </tr>
              <tr>
                <td colspan="4">Tax:</td>
                <td class="a_right"><?php echo $tax?></td>
              </tr>
              <tr>
                <td colspan="4">Discounts / Coupons:</td>
                <td class="a_right"><?php echo $discounts?></td>
              </tr>
              <tr>
                <th colspan="4">Order Total:</th>
                <th class="a_right"><h2><?php echo $order_total?><h2></th>
              </tr>
            </table>
        
          <?php
        
    
        $sql = "SELECT * FROM address WHERE address_id = $address_id";
        $result = mysqli_query($connect, $sql);
        if(mysqli_num_rows($result) > 0){
          $row = mysqli_fetch_assoc($result);
          $name = $row['name'];
          $address = $row['line_1'] . $row['line_2'];
          $city = $row['city'];
          $state = $row['province'];
          $zip = $row['zip_code'];
          $phone = $row['phone'];
        } else {
          $name = "Error";
          $address = "Error";
          $city = "Error";
          $state = "Error";
          $zip = "Error";
          $phone = "Error";
        }
        
        echo '<div class="address-details">';
        echo '<h3>Shipping Address</h3>';
        echo '<table>';
        echo '<tr>';
        echo '<td>Name:</td>';
        echo '<td>'.$name.'</td>';
        echo '</tr>';
        echo '<tr>';
        echo '<td>Address:</td>';
        echo '<td>'.$address.'</td>';
        echo '</tr>';
        echo '<tr>';
        echo '<td>City:</td>';
        echo '<td>'.$city.'</td>';
        echo '</tr>';
        echo '<tr>';
        echo '<td>State:</td>';
        echo '<td>'.$state.'</td>';
        echo '</tr>';
        echo '<tr>';
        echo '<td>Zip:</td>';
        echo '<td>'.$zip.'</td>';
        echo '</tr>';
        echo '<tr>';
        echo '<td>Phone:</td>';
        echo '<td>'.$phone.'</td>';
        echo '</tr>';
        echo '</table>';
        echo '</div>';
    }
} else {
    echo '<script> window.history.back(); </script>';
    exit;
    }
    ?>
    </div>
    </div>
    <style>
      .container {
    display: flex;
    justify-content: center;
    align-items: center;
}

.item-details, .address-details {
    width: 50%;
    margin: 10px;
    padding: 20px;
    border: 1px solid gray;
}

table {
    width: 100%;
    border-collapse: collapse;
}

th, td {
    border: 1px solid gray;
    padding: 10px;
    text-align: left;
}

th {
    background-color: lightgray;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

    </style>
    </body>
    </html>            
    