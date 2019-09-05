<?php

include 'database/connection.php';



  $id = $_GET['id'];

   $sql = "DELETE FROM vehicle WHERE vehicle_id='$id'";

    if (mysqli_query($conn, $sql)) {
        $err ="<h style='color:red;padding-left:20px'>Vehicle removed.</h>";

        header("Location:remove_vehicle.php");
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }

 ?>
