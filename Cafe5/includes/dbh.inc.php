<?php
$servername = "localhost";
$port = 4306; 
$userName = "sachinthani2";
$password = "DvHdiLS6NP8HGLnu";
$database = "cafe5";


$conn = mysqli_connect($servername, $userName, $password, $database, $port);


 if(!$conn){
        die("Connection Failed:".mysqli_connect_error());
    }
    
    else{
        echo'.';
    }