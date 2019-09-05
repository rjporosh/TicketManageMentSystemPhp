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
          include ('database/connection.php');
          include('includes/header.php');
          include('includes/menu.php');

  ?>

  <div id="pic">
    <img src="images\tickets-online-booking.jpg" alt="online ticket booking">
  </div>

<div id="middle_contents">
<?php


  if(isset($_SESSION['current_user'])){

    include('includes/loggedin_form.php');
  }
  else {
    include ('includes/login_form.php');

  }

include ('includes/query_form.php');



include('includes/offers.php');

?>
</div>

</html>
<?php  include('includes/footer.php');?>
