
<?php

include('database/connection.php');



          $sql = "SELECT *
                  FROM user
                  WHERE user_type = 'admin'
                  ORDER BY first_name ASC";

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
<form class="ss" action="remove_admin.php" method="post">

<?php
if (isset($err)) {
  echo $err;
}
 ?>
 
      <table >

              <tr>
                  <th>Admin_ID</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Username</th>
                  <th>Email</th>
                  <th>Contact Number</th>
                  <th>Remove</th>

              </tr>


            <?php  while( $row = mysqli_fetch_assoc($result)):;
                    $id = $row['id'];
             ?>
              <tr>
                  <td ><?php echo $id ?></td>
                  <td><?php echo $row['first_name'] ;?></td>
                  <td><?php echo $row['last_name'] ;?></td>
                  <td><?php echo $row['username'] ;?></td>
                  <td><?php echo $row['email'] ;?></td>
                  <td><?php echo $row['contact_num'] ;?></td>
                  <td><p><a style="color:red" class="delete" href="a_remover.php?id=<?php echo $id; ?>">Remove</td>

              </tr>
              <?php endwhile;  ?>

      </table>
      </form>
  </div>
<?php include('includes/footer.php');?>


</html>
