<?php
if(isset($_POST['Confirm_OTP'])){
    session_start();
    if (isset($_SESSION['email'])) {
        $email = $_SESSION['email'];
        include "connect.php";
        $sql="select * from temp_users where email='$email'";
        $result= mysqli_query($connect,$sql);
        $row = mysqli_fetch_assoc($result);
        $result_otp=$row['otp'];
        $result_password=$row['password'];
        $reg_date=date("Y-m-d");
        $user_otp=$_POST['otp'];
        if ($result_otp==$user_otp){
            //inserting user data to user table and remove user from temp user table
            $sql_insert="INSERT INTO users (email, password, Name, reg_date) VALUES ('$email', '$result_password', null,'$reg_date')";
            $result_reg = mysqli_query($connect, $sql_insert); 
            $user_id = mysqli_insert_id($connect);
            $sql_delete = "DELETE FROM temp_users WHERE email = '$email'";
            $result_del = mysqli_query($connect, $sql_delete); 
            echo "Register succss <br>";
            setcookie("user_id", $user_id);
            unset($_SESSION['email']);

            header("Location:home_page.php");
        }
        else{
            header("Location:otp_get.php?error=Invalid OTP. Try Again"); 
        }

    }
    else{
        header("Location:register.php");
    }
}
?>
