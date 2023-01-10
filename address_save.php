<?php
//check user loged in
if (isset($_COOKIE['user_id'])) {
    $user_id = $_COOKIE['user_id'];
} else {
    // The cookie has not been set
    $user_id = null;
    header("Location: register.php");
    exit;
}

if(isset($_REQUEST['place_order'])){
    if(isset($_REQUEST['address_changed'])){
        include "connect.php";
        $address_id=$_REQUEST['address_changed'];
        $temp_order_id=$_REQUEST['order_id'];
        if($address_id==0){
            $name = $_GET['name'];
            $address1 = $_GET['address1'];
            $address2 = $_GET['address2'];
            $city = $_GET['city'];
            $province = $_GET['province'];
            $country = $_GET['country'];
            $postalCode = $_GET['postalCode'];
            $phoneNumber = $_GET['phoneNumber'];

            

            $sql="INSERT INTO address (`address_id`, `user_id`, `name`, `line_1`, `line_2`, `city`, `province`, `country`, `zip_code`, `phone`) VALUES (NULL, '$user_id', '$name', '$address1', '$address2', '$city', '$province', '$country', '$postalCode', '$phoneNumber')";
            $result = mysqli_query($connect, $sql);
            if ($result) {
                $address_id = mysqli_insert_id($connect);
            } else {
                echo "Insertion failed id=30";
            }
            
        }
        
        $sql="UPDATE orders SET address_id = '$address_id' WHERE order_id = '$temp_order_id'";
        $result = mysqli_query($connect, $sql); 
        if ($result) {
            $url = "payment.php?order_id=$temp_order_id";
            header("Location: $url");
            exit;
        } else {
            echo "Insertion failed id=40";
        }
        
        
    }
}