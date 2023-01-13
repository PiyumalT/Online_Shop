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
            var_dump($_FILES['product_image']);
            $item_pic = $_FILES['product_image'];

        if(empty($name) || empty($price) || empty($quantity) || empty($discription) ){
        $message[] = 'Please fill out ';
        }
        else{
            $insert= "INSERT INTO item(name, description, price, category, qty, options) VALUES('$name','$discription','$price', '$category','$quantity','$options')";
            $upload = mysqli_query($connect,$insert);
            echo $insert;
            if($upload){
                /*
                move_uploaded_file($product_image_temp_name, $product_image_folder);
                $message[] = 'new product added succesfully';
                */
                $item_id =mysqli_insert_id($connect); //modify
                // Move the uploaded file to the item_pics folder and rename it to the item ID
                move_uploaded_file($item_pic['tmp_name'], 'item_pics/' . $item_id . '.jpg');
            }
            else{
                $message[] = 'could not add the product';
            }
        }
    }

   
  
?>


<!DOCTYPE html>

<html>

<head>
<link rel="stylesheet" href="admin.css">
</head>


<body>

   <?php
    if(isset($message)){
        foreach($message as $message){
            echo '<span class ="message">'.$message.'</span>';
        }
    }
   
   
   
   ?>

        <br><br><h1>Add product</h1><br><br><br><br>
        <form action="admin.php" method="post" enctype="multipart/form-data">
            <div class="row">
                <div class="row-25">
                    <p>Name</p><br><br><br>
                    <p>Discription</p><br><br><br><br><br>
                    <p>Price</p><br><br><br>
                    <p>Image</p><br><br>
                    <p>Category</p>
                </div>
                <div class="row-75">
                    <div class="top">
                        
                        <label> <input type="text" size="100" name="name"></textarea></label><br><br><br>
                        <label> <textarea rows="4"    cols="100" name="discription"></textarea></label><br><br><br>
                    </div>
                    <div class="bottom">
                        <div class="left"> 
                                <label> <textarea rows="2"    cols="30" name="price"></textarea></label><br><br><br>
                                <label> <input type="file" accept="image/jpg" name="product_image" class="box"></label><br><br><br>
                                <label> <textarea rows="2"    cols="30" name="category" ></textarea></label><br><br><br> 
                        </div>
            
                        <div class="right">
                            <div class="half1">
                                <p>Quantity</p><br><br><br>
                                <p>Options</p>
                            </div>
                            <div class="half2">
                                <label> <textarea rows="2"    cols="30" name="quantity" ></textarea></label><br><br><br>
                                <label> <textarea rows="2"    cols="30" name="options" ></textarea></label><br><br><br>
                            </div>
                        </div>
                    </div>

                </div>
                

            </div>

            <div class="submit">
                
                    <br><br><br><br>
                    <label><input type="submit" class="button" name="Add_product" value="Add product"></label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <label><input type="button" class="button" name="Update product" value="Update product"></label>
            </div>
        </form>

</body>

</html>