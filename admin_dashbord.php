<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admin</title>
    </title>
    <link rel="icon" type="image/png" href="site_img/icon.png">
    <link rel="stylesheet" href="css/admin_dashbord.css">
    <?php include 'connect.php';
      $url='site_img/s-l1600.jpg';  ?>
</head>
<body>

    <style type="text/css">
    body
    {
    background-image:url('<?php echo $url ?>');
    }
    </style>
    
    <div class="middle">

        <div class="head"> <button type="button" class="btn1" onclick="location.href='logout.php'">Log Out</button> </div> 

        <div class="first">
          <a  href="add_item.php"><h2>Add product</h2></a>
          <a  href="Product_list.php"><h2>Product list</h2></a>
          <a  href="Sales_list.php"><h2>Sales list</h2></a>
          <a  href="Users_list.php"><h2>Users list</h2></a>
        </div>        

        <div class="second">
         <div class="value"><h1>Today orders</h1>
            <div class="total"> 
            <?php  
                       $date = date('Y-m-d');
                       $query="SELECT * FROM orders WHERE date LIKE '$date%'"; 
                       $result= mysqli_query($connect,$query);
                       
                       if($result)
                       {echo "<h1>";echo mysqli_num_rows($result);echo "</h1>";}
                       else{
                        echo "<h1> 0 </h1>";
                       } 
                ?>
            </div>
         </div>
         <div class="value"><h1>Today income</h1>
            <div class="total"> 
            <?php  $query="SELECT sum(price) FROM orders WHERE date LIKE '$date%'"; 
               
                       $result= mysqli_query($connect,$query);
                       $r=mysqli_fetch_assoc($result);
                       
                       if($result){
                            if ($r['sum(price)']){
                                echo "<h1>";echo $r['sum(price)'] ;echo "</h1>";
                            }
                            else{
                                echo "<h1> 0 </h1>"; 
                            }
                        } 
                       else{
                        echo "<h1> 0 </h1>";
                       }
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

  

    
</body>
</html>