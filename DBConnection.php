<?php 
$Host="localhost";
$UserName="root";
$Password="Sakshi123@";
$DataBase="MyMovie";
	$con=mysqli_connect($Host,$UserName,$Password,$DataBase);
// Check connection
if (mysqli_connect_errno())
{
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>