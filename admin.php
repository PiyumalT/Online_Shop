<?php
   @include 'connection.php';

   if(isset($_POST['Add product'])){
            $name= $_POST['name'];
            $discription= $_POST['discription'];
            $price= $_POST['price'];
            $category= $_POST['category'];
            $product_image= $_POST['product_image']['name'];
            $product_image_temp_name= $_POST['product_image']['temp_name'];
            $product_image_folder= 'uploaded_img/'.$product_image;
            $quantity= $_POST['quantity'];
            $options= $_POST['options'];

        if(empty($name) || empty($price) || empty($quantity) || empty($discription) ){
        $message[] = 'Please fill out ';
        }
        else{
            $insert= "INSERT INTO item(name, discription, price, category, image, quantity, options) VALUES('$name','$discription','$price', '$category', '$product_image','$quantity','$options')";
            $upload = mysqli_query($conn,$insert);
            if($upload){
                move_uploaded_file($product_image_temp_name, $product_image_folder);
                $message[] = 'new product added succesfully';

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
<link rel="stylesheet" href="style.css">
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
                    <form>
                        <label> <input type="text" size="100" name="name"></textarea></label><br><br><br>
                        <label> <textarea rows="4"    cols="100" name="discription"></textarea></label><br><br><br>
                </form>
                </div>
                <div class="bottom">
                    <div class="left">
                        <form>
                            <label> <textarea rows="2"    cols="30" name="price"></textarea></label><br><br><br>
                            <label> <input type="file" accept="image/jpg" name="product_image" class="box"></label><br><br><br>
                            <label> <textarea rows="2"    cols="30" name="category" ></textarea></label><br><br><br>

                        </form>
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
                <form>
                
                
                
                </form>
            </div>
            

        </div>

        <div class="submit">
            <form>
                <br><br><br><br>
                <label><input type="button" class="button" name="Add product" value="Add product"></label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <label><input type="button" class="button" name="Update product" value="Update product"></label>
            </form>
        </div>

</body>

</html>