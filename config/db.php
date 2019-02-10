<?php

$conn = mysqli_connect('localhost','root','','practice');

if(mysqli_connect_error($conn)){
    echo 'failed to connect to mysql'.mysqli_connect_error;
}
?>