
<!DOCTYPE html>
<html >
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/index.css" rel="stylesheet" type="text/css" />
    <title>Online Ticket Reservation</title>
  </head>
  <?php include('includes/header.php'); ?>
  <div class="welcome">
    <h style=>Admin Logged In</h>
  </div>

<div class="box">
<div class="innerbox">

  <aside  class="column">
  		<form class="quick_search">
  			<input type="text" value="Quick Search" onfocus="if(!this._haschanged){this.value=''};this._haschanged=true;">
  		</form>
  		<hr/>
      <h3>Home</h3>
      <ul class="toggle">
        <li class="icn_add_user"><a href="admin_home.php">Home</a></li>
      </ul>
  		<h3>Vehicle Maintenance</h3>
  		<ul class="toggle">
  			<li class="icn_add_user"><a href="add_a_user.php">Add new vehicle</a></li>
  			<li class="icn_view_users"><a href="#">Remove a vehicle</a></li>
  		</ul>
  		<h3>Route Maintenance</h3>
  		<ul class="toggle">
  			<li class="icn_folder"><a href="#">Add new route</a></li>
  			<li class="icn_photo"><a href="#">Delet a route</a></li>
  			<li class="icn_audio"><a href="#">Edit route</a></li>
  		</ul>
  		<h3>Branding</h3>
  		<ul class="toggle">
  			<li class="icn_settings"><a href="#">Add a notice/offer</a></li>
  			<li class="icn_security"><a href="#">Delete a notice/offer</a></li>
  			<li class="icn_jump_back"><a href="#">Edit a notic/offer</a></li>
  		</ul>
      <h3>User Maintenance</h3>
  		<ul class="toggle">
  			<li class="icn_new_article"><a href="#">Delete an user</a></li>
  		</ul>

      <h3>Admin</h3>
      <ul class="toggle">
        <li class="icn_settings"><a href="#">Add another admin</a></li>
        <li class="icn_security"><a href="#">Remove an admin</a></li>
        <li class="icn_jump_back"><a href="#">Logout</a></li>
      </ul>


  	</aside>
    <div class="righty">

        <h1>add a user</h1>
      </div>

    </div>
  </div>
<?php  include('includes/footer.php');?>


</html>
