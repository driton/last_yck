<?php

$city = $_GET['city'];
require_once("include/connection.php");
require_once("include/functions.php");

category($city); 
 ?>