<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer\src\Exception.php';
require 'PHPMailer\src\PHPMailer.php';
require 'PHPMailer\src\SMTP.php';

if (true)//isset($_COOKIE['email']){
    $otp='12345';
    try{
        $mail=new PHPMailer(true);
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username='kawdaboy9999@gmail.com'; //add mail
        $mail->Password = 'otmytqvmethfebst'; // add key
        $mail->SMTPSecure = 'ssl';
        $mail->Port = 465;

        $mail->setFrom('kawdaboy9999@gmail.com'); //add mail
        $mail->addAddress('kaputa@rapt.be');//($_COOKIE['email']);
        $mail->isHTML(true);
        $mail->Subject="Verify Your Email";
        $mail->Body = '
        <div style="border: 2px solid black; padding: 20px; text-align: center; width:500px;">
            <h1>Email Verification Code</h1>
            <p>Please use the following code to verify your email address:</p>
            <h2>'.$otp.'</h2>
            <p>This code will expire in 60 minutes.</p>
        </div>';
        $mail->send();
    }
    catch (\Throwable $t){
        echo "error";
    }
?>