<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer\src\Exception.php';
require 'PHPMailer\src\PHPMailer.php';
require 'PHPMailer\src\SMTP.php';

session_start();
if (isset($_SESSION['email'])) {
    $email = $_SESSION['email'];

    try{
        include "connect.php";
        $sql="select * from temp_users where email='$email'";
        $result= mysqli_query($connect,$sql);
        $row = mysqli_fetch_assoc($result);
        $result_otp=$row['otp'];

        $mail=new PHPMailer(true);
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username='mail@gmail.com'; // Add admin emails
        $mail->Password = 'otmyt'; // add app password
        $mail->SMTPSecure = 'ssl';
        $mail->Port = 465;

        $mail->setFrom('mail@gmail.com'); // Add admin emails
        $mail->addAddress($email);
        $mail->isHTML(true);
        $mail->Subject="Verify Your Email";
        $mail->Body = '
        <div style="border: 2px solid black; padding: 20px; text-align: center; width:500px;">
            <h1>Email Verification Code</h1>
            <h3> Elite Nova </h3>
            <p>Please use the following code to verify your email address:</p>
            <h2>'.$result_otp.'</h2>
            <p>This code will expire in 60 minutes.</p>
        </div>';
        $mail->send();
        header("Location:otp_get.php");
        exit;
    }
    catch (\Throwable $t){
        echo "error";
        header("Location:register.php");
        
    }
}
?>
