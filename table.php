 <?php 

//Get the neighborhood value and save in the variable
$neighborhood=$_GET['neighborhood'];

//Include the connection
include('include/connection.php');

//Include functions
include('include/functions.php');

//Here we called the function for table drawing or data appearance, in table form based from neighborhoods. The functions.php file
tabela($neighborhood);
 ?>