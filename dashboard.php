<?php
  session_start();
 ?>
<!DOCTYPE html>
<html >
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/index.css" rel="stylesheet" type="text/css" />
    <title>Online Ticket Reservation</title>
  </head>
  <?php

          include('includes/header.php');
          include('includes/menu.php');


          if (isset($_SESSION['current_user']))

          include ('includes/dashboard_table.php');
          else {

          include ('includes/not_logged_in.php');
          }

  ?>

<?php  include('includes/footer.php');?>

</html>
