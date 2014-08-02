<?php

//Including of the file where connection was initiated with databaze
require_once("connection.php"); 

//Including of all the functions in file 
require_once("include/functions.php");
?>
<html lang="en">
      <head>
         <meta charset="utf-8">
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
         <meta name="viewport" content="width=device-width, initial-scale=1">
         <title>Young Coders Kosovo</title>

		 
         <!--CSS files that are located in folder inc -> css-->
         <link href="inc/css/fonts.css" rel="stylesheet">
         <link href="inc/css/bootstrap.css" rel="stylesheet">
         <link href="inc/css/font-awesome.css" rel="stylesheet">
         <link href="inc/css/style.css" rel="stylesheet">
		 
         <!--JavaScript files that are located in folder js  -> css-->
         <script src="inc/js/script.js"></script>
         <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
      </head>
      <body>
      <div class="full-body">
         <div class="full first-header">
            <div class="container">
               <div class="col-md-3 col-sm-3 col-lg-3">
                  <h2>101City</h2>
               </div>
               <div class="col-md-6 col-sm-6 col-lg-6"></div>
               <div class="col-md-3 col-sm-3 col-lg-3">
                  <div class="logo">
	
                    <!--  <img src="inc/img/logo.png"> -->
                  </div>
               </div>
            </div><!-- /.container -->
         </div><!-- /.first-header -->
         <div class="full second-header">
            <div class="container">
               <div class="row">
                  <ul class="main-navbar col-md-10 col-sm-10 col-lg-10 col-md-push-1 col-lg-push-1 col-sm-push-1" id="navigimi">
                  <li class="col-md-4 col-sm-4 col-lg-4"><a href="index.php">Water Reductions</a></li>
                     <li class="col-md-4 col-sm-4 col-lg-4"><a href="trash_collection.php">Waste Collection</a></li>
                     <li class="col-md-4 col-sm-4 col-lg-4"><a href="recreation.php">Recreational Activities</a></li>
                  </ul><!-- /.main-navbar -->  
               </div>
            </div><!-- /.container -->

         </div><!-- /.second-header -->
            