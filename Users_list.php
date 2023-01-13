<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User list</title>
    <link rel="stylesheet" href="Users_list.css">
    <?php include 'connect.php'; ?> 
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
   </table>

   <?php 
   
   $query="SELECT id,Name,email FROM users";
   $result= mysqli_query($connect,$query);
   

   if($result){
   while ($r=mysqli_fetch_assoc($result)){

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


    echo "<table>";
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
    echo "</table>";       

      }
    
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