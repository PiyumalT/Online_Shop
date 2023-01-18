<?php
include "connect.php";

if (isset($_COOKIE['admin_id'])) {
    $admin_id = $_COOKIE['admin_id'];
} else {
    // The cookie has not been set
    $admin_id = null;
    header("Location: home_page.php");
    exit;
}

if (isset($_REQUEST["id"])){
    $order_id=$_REQUEST["id"];
    $sql="UPDATE orders SET shipped = '1' WHERE order_id = $order_id;";
    $result= mysqli_query($connect,$sql);
    if($result){
        echo "Marked as shipped";
    }
    else{
        echo "DB Error";
    }

}
?>