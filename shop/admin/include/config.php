<?php
define('DB_SERVER','localhost');
//define('DB_USER','root');
define('DB_USER','amacotec_user');
//define('DB_PASS' ,'');
define('DB_PASS' ,'3AUR%0ElJwHa');
//define('DB_NAME', 'new_amacotech');
define('DB_NAME', 'amacotec_database');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>