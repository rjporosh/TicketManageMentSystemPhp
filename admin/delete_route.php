
<?php

include('database/connection.php');


          $sql = "SELECT *
                  FROM route";
          $result = mysqli_query($conn,$sql);

           ?>
<html >
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/index.css" rel="stylesheet" type="text/css" />
    <title>Online Ticket Reservation</title>
  </head>
  <?php include('includes/header.php'); ?>
  <?php include('includes/welcome.php');?>

<div class="box">
<div class="innerbox">

    <?php include'includes/aside.php' ?>
    <div class="righty">
<form class="ss" action="delete_route.php" method="post">


      <table >

              <tr>
                  <th>Route_ID</th>
                  <th>Route Name</th>
                  <th>Used Vehicle Id</th>
                  <th>Departure Time</th>
                  <th>Starting City</th>
                  <th>Destination City</th>
                  <th>Fare</th>
                  <th>Remove</th>

              </tr>


            <?php  while( $row = mysqli_fetch_assoc($result)):;
                    $id = $row['route_id'];
             ?>
              <tr>
                  <td ><?php echo $id ?></td>
                  <td><?php echo $row['route_name'] ;?></td>
                  <td><?php echo $row['vehicle_id'] ;?></td>
                  <td><?php echo $row['departure_time'] ;?></td>
                  <td><?php echo $row['starts'] ;?></td>
                  <td><?php echo $row['stops'] ;?></td>
                  <td><?php echo $row['fare'] ;?></td>
                  <td><p><a style="color:red" class="delete" href="r_deleter.php?id=<?php echo $id; ?>">Delete</td>

              </tr>
              <?php endwhile;  ?>

      </table>
      </form>
  </div>
<?php include('includes/footer.php');?>


</html>
