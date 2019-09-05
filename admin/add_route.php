
<?php

include 'database/connection.php';

if (isset($_POST['submit'])) {



  $route_name = $_POST['r_name'];
  $vehicle_id = $_POST['v_id'];
  $time = $_POST['time'];
  $starts = $_POST['sc_name'];
  $stops = $_POST['dc_name'];
  $fare = $_POST['fare'];

echo $route_name.$vehicle_id.$time.$starts.$stops.$fare;

  if (!preg_match("/^[0-9]*$/",$fare)){
    $err ="<h style='color:red;padding-left:20px'>Invalid ammount as fare.</h>";
  }
else{

$sql = "INSERT INTO `route` (`route_name`, `vehicle_id`, `departure_time`, `starts`, `stops`,`fare`)
        VALUES ('$route_name', '$vehicle_id', '$time','$starts','$stops','$fare')";
        mysqli_query($conn,$sql);

        $err ="<h style='color:green;padding-left:20px;'>Successfully added a route.</h>";
}

  }

 ?>
<!DOCTYPE html>
<html >
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/index.css" rel="stylesheet" type="text/css" />
    <title>Online Ticket Reservation</title>
  </head>
  <?php include('includes/header.php');
  include('includes/welcome.php');
   ?>
<div class="box">
<div class="innerbox">

    <?php include'includes/aside.php' ?>
    <div class="righty">
      <div class="sizer">
        <?php if (isset($err)) {
              echo $err;
        } ?>

          <div class="container">


<form class="add" action="add_route.php" method="post">

            <label><b>Route Name</b></label>
            <input type="text"name="r_name" required>

            <label><b>Vehicle ID for The Route</b></label>
            <input type="text"name="v_id" required>

            <label><b>Departure Time</b></label>
            <input type="text"name="time" placeholder="e.g. HH:MM"required>

            <label><b>Starting City</b></label>
            <input type="text"name="sc_name" required>

            <label><b>Destination City</b></label>
            <input type="text"name="dc_name" required>

            <label><b>Fare</b></label>
            <input type="text"name="fare" required>


            <div class="sizer">
            <button type="submit" name="submit">Add Route</button>
            </form>

          </div>
          </div>

      </div>

    </div>
  </div>
<?php  include('includes/footer.php');?>
</html>
