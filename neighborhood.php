<?php

//Merr city from index.php dhe e ruan ne variablen city ($city)
$city = $_GET['city'];

//Perfshirja e fajlit te lidhjes
require_once("include/connection.php");

//Perfshirja e fajlit te funksioneve
require_once("include/functions.php");

neighborhood($city); 
 ?>