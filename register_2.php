<html>
  <head>
    <link rel="stylesheet" type="text/css" href="style2.css">
  </head>
  <body>
    <?php
    include "connect.php";
    //checking email already exist
    $email_already=false;
    $error_email="";
    if(isset($_POST['submit'])){
      $email=$_POST['email'];
      $sql_email="select email from users where email='$email'";
      $result_email = mysqli_query($connect,$sql_email);
      if (mysqli_num_rows($result_email) > 0) {
        $error_email="Email Already exisit";
        $email_already=true;
        echo $error_email;
        header("Location:".$_SERVER['PHP_SELF']."?error=".$error_email);
      }
      else{
        //save registration data to temp_user table
        $password=$_POST['password'];
        $otp=123;
        //todo - add update if already email in the temp table
        $sql_insert="INSERT INTO temp_users (email, password, otp) VALUES ('$email', '$password', '$otp')";
        $result_reg = mysqli_query($connect, $sql_insert);  
        session_start();
        //session_id($email);
        $_SESSION['email'] = $email;
        }
        header("Location:otp_get.php");
      }

    else{ 
      if(isset($_REQUEST['error'])){
        $error_email=$_REQUEST['error'];
      }
      else{
        $error_email="";
      }
    //HTML file for register form
    ?>
    <div class="form-box">
      <form action="<?php echo $_SERVER["PHP_SELF"]?>" method="post" onsubmit="return validdata()">
        <h1 style="text-align: center">Create New Account</h1>
        <label for="email">Email:</label>
        <br>
        <input type="email" id="email" name="email" style="width:100%" required>
        <br>
        <p id="emailError"><?php echo $error_email?></p>
        <br>
        <label for="password">Password:</label>
        <br>
        <input type="password" id="password" name="password" style="width:100%" required>
        <br>
        <p id="passwordError"></p>
        <br>
        <label for="confirmPassword">Confirm Password:</label>
        <br>
        <input type="password" id="confirmPassword" name="confirmPassword" style="width:100%" required>
        <br>
        <p id="confirmPasswordError"></p>
        <br>
        <input type="submit" style="width:100%" value="Create Account" id="submit" name="submit">
        <br>
        <br>
        <div style="text-align: center">
            <a href="/login" style="text-align: center;">Already have an account? Login here</a>
        </div>
        
      </form>
    </div>
    <?php
    }
    ?>
  </body>
</html>
