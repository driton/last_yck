<?php
include("include/connection.php");
include("include/header.php");

?>
<form action="save_neighborhood.php" method="POST">
<?php select();?>
<input type="text" value="" name="neighborhood">
<input type="text" value="" name ="latitude">
<input type="text" value="" name ="longtitude">
<input type="submit" value="Save">
</form>