<!DOCTYPE html>
<html >
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/index.css" rel="stylesheet" type="text/css" />
    <title>Online Ticket Reservation</title>
  </head>
  <?php

          include('header.php');
          include('menu.php');

          include('database/connection.php');

                    $id = $_GET['v_id'];
                    $date = $_GET['date'];
                    $time = $_GET['time'];
                    $pre = $_GET['prec'];
                    $route = $_GET['route'];
                    $starts = $_GET['starts'];
                    $stops = $_GET['stops'];
                    $cost = $_GET['cost'];
                    $class = $_GET['class'];

                    $sql = "SELECT * FROM seat_plan_for_v WHERE vehicle_id = '$id'";

                    $result = mysqli_query($conn,$sql);
                    $row = mysqli_fetch_assoc($result);
                    $total_rows = $row['num_rows'];
                    $seat_per_row = $row['seat_per_row'];
                    $gap_after = $row['gap_after'];
                    $selected_seat = "-";
                    $string=NULL;

                    ?>

<form class="select_seat_form" method="post" >
<a href="javascript:history.go(-1)">Go back</a>
<div class="select_seat">
<h2 style="color:white">Select your seat</h2>

                <table  >
                  <?php for ($i=0,$count = 1;$i<$total_rows;$i++) { ?>
                  <td>

                        <td><div>


                  <?php   for ($j=$seat_per_row+1,$x = $j;$j>0;$j--,$x--)  {

                    $sql2 = "SELECT seat_num FROM booking WHERE vehicle_id = '$id' AND `date` = '$date'  AND `stopping_p` >'$pre'";
                    $result2 = mysqli_query($conn,$sql2);
                    while($row2 = mysqli_fetch_array($result2)) {

                    if ($count == $row2['seat_num'] ) {
                      $string = "background-color:red;";
                      break;

                    }else {
                      $string = NULL;
                    }
                  }
                         if($j!=$gap_after+1) {
                           ?>

                           <button type="submit" name="seat" style="<?php echo $string?>"value="<?php echo $count;?>"onclick="<?php  echo $count;?>" <?php if($string == "background-color:red;") echo "disabled"; ?>> <?php echo $count++ ;?></button> <?php }
                           else {
                             if ($i == $total_rows-1) {
                               {?>
                                <button type="submit" name="seat" style="<?php echo $string?> "value="<?php echo  $count; ?>" onclick="<?php echo $count ;?>"> <?php echo $count++;?></button> <?php }
                             }
                             else
                             { ?>
                              <button type="" class="seat" style="background-color:white;"></button> <?php }
                           }
                          ?>
                          <?php } ?>
                        </div></td>

                  </td>
                  <?php } ?>
                </table>
                </form>
                <div class="selecting_div">


                <label for="" style="color:white">Selected Seat no.</label>
                <input style=" margin: 20px 0px;" type="text" name="in" value="<?php  if(isset($_POST['seat'])){ $selected_seat = $_POST['seat'];}echo $selected_seat;?>">
                <td><a style="margin:25px auto;text-decoration:none;padding:10px 35.5px;color:white;background-color:#4CAF50;"
                  href="confirm_booking.php?v_id=<?php echo $id?>&date=<?php echo $date?>&time=<?php echo $time?>&route=<?php echo $route?>&starts=<?php echo $starts?>&stops=<?php echo $stops?>&cost=<?php echo $cost?>&seat_num=<?php echo $selected_seat?>&class=<?php echo $class?>">Select Seat</a></td>
                </div>
</div>

<?php

 include('footer.php');
?>
</html>
