<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admin</title>
    <link rel="stylesheet" href="css/admin_dashbord.css">
    <?php include 'connect.php';?>
</head>
<body>

    <div class="header"></div>

    <div class="middle">

        <div class="first">
          <a onmouseover="change_background_color()" href="Add_product.php"><h2>Add product</h2></a>
          <a onmouseover="change_background_color()" href="Product_list.php"><h2>Product list</h2></a>
          <a onmouseover="change_background_color()" href="Sales_list.php"><h2>Sales list</h2></a>
          <a onmouseover="change_background_color()" href="Users_list.php"><h2>Users list</h2></a>
        </div>

        <div class="second">
         <div class="value"><h1>Today orders</h1>
            <div class="total"> 
                <?php  $query="SELECT * FROM orders WHERE day(date)=12 && month(date)=1 && year(date)=2023"; 
                       $result= mysqli_query($connect,$query);
                       if($result){echo "<h1>";echo mysqli_num_rows($result);echo "</h1>";} 
                ?>
            </div>
         </div>
         <div class="value"><h1>Today income</h1>
            <div class="total"> 
                <?php  $query="SELECT sum(price) FROM orders WHERE day(date)=12 && month(date)=1 && year(date)=2023"; 
                       $result= mysqli_query($connect,$query);
                       $r=mysqli_fetch_assoc($result);
                       if($result){echo "<h1>";echo $r['sum(price)'] ;echo "</h1>";} 
                ?>
            </div>
         </div>
         <div class="value"><h1>Total users</h1>
            <div class="total"> 
                <?php  $query="SELECT * FROM users"; 
                       $result= mysqli_query($connect,$query);
                       if($result){echo "<h1>";echo mysqli_num_rows($result);echo "</h1>";} 
                ?>
            </div>
         </div>
         <div class="value"><h1>Total items</h1>
            <div class="total"> 
                <?php  $query="SELECT * FROM item"; 
                       $result= mysqli_query($connect,$query);
                       if($result){echo "<h1>"; echo mysqli_num_rows($result); echo "</h1>";} 
                ?>
            </div>
         </div>
        </div>
      
    </div>

    <div class="footer"></div>

    <script> 
       change_background_color(){
         document.getElementsByTagName ('a').style.background-color="white";}
    
    </script>

    
</body>
</html>