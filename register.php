<html>
  <head>
    <link rel="stylesheet" type="text/css" href="css/register.css">
    <script src="js/register.js" type="text/javascript"></script>
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
      //if email alredy exist
      if (mysqli_num_rows($result_email) > 0) {
        $error_email="Email Already exisit";
        $email_already=true;
        //echo $error_email;
        header("Location:".$_SERVER['PHP_SELF']."?error=".$error_email);
      }
      else{
        //save registration data to temp_user table
        $password=$_POST['password'];
        $otp=123;

        //todo - add update if already email in the temp table
        
        $sql_check_temp="select email from temp_users where email='$email'";
        $result_temp_table = mysqli_query($connect,$sql_check_temp);
        if (mysqli_num_rows($result_temp_table) > 0) {
          $sql="UPDATE temp_users SET password = '$password', otp = '$otp' WHERE email = '$email'";
        }
        else{
          $sql="INSERT INTO temp_users (email, password, otp) VALUES ('$email', '$password', '$otp')";
        }
        $result_reg = mysqli_query($connect, $sql);  
        session_start();
        $_SESSION['email'] = $email;
        header("Location:otp_get.php");
      }
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
      <form action="<?php echo $_SERVER["PHP_SELF"]?>" method="post" onsubmit="return validate_all()">
        <h1 style="text-align: center">Create New Account</h1>
        <label for="email">Email:</label>
        <br>
        <input type="email" id="email" name="email" style="width:100%" onchange="validateEmail()" required>
        <br>
        <p id="emailError"><?php echo $error_email?></p>
        <br>
        <label for="password">Password:</label>
        <br>
        <input type="password" id="password" name="password" style="width:100%" onchange="validatePassword()" required>
        <br>
        <p id="passwordError"></p>
        <br>
        <label for="confirmPassword">Confirm Password:</label>
        <br>
        <input type="password" id="confirmPassword" name="confirmPassword" style="width:100%" onchange="validateConfirmPassword()" required>
        <br>
        <p id="confirmPasswordError"></p>
        <br>
        <input type="submit" style="width:100%" value="Create Account" id="submit" name="submit">
        <br>
        <br>
        <div style="text-align: center">
            <a href="login.php" style="text-align: center;">Already have an account? Login here</a>
        </div>
        
      </form>
    </div>
    <?php
    }
    ?>
  </body>
</html>
