<?php
session_start();
$name=$_POST['name'];
$email = $_POST['email'];
$password = $_POST['password'];

if($name == 'shubham' && $email == 'shubham@gmail.com' && $password = 'shubham123'){

$server='localhost';
$user='root';
$dbname='cricket';

$con = mysqli_connect($server,$user);
if (!$con) {
    die("Connection failed: " . mysqli_connect_error($con));
}
mysqli_select_db($con,$dbname);



$q = "select * from user where email = '$email' && password='$password' && name='$name'";
$result =mysqli_query($con,$q);
$num=mysqli_num_rows($result);
if($num==1){
    $_SESSION['email']=$email;
    $_SESSION['name'] = $name;
   
    header('location:http://localhost/prototype/homeadmin.php');
}
else
{
    header('location:http://localhost/prototype/index.html');
}
}
else{
    header('location:http://localhost/prototype/index.html');
}
?>