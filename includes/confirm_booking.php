<?php
$v_id = $_GET['v_id'];
$date = $_GET['date'];
$time = $_GET['time'];
$route = $_GET['route'];
$starts = $_GET['starts'];
$stops = $_GET['stops'];
$cost = $_GET['cost'];
$seat_num = $_GET['seat_num'];
$class = $_GET['class'];

  include 'database/connection.php';


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

<form class="" action="done_booking.php" method="get">


  <div class="purchase_ticket" style="padding: 0px 0px;">
    <a href="javascript:history.back()">Go back</a>
    <table>

            <tr>
                <th>Name of v</th>
                <th>Starting City</th>
                <th>Destination City</th>
                <th>Date of Journey</th>
                <th>Time of Departure</th>
                <th>Seat No.</th>
                <th>Class</th>
                <th>Fare</th>
            </tr>
                <td><?php $sql = "SELECT vehicle_name FROM vehicle WHERE vehicle_id = '$v_id'";
                          $result = mysqli_query($conn,$sql);
                          $row = mysqli_fetch_array($result);
                          echo $row['0'];
                        ?></td>
                <td><?php echo $starts; ?></td>
                <td><?php echo $stops; ?></td>
                <td><?php echo $date; ?></td>
                <td><?php echo $time; ?></td>
                <td><?php echo $seat_num; ?></td>
                <td><?php echo $class; ?></td>
                <td><?php echo $cost."&#2547"; ?></td>

            </tr>

    </table>
    <div class="selecting_div" style="margin:20px auto;">


    <a style="margin:25px auto;text-decoration:none;padding:10px 35.5px;color:white;background-color:#4CAF50;"
      href="done_booking.php?v_id=<?php echo $v_id?>&date=<?php echo $date?>&time=<?php echo $time?>&route=<?php echo $route?>&starts=<?php echo $starts?>&stops=<?php echo $stops?>&cost=<?php echo $cost?>&seat_num=<?php echo $seat_num?>&class=<?php echo $class?>">Confirm Booking</a>
</div>
  </div>
  </form>

<?php  include('footer.php');?>



</html>
