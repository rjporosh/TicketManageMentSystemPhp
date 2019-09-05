<!DOCTYPE html>
<html>

    <div class="news_block">
      <div class="h2">News Updates</div>
      <div class="dat">
      <?php $x = newsShow(); ?>
    </div>

      <button type="button"onclick="parent.location.href='news&offer.php'">Read More</button>
    </div>

</html>
<?php


function newsShow(){
    include 'database/connection.php';



    $sql = "SELECT `date`, `title`, `details` FROM `news_offer` ORDER BY `date` DESC";
    $result = mysqli_query($conn,$sql);
    $chkResult = mysqli_num_rows($result);

    if ($chkResult > 0) {
        // output data of each row
        $count = 1;
        while($row=mysqli_fetch_assoc($result)) {
            $err = "

                <p style='color:blue;font-size:20px'>".$row['title']." </p>
                <p style='color:#333333;font-size:12px'>".$row['date']." </p>
                <p style='color:white;'>".$row['details']." </p>
                  <br>";

            if ($count >3)
              break;
            $count++;

            $err_lenght = strlen($err);

           if($err_lenght>390) {
              $err = substr($err,0,390);
              echo $err."...";
              echo '<a href="news&offer.php">read full story</a>';}
           else
             echo $err;


        }
    } else {
        echo "0 results";
    }


  }



 ?>
