<!DOCTYPE html>
<html lang="en">
<head>
    <title>Order Details</title>
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/payment.css">
    <link rel="stylesheet" href="./css/nav_bar.css">
    <link href="./css/navigation.css" rel="stylesheet"/>
    <link crossorigin="anonymous" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
          integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
          referrerpolicy="no-referrer" rel="stylesheet"/>
    <link rel="stylesheet" href="./css/footer.css">

    <script src="js/payment.js" type="text/javascript"></script>
<style>
    input{
        background-color:#cad3dc;
    }
    img{
        min-width: 0;
    }
</style>
</head>
<body>
<div class="main">
    <div class="navbar">
        <div class="icon">
            <a href="home_page.php">
                <img alt="logo" id="img" src="./site_img/logo.png">
            </a>
        </div>
        <div class="search">
            <form action="search.php">
                <input class="search" id="search-bar" name="search" placeholder="Search Items" type="search">
                <button class="search-btn btn"><label for="search-bar"><i
                                class="fa-solid fa-magnifying-glass"></i></label>
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
<br>
<br>


<h1> Order Details </h1>
<div class="container">
    <div class="item-details">
        <h1>Item Summery</h1>
        <table>
            <tr>
                <th>Item</th>
                <th>Price</th>
                <th>Option</th>
                <th>Quantity</th>
                <th>Total</th>
            </tr>

            <?php
            if (isset($_REQUEST['order_id'])){
            //check user loged in
            if (isset($_COOKIE['user_id'])) {
                $user_id = $_COOKIE['user_id'];
            } else {
                $user_id = null;
                header("Location: login.php");
                exit;
            }
            if (!isset($_REQUEST['order_id'])) {
                echo '<script> window.history.back(); </script>';
                exit;
            }

            $order_id = $_REQUEST['order_id'];
            include "connect.php";

            $sql = "SELECT * FROM orders WHERE order_id = $order_id";
            $result = mysqli_query($connect, $sql);

            if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            $address_id = $row['address_id'];

            $sql = "SELECT * FROM order_details WHERE order_id = $order_id";
            $result = mysqli_query($connect, $sql);
            $i = 0;
            //// mod
            $order_subtotal = 0;
            while ($i < mysqli_num_rows($result)) {
                $i = $i + 1;
                $row = mysqli_fetch_assoc($result);
                $item_id = $row['item_id'];
                $qty = $row['qty'];
                $options = $row['options'];
                $price = $row['price'];
                $order_subtotal = $order_subtotal + $price;

                $sql2 = "SELECT * FROM item WHERE item_id = $item_id";
                $result2 = mysqli_query($connect, $sql2);

                if (mysqli_num_rows($result2) > 0) {
                    $row2 = mysqli_fetch_assoc($result2);
                    $item_price = $row2['price'];
                    $item_name = $row2['name'];
                } else {
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

            $shipping_fee = 0;
            $tax = 0;
            $discounts = 0;
            $order_total = $order_subtotal + $shipping_fee + $tax - $discounts;
            ?>
            <tr>
                <td colspan="4">Order Subtotal:</td>
                <td class="a_right"><b><?php echo $order_subtotal ?></b></td>
            </tr>
            <tr>
                <td colspan="4">Shipping Fee:</td>
                <td class="a_right"><?php echo $shipping_fee ?></td>
            </tr>
            <tr>
                <td colspan="4">Tax:</td>
                <td class="a_right"><?php echo $tax ?></td>
            </tr>
            <tr>
                <td colspan="4">Discounts / Coupons:</td>
                <td class="a_right"><?php echo $discounts ?></td>
            </tr>
            <tr>
                <th colspan="4">Order Total:</th>
                <th class="a_right">
                    <h2><?php echo $order_total ?><h2>
                </th>
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
            <h2>Ship to</h2>
            <div class="address_box">


                <?php echo $name ?><br>
                <?php echo $line_1 ?>
                <?php echo $line_2 ?><br>
                <?php echo $city ?>
                <?php echo $province ?>
                <?php echo $country ?><br>
                <?php echo "ZIP - " . $zip_code ?><br>
                <?php echo $phone ?><br>

            </div>
        </div>
    </div>
    <div class="payment">
        <form action="payment2.php" method="POST" onsubmit="return ">

            <h1>Payment form</h1>
            <div class=card_img>
                <img src="site_img/card_img.png" alt="card_img">
            </div>
            <section>
                <label for="cc-number">Card number</label>
                <input id="cc-number" name="cc-number" autocomplete="cc-number" inputmode="numeric" onkeyup="addSpace()"
                       required>
            </section>
            <br>

            <section>
                <label for="cc-name">Name on card</label>
                <input id="cc-name" name="cc-name" autocomplete="cc-name" pattern="[\p{L} \-\.]+" required>
            </section>
            <br>

            <section id="cc-exp-csc">
                <div>
                    <label for="cc-exp">Expiry date</label>
                    <input id="cc-exp" name="cc-exp" autocomplete="cc-exp" placeholder="MM/YY" maxlength="5"
                           onkeypress="addSlash()" required>
                </div>
                <br>
                <div>
                    <label for="cc-csc">Security code</label>
                    <input id="cc-csc" name="cc-csc" autocomplete="cc-csc" inputmode="numeric" maxlength="3"
                           pattern="[0-999]*" required>
                    <div class="explanation">Back of card, last 3 digits</div>
                </div>
                <p class="Error" id="pError"></p>
            </section>

            <input type="hidden" name="order_id" value="<?php echo $order_id ?>">
            <input type="hidden" name="price" value="<?php echo $order_total ?>">
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
<footer style="margin-top: 100px">
    <div class="footer-container">
        <div class="footer-left">
            <nav>
                <a href="contactus.html">Contact Us</a>
                <ul>
                    <li><a href="contactus.html">FB</a></li>
                    <li><a href="contactus.html">YT</a></li>
                    <li><a href="contactus.html">Email</a></li>
                </ul>
            </nav>
        </div>
        <div class="footer-center">
            <nav>
              <a href="FAQ.html">Shopping</a>
                <ul>
                    <li><a href="FAQ.html">FAQ</a></li>
                    <li><a href="FAQ.html">Payment Method</a></li>
                    <li><a href="FAQ.html">User Guide</a></li>
                </ul></ul>
            </nav>
        </div>
        <div class="footer-right">
            <nav>
             <a href="about.html">Company</a>
                <ul>
                    <li><a href="about.html">Terms and Conditions</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="about.html">Privacy Policy</a></li>
                </ul>
            </nav>
        </div>

    </div>
    <div class="bottom-tx">
        <p>Copyright © 2021 Nayantha Yasiru, Tharindu Piyumal, Nimesha Kavindi, Pathum Sanjana,Siva Tharsan</p>
    </div>

</footer>
</body>
</html>
