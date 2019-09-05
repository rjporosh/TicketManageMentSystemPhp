<form class="user_info_form"action=""method="post">
<div class="h3">User Information</div>
<div class="sizer">
  <div class="info">
    <label><b>First Name :</b></label>
    <label><b><?php echo $_SESSION['current_user'] ?></b></label><br>

    <label><b>Last Name: </b></label>
    <label><b><?php echo $_SESSION['cuser_last_name'] ?></b></label><br>

    <label><b>Username: </b></label>
    <label><b><?php echo $_SESSION['cuser_username'] ?></b></label><br>

    <label><b>Email: </b></label>
    <label><b><?php echo $_SESSION['cuser_email'] ?></b></label><br>

    <label><b>Contact Number: +</b></label>
    <label><b><?php echo $_SESSION['cuser_contact_num'] ?></b></label><br>



<div class="button_sizer">

    <button type="submit" name="editacc" style="background-color:#0039e6">Edit Information</button>
    <button type="submit" name="delacc"style="background-color:red">Delete Account</button>

    </div>

    </div>
  </div>

</form>
