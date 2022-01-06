<?php 

    // Defining the default timezone
    date_default_timezone_set("Africa/Lagos");
    //Defining the constants
    define("servername", "localhost");    
    define("username", "amacotec_user");
    //define("username", "root");     
    define("password", "3AUR%0ElJwHa"); 
    //define("password", "");    
    define("dbname", "amacotec_database");   
   //define("dbname", "new_amacotech");   
    
    GLOBAL $con;
    $con = mysqli_connect(servername,username,password,dbname) or die(mysqli_error($con));
    if($con){
        // echo "Connection to the database is successful";
    } else{
        // echo "Error connecting to the database";
    }

?>


