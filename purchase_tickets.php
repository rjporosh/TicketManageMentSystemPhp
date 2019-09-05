<?php
  session_start();

  include 'database/connection.php';

$sql1 = "SELECT DISTINCT starts FROM route";
$result1 = mysqli_query($conn,$sql1);
$sql2 = "SELECT DISTINCT stops FROM route";
$result2 = mysqli_query($conn,$sql2);
$sql3 = "SELECT DISTINCT vehicle_type FROM vehicle";
$result3 = mysqli_query($conn,$sql3);
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

  ?>


  <div class="purchase_ticket">

    <?php
    if (isset($_SESSION['current_user']))

    include('includes/purchase_query_form.php');
    else {

    include ('includes/not_logged_in.php');
  }?>
  </div>

<?php  include('includes/footer.php');?>

</html>
