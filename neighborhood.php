<?php

//Get the city from index.php and than we save in ($city) variable
$city = $_GET['city'];

//Including the connection file
require_once("include/connection.php");

//Including the functions file
require_once("include/functions.php");

neighborhood($city); 
 ?>