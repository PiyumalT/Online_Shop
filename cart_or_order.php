<?php
    include "connect.php";
    //check user loged in
    if (isset($_COOKIE['user_id'])) {
        $user_id = $_COOKIE['user_id'];
    } else {
        // The cookie has not been set
        $user_id = null;
        header("Location: login.php");
        exit;
    }      

    if (true){ //add userid cookie
        if(isset($_REQUEST['addtocart'])){
            $item_id=$_REQUEST['item_id'];
            $item_option=$_REQUEST['options'];
            $item_qty=$_REQUEST['qanutity'];
            $sql="SELECT price FROM item WHERE `item_id` = $item_id";
            $result = mysqli_query($connect, $sql); 
            $order_row_price=NULL;
            if ($result) {
                $row = mysqli_fetch_assoc($result);
                $item_price = $row['price'];
                $order_row_price = $item_qty * $item_price;
            }
            $sql="INSERT INTO cart (user_id, item_id, options, qty,price) VALUES ('$user_id', '$item_id', '$item_option', '$item_qty','$order_row_price')";
            $result = mysqli_query($connect, $sql); 
            if (mysqli_affected_rows($connect) > 0) {
                echo("Done");
                header("Location: cart.php");
                exit;
            } 
            else {
                header("Location: cart.php"); //insert failed (duplicate)
            }
            
            
        }
        elseif (isset($_REQUEST['buynow'])){
            if(isset($_REQUEST['buynow'])){
                $item_id=$_REQUEST['item_id'];
                $item_option=$_REQUEST['options'];
                $item_qty=$_REQUEST['qanutity'];
                //$user_id=1; //take from cokie
                $sql="INSERT INTO orders (order_id, cus_id, address_id, price) VALUES (NULL, '$user_id', NULL, NULL)";
                $result = mysqli_query($connect, $sql); 
                if ($result) {
                    $order_id = mysqli_insert_id($connect);
                    $sql="SELECT price FROM item WHERE `item_id` = $item_id";
                    $result = mysqli_query($connect, $sql); 
                    if ($result) {
                        $row = mysqli_fetch_assoc($result);
                        $item_price = $row['price'];
                        $order_price = $item_qty * $item_price;
                        $sql="INSERT INTO order_details (order_id, item_id, qty, options, price) VALUES ('$order_id', '$item_id', '$item_qty', '$item_option', '$order_price')";
                        $result = mysqli_query($connect, $sql); 

                        $get_query="SELECT qty FROM item where item_id=$item_id";
                        $result6 =mysqli_query($connect, $get_query);
                        $row6 = mysqli_fetch_assoc($result6);

                        $available_qty=$row6['qty'];
                        $available_qty=$available_qty-$item_qty;

                        $update_query = "UPDATE item SET qty = '$available_qty' WHERE item_id = $item_id ";
                        $result3 =mysqli_query($connect, $update_query);
                        
                        if ($result) {
                            $url = "enter_address.php?order_id=$order_id";
                            header("Location: $url");
                            exit;
                        }
                        
                    }
                    
                    
                } else {
                    echo "Error";
                    // Insertion failed
                  }
                
                /*if (mysqli_affected_rows($connect) > 0) {
                    $sql="SELECT order_id FROM temp_orders WHERE user_id = $user_id AND item_id = $item_id AND options LIKE '$item_option' AND qty = $item_qty";
                    $result = mysqli_query($connect, $sql); 
                    if (mysqli_affected_rows($connect) > 0) {
                        $row = mysqli_fetch_assoc($result);
                        $temp_order_id=$row['order_id'];
                        echo "---------------";
                        echo $temp_order_id;
                    }
                    else{
                    echo ("Error #2"); //insert failed 
                    }

                } 
                else {
                    echo ("Error"); //insert failed 
                }*/
            }
        }
    }
    //redirect to login
?>

        
