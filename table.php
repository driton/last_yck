 <?php 
//Marrja e vleres se neighborhood dhe ruajtja ne varaibel
$neighborhood=$_GET['neighborhood'];

//Perfshirja e lidhjes
include('include/connection.php');

//Perfshirja e fajlit te funksioneve
include('include/functions.php');

//Eshte thirrur funksioni per vizatim apo paraqitje te te dhenave, ne forme tabelare sipas lagjeve. Fajli functions.php
tabela($neighborhood);
 ?>