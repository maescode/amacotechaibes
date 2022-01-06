<?php
include_once 'includes/config.php';
include_once 'includes/session.php';
 ?>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

        <title>ADMIN - [Video]</title>

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
                                <font face="candara">VIDEOs</font> 
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
                                            <h6 align="right"><font face="candara">The panel is where you upload your video links on YouTube. It only accepts valid YouTube links of your videos.</font></h6>
                                        </p>
                                    </div>

                                    <div class="col-lg-8 col-xl-5">
<center>
                                          <?php 
if(isset($_POST['submit'])){

 $title = $_POST['title'];
 $link = $_POST['link'];

$search     = '#(.*?)(?:href="https?://)?(?:www\.)?(?:youtu\.be/|youtube\.com(?:/embed/|/v/|/watch?.*?v=))([\w\-]{10,12}).*#x';
$replace    = 'https://www.youtube.com/embed/$2';
$url        = preg_replace($search,$replace,$link);


$check = mysqli_query($con, "SELECT * FROM video where link = '$url'");
                $rs = mysqli_num_rows($check);
                $data = mysqli_fetch_array($check);


      if($data[0] > 1) {

        echo "<div class='alert alert-warning'> Hey! It is already in the database. </div>";
        }
        else
        {

 $query = mysqli_query($con,"INSERT into video (title,link) VALUES ('$title','$url')")
     or die(mysqli_error($con));
      if($query)
             {
                   echo "<div class='alert alert-success'> Submitted successfully! </div>";
  }
      
    else
  {
                  echo "<div class='alert alert-danger'> An error occured, please try again! </div>";
  }
  }
  }

?></center>
                                        <form action="" method="POST">
                                        <div class="form-group">
                                            <label for="example-text-input">Title</label>
                                            <input type="text" class="form-control" id="example-text-input" name="title" placeholder="Video Title" value="<?php echo isset($_POST['title']) ? $_POST['title'] : '' ?>" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="example-email-input">YouTube Link</label>
                                            <input type="text" class="form-control" id="example-email-input" name="link" placeholder="YouTube Video Link" value="<?php echo isset($_POST['link']) ? $_POST['link'] : '' ?>" required>
                                        </div>
                                        
                                         <center><button type="submit" name="submit" class="btn btn-dark">Submit</button></center>

                                         </form>
                                    </div>
                                </div>
                              
                             
                            
                        </div>
                    </div>
                    <!-- END Basic -->

                    


                    

                   

                    <!-- Dynamic Table Full Pagination -->
                    <div class="table-responsive block block-rounded">
                        <div class="block-header">
                            <h3><font face="candara">PUBLISHED VIDEOS</font></h3>
                        </div>
                        <div class="block-content block-content-full">
                            <table class="table table-bordered table-striped table-vcenter js-dataTable-full-pagination">
                                <thead>
                                    <tr>
                                        <th>Title</th>
                                        <th>Link</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                   <?php 
          $result = mysqli_query($con, "SELECT * FROM video ");
          while($row = mysqli_fetch_array($result)) {
             echo" <tr>
                <td>" . $row['title'] . "</td>
                <td>" . $row['link'] . "</td>
                <td><a href=deletevideo.php?id={$row['id']}>
          <i class='fa fa-trash'></i></a> &nbsp;&nbsp;&nbsp; <a href=editvideo.php?id={$row['id']}><i class='fa fa-edit'></i></a></td> 
              </tr>";
             }
             ?>
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- END Dynamic Table Full Pagination -->

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
