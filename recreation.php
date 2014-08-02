<?php 

//Including the header file
include("include/header.php"); 

//Including the functions file
require_once("include/functions.php");
 ?>        
         <div class="container">
               <div class="col-md-10 col-sm-10 col-lg-10 col-md-push-1 col-lg-push-1 col-sm-push-1 content">
                  <div class="form">
                     <div class="col-md-6 col-lg-6 col-sm-6">
                      <?php 
                        
						//Select function for Recreation module
                      selectCityRecreation(); 
                      ?>
                     </div>
                     <div class="col-md-6 col-lg-6 col-sm-6">
                     <!-- Here we override categories through Ajax function -->
                        <div id="category">
                          <select class="form-control" disabled="true">
                           <option>Select</option>
                        </select><!-- /.neighborhoods -->
                        </div>
                     </div>
                     <div class="col-md-12 col-lg-12 col-sm-12">
                        <button class="btn btn-primary submit-button" onclick="showTableRecreation();">Search</button>
                     </div>
                  </div>
                    <div id="table"></div>
                  <div class="theMpa">
                     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d46940.336870526655!2d21.15992545!3d42.6662068!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x13549ee605110927%3A0x9365bfdf385eb95a!2sPristina!5e0!3m2!1sen!2s!4v1406646939211" width="100%" height="350" frameborder="0" style="border:0"></iframe>
                  </div>
                
               </div> <!-- /.content -->
         </div>
      </div><!-- /.full -->   
      <?php //include("include/footer.php"); ?>        