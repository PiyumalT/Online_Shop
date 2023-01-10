<?php
    $servername = "localhost";
    $username = "root";
    $password = "20nA@data";
    $dbname = "online_shop";

    // Create connection
    $connect = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($connect->connect_error) {
        echo "connected";
        die("Connection failed: " . $connect->connect_error."<br>");
    }
?>
