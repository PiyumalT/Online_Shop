<html lang="en">
<head>
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="./css/cart.css">
    <link rel="stylesheet" href="./css/footer.css">
    <link rel="stylesheet" href="css/nav_bar.css">
    <link href="./css/navigation.css" rel="stylesheet"/>
    <link crossorigin="anonymous" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
          integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
          referrerpolicy="no-referrer" rel="stylesheet"/>
    <link rel="stylesheet" href="./css/footer.css">

    <script defer src="./js/cart.js" type="text/javascript"></script>
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
        echo '<td><a href=item_details.php?item_id=' . $item_id . '><img src="item_pics/' . $item_id . '.jpg" alt="' . $item_name . '"></td></a>';
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
