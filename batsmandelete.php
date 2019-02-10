<?php

include 'conn.php';

$pid = $_GET['pid'];

$q = " DELETE FROM `batsmen` WHERE pid = $pid ";

mysqli_query($con, $q);

header('location:editbatsman.php');

?>
