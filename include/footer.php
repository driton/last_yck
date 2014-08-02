

<!-- Google Map Script -->
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
         <!-- Include all compiled plugins (below), or include individual files as needed -->
         <script src="inc/js/bootstrap.min.js"></script>
          <script type="text/javascript">
             //script to set active class at active link on main navbar
             $(document).ready(function() {
               $(".radio-btn").click(function() {
                 $(".radio-btn").removeClass("current");
                 $(this).addClass("current"); 
               });
             });
          </script>
      </body>
</html>
<?php 
//Close Database
$close=mysql_close($connection); 
?>