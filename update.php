<?php

  include 'conn.php';

  if(isset($_POST['done'])){

   $uid = $_GET['uid'];
  $name = $_POST['name'];
  $email = $_POST['email'];
  $password = $_POST['password'];
  $age = $_POST['age'];
  $MOBILE = $_POST['MOBILE'];
  $TEAM = $_POST['TEAM'];
  $q = " update user set uid=$uid, name='$name', email='$email' , password='$password', age='$age', MOBILE='$MOBILE', TEAM='$TEAM' where uid=$uid  ";

   $query = mysqli_query($con,$q);

   header('location:display.php');
 }

?>

<?php include('inc/header.php'); ?>

  <div class="col-lg-6 m-auto">
  
  <form method="post">
   
   <br><br><div class="card">
    
    <div class="card-header bg-dark">
     <h1 class="text-white text-center">  Update Operation </h1>
    </div><br>

     <label> Name: </label>
    <input type="text" name="name" class="form-control"> <br>

     <label> Email: </label>
    <input type="email" name="email" class="form-control"> <br>


     <label> Password: </label>
    <input type="text" name="password" class="form-control"> <br>

     <label> Age: </label>
    <input type="number" name="age" class="form-control"> <br>

     <label> Mobile: </label>
    <input type="text" name="MOBILE" class="form-control"> <br>

     <label> Team: </label>
    <input type="text" name="TEAM" class="form-control"> <br>


     <button class="btn btn-success" type="submit" name="done"> Submit </button><br>

    </div>
  </form>
 </div>
</body>
</html>