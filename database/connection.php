<?php

$conn = mysqli_connect("localhost","root","","otr");

if(!$conn){
  die("database connection failed: ".mysqli_connect_error());
}

?>
