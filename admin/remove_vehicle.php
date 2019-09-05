
<?php

include('database/connection.php');



          $sql = "SELECT *
                  FROM vehicle";
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
<form class="ss" action="remove_vehicle.php" method="post">

<?php if (isset($err)) {
  echo $err;
} ?>
      <table >

              <tr>
                  <th>Vehicle_ID</th>
                  <th>Name</th>
                  <th>Type</th>
                  <th>Total Seat</th>
                  <th>Remove</th>

              </tr>


            <?php  while( $row = mysqli_fetch_assoc($result)):;
                    $id = $row['vehicle_id'];
             ?>
              <tr>
                  <td ><?php echo $id ?></td>
                  <td><?php echo $row['vehicle_name'] ;?></td>
                  <td><?php echo $row['vehicle_type'] ;?></td>
                  <td><?php echo $row['total_seat'] ;?></td>
                  <td><p><a style="color:red" class="delete" href="v_remover.php?id=<?php echo $id; ?>">Remove</td>

              </tr>
              <?php endwhile;  ?>

      </table>
      </form>
  </div>
<?php include('includes/footer.php');?>


</html>
