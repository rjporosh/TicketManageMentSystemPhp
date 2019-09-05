
<?php



function userSignup($first_name,$last_name,$username,$email,$contact_num,$password,$type){

  include ('database/connection.php');

  $hashedpwd = password_hash($password,PASSWORD_DEFAULT);
  $sql = "INSERT INTO user (first_name,last_name,username,email,contact_num,password,user_type)
          VALUES ('$first_name','$last_name','$username','$email',$contact_num,'$hashedpwd','$type')";

          $result = mysqli_query($conn,$sql);
          $err = "<p style='color:#008000; text-align:center '>Successfully Signed Up.</p>";

          header("Location:/Online_Ticket_Reservation/my_account.php?err=".$err);


}


 ?>
