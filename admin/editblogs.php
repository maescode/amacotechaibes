<?php
include_once 'includes/config.php';
include_once 'includes/session.php';
 $id=$_REQUEST['id'];
$query = "SELECT * from blog where id='".$id."'"; 
$result = mysqli_query($con, $query) or die ( mysqli_error());
$row = mysqli_fetch_assoc($result);
?>
 
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

        <title>ADMIN - [News]</title>

        <!-- Icons -->
        <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
        <link rel="shortcut icon" href="assets/media/favicons/favicon.png">
        <link rel="icon" type="image/png" sizes="192x192" href="assets/media/favicons/favicon-192x192.png">
        <link rel="apple-touch-icon" sizes="180x180" href="assets/media/favicons/apple-touch-icon-180x180.png">
        <!-- END Icons -->
        <link rel="stylesheet" href="assets/js/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css">
        <link rel="stylesheet" href="assets/js/plugins/flatpickr/flatpickr.min.css">
        <!-- Stylesheets -->
        <!-- Page JS Plugins CSS -->
        <link rel="stylesheet" href="assets/js/plugins/summernote/summernote-bs4.css">
        <link rel="stylesheet" href="assets/js/plugins/simplemde/simplemde.min.css">

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
                                <font face="candara">EDIT NEWs</font>
                            </h1>
                            
                        </div>
                    </div>
                </div>
                <!-- END Hero -->

                <div class="content">
                <div class="block block-rounded">
                        
                        <div class="block-content block-content-narrow">
                            <div class="row push">
                                
                                <div class="col-lg-12">
                                    <center><div class="col-lg-6">
                                        
  <?php 
include_once("includes/config.php");

if(isset($_POST['submitBlogs'])){

 $title = $_POST['title'];
 $author = $_POST['author'];
 $date_created = $_POST['date_created'];
 $entry_text = $_POST['entry_text'];
  $filename = str_replace(" ", "_", $_FILES['image']['name']);
  $filepath = './blogimage/'.$filename;
  $destination ='./blogimage/'.$filename;
  move_uploaded_file($_FILES['image']['tmp_name'], $destination);

 $query = mysqli_query($con,"UPDATE blog set title='".$title."',author='".$author."',date_created='".$date_created."',entry_text='".$entry_text."',image='".$filepath."' where id='".$id."'")
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

?>

            <?php
if (isset($_GET['id'])) {
  $id= $_GET['id'];
  $result = mysqli_query($con, "SELECT * FROM blog WHERE id={$id}");
  $row = mysqli_fetch_assoc($result);

?>

                                    </div></center>
                                    <!-- Form Grid -->
                                    <form action="" method="POST" enctype="multipart/form-data">
                                        <div class="form-group form-row">
                                            <div class="col-9">
                                                <label>Title</label>
                                                <input type="text" name="title" class="form-control" placeholder="Blog Title" value="<?php echo $row['title'];?>" required>
                                            </div>
                                            <div class="col-3">
                                                <label>Author</label>
                                                <input type="text" name="author" class="form-control" placeholder="Blog Author" value="<?php echo $row['author'];?>" required>
                                            </div>
                                        </div>
                                        <div class="form-group form-row">
                                            <div class="col-6">
                                                <label>News Date</label>
                                                <input type="text" class="js-flatpickr form-control bg-white" id="example-flatpickr-friendly" name="date_created" placeholder="Select Date" data-alt-input="false" data-date-format="F j, Y" data-alt-format="F j, Y" value="<?php echo $row['date_created'];?>" required>
                                            </div>
                                            <div class="col-6">
                                                <label>Featured Image</label>
                                                <input type="file" name="image" class="form-control" placeholder="Featured Image" value="<?php echo $row['image'];?>" required>
                                            </div>
                                        </div>
                                        <div class="form-group form-row">
                                            <div class="col-12">
                                                <label>News Content</label>
                                            <textarea id="summernote" name="entry_text" required><?php echo $row['entry_text'];?></textarea>
                                            </div>
                                        </div>                        
                   
                                        <center><button type="submit" name="submitBlogs" class="btn btn-dark">Submit</button></center>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
<?php
            }
            ?>  
<br>

                </div>
            </main>
            <!-- END Main Container -->


            <!-- Footer -->
            <footer id="page-footer" class="bg-body-light">
                <div class="content py-3">
                    <div class="row font-size-sm">
                        <div class="col-sm-6 order-sm-2 py-1 text-center text-sm-right">
                            Crafted with <i class="fa fa-heart text-danger"></i> by <a class="font-w600" href="http://verbumnetworks.net/" target="_blank"><font color="black">Verbum</font> <font color="maroon">Networks</font></a>
                        </div>
                        <div class="col-sm-6 order-sm-1 py-1 text-center text-sm-left">
                            <a class="font-w600" href="">ADMIN</a> &copy; <span data-toggle="year-copy"></span>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- END Footer -->

           
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
      

  <script>
    $(document).ready(function() {
        $('#summernote').summernote();
    });
  </script>

    </body>
</html>
