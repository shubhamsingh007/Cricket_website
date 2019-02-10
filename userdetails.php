<?php
$server = "localhost";
$user = "root";
$dbname = "cricket";
$con = mysqli_connect($server,$user);
mysqli_select_db($con,$dbname);
$q= "select * from user";
$result=mysqli_query($con,$q);
$num= mysqli_num_rows($result);
mysqli_close($con);
?>

<?php include('inc/header.php'); ?>

<div class="progress">
  <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<br>
<h3 class="text-center">User details</h3>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
      <th scope="col">Age</th>
      <th scope="col">Mobile</th>
      <th scope="col">Team</th>
    </tr>
  </thead>

<?php 
for($i=1;$i<=$num;$i++)
{
    $row=mysqli_fetch_array($result);

?>

 <tbody>
     <tr class="table-light">
      <th scope="row"><strong><?php echo $row['name']; ?></strong></th>
      <td><strong><?php echo $row['email']; ?></strong></td>
      <td><strong><?php echo $row['password']; ?></strong></td>
      <td><strong><?php echo $row['age']; ?></strong></td>
      <td><strong><?php echo $row['MOBILE']; ?></strong></td>
      <td><strong><?php echo $row['TEAM']; ?></strong></td>
    </tr>

  </tbody>

  <?php
}
?>
</table>

<?php include('inc/footer.php'); ?>


<!--
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Type</th>
      <th scope="col">Column heading</th>
      <th scope="col">Column heading</th>
      <th scope="col">Column heading</th>
    </tr>
  </thead>
  <tbody>
     <tr class="table-light">
      <th scope="row">Light</th>
      <td>Column content</td>
      <td>Column content</td>
      <td>Column content</td>
    </tr>
  </tbody>
</table>
-->    