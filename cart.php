<html lang="en">
<head>
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="./css/cart.css">
    <link rel="stylesheet" href="./css/footer.css">
    <script defer src="./js/cart.js" type="text/javascript"></script>
</head>
<body>
<?php
if (isset($_COOKIE['user_id'])) {
    $user_id = $_COOKIE['user_id'];
} else {
    // The cookie has not been set
    $user_id = null;
    header("Location: login.php");
    exit;
}

include "connect.php";
$sql = "SELECT * FROM `cart` WHERE `user_id` = $user_id";
$result = mysqli_query($connect, $sql);

if (mysqli_num_rows($result) > 0) {

    echo '<table>';
    echo '<tr><th>Image</th><th>Item</th><th>Options</th><th>Price</th><th>Remove</th></tr>';
    while ($row = mysqli_fetch_assoc($result)) {
        $item_id = $row['item_id'];
        $quantity = $row['qty'];
        $options = $row['options'];
        $row_price = $row['price'];

        $sql2 = "SELECT * FROM item WHERE `item_id` = $item_id";
        $result2 = mysqli_query($connect, $sql2);
        $row2 = mysqli_fetch_assoc($result2);

        $item_name = $row2['name'];
        $item_details = substr($row2['description'], 0, 70) . ' ...';
        $plus_tx = "<a href='cart_qty_change.php?item_id=$item_id&qty=$quantity&options=$options&operation=1'>";
        $min_tx = "<a href='cart_qty_change.php?item_id=$item_id&qty=$quantity&options=$options&operation=0'>";
        echo '<tr>';
        echo '<td><a href=item_details.php?item_id=' . $item_id . '><img src="' . $item_id . '.jpg" alt="' . $item_name . '"></td></a>';
        echo '<td><a href=item_details.php?item_id=' . $item_id . '"><h3>' . $item_name . '</h3><p>' . $item_details . '</p></td></a>';
        echo '<td><p> Option : ' . $options . '</p>';
        echo '
                    ' . $min_tx . '<button>-</button></a>
                    <input type="text" value="' . $quantity . '">
                    ' . $plus_tx . '<button>+</button></td></a>';
        echo '<td><p> RS:' . $row_price . '</p>';
        echo '<td><button class="remove-button" onclick="window.location.href =\'remove_from_cart.php?item_id=' . $item_id . '&options=' . $options . '&qty=' . $quantity . '\';">Remove</button></td>';
        echo '</tr>';
    }
    echo '</table>';
    echo '<a href="cart_to_order.php"><button id="place-order-button">Place Order</button></a>';
} else {
    echo "<h1> Cart Empty </h1>";
    echo '<button id="place-order-button" onclick="goBack()">go back</button>';
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
