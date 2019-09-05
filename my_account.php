<?php
  session_start();
 ?>
 <!DOCTYPE html>
<html >
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/index.css" rel="stylesheet" type="text/css" />
    <title>Online Ticket Reservation</title>


  <?php

          include('includes/header.php');
          include('includes/menu.php');
?>
<?php

    if (isset($_SESSION['current_user']))

    include('includes/my_account_form.php');
    else {

    include ('includes/not_logged_in.php');
    }

 ?>
      <?php    include('includes/footer.php'); ?>


</head>

</html>
