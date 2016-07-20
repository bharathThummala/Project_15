<?php
session_start();
include "dbConfig.php";
if (isset($_POST['login']) && !empty($_POST['unam']) && !empty($_POST['pas']))
{
$unam=$_POST['unam'];
$pas=$_POST['pas'];
$pas=md5($pas);
$sql = "SELECT A_name,A_password FROM Admin WHERE  A_name='$unam'";
$query = $conn->query($sql);
if($query)
{
	$row=mysqli_fetch_row($query);
         $u=$row[0];
	     $p=$row[1];
}
if($unam == $u && $pas == $p)
{
	$_SESSION['User'] = $u;
    header('Location:main.php');
}
else
{
   header('Location:incorrect.php');
} 
}
?>
