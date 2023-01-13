<!DOCTYPE html>
<html>
<head>
  <title>Order Details</title>
  <link rel="stylesheet" href="css/payment.css">
  <script src="js/payment.js" type="text/javascript"></script>

  
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
          </tr>
          <?php
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

        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            $name = $row['name'];
            $line_1 = $row['line_1'];
            $line_2 = $row['line_2'];
            $city = $row['city'];
            $province = $row['province'];
            $country = $row['country'];
            $zip_code = $row['zip_code'];
            $phone = $row['phone'];
            // Use the values of $name, $line_1, $line_2, $city, $province, $country, $zip_code, and $phone as needed

            ?>
            <div class="address">
              <h3>Ship to</h2><div class="address_box">
              
                
                  <?php echo $name ?><br>
                  <?php echo $line_1 ?><br>
                  <?php echo $line_2 ?><br>
                  <?php echo $city ?><br>
                  <?php echo $province ?><br>
                  <?php echo $country ?><br>
                  <?php echo "ZIP - ".$zip_code ?><br>
                  <?php echo $phone ?><br>
                
        </div></div></div> <div class="payment">
              <form action="payment2.php" method="POST" onsubmit="return ">
                
                <h1>Payment form</h1>
                <div class=card_img>
                  <img src="site_img/card_img.png">
                </div>
                <section>
                    <label for="cc-number">Card number</label>
                    <input id="cc-number" name="cc-number" autocomplete="cc-number" inputmode="numeric" onkeyup="addSpace()" required>
                </section>

                <section>
                    <label for="cc-name">Name on card</label>
                    <input id="cc-name" name="cc-name" autocomplete="cc-name" pattern="[\p{L} \-\.]+" required>
                </section>

                <section id="cc-exp-csc">
                    <div>
                        <label for="cc-exp">Expiry date</label>
                        <input id="cc-exp" name="cc-exp" autocomplete="cc-exp" placeholder="MM/YY" maxlength="5" onkeypress="addSlash()" required>
                    </div>
                    <div>
                        <label for="cc-csc">Security code</label>
                        <input id="cc-csc" name="cc-csc" autocomplete="cc-csc" inputmode="numeric" maxlength="3" pattern="[0-999]*" required>
                        <div class="explanation">Back of card, last 3 digits</div>
                    </div>
                    <p class="Error" id="pError"></p>
                </section>

                <input type="hidden" name="order_id" value="<?php echo $order_id?>">
                <input type="hidden" name="price" value="<?php echo $order_total?>">
                <input type="submit" name="make_payment" value="Make Payment" id="submit">

              </form>
            </div>
            <?php

          } else {
            // No data found
        }
        // Use the value of $item_price as needed
    } else {
        // No data found
      }

}
?>
  </div>
</body>
</html>
