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

<html>
<head>
<title>cricket database</title>
<link rel = "stylesheet" href="./css/viewuser.css" />
</head>

<body>

<div class="black">
<h2>User details Available</h2>       
</div>
<table class="col">

    
<tr class ="header">
<th class="heading">Name</th>
<th class="heading">Email</th>
<th class="heading">Password</th>
<th class="heading">Age</th>
<th class="heading">Mobile</th>
<th class="heading">team</th>
</tr>
<?php 
for($i=1;$i<=$num;$i++){
    $row=mysqli_fetch_array($result);

?>
<tr>
<td class="data grey"><strong><?php echo $row['name']; ?></strong></td>
<td class="data"><strong><?php echo $row['email']; ?></strong></td>
<td class="data"><strong><?php echo $row['password']; ?></strong></td>
<td class="data"><strong><?php echo $row['age']; ?></strong></td>
<td class="data"><strong><?php echo $row['MOBILE']; ?></strong></td>
<td class="data"><strong><?php echo $row['TEAM']; ?></strong></td>

</tr>   

<?php
}
?>
</table>

<div class="green">
<h3>Do you want to create more account</h3>
<a href="index.html" class="button" >HOME</a>
</div>

</body>
</html>

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