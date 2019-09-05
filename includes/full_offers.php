
<!DOCTYPE html>
<html>

    <div class="full_news_block">
      <div class="h3">News Updates</div>
      <div class="dat">
      <?php $x = newsShow(); ?>
    </div>
    </div>

</html>
<?php


function newsShow(){
    include 'database/connection.php';



    $sql = "SELECT `date`, `title`, `details` FROM `news_offer` ORDER BY `date` DESC";
    $result = mysqli_query($conn,$sql);
    $chkResult = mysqli_num_rows($result);

    if ($chkResult > 0) {

        while($row=mysqli_fetch_assoc($result)) {
            $err = "

                <p style='color:blue;font-size:20px'>".$row['title']." </p>
                <p style='color:#333333;font-size:12px'>".$row['date']." </p>
                <p style='color:white;'>".$row['details']." </p>
                  <br>";
             echo $err;


        }
    } else {
        echo "0 results";
    }


  }



 ?>
