

<form class="query_form" action="includes/purchase_check_query.php"method="POST"style="float:none; border-right:  3px solid #C6C6C6;
 border-left: 3px solid #C6C6C6;height:auto; margin:20px auto;" >
<div class="h2">Purchase Ticket</div>
<?php if (isset($err)):
            echo $err;
            ?>

<?php endif; ?>

  <div class="q_container" style="padding: 25px 0px; margin: 25px 10px;">
    <label><b>Journey Date</b></label>
    <select name="date" required>
      <option >
        Select Date
      </option>
        <option >
          <?php echo  date('Y-m-d',strtotime("+0 days"));?>
        </option>
        <option>
          <?php echo  date('Y-m-d',strtotime("+1 days"));?>
        </option>
        <option>
          <?php echo  date('Y-m-d',strtotime("+2 days"));?>
        </option>
        <option>
          <?php echo  date('Y-m-d',strtotime("+3 days"));?>
        </option>
        <option>
          <?php echo  date('Y-m-d',strtotime("+4 days"));?>
        </option>
        <option>
          <?php echo  date('Y-m-d',strtotime("+5 days"));?>
        </option>
        <option>
          <?php echo  date('Y-m-d',strtotime("+6 days"));?>
        </option>
        <option>
          <?php echo  date('Y-m-d',strtotime("+7 days"));?>
        </option>
        <option>
          <?php echo  date('Y-m-d',strtotime("+8 days"));?>
        </option>
        <option>
          <?php echo  date('Y-m-d',strtotime("+9 days"));?>
        </option>
    </select>

    <label><b>Select Route</b></label>



    <select name="route"required>

      <option value="">Select route</option>
      <?php
      $sql = "SELECT DISTINCT route_name FROM route";
      $result = mysqli_query($conn,$sql);
      while ($row = mysqli_fetch_assoc($result)):; ?>

      <option>
        <?php
        $route_name = $row['route_name'];
        echo $row['route_name']; ?>

      </option>
    <?php endwhile; ?>
    </select>




    <label><b>Starting City</b></label>
    <select name="starts"required>

      <option value="">Select Starting City</option>
      <?php
      $sql1 = "SELECT stopage FROM `$route_name`";
      $result1 = mysqli_query($conn,$sql1);
      while ($row = mysqli_fetch_assoc($result1)):; ?>

      <option>
        <?php echo $row['stopage']; ?>

      </option>
    <?php endwhile; ?>
    </select>


    <label><b>Destination City</b></label>
    <select name="stops"required>

      <option value="">Select Destination City</option>
      <?php
      $sql1 = "SELECT stopage FROM `$route_name`";
      $result1 = mysqli_query($conn,$sql1);
      while ($row = mysqli_fetch_assoc($result1)):; ?>

      <option>
        <?php echo $row['stopage']; ?>

      </option>
    <?php endwhile; ?>
    </select>


    <button type="submit" name="check">Search</button>


  </div>

</form>
