<?php
require_once("include/connection.php");
$name=$_POST['city'];
$latitude=$_POST['latitude'];
$longitude=$_POST['longtitude'];
$query=mysql_query("INSERT INTO cities (name,latitude,longtitude) VALUES ('$name', $latitude,$longitude)");
?>