<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User list</title>
    <link rel="stylesheet" href="css/Users_list.css">
    <?php include 'connect.php'; ?> 
    <?php include 'connect.php';
      $url='site_img/background img.jpg';  ?>
    <script>
    function confirmLink(link) {
    var confirmed = confirm("Are you sure you want to continue?");

    if (confirmed) {
        location.assign(link);
    }
    }
    </script> 
</head>
<body>
    <style type="text/css">
        body
        {
        background-image:url('<?php echo $url ?>');
        }
    </style>

   <div class="head"> <button type="button" class="btn1" onclick="location.href='logout.php'">Log Out</button> </div>
   
   <div class="first">
          <a  href="add_item.php"><h2>Add product</h2></a>
          <a  href="Product_list.php" ><h2>Product list</h2></a>
          <a  href="Sales_list.php"><h2>Sales list</h2></a>
          <a  href="Users_list.php" class="now"><h2>Users list</h2></a>
   </div>

   <h1>User List</h1>
   <table >
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Email</th>
      <th>Address</th>
      <th>Total Purchases</th>
      <th>Remove User</th>
    </tr>
   

   <?php

   $query="SELECT id,Name,email FROM users";
   $result= mysqli_query($connect,$query);
   
   if($result){
   while ($r=mysqli_fetch_assoc($result)){
    
    $line_1 = null;
    $line_2 = null;
    $city = null;
    $country = null;
    $name=null;

    $id=$r['id'];
    $name=$r['Name'];
    $email=$r['email'];

    $query1="SELECT line_1,line_2,city,country FROM address WHERE user_id=$id";
    $result1= mysqli_query($connect,$query1);
    if($result1){
    $r1=mysqli_fetch_assoc($result1);

     if(isset($r1['line_1'])){
        $line_1=$r1['line_1'];}
     if(isset($r1['line_2'])){
        $line_2=$r1['line_2'];}
     if(isset($r1['city'])){
        $city=$r1['city'];}
     if(isset($r1['country'])){
        $country=$r1['country'];}} else{$id="";} 

    $query2="SELECT COUNT(order_id) FROM orders WHERE cus_id=$id";
    $result2= mysqli_query($connect,$query2);
    $a=mysqli_fetch_assoc($result2);
    $total=$a['COUNT(order_id)'];
    

    //echo "<table>";
      echo "<tr>";
      echo "<td> $id </td>";
      echo "<td> $name </td>";
      echo "<td> $email </td>";
      echo "<td> $line_1 $line_2 $city $country</td>"; 
      echo "<td> $total</td>";
        $url="Users_list.php?id=".$r['id'];
        ?>
        <td><a href="<?php echo $url ?>" class='btn' onclick="confirmLink(<?php echo $url ?>); return false;">Remove</a></td>
        <?php
        //echo "<td> <a href='Users_list.php?id=".$r['id']."' class='btn'>Remove</a></td>";
        echo "</tr>";
    //echo "</table>"; 
     }
    
    echo "</table>";
    }else{
        echo"Query is wrong";
    }

    if(isset ($_REQUEST['id'])){
        $id=$_REQUEST['id'];
        $query2="DELETE FROM users WHERE users.id=$id ";
        $result2= mysqli_query($connect,$query2);
        if ($result2) {
            $url = $_SERVER['PHP_SELF'];
            header("Location: $url");
            exit;
        }
       }

   ?>
  
</body>
</html>