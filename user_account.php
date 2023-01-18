<?php
include_once("connect.php");

$user_id = 1;//$_COOKIE["user_id"];
$feedback = array();
if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST)) {
    if (isset($_POST['name']) && $_POST['name'] != "" &&
        isset($_POST['email']) && $_POST['email'] != "" &&
        isset($_POST['password']) && $_POST['password'] != "" &&
        isset($_POST['re-type-password']) && $_POST['re-type-password'] != "" &&
        isset($_POST["line_1"]) && $_POST["line_1"] != "" &&
        isset($_POST["line_2"]) && $_POST["line_2"] != "" &&
        isset($_POST["city"]) && $_POST["city"] != "" &&
        isset($_POST["province"]) && $_POST["province"] != "" &&
        isset($_POST["country"]) && $_POST["country"] != "" &&
        isset($_POST["zip_code"]) && $_POST["zip_code"] != "" &&
        isset($_POST["phone"]) && $_POST["phone"] != ""
    ) {
        if ($_POST['password'] != $_POST['re-type-password']) {
            $feedback['error'] = [
                "status" => 422,
                "message" => "passwords entered not match.",
            ];
        }
        $query = "UPDATE `users` SET `email`='" . $_POST['email'] . "',`password`='" . $_POST['password'] . "',`Name`='" . $_POST['name'] . "' WHERE id='$user_id'";
        $results = mysqli_query($connect, $query);
        if (mysqli_affected_rows($connect) == 1) {
            $feedback['user'] = [
                "status" => 200,
                "message" => "User updated successfully",
            ];
        }
        $query = "UPDATE `address` SET 
                     `line_1`='" . $_POST["line_1"] . "',
                     `line_2`='" . $_POST["line_2"] . "',
                     `city`='" . $_POST["city"] . "',
                     `province`='" . $_POST["province"] . "',
                     `country`='" . $_POST["country"] . "',
                     `zip_code`='" . $_POST["zip_code"] . "',
                     `phone`='" . $_POST["phone"] . "' 
                     WHERE `user_id`='$user_id'";
        $results = mysqli_query($connect, $query);
        if (mysqli_affected_rows($connect) == 1) {
            $feedback['address'] = [
                "status" => 200,
                "message" => "Address updated successfully",
            ];
        }
    } else {
        $feedback['error'] = [
            "status" => 422,
            "message" => "All fields are mandatory. So, cannot be can be empty",
        ];
    }

}

if (isset($user_id)) {
    $query = "SELECT name,email,password FROM users WHERE id=$user_id";
    $results = mysqli_query($connect, $query);
    if (mysqli_num_rows($results) == 1) {
        $user = mysqli_fetch_assoc($results);
        $name = $user["name"];
        $email = $user["email"];
        $password = $user["password"];
    } else {
        header("Location: home_page.php");
    }

}


?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo $name ?>'s Account</title>
    <link rel="stylesheet" href="reset.css">
    <link rel="stylesheet" href="css/user_account.css">
</head>
<body>
<div class="feedback" style="background-color: black">
    <?php
    if (isset($feedback['error'])) {
        echo "<div class='font-border-rd msg'>" . $feedback['error']["message"] . "</div>";
    }
    if (isset($feedback['user'])) {
        if ($feedback['user']['status'] == 200) {
            $css_class = 'font-border-green';
        } else if ($feedback['user']['status'] == 422) {
            $css_class = 'font-border-red';
        }
        echo "<div class='$css_class msg'>" . $feedback['user']["message"] . "</div>";
    }
    if (isset($feedback['address'])) {
        if ($feedback['address']['status'] == 200) {
            $css_class = 'font-border-green';
        } else if ($feedback['address']['status'] == 422) {
            $css_class = 'font-border-red';
        }
        echo "<div class='$css_class msg'>" . $feedback['address']["message"] . "</div>";
    }
    ?>
</div>
<div class="edit-user-btn-container">
    <button class="edit-user" onclick="triggerEditMode(this)" data-in-edit-mode="false">Edit Details.</button>
</div>
<form method="post" class="user">
    <h2>User Details</h2>
    <hr><br><br>
    <div class="details"><label for="name">Name
            <input disabled="disabled" type="text" id="name" name="name" value="<?php echo $name ?>">
        </label>
        <label for="email">E-mail
            <input disabled type="email" id="email" name="email" value="<?php echo $email ?>">
        </label>
        <label for="password">Password
            <input disabled type="password" name="password" id="password"
                   value="<?php echo $password ?>">
        </label>
        <label for="re-type-password" class="hide">Retype password
            <input disabled type="password" name="re-type-password" id="re-type-password"
                   value="<?php echo $password ?>">
        </label>
    </div>
    <br>
    <h3>Address</h3>
    <hr><br>
    <div class="address">
        <?php
        $query = "SELECT line_1, line_2, city, province, country, zip_code, phone FROM address WHERE user_id='$user_id'";
        if ($results = mysqli_query($connect, $query)) {
//            if (mysqli_num_rows($results) == 1) {
            $address = mysqli_fetch_assoc($results);
            foreach ($address as $key => $value) {
                echo "<label for=\"$key\">$key <input disabled type=\"text\" id=\"$key\"  value=\"$value\" name='$key'></label> ";
            }
//            }
        }
        ?>
    </div>
</form>
<div class="button-section" style="display:none;">
    <button class="reset" type="reset" onclick="ResetDetails()">Reset</button>
    <button class="save-user" type="submit" id="login-btn" onclick="submitDetails()">Save</button>
</div>
<div class="empty-container">reset</div>
<script src="./js/user_page.js"></script>
<script src="./js/remove_effect_of_invalid_and_valid_css_effect.js"></script>
</body>
</html>

