<?php

  include 'conn.php';

  if(isset($_POST['done'])){

   $pid = $_GET['pid'];
  $pname = $_POST['pname'];
  $matches = $_POST['matches'];
  $runs = $_POST['runs'];
  $avg = $_POST['avg'];
  $fifty = $_POST['fifty'];
  $hundred = $_POST['hundred'];
  $best = $_POST['best'];
  $position = $_POST['position'];
  $q = " update batsmen set pid=$pid, pname='$pname', ,matches='$matches' , runs='$runs', avg='$avg', fifty='$fifty', hundred='$hundred', best = '$best', posotion='$position' where pid=$pid  ";

   $query = mysqli_query($con,$q);

   header('location:editbatsman.php');
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
    <input type="text" name="pname" class="form-control"> <br>

     <label> Matches: </label>
    <input type="number" name="matches" class="form-control"> <br>


     <label> Runs: </label>
    <input type="number" name="runs" class="form-control"> <br>

     <label> average: </label>
    <input type="number" name="avg" class="form-control"> <br>

     <label> Fifty: </label>
    <input type="number" name="fifty" class="form-control"> <br>

     <label> Hundred: </label>
    <input type="number" name="hundred" class="form-control"> <br>

    <label> Best: </label>
    <input type="number" name="best" class="form-control"> <br>

    <label> Position: </label>
    <input type="text" name="position" class="form-control"> <br>

     <button class="btn btn-success" type="submit" name="done"> Submit </button><br>

    </div>
  </form>
 </div>
</body>
</html>