<?php
require_once 'remove_admin.php';
include 'database/connection.php';



  $id = $_GET['id'];

   $sql2 = "SELECT * FROM user WHERE user_type = 'admin'";

   $result = mysqli_query($conn, $sql2);
   $row = mysqli_num_rows($result);

   if ($row == 1) {
     $err ="<h style='color:red;padding-left:20px'>You are the only one admin<br>You just can't remove yourself</h>";

     header("Location:remove_admin.php?err=".$err);

   }

    elseif($row > 1) {
echo $row;
        $sql3 = "DELETE  FROM user WHERE id='$id' AND user_type = 'admin'";
        mysqli_query($conn, $sql3);
        $err ="<h style='color:red;padding-left:20px'>Admin removed.</h>";
        header("Location:remove_admin.php");
    }
    else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }

 ?>
