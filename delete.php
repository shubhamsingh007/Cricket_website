<?php

include 'conn.php';

$uid = $_GET['uid'];

$q = " DELETE FROM `user` WHERE uid = $uid ";

mysqli_query($con, $q);

header('location:display.php');

?>
