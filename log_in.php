<?php

    function userLogin($username,$password){

include 'database/connection.php';


      $sql = "SELECT * FROM user WHERE username = '$username' OR email = '$username'";
      $result = mysqli_query($conn,$sql);
      $chkResult = mysqli_num_rows($result);

      if ($chkResult<1) {
            $err = "<p style='color:red;text-align:center;margin-top:25px;'><br><b>username or email is incorrect</b></p>";
            return $err;
          }
      else {
        if ($row = mysqli_fetch_assoc($result) ){
            $hashedpwdchk = password_verify($password,$row['password']);
            if ($hashedpwdchk == false) {
              $err = "<p style='color:red;text-align:center;margin-top:25px;'><br><b>password is incorrect</b></p>";
              return $err;
            }
            elseif ($hashedpwdchk == true) {

              if ($row['user_type']=='user') {

              $_SESSION['cuser_id'] = $row['id'];
              $_SESSION['current_user'] = $row['first_name'];
              $_SESSION['cuser_last_name'] = $row['last_name'];
              $_SESSION['cuser_username'] = $row['username'];
              $_SESSION['cuser_email'] = $row['email'];
              $_SESSION['cuser_contact_num'] = $row['contact_num'];
                        echo '<script>window.location.href = "\dashboard.php";</script>';
}
              elseif ($row['user_type']=='admin') {
                $_SESSION['current_admin'] = $row['first_name'];
                $_SESSION['cadmin_last_name'] = $row['last_name'];
                $_SESSION['cadmin_username'] = $row['username'];
                $_SESSION['cadmin_email'] = $row['email'];
                        echo '<script>window.location.href = "admin/home.php";</script>';
              }
                        }
    }
  }

    }

?>
