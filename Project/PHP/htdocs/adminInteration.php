<?php
    
    $servername = "localhost";
    $username = "root";
    $password = "27021973";
    $database = "myCompany";
    
    $admin = new mysqli ($servername, $username, $password, $database);
    if ($admin->connect_error) {
        die("Connection failed: " . $conn -> connect_error);
    }

    $admin -> autocommit (true);
?>