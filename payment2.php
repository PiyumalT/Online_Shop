<?php
//check user loged in
if (isset($_COOKIE['user_id'])) {
    $user_id = $_COOKIE['user_id'];
} else {
    $user_id = null;
    header("Location: register.php");
    exit;
}
if (isset($_POST['make_payment'])){
    $order_id=$_POST['order_id'];
    $order_total=$_POST['price'];
    $c_date = date('Y-m-d H:i:s');
    include "connect.php";

    if(true){//if payment success
        $sql="UPDATE orders SET price = '$order_total', `date` = '$c_date', `paid` = '1' WHERE order_id = $order_id";
        $result = mysqli_query($connect, $sql);
        if($result){
            echo "Payment Success";
            echo "Go home";
            echo "Go cart";
            echo "Check Order";
        }else{
            echo "Error with payment";
        }
        
    }

}