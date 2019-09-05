<?php

  include ('./database/connection.php');
  require_once('./log_in.php');

  if (isset($_POST['submit'])) {


            $username = $_POST['uname'];
            $password = $_POST['psw'];


            if (empty($username) || empty($password)) {

                    echo "<p style='color:red;text-align:center'>All field must be filled up...</p>";

            }
            else {

              $user = userLogin($username,$password);



        }

      }


 ?>



<!DOCTYPE html>
<html>
<form class="login_form"action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">


<span class="h2">User Login</span>
<?php if (isset($user)) {
  echo $user;

} ?>
<div class="imgcontainer">
  <img src="images\avater_male.png" alt="Avatar" class="avatar">
</div>

<div class="container">
  <label><b>Username</b></label>
  <input type="text" placeholder="Enter Username" name="uname" required>

  <label><b>Password</b></label>
  <input type="password" placeholder="Enter Password" name="psw" required>

  <button type="submit" name="submit">Login</button>

</div>

<div class="container">
  <button type="button"class="signupbtn"onclick="window.location.href='\sign_up.php'">Not a member yet?</button>
  <span class="psw">Forgot <a href="">password?</a></span>
</div>


</form>

</html>
