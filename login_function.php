<?php
/**
 * @param string $table
 * @return bool
 */
function loginFunction(string $table): bool
{
    if ($_SERVER['REQUEST_METHOD'] && isset($_POST) && count($_POST) > 0) {
        include "connect.php";
        $email = mysqli_real_escape_string($connect, $_POST["email"]);
        $password = mysqli_real_escape_string($connect, $_POST["password"]);
        $password2 = md5($password);

        if (isset($_POST["remember-me"])) {
            $rememberMe = mysqli_real_escape_string($connect, $_POST["remember-me"]);
        }

        $sql = "SELECT * FROM $table WHERE email='$email' AND (password='$password' OR password='$password2')";//remove password 1 later.

        $result = mysqli_query($connect, $sql);
        if (mysqli_num_rows($result)) {
            if ($table == "users") {
                $user_id = mysqli_fetch_assoc($result)['id'];
                if (isset($rememberMe) && $rememberMe) {
                    setcookie("user_id", $user_id, time() + 60 * 60 * 24 * 50); // with time sec * min * hours * day
                } else {
                    setcookie("user_id", $user_id);
                }
            } else if ($table == "admin") {
                if (isset($rememberMe) && $rememberMe) {
                    setcookie("admin_logged_in", true, time() + 60 * 60 * 24 * 50); // with time sec * min * hours * day
                } else {
                    setcookie("admin_logged_in", true);
                }
            }
            header("Location: home_page.php");
        } else {
            return false;
        }
    }
    return true;
}