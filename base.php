<?php
$conn= new mysqli ("localhost", "root","", "familycottage");
if($conn ->connect_error)
{
die("Could not connect with server". $conn->connect_error);
}
?>