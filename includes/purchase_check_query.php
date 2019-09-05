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

          include('database/connection.php');



                    $starts = $_POST['starts'];
                    $stops = $_POST['stops'];
					          $date = $_POST['date'];
                    $route = $_POST['route'];



                    $sql = "SELECT vehicle.vehicle_id,vehicle.vehicle_name,route.departure_time,vehicle.vehicle_type,vehicle.fare_handler
                            FROM route,vehicle
                            WHERE route.route_name='$route'
                            AND vehicle.vehicle_id = route.vehicle_id
                            ORDER BY `route`.`departure_time` ASC ";
                    $result = mysqli_query($conn,$sql);

  ?>

<form class="check_query_form" >
<a href="javascript:history.back()">Go back</a>
<table>

        <tr>
            <th>Name of v</th>
            <th>Time of departure</th>
            <th>Starting City</th>
            <th>Destination City</th>
            <th>Class</th>
            <th>Fare</th>
            <th>Selection</th>
        </tr>


      <?php  while( $row = mysqli_fetch_assoc($result)):; ?>
        <tr>
            <td><?php echo $row['vehicle_name'] ;?></td>
            <td><?php
                    $sql2 = "SELECT `time_to_travel` FROM `$route` WHERE `stopage`='$starts' ";
                    $result2 = mysqli_query($conn,$sql2);
                    $row2 = mysqli_fetch_array($result2);



                    $time1 = $row['departure_time'] ;
                    $time2 = $row2['0'] ;
                    $time = sum_the_time($time1, $time2);



                      echo   $time;?></td>
            <td><?php echo $starts ;?></td>
            <td><?php echo $stops ;
                      $sql1 = "SELECT `precedence` FROM `$route` WHERE stopage = '$starts' ";
                      $result1 = mysqli_query($conn,$sql1);
                      $row1 = mysqli_fetch_array($result1);
                      $precedence = $row1['0'];
            ?></td>
            <td><?php echo $row['vehicle_type'] ; $mul=$row['fare_handler']?></td>
            <td><?php

            $sql2 = "SELECT fare FROM `$route` WHERE   stopage = '$starts' ";
            $sql3 = "SELECT fare FROM `$route` WHERE   stopage = '$stops' ";
            $result2 = mysqli_query($conn,$sql2);
            $result3 = mysqli_query($conn,$sql3);
            $ar2 = mysqli_fetch_row($result2);
            $ar3 = mysqli_fetch_row($result3);

            $cost = ($ar3[0]-$ar2[0])*$mul;
            echo $cost."&#2547";
            if ($cost <1) {
              
              header('Location: ' . $_SERVER['HTTP_REFERER']);

            }?></td>
            <td><a href="select_seat.php?v_id=<?php echo $row['vehicle_id']?>&date=<?php echo $date?>&time=<?php echo $time?>&prec=<?php echo $precedence?>&route=<?php echo $route?>&class=<?php echo $row['vehicle_type']?>&starts=<?php echo $starts?>&stops=<?php echo $stops?>&cost=<?php echo $cost?>">Select Seat</a></td>

        </tr>
        <?php endwhile;  ?>

</table>


</form>
<?php

 include('footer.php');
 function sum_the_time($time1, $time2) {
  $times = array($time1, $time2);
  $seconds = 0;
  foreach ($times as $time)
  {
    list($hour,$minute,$second) = explode(':', $time);
    $seconds += $hour*3600;
    $seconds += $minute*60;
    $seconds += $second;
  }
  $hours = floor($seconds/3600);
  $seconds -= $hours*3600;
  $minutes  = floor($seconds/60);
  $seconds -= $minutes*60;
  if($seconds < 9)
  {
  $seconds = "0".$seconds;
  }
  if($minutes < 9)
  {
  $minutes = "0".$minutes;
  }
    if($hours < 9)
  {
  $hours = "0".$hours;
  }
  return "{$hours}:{$minutes}:{$seconds}";
}
?>
</html>
