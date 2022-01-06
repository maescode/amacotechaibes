
<?php
session_start();
include_once 'includes/config.php';

 ?>

 <!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

        <title>ADMIN - [Login]</title>

        <link rel="shortcut icon" href="assets/media/favicons/favicon.png">
        <link rel="icon" type="image/png" sizes="192x192" href="assets/media/favicons/favicon.png">
        <link rel="apple-touch-icon" sizes="180x180" href="assets/media/favicons/favicon.png">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap">
        <link rel="stylesheet" id="css-main" href="assets/css/oneui.min.css">

    </head>
    <body>
        
        <div id="page-container">
            <!-- Main Container -->
            <main id="main-container">

                <!-- Page Content -->
                <div class="bg-image" style="background-image: url('assets/media/photos/photo34@2x.jpg');">
                    <div class="hero-static bg-white-90">
                        <div class="content">
                            <div class="row justify-content-center">
                                <div class="col-md-8 col-lg-6 col-xl-4">
                                    <!-- Unlock Block -->
                                    <br>
                                    <div class="block block-rounded block-themed mb-0">
                                        <div class="block-header bg-primary-dark">
                                            <h3 class="block-title">Authentication</h3>
                                            <div class="block-options">
                                                <a class="btn-block-option" href="../" data-toggle="tooltip" data-placement="left" title="Not an ADMIN?">
                                                    <i class="fa fa-sign-in-alt"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="block-content">
                                        <div class="row">
                                            <div class="col-12 text-center">
                                            <img class="w-50" src=".././images/logo/logo.png" alt="">
                                                <h3>Amacotech</h3>
                                            </div>
                                        </div>
                                            <div class="p-sm-3 px-lg-4 py-lg-5 text-center">
                                                <img class="img-avatar img-avatar96" src="assets/media/avatars/user.png" alt="">
                    
<?php

if (isset($_POST['submit'])) {

$username = $_POST['username'];
$password = hash('sha512', $_POST['password']);

$query = mysqli_query($con, "SELECT * FROM admin where username = '$username' AND password = '$password'");
                $rows = mysqli_num_rows($query);
                $fetch = mysqli_fetch_array($query);
                
                if($rows === 1){
                  $_SESSION['id'] = $fetch['id'];
                 echo "<script>window.location.href='blogs.php';</script>";
                }
                
                else {
                
                  echo "<div class='alert alert-danger'><strong>Invalid Login Credentials!</strong></div>";
                
                }
}
?>

                                                <form action="" method="POST">
                                                    <div class="form-group py-3">
                                                        <input type="text" class="form-control form-control-lg form-control-alt" id="username" name="username" placeholder="Username" required>
                                                        <br>
                                                        <input type="password" class="form-control form-control-lg form-control-alt" id="password" name="password" placeholder="Password" required>
                                                    </div>
                                                    <div class="form-group row justify-content-center">
                                                        <div class="col-md-6 col-xl-5">
                                                            <button type="submit" name="submit" class="btn btn-block btn-alt-primary">
                                                                 <font face="candara">LOG IN</font>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </form>
                                                <!-- END Unlock Form -->
                                            </div>
                                        </div>
                                    </div>
                                    <!-- END Unlock Block -->
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <!-- END Page Content -->
            </main>
            <!-- END Main Container -->
        </div>
        <!-- END Page Container -->

       
        <script src="assets/js/oneui.core.min.js"></script>
        <script src="assets/js/oneui.app.min.js"></script>
        <script src="assets/js/plugins/jquery-validation/jquery.validate.min.js"></script>
        <script src="assets/js/pages/op_auth_lock.min.js"></script>
    </body>
</html>
