<?php
include_once 'includes/config.php';
include_once 'includes/session.php';
 $id=$_REQUEST['id'];
$query = "SELECT * from testimonial where id='".$id."'"; 
$result = mysqli_query($con, $query) or die ( mysqli_error());
$row = mysqli_fetch_assoc($result);
?>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

        <title>ADMIN - [Testimonial]</title>

        <!-- Icons -->
        <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
        <link rel="shortcut icon" href="assets/media/favicons/favicon.png">
        <link rel="icon" type="image/png" sizes="192x192" href="assets/media/favicons/favicon-192x192.png">
        <link rel="apple-touch-icon" sizes="180x180" href="assets/media/favicons/apple-touch-icon-180x180.png">
        <!-- END Icons -->

        <!-- Stylesheets -->
        <!-- Fonts and OneUI framework -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap">
        <link rel="stylesheet" id="css-main" href="assets/css/oneui.min.css">

    </head>
    <body>
        
        <?php include './includes/navbar.php';?>

            <!-- Main Container -->
            <main id="main-container">

                <!-- Hero -->
                <div class="bg-body-light">
                    <div class="content content-full">
                        <div class="d-flex flex-column flex-sm-row justify-content-sm-between align-items-sm-center">
                            <h1 class="flex-sm-fill h3 my-2">
                                <font face="candara">TESTIMONIALs</font> 
                            </h1>
                        </div>
                    </div>
                </div>
                <!-- END Hero -->

                <!-- Page Content -->
                <div class="content">
                    <!-- Basic -->
                    <div class="block block-rounded">
                        
                        <div class="block-content block-content-full">


                            
                                <div class="row push">
                                    <div class="col-lg-4">
                                        <p class="font-size-sm text-muted">
                                            <h6 align="right"><font face="candara">The panel is where you upload testimonies from clients/users. It allows you to include the name, portfolio (job/work) and testimony of the client.</font></h6>
                                        </p>
                                    </div>

                                    <div class="col-lg-8 col-xl-5">
<center>
 <?php 
if(isset($_POST['submit'])){

$id= $_REQUEST['id'];
 $name = $_POST['name'];
 $portfolio = $_POST['portfolio'];
 $testimony = $_POST['testimony'];


 $query = mysqli_query($con,"UPDATE testimonial set name='".$name."',portfolio='".$portfolio."',testimony='".$testimony."' where id='".$id."'" )
     or die(mysqli_error($con));
      if($query)
             {
                   echo "<div class='alert alert-success'> Updated successfully! </div>";
  }
      
    else
  {
                  echo "<div class='alert alert-danger'> An error occured, please try again! </div>";
  }
  }

?></center>

   <?php
if (isset($_GET['id'])) {
  $id= $_GET['id'];
  $result = mysqli_query($con, "SELECT * FROM testimonial WHERE id={$id}");
  $row = mysqli_fetch_assoc($result);

?>
                                        <form action="" method="POST">
                                        <div class="form-group">
                                            <label for="example-text-input">Name</label>
                                            <input type="text" class="form-control" id="example-text-input" name="name" placeholder="Event Title" value="<?php echo $row['name'];?>" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="example-email-input">Portfolio</label>
                                            <input type="text" class="form-control" id="example-email-input" name="portfolio" placeholder="Portfolio" value="<?php echo $row['portfolio'];?>" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="example-textarea-input">Testimony</label>
                                            <textarea class="form-control" id="example-textarea-input" name="testimony" rows="4" placeholder="Testimonial" value="<?php echo $row['testimony'];?>" required><?php echo $row['testimony'];?></textarea>
                                        </div>

                                         <center><button type="submit" name="submit" class="btn btn-dark">Submit</button></center>

                                         </form>
                                    </div>
                                </div>
                              
      <?php
}
?>                       
                            
                        </div>
                    </div>
                    <!-- END Basic -->

                    


                    

                   

                    

                </div>
                <!-- END Page Content -->
            </main>
            <!-- END Main Container -->
<!-- Footer -->
            <?php include './includes/footer.php';?>

            </div>
        <!-- END Page Container -->

        <script src="assets/js/oneui.core.min.js"></script>
        <script src="assets/js/oneui.app.min.js"></script>

        <!-- Page JS Plugins -->
        <script src="assets/js/plugins/summernote/summernote-bs4.min.js"></script>

        <script src="assets/js/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="assets/js/plugins/datatables/dataTables.bootstrap4.min.js"></script>
        <script src="assets/js/plugins/datatables/buttons/dataTables.buttons.min.js"></script>
        <script src="assets/js/plugins/datatables/buttons/buttons.print.min.js"></script>
        <script src="assets/js/plugins/datatables/buttons/buttons.html5.min.js"></script>
        <script src="assets/js/plugins/datatables/buttons/buttons.flash.min.js"></script>
        <script src="assets/js/plugins/datatables/buttons/buttons.colVis.min.js"></script>

        <!-- Page JS Code -->
        <script src="assets/js/pages/be_tables_datatables.min.js"></script>
        <script src="assets/js/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
        <script src="assets/js/plugins/flatpickr/flatpickr.min.js"></script>


        <script>jQuery(function () {
                                            One.helpers(['flatpickr', 'datepicker', 'colorpicker', 'maxlength', 'select2', 'masked-inputs', 'rangeslider']);
                                        });</script>
    </body>
</html>
