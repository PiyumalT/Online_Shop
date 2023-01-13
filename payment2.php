<!DOCTYPE html>
                <html>
                <head>
                    <title>Order Success</title>
                    <style>
                        /* Center the container on the page */
                        .container {
                            display: flex;
                            align-items: center;
                            justify-content: center;
                            height: 100vh;
                        }

                        /* Add some padding and styling to the content */
                        .content {
                            padding: 20px;
                            background-color: #f2f2f2;
                            text-align: center;
                            font-size:large;
                        }
                        
                    </style>
                </head>
                <body>
                    <div class="container">
                        <div class="content">
<?php
//check user loged in
if (isset($_COOKIE['user_id'])) {
    $user_id = $_COOKIE['user_id'];
} else {
    $user_id = null;
    header("Location: login.php");
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
            ?>
                            <h1>Order Success</h1>
                            <p>Thank you for your purchase!</p>
                            <hr>
                            <h2>Order Details</h2>
                            <p>Order Number:# <?php echo $order_id ?></p>
                            <p>Order Date: <?php echo $c_date ?></p>
                            <p>Your order deliver within 7 days</p><br><br>
                            <p><a href="home.php"> Go To Home </a> </p>
                        </div>
                    </div>
                </body>
                </html>
            <?php
        }else{
            ?>
                            <h1>Order Failed</h1>
                            <hr>
                            <h2>Try again later</h2>
                            <p><a href="home.php"> Go To Home </a> </p>
                        </div>
                    </div>
                </body>
                </html>
            <?php
        }
        
    }

}?>

