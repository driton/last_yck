<?php

//Marrja e vleres se qytetit dhe ruajtja e saj ne variblen e meposhtme
$city = $_GET['city'];

//Marrja e vleres se kategorise dhe ruajtja e saj ne variblen e meposhtme
$category = $_GET['category'];

//Perfshirja e fajllit te lidhjes
require_once("include/connection.php");

//Perfshirja e fajllit te funksioneve
require_once("include/functions.php");

//Thirrja e funksionit per paraqitje te te dhenave sipas dy argumenteve (city & category)
tableRecreation($city, $category); 
 ?>