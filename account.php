<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>customer</title>
    <link rel="stylesheet" href="css/account.css">
    <?php include 'connect.php';
      $url='site_img/background img.jpg';  ?>
</head>
<body>

    <style type="text/css">
        body
        {
        background-image:url('<?php echo $url ?>');
        }
    </style>

    <div class="middle">
        <h1> Hello User</h1>
        <img src="site_img/User-Profile-PNG-Clipart.png" alt="user profile">
        <div class="first">
            <ol>
            <li><a  href="user_account.php" ><h2>Veiw account details</h2></a></li>
            <li><a  href="edit_account.php" ><h2>Edit account details</h2></a></li>
            <li><a  href="unpaid_orders.php"><h2>View unpaid orders</h2></a></li>
            <li><a  href="paid_orders.php"  ><h2>View paid orders</h2></a></li>
            </ol>
        </div>
    </div>
    
</body>
</html>