<?php
$pname=$_POST['pname'];
$matches=$_POST['matches'];
$runs = $_POST['runs'];
$bavg = $_POST['bavg'];
$fifty = $_POST['fifty'];
$hundred = $_POST['hundred'];
$best = $_POST['best'];
$wickets = $_POST['wickets'];
$avg = $_POST['avg'];
$wickets5 = $_POST['wickets5'];
$position = $_POST['position'];

$server='localhost';
$user='root';
$dbname='cricket';

$con = mysqli_connect($server,$user);
if (!$con) {
    die("Connection failed: " . mysqli_connect_error($con));
}
mysqli_select_db($con,$dbname);

$q = "insert into allrounders (pname,matches,runs,bavg,fifty,hundred,best,wickets,avg,5wickets,position) values('$pname','$matches','$runs','$bavg','$fifty','$hundred','$best','$wickets','$avg','$wickets5','$position')";
$status=mysqli_query($con,$q);
mysqli_close($con);
?>

<?php include('inc/header.php'); ?>
<div class="progress">
  <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
</div>

<div class="jumbotron">
  <h2 class="display-3"><?php 
if($status==1)
    echo "player inserted successfully";
else
    echo "unsuccessful ";
?></h2>
 <p class="lead">
    <a class="btn btn-primary btn-lg" href="homeadmin.php" role="button">Go Home</a>
  </p> 
</div>

<?php include('inc/footer.php'); ?>