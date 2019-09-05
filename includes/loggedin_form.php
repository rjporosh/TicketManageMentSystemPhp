
 <html>

<form class="loggedin_form"action="/Online_Ticket_Reservation/logout.php"method="post">
<div class="centerizer">


<center>
<div class="h4">User Logged In as: <br><br><?php echo $_SESSION['current_user']; ?></div>
</center>
<div class="imgcontainer">
  <img src="images\avater_male.png" alt="Avatar" class="avatar">
</div>


  <button type="submit" class=" logoutbtn">Logout</button>
</div>
</form>

</html>
