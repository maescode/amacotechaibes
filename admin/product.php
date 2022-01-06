<?php
include_once 'includes/config.php';
include_once 'includes/session.php';
 ?>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

        <title>ADMIN - [Product]</title>

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
                                <font face="candara">PRODUCTs</font> 
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
                                            <h6 align="right"><font face="candara">The panel is where you upload all company products. It allows you to include the product image and details.</font></h6>
                                        </p>
                                    </div>

                                    <div class="col-lg-8 col-xl-5">
<center>
<?php 

if(isset($_POST['submit'])){

 $title = $_POST['title'];
 $description = $_POST['description'];
  $filename = str_replace(" ", "_", $_FILES['image']['name']);
  $filepath = './productimage/'.$filename;
  move_uploaded_file($_FILES['image']['tmp_name'],'./productimage/'.$filename);

 $check="SELECT * FROM product WHERE title = '$_POST[title]'";
      $rs = mysqli_query($con,$check);
      $data = mysqli_fetch_array($rs, MYSQLI_NUM);
      if($data[0] > 1) {

        echo "<div class='alert alert-warning'> Hey! It is already in the database. </div>";
        }
        else
        {

 $query = mysqli_query($con,"INSERT into product (title,description,image) VALUES ('$title','$description','$filepath')")
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
                                        <form action="" method="POST" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label for="example-text-input">Title</label>
                                            <input type="text" class="form-control" id="example-text-input" name="title" placeholder="Event Title" value="<?php echo isset($_POST['title']) ? $_POST['title'] : '' ?>" required>
                                        </div>                                        
                                        <div class="form-group">
                                            <label for="example-textarea-input">Description</label>
                                            <textarea class="form-control" id="example-textarea-input" name="description" rows="4" placeholder="Short Description" required><?php echo isset($_POST['description']) ? $_POST['description'] : '' ?></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label for="example-password-input">Product Image</label>
                                            <input type="file" class="form-control" id="example-password-input" name="image" placeholder="Event Venue" value="<?php echo isset($_POST['image']) ? $_POST['image'] : '' ?>" required>
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
                            <h3><font face="candara">PUBLISHED PRODUCTS</font></h3>
                        </div>
                        <div class="block-content block-content-full">
                            <table class="table table-bordered table-striped table-vcenter js-dataTable-full-pagination">
                                <thead>
                                    <tr>
                                        <th>Title</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
          $result = mysqli_query($con, "SELECT * FROM product");
          while($row = mysqli_fetch_array($result)) {
             echo" <tr>
                <td>" . $row['title'] . "</td>                
                <td><a href=deleteproduct.php?id={$row['id']}>
          <i class='fa fa-trash'></i></a> &nbsp;&nbsp;&nbsp; <a href=editproduct.php?id={$row['id']}><i class='fa fa-edit'></i></a></td> 
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
