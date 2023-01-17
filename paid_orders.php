<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Paid Orders</title>

    <script>
    function payNow(orderId) {
        // code to redirect to payment page and pass the orderId as a parameter
    }

    function cancelOrder(orderId) {
        // code to cancel the order and update the status in the database
    }
</script>
<style>
    body {
    background-color: #cad3dc;
    background-image: url(site_img/background\ img.jpg);
    }
    .box {
        width: 50%;
        margin: 0 auto;
        text-align: center;
        padding: 20px;
        border-width: 3px;
        border: 1px solid black;
        padding: 2%;
        border-radius: 10px;
        background-color: rgba(0, 0, 0, 0.5); /* Transparent background */
        color:white;
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
    th{
        background-color:#cad3dc;
        color:black;
    }
    td{
        background-color:#cad3dc;
        color:black;
    }

    .pay-now, .cancel-order {
        padding: 10px 20px;
        background-color: #022342;
        color: white;
        border: none;
        cursor: pointer;
        text-align: center;
        margin: 3px;
    }

    .cancel-order {
        background-color: #220f66;
    }
    </style>

    <link rel="stylesheet" href="css/nav_bar.css">
    <link href="./css/navigation.css" rel="stylesheet"/>
    <link crossorigin="anonymous" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
          integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
          referrerpolicy="no-referrer" rel="stylesheet"/>
    <link rel="stylesheet" href="./css/footer.css">

</head>
<body>
<div class="main">
    <div class="navbar">
        <div class="icon">
            <a href="home_page.php">
            <img alt="logo" id="img" src="./site_img/logo.png">
            </a>
        </div>
        <script>
            if(document.getElementById("search-bar").value){
                return true;
            }
            else{
                return false;
            }
        </script>

        <div class="search" >
            <form action="search.php" onsubmit="return check_search_value()">
            <input class="srch" id="search-bar" name="search" placeholder="Search Items" type="search">
            <button class="btn"><label for="search-bar"><i class="fa-solid fa-magnifying-glass"></i></label></button></form>
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
$sql = "SELECT * FROM orders WHERE cus_id = $user_id AND paid IS NOT NULL ORDER BY order_id DESC";
$result = mysqli_query($connect, $sql);

if (mysqli_num_rows($result) > 0) {
    echo '<div class="box">';
    echo '<h2> paid Orders </h2>';
    while ($row = mysqli_fetch_assoc($result)) {
        $order_id = $row['order_id'];

        $order_total = $row['price'];
        $shipped=$row['shipped'];
        $date=$row['date'];

        echo '<table>';
        echo '<tr>';
        echo '<th>Item Name</th>';
        echo '<th>Price</th>';
        echo '<th>Option</th>';
        echo '<th>Quantity</th>';
        echo '<th>Total</th>';
        echo '</tr>';
        // retrieve item details from the order_details table
        $sql2 = "SELECT * FROM order_details WHERE order_id = $order_id ";
        $result2 = mysqli_query($connect, $sql2);
        while ($row2 = mysqli_fetch_assoc($result2)) {
            $item_id = $row2['item_id'];
            $price = $row2['price'];
            $qty = $row2['qty'];
            $option = $row2['options'];

            $sql5 = "SELECT name FROM item WHERE item_id = $item_id";
            $result5 = mysqli_query($connect, $sql5);

            if (mysqli_num_rows($result5) > 0) {
                $row5 = mysqli_fetch_assoc($result5);
                $item_name = $row5['name'];
            } else {
                $item_name = "Undifined";
            }
            

            echo '<tr>';
            echo '<td>' . $item_name . '</td>';
            echo '<td>' . $price . '</td>';
            echo '<td>' . $option . '</td>';
            echo '<td>' . $qty . '</td>';
            echo '<td>' . ($price*$qty) . '</td>';
            echo '</tr>';
        }
        echo '<tr>';
        echo '<td >Order Date</td>';
        echo '<td colspan="2"><b>'. $date . '</b></td>';
        echo '<td >Order Total:</td>';
        echo '<td> <b>$' . $order_total . '</b> </td>';
        echo '</tr>';
        echo '<tr>';
        echo '<td colspan="5">';
        if ($shipped) {
            echo ' <button onclick="window.location.href =\'track_order.php?order_id=' . $order_id . '\'" class="pay-now">Order Shipped</button> ';
                  
        } else {
            echo '<button onclick="window.location.href =\'track_order.php?order_id=' . $order_id . '\'" class="pay-now">Order Not shipped</button>';
        }
        
        echo '<button class="cancel-order" onclick="window.location.href=\'order_info.php?order_id=' . $order_id . '\'">Order details</button> </td>';
        
        echo '</tr>';
        echo '</table><br>';
    }
    echo '</div>';
} else {
    echo '<h2> You have no unpaid orders </h2>';
}

?>

<footer style="margin-top: 100px">
    <div class="footer-container">
        <div class="footer-left">
            <nav>
                <a href="#">Contact Us</a>
                <ul>
                    <li><a href="#">FB</a></li>
                    <li><a href="#">YT</a></li>
                    <li><a href="#">Email</a></li>
                </ul>
            </nav>
        </div>
        <div class="footer-center">
            <nav>
                <a href="#">Shopping</a>
                <ul>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Payment Method</a></li>
                    <li><a href="#">User Guide</a></li>
                </ul>
            </nav>
        </div>
        <div class="footer-right">
            <nav>
                <a href="#">Company</a>
                <ul>
                    <li><a href="#">Terms and Conditions</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                </ul>
            </nav>
        </div>

    </div>
    <div class="bottom-tx">
        <p>Copyright © 2021 Nayantha Yasiru, Tharindu Piyumal, Nimesha Kavindi, Pathum Sanjana</p>
    </div>

</footer>
</body>
</html>