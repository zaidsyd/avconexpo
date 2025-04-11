<?php

    $servername = 'localhost';
    $username = 'avconexp_avconexpo_db';
    $password = 'Auctech@123';
    $database = "avconexp_avconexpo_db";

    $con = new mysqli($servername, $username, $password, $database);

    if($con->connect_error){
        die("connection failed : " .$con->connect_error);
    }
?>