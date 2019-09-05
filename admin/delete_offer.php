
<?php

include('database/connection.php');



          $sql = "SELECT *
                  FROM news_offer ORDER BY `date` DESC";
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
<form class="ss" action="delete_offer.php" method="post">

<?php if (isset($err)) {
  echo $err;
} ?>
      <table >

              <tr>
                  <th>News_ID</th>
                  <th>Title</th>
                  <th>Date</th>
                  <th>Type</th>
                  <th>Details</th>
                  <th>Delete</th>

              </tr>


            <?php  while( $row = mysqli_fetch_assoc($result)):;
                    $id = $row['news_id'];
             ?>
              <tr>
                  <td ><?php echo $id ?></td>
                  <td><?php echo $row['title'] ;?></td>
                  <td><?php echo $row['date'] ;?></td>
                  <td><?php echo $row['type'] ;?></td>
                  <td><?php echo $row['details'] ;?></td>
                  <td><p><a style="color:red" class="delete" href="o_deleter.php?id=<?php echo $id; ?>">Remove</td>

              </tr>
              <?php endwhile;  ?>

      </table>
      </form>
  </div>
<?php include('includes/footer.php');?>


</html>
