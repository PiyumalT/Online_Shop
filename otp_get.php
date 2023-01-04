<html>
    <head>
    <link rel="stylesheet" type="text/css" href="css/style2.css">
    </head>
    <body>
        <?php
        
        session_start();
        if (isset($_SESSION['email'])) {
            $email = $_SESSION['email'];
            //echo "Email: " . $email;
            if(isset($_REQUEST['error'])){
                $error_otp=$_REQUEST['error'];
              }
            else{
                $error_otp="";
            }
        ?>
            <div class="form-box">
            <h1 style="text-align: center">Create New Account</h1>
            <p>An OTP has been sent to <b> <?php echo $email ?> </b>. If you did not receive the OTP, you can:</p>
            <button type="button" onclick="changeEmail()">Change Email</button>
            <button type="button" onclick="resendEmail()">Resend Email</button>
            <br>
            <br>
            <form action="otp_confirm.php" method="post" onsubmit="return validdata()">
                <label for="otp">OTP:</label>
                <br>
                <input type="text" id="otp" name="otp" style="width:100%; font-size: larger" required>
                <br>
                <p id="otpError"><?php echo $error_otp?></p>
                <br>
                <input type="submit" value="Confirm OTP" name="Confirm_OTP" id="Confirm_OTP" style="width:100%"></button>
            </form>
            </div>
        <?php
        }
        else{
            header("Location:register_2.php");
        }
        ?>
  </body>
</html>
