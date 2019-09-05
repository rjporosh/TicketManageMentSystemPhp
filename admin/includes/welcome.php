<?php session_start()
    ?>
<div class="welcome">
  <h style=>Welcome admin </h>
  <?php $name=$_SESSION['current_admin'];
  echo ": ";
  echo "<h style='color:#00e600;'>$name</h>";?>
</div>
