<?php
$hostname='localhost';
$username='root';
$password='';
$database='giadinhgaubong';
$conn=mysqli_connect($hostname,$username,$password,$database);
mysqli_query($conn,'set names "utf8"')
?>