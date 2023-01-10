<html>
  <head>
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="cart.css" />
    <script src="cart.js" type="text/javascript"></script>
  </head>
  <body>
    <?php
    if (isset($_COOKIE['user_id'])) {
        $user_id = $_COOKIE['user_id'];
    } else {
        // The cookie has not been set
        $user_id = null;
        header("Location: register.php");
        exit;
    } 

    include "connect.php";
    $sql = "SELECT * FROM `cart` WHERE `user_id` = $user_id";
    $result = mysqli_query($connect, $sql); 

    if (mysqli_num_rows($result) > 0) {

        echo '<table>';
        echo '<tr><th>Image</th><th>Item</th><th>Options</th><th>Quantity</th></tr>';
        while ($row = mysqli_fetch_assoc($result)) {
            $item_id = $row['item_id'];
            $quantity = $row['qty'];
            $options = $row['options'];

            $sql2 = "SELECT * FROM item WHERE `item_id` = 1";
            $result2 = mysqli_query($connect, $sql2); 
            $row2 = mysqli_fetch_assoc($result2);

            $item_name = $row2['name'];
            $item_details = substr($row2['description'], 0, 70) . ' ...';
            
        
            echo '<tr>';
            echo '<td><img src="' . $item_id . '.jpg" alt="' . $item_name . '"></td>';
            echo '<td><h3>' . $item_name . '</h3><p>' . $item_details . '</p></td>';
            echo '<td><p>Option label:</p><p>' . $options . '</p></td>';
            echo '<td><p>Quantity:</p>
                    <button>-</button>
                    <input type="text" value="' . $quantity . '">
                    <button>+</button></td>';
            echo '</tr>';
        }
        echo '</table>';
        echo '<button id="place-order-button">Place Order</button>';
    }
    else{
        echo "<h1> Cart Empty </h1>";
        echo '<button id="place-order-button" onclick="goBack()">go back</button>';
    }
    ?>
    

  </body>
</html>
