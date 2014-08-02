<?php

//Including of the constants
require_once("constant.php");

//Function for host connection
$connection=mysql_connect(HOST,USER,PASSWORD);

//Check if the connection dies
if(!$connection){
die("Connection with host failed");
}
//Selection of the database
$db = mysql_select_db("yck");
?>