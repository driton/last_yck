<?php
//Function for city selection
function select(){
$query= mysql_query("SELECT * FROM cities ");
echo "<select onchange='filterNeighborhood();' name='city' id='city'  class='form-control'>";
echo "<option value='-1'>Select City</option>";
while($cities = mysql_fetch_array($query)){
echo "<option value='".$cities['id']."'>" .$cities['name']."</option>";
}
echo"</select>";
}

//Function for selecting the city for Waste Collection module
function selectForTrash(){
$query= mysql_query("SELECT * FROM cities ");
echo "<select onchange='filterNeighborhoodTrash();' name='city' id='city'  class='form-control'>";
echo "<option value='-1'>Select City</option>";
while($cities = mysql_fetch_array($query)){
echo "<option value='".$cities['id']."'>" .$cities['name']."</option>";
}
echo"</select>";
}
//Function for city select for the Recreational Activities module
function selectCityRecreation(){
$query= mysql_query("SELECT * FROM cities ");
echo "<select onchange='filterCategories();' name='city_recreation' id='city_recreation'  class='form-control'>";
echo "<option value='-1'>Select City</option>";
while($cities = mysql_fetch_array($query)){
echo "<option value='".$cities['id']."'>" .$cities['name']."</option>";
}
echo"</select>";
}
//Function for neighborhood selection with city as an argument, therefore is dependent by the city selected
function neighborhood($city){
$query= mysql_query("SELECT * FROM neighborhood WHERE id_city = $city");
echo "<select name='neighborhood' id='neighborhood_select'  class='form-control'>";
echo "<option value='-1'>Select Neighborhood</option>";
while($cities = mysql_fetch_array($query)){
echo "<option value='".$cities['id']."|".$cities['latitude']."|".$cities['longitude']."'>" .$cities['name']."</option>";
}
echo"</select>";
}

//Function for category selection for recreation, with city as the argument
function category(){
$query= mysql_query("SELECT * FROM recreations_category ");
echo "<select name='category' id='category_select' class='form-control'>";
echo "<option value='-1'>Select category</option>";
while($category = mysql_fetch_array($query)){
echo "<option value='".$category['id']."'>".$category['name']."</option>";
}
echo"</select>";

}
//Function for table drawing for recreation, as an argument comes city and category
function tableRecreation($city, $category){
	echo "<div class='table-responsive table-results'>
                     <table class='table'>
                       <thead>
                         <tr>
                           <th>#</th>
                           <th>Title</th>
                           <th>Description</th>
                         </tr>
                       </thead>
                       <tbody>";
$query= mysql_query("SELECT * FROM recreations WHERE id_city = $city AND category_id = $category");
$count = 0;
while($recreation = mysql_fetch_array($query)){
	$count ++;
	echo "<tr><td>".$count."</td><td>".$recreation['title']."</td><td>".$recreation['description']."</td></tr>";
}
echo "</tbody></table><!-- /.table --></div><!-- /.table-responsive table-results -->";
}


//Function for drawing the Water Reductions table, neighborhood as the argument
function tabela($neighborhood){
$query=mysql_query("SELECT * FROM Water_Supply WHERE id_neighborhood=$neighborhood");
echo "<div class='table-responsive table-results'>
                     <table class='table'>
                       <thead>
                         <tr>
                           <th>Oraret</th>
                           <th></th>
                           <th>Prej</th>
                           <th></th>
                           <th>Deri</th>
                           <th></th>
                         </tr>
                       </thead>
                       <tbody>";
                     
while($query1=mysql_fetch_array($query)){
echo       "<tr>
           <td>".$query1['description']."</td> 
           <td></td>                 
           <td>".$query1['start_h']."</td>
           <td></td>
           <td>".$query1['finish_h']."</td>
           </tr>";
         }
          
echo "</tbody>
                     </table><!-- /.table -->
                  </div><!-- /.table-responsive table-results -->";



 }

 
//Function for data submission of Waste Collection
 function table($neighborhood){

$query= mysql_query("SELECT * FROM  trash_collection WHERE id_neighborhood=$neighborhood");
echo "<div class='table-responsive table-results'>
<table class='table'
                       <thead>
                         <tr>
                           <th>Rruga</th>
               <th>Tabela e Kamionit</th>
                           <th>Mbrritja</th>
                           <th>Shkuarja</th>
             </tr>
                       </thead>
                       <tbody>";
                         while($row=mysql_fetch_array($query)){
             echo " <tr>";
              echo "<td>".$row['street']."</td>";
            echo "<td>".$row['license_plate']."</td>";
              echo "<td>".$row['start_h']."</td>";
            echo  "<td>".$row['finish_h']."</td>";
             echo "</tr>";
             
             }
echo "</tbody>

</table><! -- / .table -->
</div><! -- / .table-responsive table-results -->";
}

?>


                        