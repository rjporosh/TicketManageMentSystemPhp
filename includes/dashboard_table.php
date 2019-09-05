
<?php

include('database/connection.php');


$id = $_SESSION['cuser_id'];
         $sql = "SELECT vehicle.vehicle_name,booking.book_id,booking.starts,booking.stops,booking.fare,booking.seat_num,booking.date,booking.time,booking.booking_date
            FROM vehicle,booking
            WHERE booking.vehicle_id = vehicle.vehicle_id
            AND booking.id='$id'
            ORDER BY `booking`.`booking_date` DESC";
          $result = mysqli_query($conn,$sql);

           ?>
<html >
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/index.css" rel="stylesheet" type="text/css" />
    <title>Online Ticket Reservation</title>
  </head>

<form class="user_info_form" action="" method="post">





      <table >

              <tr>
                  <td class="top"><label>Personal Information</label></td>
              </tr>

              <tr>
                  <th>Name</th>
                  <td><?php echo $_SESSION['current_user']." ".$_SESSION['cuser_last_name'] ;?></td>
              </tr>
              <tr>
                  <th>Email</th>
                  <td><?php echo $_SESSION['cuser_email'] ;?></td>
              </tr>
              <tr>
                  <th>Contact Number</th>
                    <td><?php echo $_SESSION['cuser_contact_num'] ;?></td>
              </tr>
              <tr>
                <th>Balance</th>
                <td><?php
                $sql2 ="SELECT * FROM balance";
                $result2=mysqli_query($conn,$sql2);
                $row2  = mysqli_fetch_assoc($result2);
                echo $row2['balance']."&#2547;" ;  ?>
                <a style="color:red ;  text-decoration:none;" href="recharge.php"><b>Recharge</b></a>
                </td>
              </tr>
              <tr>
                <th>Logout</th>
                <td><a style="color:red ;  text-decoration:none;" href="logout.php"><b>LogOut</b></a></td>
              </tr>


      </table>
          <table >

                    <tr>
                        <td class="top"><label>Booking Information</label></td>
                    </tr>

                    <tr>
                        <th>Booking _ID</th>
                        <th>Journey Date</th>
                        <th>Journey Time</th>
                        <th>From</th>
                        <th>To</th>
                        <th>Vehicle Name</th>
                        <th>Seat Number</th>
                        <th>Purchase Date</th>
                        <th>Fare</th>
                        <th>Cancellation</th>

                    </tr>
                    <?php

                    while ($row = mysqli_fetch_assoc($result)):;
                    if (date("Y-m-d")>$row['date']) {
                      continue;
                    } ?>
                    <tr>
                        <td><?php echo $row['book_id'];
                                  $sss = $row['book_id'];
                        ?></td>
                        <td><?php echo $row['date'] ;?></td>
                        <td><?php echo $row['time'] ;?></td>
                        <td><?php echo $row['starts'] ;?></td>
                        <td><?php echo $row['stops'] ;?></td>
                        <td><?php echo $row['vehicle_name'] ;?></td>
                        <td><?php echo $row['seat_num'] ;?></td>
                        <td><?php echo $row['booking_date'] ;?></td>
                        <td><?php echo $row['fare']."&#2547;" ;?></td>
                        <td><a href="includes/cancle_booking.php?booking_id=<?php echo $sss ?>&fare=<?php echo $row['fare'] ?>" style="color:red; text-decoration:none;"  ><b>Cancel</b></a></td>
                      <?php endwhile; ?>
                    </tr>




            </table>
</form>


</html>
