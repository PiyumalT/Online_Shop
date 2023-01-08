<html>
<head>
    <link rel="stylesheet" type="text/css" href="enter_address.css">
    <script src="enter_address.js"></script>
    <title>Online Shop</title>
</head>
<body>
    <?php
    if(true){//get cookie
        if(isset($_REQUEST['order_id'])){
            include "connect.php";
            $temp_order_id = $_REQUEST['order_id'];
            $user_id=1;
            $sql="SELECT * FROM address WHERE user_id = $user_id ORDER BY address_id DESC";
            $result = mysqli_query($connect, $sql); 
            
            if (mysqli_num_rows($result) > 0) {
                $row = mysqli_fetch_row($result);
                $address_id=$row[0];
                $name = $row[2];
                $line1=$row[3];
                $line2=$row[4];
                $city=$row[5];
                $province=$row[6];
                $country=$row[7];
                $zip=$row[8];
                $phone=$row[9];
            }
            else{
                $address_id="";
                $name="";
                $line1="";
                $line2="";
                $city="";
                $province="";
                $country="";
                $zip="";
                $phone="";
            }
            
            ?>
            <input type="hidden" id="h_address_id" name="address_id" value="<?php echo $address_id; ?>">
            <input type="hidden" id="h_name" name="name" value="<?php echo $name; ?>">
            <input type="hidden" id="h_line1" name="line1" value="<?php echo $line1; ?>">
            <input type="hidden" id="h_line2" name="line2" value="<?php echo $line2; ?>">
            <input type="hidden" id="h_city" name="city" value="<?php echo $city; ?>">
            <input type="hidden" id="h_province" name="province" value="<?php echo $province; ?>">
            <input type="hidden" id="h_country" name="country" value="<?php echo $country; ?>">
            <input type="hidden" id="h_zip" name="zip" value="<?php echo $zip; ?>">
            <input type="hidden" id="h_phone" name="phone" value="<?php echo $phone; ?>">


            <div class="container">
            <h1>Enter address</h1>
            <form onsubmit="return validateForm()" action="address_save.php">
                <label for="name">Name:</label><br>
                <input type="text" id="name" name="name" placeholder="Enter your name" onchange="validateName()"><br>
                <p id="nameError" class="error"></p>
                <table>
                <tr>
                <td>
                    <label for="address1">Address Line 1:</label><br>
                    <input type="text" id="address1" name="address1" placeholder="Enter address line 1" onchange="validateAddress1()"><br>
                    <p id="address1Error" class="error"></p>
                </td>
                <td>
                    <label for="address2">Address Line 2:</label><br>
                    <input type="text" id="address2" name="address2" placeholder="Enter address line 2" onchange="validateAddress2()"><br>
                    <p id="address2Error" class="error"></p>
                </td>
                </tr>
                
                <tr>
                <div class="form-row">
                <td>
                    <label for="city">City:</label><br>
                    <input type="text" id="city" name="city" placeholder="Enter your city" onchange="validateCity()">
                    <p id="cityError" class="error"></p>
                </td>
                <td>
                    <label for="postalCode">Postal Code:</label><br>
                    <input type="text" id="postalCode" name="postalCode" maxlength="10" placeholder="Enter your postal code" onchange="validatePostalCode()">
                    <p id="postalCodeError" class="error"></p>
                </td>
                </div>
                </tr>
                <tr>
                <div class="form-row">
                    <td>
                    <label for="province">Province:</label><br>
                    <input type="text" id="province" name="province" placeholder="Enter your province" onchange="validateProvince()">
                    <p id="provinceError" class="error"></p>
                </td>
                <td>
                    <label for="country">Country:</label><br>
                    <input type="text" id="country" name="country" placeholder="Enter your country" onchange="validateCountry()">
                    <p id="countryError" class="error"></p>
                </td>
                </div>
                </tr>
                <tr>
                    <td>
                        <label for="phoneNumber">Phone Number:</label><br>
                        <input type="text" id="phoneNumber" name="phoneNumber" placeholder="Enter your phone number" onchange="validatePhoneNumber()"><br>
                        <p id="phoneNumberError" class="error"></p>
                    </td>
                    <td>
                        <button type="reset" style="width: 40%;">Clear Address</button>
                    </td>

                </tr>
                </table>    
                <input type="hidden" id="address_changed" name="address_changed" value="0">
                <input type="hidden" id="order_id" name="order_id" value="<?php echo $temp_order_id?>">

                <div class="button-container">
                    <input type="submit" name="place_order" id="place_order" value="Continue Checkout">
                    <button type="submit" >Cancel Order</button>
                </div>      
            </form> 
            </div>
        <?php
        }
        else{
            echo "No Orderid";
        }
        
    }
    else{
        echo "No user"; //make header location
    }
    ?>

</body>
</html>
