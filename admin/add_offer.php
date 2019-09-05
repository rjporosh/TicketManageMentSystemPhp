
<?php

include 'database/connection.php';

if (isset($_POST['submit'])) {



  $title = $_POST['title'];
  $type = $_POST['type'];
  $details = $_POST['details'];
  $date = date('Y-m-d');



$sql = "INSERT INTO `news_offer` (`date`, `title`, `details`,`type`) VALUES ('$date', '$title', '$details','$type')";
mysqli_query($conn,$sql);

$err ="<p style='color:green;'>Successfully added a the news.</p>";


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
<form class="add" action="add_offer.php" method="post">

            <label><b>Title</b></label>
            <input type="text"name="title" required>

            <label><b>Type</b></label>
            <select type="text" name="type" required>
              <option value="promotional">promotional</option>
              <option value="non-promotional">non-promotional</option>
            </select>
            <label><b>Details</b></label>
            <input style="  resize: both;"type="text"name="details" required>


            <div class="sizer">
            <button type="submit" name="submit">Add News/Offer</button>
            </form>

          </div>
          </div>

      </div>

    </div>
  </div>
<?php  include('includes/footer.php');?>
</html>
