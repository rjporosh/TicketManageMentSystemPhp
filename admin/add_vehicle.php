
<?php

include 'database/connection.php';

if (isset($_POST['submit'])) {



  $vehicle_name = $_POST['v_name'];
  $vehicle_type = $_POST['v_type'];
  $seat = $_POST['seat'];

  if (!preg_match("/^[0-9]*$/",$seat)){
    $err ="<p style='color:red;'>Number of seats are invalid.</p>";
  }
else{

$sql = "INSERT INTO `vehicle` (`vehicle_name`, `vehicle_type`, `total_seat`) VALUES ('$vehicle_name', '$vehicle_type', '$seat')";
mysqli_query($conn,$sql);

$err ="<p style='color:green;'>Successfully added a vehicle.</p>";
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


          <div class="container">

            <?php if (isset($err)) {
                  echo $err;
            } ?>
<form class="add" action="add_vehicle.php" method="post">

            <label><b>Vehicle Name</b></label>
            <input type="text"name="v_name" required>

            <label><b>Vehicle Type</b></label>
            <select type="text" name="v_type" required>
              <option value="AC">AC</option>
              <option value="normal">normal</option>
            </select>
            <label><b>Total Seat</b></label>
            <input type="text"name="seat" required>


            <div class="sizer">
            <button type="submit" name="submit">Add Vehicle</button>
            </form>

          </div>
          </div>

      </div>

    </div>
  </div>
<?php  include('includes/footer.php');?>
</html>
