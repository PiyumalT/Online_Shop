<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sales list</title>
    <link rel="stylesheet" href="css/Sales_list.css">
    <?php include 'connect.php'; ?>
</head>
<body>
<?php
if (isset($_COOKIE['user_id'])) {
        $user_id = $_COOKIE['admin_id'];
    } else {
        // The cookie has not been set
        $user_id = null;
        header("Location: admin_login.php");
        exit;
    }?>
   <div class="first">
          <a  href="add_item.php"><h2>Add product</h2></a>
          <a  href="Product_list.php"><h2>Product list</h2></a>
          <a  href="Sales_list.php" class="now"><h2>Sales list</h2></a>
          <a  href="Users_list.php"><h2>Users list</h2></a>
   </div>
   <h1>Sales List</h1>
   <table >
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Option</th>
      <th>Qty</th>
      <th>Date and Time</th>
      <th>Mark ship</th>
      <th>More details</th>
    </tr>
   

   <?php 

   $ship=null;
   $cus_id=0;
  
   $query="SELECT order_details.order_id,order_details.item_id,order_details.qty FROM order_details,orders WHERE order_details.order_id=orders.order_id AND orders.paid='1' ORDER BY orders.date DESC;";
   $result= mysqli_query($connect,$query);
   

   if($result){
   while ($r=mysqli_fetch_assoc($result)){


    $order_id=$r['order_id'];
    $item_id=$r['item_id'];
    $qty=$r['qty'];
    
    $query1="SELECT date,shipped FROM orders WHERE (orders.order_id=$order_id AND paid='1') ORDER BY date DESC" ;
    $result1= mysqli_query($connect,$query1);
    if($result1){
    $r1=mysqli_fetch_assoc($result1);
    if(isset($r1['date'])){ 
         $date=$r1['date'];}
    if(isset($r1['shipped'])){ 
         $ship=$r1['shipped'];}else{$ship=NULL;}
    }

    $query2="SELECT options FROM order_details WHERE item_id= $item_id AND order_id= $order_id";
    $result2= mysqli_query($connect,$query2);
    $a1=mysqli_fetch_assoc($result2);
    if(isset($a1['options'])){ 
        $option=$a1['options'];
    }
    
    $query3="SELECT name FROM item WHERE item_id= $item_id";
    $result3= mysqli_query($connect,$query3);
    $a2=mysqli_fetch_assoc($result3);
    if(isset($a2['name'])){ 
        $name=$a2['name'];
    }



    
      echo "<tr>";
      echo "<td> $order_id</td>";
      echo "<td> $name</td>";
      echo "<td> $option</td>";
      echo "<td> $qty</td>"; 
      echo "<td> $date</td>";
      if($ship==null){
      echo "<td> <a href='mark_ship.php?id=".$r['order_id']."' class='btn'>mark_shipped</a></td>";} else { echo "<td> Shipped </td>";}

      echo "<td> <a href='more_details.php?id=".$r['order_id']."' class='btn'>go</a></td>";
      echo "</tr>";
    
    
    $address_id=null;
    $date=null;
    $name=null;
    

      }
      echo "</table>"; 
    }else{
        echo"Query is wrong";
    }

    

   ?>
    
</body>
</html>