<?php
    include "connect.php";
    if (true){ //add userid cookie
        if(isset($_REQUEST['addtocart'])){
            $item_id=$_REQUEST['item_id'];
            $item_option=$_REQUEST['options'];
            $item_qty=$_REQUEST['qanutity'];
            $user_id=1; //take from cokie
            $sql="INSERT INTO cart (user_id, item_id, options, qty) VALUES ('$user_id', '$item_id', '$item_option', '$item_qty')";
            $result = mysqli_query($connect, $sql); 
            if (mysqli_affected_rows($connect) > 0) {
                echo("Done");
            } 
            else {
                echo ("Error"); //insert failed (duplicate)
            }
            //header("Location: cart.php");
            //exit;
        }
        elseif (isset($_REQUEST['buynow'])){
            if(isset($_REQUEST['buynow'])){
                $item_id=$_REQUEST['item_id'];
                $item_option=$_REQUEST['options'];
                $item_qty=$_REQUEST['qanutity'];
                $user_id=1; //take from cokie
                $sql="INSERT INTO temp_orders (order_id, user_id, item_id, options, qty) VALUES (NULL, '$user_id', '$item_qty', '$item_option', '$item_qty')";
                $result = mysqli_query($connect, $sql); 
                if (mysqli_affected_rows($connect) > 0) {
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
                }
            }
        }
    }
    //redirect to login
?>

        
