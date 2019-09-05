<?php
session_start();
include 'database/connection.php';
$id = $_SESSION['cuser_id'];

    $booking_id  = $_GET['booking_id'];
    $fare = $_GET['fare'];

    $sql = "DELETE FROM `booking` WHERE `book_id` = '$booking_id'";
    mysqli_query($conn,$sql);


    $sql = "SELECT balance FROM balance WHERE id = '$id'";
    $result = mysqli_query($conn,$sql);
    $row = mysqli_fetch_array($result);
    $user_balance = $row['0'];
    $new_balance = $user_balance + $fare;

    $sql = "UPDATE `balance` SET `balance`='$new_balance' WHERE `id` = '$id'";
    mysqli_query($conn,$sql);

    header("location:http://localhost/Online_Ticket_Reservation/dashboard.php");


 ?>
