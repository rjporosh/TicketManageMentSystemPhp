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

          include('database/connection.php');



                    $starts = $_POST['starts'];
                    $stops = $_POST['stops'];
                    $route = $_POST['route'];



                    $sql = "SELECT vehicle.vehicle_name,route.departure_time,vehicle.vehicle_type,vehicle.fare_handler
                            FROM route,vehicle
                            WHERE route.route_name='$route'
                            AND vehicle.vehicle_id = route.vehicle_id
                            ORDER BY `route`.`departure_time` ASC ";
                    $result = mysqli_query($conn,$sql);
  ?>

<form class="check_query_form" >

  <table>

          <tr>
              <th>Name of v</th>
              <th>Time of departure</th>
              <th>Starting City</th>
              <th>Destination City</th>
              <th>Class</th>
              <th>Fare</th>

          </tr>


        <?php  while( $row = mysqli_fetch_assoc($result)):; ?>
          <tr>
              <td><?php echo $row['vehicle_name'] ;?></td>
              <td><?php echo $row['departure_time'] ;?></td>
              <td><?php echo $starts ;?></td>
              <td><?php echo $stops ;?></td>
              <td><?php echo $row['vehicle_type'] ; $mul=$row['fare_handler']?></td>
              <td><?php

              $sql2 = "SELECT fare FROM `$route` WHERE   stopage = '$starts' ";
              $sql3 = "SELECT fare FROM `$route` WHERE   stopage = '$stops' ";
              $result2 = mysqli_query($conn,$sql2);
              $result3 = mysqli_query($conn,$sql3);
              $ar2 = mysqli_fetch_row($result2);
              $ar3 = mysqli_fetch_row($result3);


              echo ($ar3[0]-$ar2[0])*$mul."&#2547" ;?></td>

          </tr>
          <?php endwhile;  ?>

  </table>

</form>
<?php

 include('includes/footer.php');
?>
</html>
