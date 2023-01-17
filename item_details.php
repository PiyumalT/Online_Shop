<html lang="en">
<head>
    <link rel="stylesheet" href="./css/item_details.css">
    <link rel="stylesheet" href="./css/footer.css">
    <script defer src="./js/item_details.js" type="text/javascript"></script>
    <link rel="stylesheet" href="css/nav_bar.css">
    <link href="./css/navigation.css" rel="stylesheet"/>
    <link crossorigin="anonymous" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
          integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
          referrerpolicy="no-referrer" rel="stylesheet"/>
    <link rel="stylesheet" href="./css/footer.css">
    <title>Item Details</title>

</head>
<body style="margin: 0; padding: 0; overflow-x: clip">
<div class="main">
    <div class="navbar">
        <div class="icon">
            <a href="home_page.php">
            <img alt="logo" id="img" src="./site_img/logo.png">
            </a>
        </div>
        <div class="search" >
            <form action="search.php">
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
$currency = "LKR";
//incude - js function to enable submit
//         js function to avoid add cart more than available
//get item id and get related data from db
if (isset($_REQUEST['item_id'])) {
    $item_id = $_REQUEST['item_id'];
} else {
    $item_id = 0; // Please change this to 0 after testing
}
$sql = "Select * from item where item_id='$item_id'";
$item_result = mysqli_query($connect, $sql);
if (mysqli_num_rows($item_result) < 1) {
    $sql = "Select * from item where item_id='0'";
    $item_result = mysqli_query($connect, $sql);
    if (mysqli_num_rows($item_result) < 1) {
        echo "DB error";
        //write more
    }
}
$row = mysqli_fetch_assoc($item_result);
$item_name = $row['name'];
$item_description = $row['description'];
$item_price = $row['price'];
$item_options = $row['options'];
$item_qty = $row['qty'];

$item_option_array = explode(', ', $item_options);
//var_dump($item_option_array);

?>
<div style="margin: 0; padding: 0">
    <div class="flex-container">
        <div>
            <img src="item_pics/<?php echo $item_id; ?>.jpg" alt="Item Image" class="item-image"/>
        </div>
        <div class="item-details">
            <h1 class="item-name"><?php echo $item_name; ?></h1>
            <p class="item-description"><?php echo $item_description; ?></p>

            <?php
            $option_index = 0;
            for ($option_index = 0; $option_index < sizeof($item_option_array); $option_index++) {

                //removing unespected spaces
                $option_value = $item_option_array[$option_index];
                $option_value = str_replace(" ", "_", $option_value);

                //making radio buttons
                if ($option_index == 0) {
                    echo "<input type='radio' name='option' value='" . $option_value . "' id='" . $option_value . "' class='option-button' checked>";
                } else {
                    echo "<input type='radio' name='option' value='" . $option_value . "' id='" . $option_value . "' class='option-button'>";
                }
                echo "<label for='" . $option_value . "' class='option-label' onclick=setOptions('" . $option_value . "')>" . $option_value . "</label>";
            }
            ?>

            <p class="item-price">Price : <?php echo $item_price;
                echo " " . $currency; ?></p>
            <div class="quantity" onmouseenter="setQuantity()" onmouseleave="setQuantity()">
                <label for="quantity">Quantity:</label>
                <button onclick="decreaseQuantity()">-</button>
                <input type="text" id="quantity" value="1">
                <button onclick="increaseQuantity()">+</button>
                <p class="item-qty-left">Avaliable : <?php echo $item_qty;
                    echo " items"; ?></p>
                <input type="hidden" name="available_qty" id="available_qty" value="<?php echo $item_qty ?>">
            </div>
            <p id="qtyError"></p>
            <form class="item-options" action="cart_or_order.php" method="get" onsubmit="return validateQuantity()">
                <div class="cart-buttons">
                    <input type="hidden" name="options" id="h_options" value="<?php echo $item_option_array[0] ?>">
                    <input type="hidden" name="qanutity" id="h_qty" value="1">
                    <input type="hidden" name="item_id" id="h_item_id" value="<?php echo $item_id ?>">
                    <input type="submit" value="Add to Cart" name="addtocart" id="addtocart"
                           class="cart-buttons_button">
                    <input type="submit" value="Buy Now" name="buynow" id="buynow" class="cart-buttons_button">

            </form>
        </div>
    </div>
</div>

<footer style="padding-top: 20px">
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
