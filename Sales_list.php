<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sales list</title>
    <link rel="stylesheet" href="Sales_list.css">
    <?php include 'connect.php'; ?>
</head>
<body>

   <h1>Sales List</h1>
   <table >
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Option</th>
      <th>Qty</th>
      <th>Date</th>
      <th>Customer email</th>
      <th>Customer address</th>
      <th>Mark ship</th>
    </tr>
   </table>

   <?php 
   
   $query="SELECT order_id,item_id,qty FROM order_details";
   $result= mysqli_query($connect,$query);
   

   if($result){
   while ($r=mysqli_fetch_assoc($result)){


    $order_id=$r['order_id'];
    $item_id=$r['item_id'];
    $qty=$r['qty'];
    
    $query1="SELECT date,cus_id,address_id FROM orders WHERE orders.order_id=$order_id";
    $result1= mysqli_query($connect,$query1);
    if($result1){
    $r1=mysqli_fetch_assoc($result1);
    if(isset($r1['date'])){ 
         $date=$r1['date'];}
    if(isset($r1['cus_id'])){
         $cus_id=$r1['cus_id'];}
    if(isset($r1['address_id'])){
    $address_id=$r1['address_id'];} }

    /*$query2="SELECT email FROM users WHERE id=$cus_id";
    $result2= mysqli_query($connect,$query2);
    $n=mysqli_fetch_assoc($result2);
    if(isset($n['email'])){ 
    $email=$n['email'];}
    
    $query3="SELECT line_1,line_2,city,country FROM address WHERE address_id=$address_id";
    $result3= mysqli_query($connect,$query3);
    $n1=mysqli_fetch_assoc($result3);
    if(isset($n1['line_1'])){ 
      $line=$n1['line_1'];}
    
    if(isset($s['line_2'])){ 
      $line_2=$s['line_2'];}
    if(isset($s['city'])){ 
      $city=$s['city'];}
    if(isset($s['country'])){ 
      $country=$s['country'];}*/

    $query4="SELECT name,options FROM item WHERE item_id= $item_id";
    $result4= mysqli_query($connect,$query4);
    $a1=mysqli_fetch_assoc($result4);
    if(isset($a1['name'])){ 
        $name=$a1['name'];
    } 
    if(isset($a1['options'])){ 
        $option=$a1['options'];
    } 

    echo "<table>";
      echo "<tr>";
      echo "<td> $order_id</td>";
      echo "<td> $name</td>";
      echo "<td> $option</td>";
      echo "<td> $qty</td>"; 
      echo "<td> $date</td>";
      echo "<td> $name</td>";
      echo "<td> $address_id</td>";
      echo "<td> $date</td>";
      echo "</tr>";
    echo "</table>"; 
    
    $address_id=null;
    $date=null;
    $name=null;
    

      }
    
    }else{
        echo"Query is wrong";
    }

    

   ?>
    
</body>
</html>