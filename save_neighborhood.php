<?php
require_once("include/connection.php");
$city=$_POST['city'];
$name=$_POST['neighborhood'];
$latitude=$_POST['latitude'];
$longtitude=$_POST['longtitude'];

echo $city;

$query=mysql_query("INSERT INTO neighborhood (id_city,name,latitude,longitude) VALUES ($city,'$name', $latitude,$longtitude)");
if(!$query){
die("error ".mysql_error() );
}

?>