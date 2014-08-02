<?php

//Perfshirja e konstanteve
require_once("constant.php");

//Funksioni i lidhjes me host
$connection=mysql_connect(HOST,USER,PASSWORD);

//Kontrollon, nese lidhja deshton
if(!$connection){
die("Lidhja me HOST deshtoi");
}
//Perzgjedhja e databazes
$db = mysql_select_db("yck");
?>