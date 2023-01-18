<?php
   include 'connect.php';

   if(isset($_POST['Add_product'])){
        $name= $_POST['name'];
        $discription= $_POST['discription'];
        $price= $_POST['price'];
        $category= $_POST['category'];
    /*var_dump($_POST['product_image']);
        $product_image= $_POST['product_image'];
        $product_image_temp_name= $_POST['product_image'];
        $product_image_folder= 'uploaded_img/'.$product_image;
        */
        $quantity= $_POST['quantity'];
        $options= $_POST['options'];
        $item_pic = $_FILES['product_image'];

        if(empty($name) || empty($price) || empty($quantity) || empty($discription) ){
        $message[] = 'Please fill out ';
        }
        else{
            $insert= "INSERT INTO item(name, description, price, category, qty, options) VALUES('$name','$discription','$price', '$category','$quantity','$options')";
            $upload = mysqli_query($connect,$insert);
            if($upload){
                /*
                move_uploaded_file($product_image_temp_name, $product_image_folder);
                $message[] = 'new product added succesfully';
                */
                $item_id =mysqli_insert_id($connect); //modify
                // Move the uploaded file to the item_pics folder and rename it to the item ID
                //move_uploaded_file($item_pic['tmp_name'], 'item_pics/' . $item_id . '.jpg');
                move_uploaded_file($item_pic['tmp_name'], 'item_pics/' . $item_id . '.jpg');
                $message[] = 'new product added successfully';
            }
            else{
                $message[] = 'could not add the product';
            }
        }
    };

   
  
?>


<!DOCTYPE html>

<html>

<head>
<link rel="stylesheet" href="css/add_item_2.css">
<?php include 'connect.php';
      $url='site_img/background img.jpg';  ?>
</head>


<body>

   <?php
    if(isset($message)){
        foreach($message as $message){
            echo '<span class ="message"><h2 style="text-align:center">'.$message.'</h2></span>';
        }
    }
   ?>

    <style type="text/css">
        body
        {
        background-image:url('<?php echo $url ?>');
        }
    </style>
        
        <div class="head"> <button type="button" class="btn1" onclick="location.href='logout.php'">Log Out</button> </div>
      
        <div class="fir">
          <a  href="add_item.php" class="now"><h3>Add product</h3></a>
          <a  href="Product_list.php"><h3>Product list</h3></a>
          <a  href="Sales_list.php"><h3>Sales list</h3></a>
          <a  href="Users_list.php"><h3>Users list</h3></a>
        </div>

        <h1>Add product</h1>
        <form action="add_item.php" method="post" enctype="multipart/form-data">
        <table border="0">
            <tr>
               <td class="input4"><h2>Name</h2></td>
               <td  colspan="3"> <input type="text"  name="name" class="first"></td>
            </tr>
            <tr>
               <td><h2>Discription</h2></td>
               <td  colspan="3"><input type="text"  name="discription"  class="second" ></td>
            </tr>
            <tr>
               <td><h2>Price</h2></td>
               <td class="input3"><input type="text"  name="price" class="third"></td>
               <td><h2 class="new">Quantity</h2></td>
               <td><input type="text"  name="quantity" class="third"></td>
            </tr>
            <tr>
               <td><h2>Category</h2></td>
               <td class="input3"><input type="text"  name="category" class="third"></td>
               <td><h2 class="new">Options</h2></td>
               <td><input type="text"  name="options" class="third"></td>
            </tr>
            <tr>
               <td><h2>Image</h2></td>
               <td colspan="3"><input type="file" accept="image/jpg" name="product_image" class="box" style="color: azure;"></td>
            </tr>
            <tr>
               <td colspan="4" class="input1"><input type="submit" class="btn" name="Add_product" value="Add product"></td>
               
            </tr>
            
        </table></form>

        
</body>

</html> 