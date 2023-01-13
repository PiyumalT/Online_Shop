<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product list</title>
    <link rel="stylesheet" href="Product_list.css">
    <?php include 'connect.php'; ?>
   
</head>
<body>

   <h1>Product List</h1>
   <table >
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Details</th>
      <th>Unsold</th>
      <th>Sold</th>
      <th>Edit</th>
      <th>Delete</th>
    </tr>
   </table>

   <?php 
   $query="SELECT item_id,name,description,qty FROM item ";
   $result= mysqli_query($connect,$query);
   

   if($result){
   while ($r=mysqli_fetch_assoc($result)){

    $id=$r['item_id'];
    $name=$r['name'];
    $description=$r['description'];
    $qty=$r['qty'];
    

    $query1="SELECT SUM(qty) FROM order_details WHERE item_id=$id";
    $result1= mysqli_query($connect,$query1);
    $a=mysqli_fetch_assoc($result1);
    $total=$a['SUM(qty)'];
    $difference=$qty-$total;



    echo "<table>";
      echo "<tr>";
      echo "<td> $id </td>";
      echo "<td> $name </td>";
      echo "<td> $description </td>";
      echo "<td> $difference</td>"; 
      echo "<td> $total</td>";
      echo "<td> <a href='Add_product.php?id=".$r['item_id']."' class='btn'>Edit</a></td>";
      echo "<td> <a href='Product_list.php?id=".$r['item_id']."' class='btn'>Delete</a></td>";
      echo "</tr>";
    echo "</table>";       

      }
    
    }else{
        echo"Query is wrong";
    }

    if(isset ($_REQUEST['id'])){
        $item_id=$_REQUEST['id'];
        $query2="DELETE FROM item WHERE item_id=$item_id ";
        $result2=mysqli_query($connect,$query2);
        if ($result2) {
            $url = $_SERVER['PHP_SELF'];
            header("Location: $url");
            exit;
        }
       }

   ?>
    
    
</body>
</html>