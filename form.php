<?php
$name=$_POST['name'];
$email=$_POST['email'];
$password = $_POST['password'];
$age = $_POST['age'];
$mobile = $_POST['mobile'];
$team = $_POST['team'];

$server='localhost';
$user='root';
$dbname='cricket';

$con = mysqli_connect($server,$user);
if (!$con) {
    die("Connection failed: " . mysqli_connect_error($con));
}
mysqli_select_db($con,$dbname);

$q = "insert into user (name,email,password,age,mobile,team) values('$name','$email','$password',$age,$mobile,'$team')";
$status=mysqli_query($con,$q);
mysqli_close($con);
?>

<!doctype html>
<html>
<head>
<title>Insertion</title>
<link rel = "stylesheet" href="./css/formm.css" />
</head>
<body>
 <header>   
 <div id="branding">
                <h1><span class="highlight"> Cricket</span> @11 team</h1>
</div>
</header>

<div class="php">
<h2> <?php 
if($status==1)
    echo "user created successfully";
else
    echo "unsuccessful ";
?>
</h2>
</div>
<div class="foot">
<h3>Do you want to go home page?</h3><a href = "index.html" class="button">click here</a><br>

</div>

</body>
</html>