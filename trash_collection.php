		  <?php 
        //Perfshirja e fajlit header
        include ("include/header.php");


        ?>
	<div class="container">
            <div class="col-md-1"></div>
               <div class="col-md-10 content">
                  <div class="form">
                     <div class="col-md-6">
                       <?php 
                       //Select City for Waste Collection
                       selectForTrash(); 
                       ?>
                     </div>
                     <div class="col-md-6">
                     <div id="neighborhood_div">
                        <select class="form-control" disabled="true"><option value="-1">Select Neighborhood</option>
                        <option value="1">Prishtina</option>
                        </select>
                     </div>
                     </div>
                     <div class="col-md-6">
                        <div class="radios">
                           <label class="radio-btn current" for="mon">M
                              <input type="radio" name="days" id="mon">
                           </label>
                           <label class="radio-btn" for="tue">T
                              <input type="radio" name="days" id="tue">
                           </label>
                           <label class="radio-btn" for="wen">   
                              <input type="radio" name="days" id="wen">W
                           </label>
                           <label class="radio-btn" for="the">
                              <input type="radio" name="days" id="the">T
                           </label>
                           <label class="radio-btn" for="fri">
                              <input type="radio" name="days" id="fri">F
                           </label>
                           <label class="radio-btn" for="sat">
                              <input type="radio" name="days" id="sat">S
                           </label>
                           <label class="radio-btn" for="sun">
                              <input type="radio" name="days" id="sun">S
                           </label>
                        </div><!-- /.radios -->
                     </div>
                     <div class="col-md-6">
                        <button class="btn btn-primary submit-button" onClick="showTableTrashCollection(); initialize();" type="submit">Search</button>
                     </div>
                  </div>
               <div id="neighborhood"></div>  
<div id="table" > </div>
<div class="theMpa">
                  <div id="map-canvas" class="col-md-12 col-sm-12 col-lg-12"></div>
                 </div>
               </div> <!-- /.content -->
            <div class="col-md-1"></div> 
			
			
         </div>
      </div><!-- /.full -->   
      <style>
      #map-canvas {
        height: 300px;
        margin: 0px;
        padding: 30px;
      }
    </style>    
 
    <script>

// This example adds a marker to indicate the position
// of Bondi Beach in Sydney, Australia

function initialize() {
   var latLong = document.getElementById("neighborhood_select").value;
var splits = latLong.split("|");
var lat = splits[1];
var longit = splits[2];

  var mapOptions = {
    zoom: 13,
    center: new google.maps.LatLng(lat, longit)
  }
  var map = new google.maps.Map(document.getElementById('map-canvas'),
                                mapOptions);

  var image = 'inc/img/trash-ico.png';
  var myLatLng = new google.maps.LatLng(lat, longit);
  var beachMarker = new google.maps.Marker({
      position: myLatLng,
      map: map,
      icon: image
  });
}

//google.maps.event.addDomListener(window, 'load', initialize);

</script>
	     		  <?php include ("include/footer.php"); ?>