<?php

//Get the city value and save the value in the variable showed below ($city)
$city = $_GET['city'];

//Get category value and save the value in the variable $category
$category = $_GET['category'];

//Include the connection file
require_once("include/connection.php");

//Include the functions file
require_once("include/functions.php");

//Thirrja e funksionit per paraqitje te te dhenave sipas dy argumenteve (city & category)
//Call the function for appearing based from two arguments( city & category)
tableRecreation($city, $category); 
 ?>