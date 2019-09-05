<?php
  session_start();
  require_once('./create_account.php');
  include ('database/connection.php');

  if (isset($_POST['creacnt'])){

  $first_name = $_POST['fname'];
  $last_name = $_POST['lname'];
  $username = $_POST['uname'];
  $email = $_POST['email'];
  $contact_num = $_POST['con_num'];
  $password = $_POST['psw'];
  $con_password = $_POST['cpsw'];
  $type = "user";

  $length = strlen($contact_num)+2;
  $contact_num = str_pad($contact_num,$length, "88", STR_PAD_LEFT);

  if(empty($first_name) ||empty($last_name) ||empty($username) ||empty($email) ||empty($password) ){
      $err = "<p style='color:red; '>All fields are blank</p>";

  }
  else {
      if (!preg_match("/^[a-zA-Z]*$/",$first_name)||!preg_match("/^[a-zA-Z]*$/",$last_name)) {
          $err = "<p style='color:red; '>Invalid characters are used</p>";

  }
      else {
              $sql="SELECT * FROM user WHERE email='$email'";
              $result = mysqli_query($conn,$sql);
              $resultCheck = mysqli_num_rows($result);

                if ($resultCheck> 0) {
                  $err ="<p style='color:red; '>Email is already used</p>";
                  ;
                  }
            if (!filter_var($email,FILTER_VALIDATE_EMAIL)) {
              $err =  "<p style='color:red; '>Invalid email</p>";

            }
            else {
                  $sql="SELECT * FROM user WHERE username='$username'";
                  $result = mysqli_query($conn,$sql);
                  $resultCheck = mysqli_num_rows($result);

                  if ($resultCheck> 0) {
                          $err = "<p style='color:red; '>Username is already taken</p>";

                  }
                  else {
                  $sql="SELECT * FROM user WHERE contact_num='$contact_num'";
                  $result = mysqli_query($conn,$sql);
                  $resultCheck = mysqli_num_rows($result);

                  if ($resultCheck> 0) {
                          $err = "<p style='color:red; '>Contact number is already used</p>";

                  }
                        if (!preg_match("/^[0-9,+]*$/",$contact_num)) {
                          $err ="<p style='color:red;'>Invalid contact number</p>";

                }
                      else {
                        if ($password != $con_password ) {
                          $err ="<p style='color:red;'>Password mistatches</p>";
                        }
                        else {
                        userSignup($first_name,$last_name,$username,$email,$contact_num,$password,$type);
                          exit();
                        }

                      }
                      }


                  }
            }
  }

}

 ?>
<!DOCTYPE html>
<html >
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/index.css" rel="stylesheet" type="text/css" />
    <title>Online Ticket Reservation</title>
  </head>
  <?php

          include('includes/header.php');
          include('includes/menu.php');

  ?>
  <form class="sign_up_form"action="<?php echo $_SERVER['PHP_SELF']; ?>"method="post">
  <div class="h3">Create a new account</div>
<div class="sizer">


    <div class="container">

      <?php
      if (isset($err)) {
            echo $err;
      }

      ?>

      <label><b>First Name</b></label>
      <input type="text" placeholder="first name" name="fname" required>

      <label><b>Last Name</b></label>
      <input type="text" placeholder="last name" name="lname" required>

      <label><b>Username</b></label>
      <input type="text" placeholder="username" name="uname" required>

      <label><b>Email</b></label>
      <input type="text" placeholder="email" name="email" required>

      <label><b>Contact Number</b></label>
      <input type="tel" placeholder="contact number" name="con_num" required>

      <label><b>New Password</b></label>
      <input type="password" placeholder="new password" name="psw" required>

      <label><b>Confirm Password</b></label>
      <input type="password" placeholder="new password" name="cpsw" required>

      <div class="sizer">

      <button type="submit" name="creacnt">Create Account</button>

    </div>
    </div>
</div>
  </form>

<?php  include('includes/footer.php');?>

</html>
