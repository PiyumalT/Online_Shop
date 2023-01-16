<?php
include_once('connect.php');
if (isset($_POST['Add_product'])) {
    $name = mysqli_real_escape_string($connect, $_POST['name']);
    $description = mysqli_real_escape_string($connect, $_POST['description']);
    $price = mysqli_real_escape_string($connect, $_POST['price']);
    $category = mysqli_real_escape_string($connect, $_POST['category']);
    /* var_dump($_POST['product_image']);
      $product_image= $_POST['product_image'];
      $product_image_temp_name= $_POST['product_image'];
      $product_image_folder= 'uploaded_img/'.$product_image;
      */
    $quantity = mysqli_real_escape_string($connect, $_POST['quantity']);
    $options = mysqli_real_escape_string($connect, $_POST['options']);
    var_dump($_FILES['product_image']);
    $item_pic = mysqli_real_escape_string($connect, $_FILES['product_image']);

    if (empty($name) || empty($price) || empty($quantity) || empty($discription)) {
        $message[] = 'Please fill out ';
    } else {
        $insert = "INSERT INTO item(name, description, price, category, qty, options) VALUES('$name','$discription','$price', '$category','$quantity','$options')";
        $upload = mysqli_query($connect, $insert);
        echo $insert;
        if ($upload) {
            /*
            move_uploaded_file($product_image_temp_name, $product_image_folder);
            $message[] = 'new product added succesfully';
            */
            $item_id = mysqli_insert_id($connect); //modify
            // Move the uploaded file to the item_pics folder and rename it to the item ID
            move_uploaded_file($item_pic['tmp_name'], 'item_pics/' . $item_id . '.jpg');
        } else {
            $message[] = 'could not add the product';
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="./css/additem.css">
    <title>Add Product Page</title>
</head>
<body>
<?php
if (isset($message)) {
    foreach ($message_text as $message) {
        echo '<span class ="message">' . $message_text . '</span>';
    }
}


?>
<h1>Add product</h1>
<form action="additem.php" method="post">
    <label for="name">
        Name
        <input type="text" name="name" required id="name">
    </label>

    <label for="price">
        Price(Rs.)
        <input name="price" required id="price">
    </label>

    <label for="category">
        Category
        <textarea name="category" required id="category"></textarea>
    </label>

    <label for="product_image">
        Image
        <input type="file" accept="image/jpg" name="product_image" class="box" required id="product_image">
    </label>

    <label for=" quantity">
        Quantity
        <textarea rows="2" cols="30" name="quantity" id="quantity"></textarea>
    </label>

    <label for="options">
        Options
        <textarea rows="2" cols="30" name="options" id="options"></textarea>
    </label>


    <label for="description">
        Description
        <textarea name="description" required id="description"></textarea>
    </label>

    <button type="submit" class="button" name="Add_product">Add product</button>
</form>
</body>
<script>
    const labels = document.querySelectorAll("label");
    for (let i = 0; i < labels.length; i++) {
        let name = "";
        if (labels[i].querySelector("input")) {
            name = labels[i].querySelector("input").name;
        } else {
            name = labels[i].querySelector("textarea").name
        }
        labels[i].style.gridArea = name;
    }
</script>
</html>