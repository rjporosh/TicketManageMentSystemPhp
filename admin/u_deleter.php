<?php

include 'database/connection.php';



  $id = $_GET['id'];

   $sql = "DELETE FROM user WHERE id='$id'";

    if (mysqli_query($conn, $sql)) {
        $err ="<h style='color:red;padding-left:20px'>News/Offer removed.</h>";

        header("Location:delete_user.php");
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }

 ?>
