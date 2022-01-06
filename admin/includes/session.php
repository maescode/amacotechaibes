<?php 
include_once 'config.php';
	session_start();
	if(!isset($_SESSION['id']))
{
    // not logged in
    header('Location: ./');
    exit();
}
 ?>
