<?php
session_start();

$id = $_SESSION['cuser_id'];
$v_id = $_GET['v_id'];
$date = $_GET['date'];
$time = $_GET['time'];
$route = $_GET['route'];
$starts = $_GET['starts'];
$stops = $_GET['stops'];
$cost = $_GET['cost'];
$seat_num = $_GET['seat_num'];
$class = $_GET['class'];


date_default_timezone_set("Asia/Dhaka");

  include 'database/connection.php';


$t = time("hh:mm:ss");
echo strtotime("H:m:s",$t);

$sql = "SELECT precedence FROM `$route` WHERE stopage = '$starts'";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_array($result);
$starting_p = $row['0'];

$sql = "SELECT precedence FROM `$route` WHERE stopage = '$stops'";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_array($result);
$stopping_p = $row['0'];


$sql = "SELECT balance FROM balance WHERE id = '$id'";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_array($result);
$user_balance = $row['0'];
$c_date = date("Y-m-d");
$c_time = date("H:i:s");

if ($user_balance-$cost>-1) {
  $new_balance = $user_balance-$cost;
$sql2 = "INSERT INTO `booking`(`book_id`,`id`,`vehicle_id`,`route_name`, `starts`, `stops`, `seat_num`, `date`, `time`, `fare`, `booking_date`, `booking_time`, `starting_p`, `stopping_p`)
                       VALUES ('','$id','$v_id','$route','$starts','$stops','$seat_num','$date','$time','$cost','$c_date','$c_time','$starting_p','$stopping_p')";

      mysqli_query($conn,$sql2);


      $sql = "UPDATE `balance` SET `balance`='$new_balance' WHERE `id` = '$id'";
     mysqli_query($conn,$sql);

      $done = true;
      }

      else {

        $done = false;
      }

 ?>

 <!DOCTYPE html>
<html >
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/index.css" rel="stylesheet" type="text/css" />
    <title>Online Ticket Reservation</title>
  </head>
  <?php

          include('header.php');
          include('menu.php');

  ?>




  <div class="purchase_ticket">
    <?php if ($done==true) {

     ?>
<h1 style="text-align:center;color:#157012;font-size:100%;padding:100px 0px;">You have successfully booked your ticket!!!<br> To be confirmed check your <a href="http://localhost/Online_Ticket_Reservation/dashboard.php">Dashboard</a> </h1>
<?php } else {

?>
<h1 style="text-align:center;color:red;font-size:100%;padding:100px 0px;">Insufficient balance!!!<br> To get recharge go to <a href="http://localhost/Online_Ticket_Reservation/dashboard.php">Dashboard</a> </h1>
<?php } ?>
  </div>

<?php  include('footer.php');?>


</html>
