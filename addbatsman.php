<?php
$pname=$_POST['pname'];
$matches=$_POST['matches'];
$runs = $_POST['runs'];
$avg = $_POST['avg'];
$fifty = $_POST['fifty'];
$hundred = $_POST['hundred'];
$best = $_POST['best'];
$position = $_POST['position'];

$server='localhost';
$user='root';
$dbname='cricket';

$con = mysqli_connect($server,$user);
if (!$con) {
    die("Connection failed: " . mysqli_connect_error($con));
}
mysqli_select_db($con,$dbname);

$q = "insert into batsmen (pname,matches,runs,avg,fifty,hundred,best,position) values('$pname','$matches','$runs',$avg,$fifty,'$hundred','$best','$position')";
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