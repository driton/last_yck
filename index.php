<?php
//index.php is the main file 

//Calling header.php file, in wich is connection with Database is called and all created function from us.
 include("include/header.php"); 
 ?>    

         <div class="container">
               <div class="col-md-10 col-sm-10 col-lg-10 col-md-push-1 col-lg-push-1 col-sm-push-1 content">
                  <div class="form">
                     <div class="col-md-6 col-sm-6 col-lg-6">

                      <?php 
					  //Function for city selection
                      select(); 

                      ?>
                     </div>
                     <div class="col-md-6 col-sm-6 col-lg-6">
                        <div id="neighborhood">
						
                        <!-- reload data with AJAX from neighborhood function -->
                          <select class="form-control" disabled="true">
                           <option>Select</option>
                        </select><!-- /.neighborhoods -->
                        </div>
                     </div>
                     <div class="col-md-6 col-sm-6 col-lg-6">
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
                     <div class="col-md-6 col-sm-6 col-lg-6">
                        <button class="btn btn-primary submit-button" onclick="showTable(); initialize();">Search</button>
                     </div>
                  </div>
                  <div id="table"></div>
                  <div class="theMpa">
                  <div id="map-canvas" class="col-md-12 col-sm-12 col-lg-12"></div>
                 </div>
               </div> <!-- /.content -->
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

        var image = 'inc/img/water-ico.png';
        var myLatLng = new google.maps.LatLng(lat, longit);
        var beachMarker = new google.maps.Marker({
            position: myLatLng,
            map: map,
            icon: image
        });
      }

      //google.maps.event.addDomListener(window, 'load', initialize);

      </script>
      <?php
	  
	  //Including footer file, where the database connection is closed
      include("include/footer.php"); 
      ?>        