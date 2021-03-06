<?php
include_once 'includes/config.php';
include_once 'includes/session.php';
 ?>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

        <title>ADMIN - [Gallery]</title>

        <!-- Icons -->
        <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
        <link rel="shortcut icon" href="assets/media/favicons/favicon.png">
        <link rel="icon" type="image/png" sizes="192x192" href="assets/media/favicons/favicon-192x192.png">
        <link rel="apple-touch-icon" sizes="180x180" href="assets/media/favicons/apple-touch-icon-180x180.png">
        <!-- END Icons -->

        <!-- Stylesheets -->
        <!-- Page JS Plugins CSS -->
        <link rel="stylesheet" href="assets/js/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css">
        <link rel="stylesheet" href="assets/js/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
        <link rel="stylesheet" href="assets/js/plugins/select2/css/select2.min.css">
        <link rel="stylesheet" href="assets/js/plugins/ion-rangeslider/css/ion.rangeSlider.css">
        <link rel="stylesheet" href="assets/js/plugins/dropzone/dist/min/dropzone.min.css">
        <link rel="stylesheet" href="assets/js/plugins/flatpickr/flatpickr.min.css">

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
                                GALLERY
                            </h1>
                        </div>
                    </div>
                </div>
                <!-- END Hero -->

                <!-- Page Content -->
                <div class="content">
                   
                    <!-- Dropzone (functionality is auto initialized by the plugin itself in js/plugins/dropzone/dropzone.min.js) -->
                    <!-- For more info and examples you can check out http://www.dropzonejs.com/#usage -->
                    <div class="block block-rounded">
                        <div class="block-header">
                            <h3 class="block-title">MULTIPLE FILE UPLOADER</h3>
                        </div>
                        <div class="block-content block-content-full">
                            <div class="row">
                                <div class="col-lg-3">
                                    <p class="font-size-sm text-muted">
                                       <h6 align="right"><font face="candara"> The panel enables you to upload multiple images for your Gallery uploads</font></h6>
                                    </p>
                                </div>
                                <div class="col-lg-8">

<?php
if(isset($_POST['submit'])){
foreach ($_FILES["file"]["error"] as $key => $error) {
    if ($error == UPLOAD_ERR_OK) {
        $tmp_name = $_FILES["file"]["tmp_name"][$key];
        // basename() may prevent filesystem traversal attacks;
        // further validation/sanitation of the filename may be appropriate
        $name = basename($_FILES["file"]["name"][$key]);
        move_uploaded_file($tmp_name, "./gallery/$name");

        $filepath="gallery/$name";
        $caption=$_POST['caption'];

        $query = mysqli_query($con,"INSERT into gallery (caption, picture) VALUES ('$caption','$filepath')")
        or die(mysqli_error($con));
    }
}
echo "<div class='alert alert-success'> File(s) Successfully Uploaded! </div>";
}
?>
                                    <!-- DropzoneJS Container -->
                                    <form class="dropzone" action="" method="post" enctype="multipart/form-data">
                                        <h4>NOTICE</h4>
                                <ul>
                                <li>You can upload multiple files at a time</li>
                                <li>You can upload any file type (doc, pdf, image etc)</li>
                                <ul><br>
                                     <label for="caption">Cation</label>
                                     <br>
                                     <input name="caption" type="text" placeholder="Image caption"/>
                                     <br> <br>
                                     <input name="file[]" type="file" multiple required/>
                                     
                                     <input type="submit" class="btn btn-danger" name="submit" value="Upload">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END Dropzone -->


<!-- Advanced Gallery -->
                    <div class="row gutters-tiny items-push js-gallery push">
<?php
$imagesDirectory = "gallery/";

if(is_dir($imagesDirectory))
{
    $opendirectory = opendir($imagesDirectory);
  
    while (($image = readdir($opendirectory)) !== false)
    {
        if(($image == '.') || ($image == '..'))
        {
            continue;
        }
        
        $imgFileType = pathinfo($image,PATHINFO_EXTENSION);
        
        if(($imgFileType == 'jpg') || ($imgFileType == 'png') || ($imgFileType == 'pdf') || ($imgFileType == 'doc') || ($imgFileType == 'docx') || ($imgFileType == 'jpeg'))
        {  
            $picture='gallery/'.$image;
            $result = mysqli_query($con, "SELECT * FROM gallery where picture = '$picture'")
             or die(mysqli_error($con));
             $row = mysqli_fetch_assoc($result);
             echo   '<div class="col-md-3 animated fadeIn">';
             echo   '<div class="options-container fx-item-rotate-r" style="height:200px">';
             echo   '<img class="img-fluid options-item" src="gallery/'.$image.'">';
             echo   '<div class="options-overlay bg-black-75">';
             echo   '<div class="options-overlay-content">';
             echo   '<a class="btn btn-sm btn-primary img-lightbox" href="gallery/'.$image.'">';
             echo   '<i class="fa fa-search-plus mr-1"></i> View </a>&nbsp;&nbsp;&nbsp;';
             echo   "<a class='btn btn-sm btn-secondary' href='delete.php?id=$row[id] & del=$image'>";
             echo   '<i class="fa fa-trash mr-1"></i> Delete </a>';
             echo   '</div></div></div></div>';
                 
        }
        
    }

    
    closedir($opendirectory);
 
}

?>                        
                        
                    </div>
                    <!-- END Advanced Gallery -->
                </div>
                <!-- END Page Content -->
            </main>
            <!-- END Main Container -->

           <?php include './includes/footer.php';?>
        </div>
        
        <script src="assets/js/oneui.core.min.js"></script>

        <script src="assets/js/oneui.app.min.js"></script>

        <!-- Page JS Plugins -->
        <script src="assets/js/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
        <script src="assets/js/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
        <script src="assets/js/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
        <script src="assets/js/plugins/select2/js/select2.full.min.js"></script>
        <script src="assets/js/plugins/jquery.maskedinput/jquery.maskedinput.min.js"></script>
        <script src="assets/js/plugins/ion-rangeslider/js/ion.rangeSlider.min.js"></script>
        <script src="assets/js/plugins/dropzone/dropzone.min.js"></script>
        <script src="assets/js/plugins/flatpickr/flatpickr.min.js"></script>

        <!-- Page JS Helpers (Flatpickr + BS Datepicker + BS Colorpicker + BS Maxlength + Select2 + Masked Inputs + Ion Range Slider plugins) -->
        <script>jQuery(function () {
                                            One.helpers(['flatpickr', 'datepicker', 'colorpicker', 'maxlength', 'select2', 'masked-inputs', 'rangeslider']);
                                        });</script>
    </body>
</html>
