<?php
include_once 'includes/config.php';
include_once 'includes/session.php';
 ?>
 
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

        <title>ADMIN - [SEND NEWS LETTER]</title>

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
                                <font face="candara">SEND NEWS LETTER</font>
                            </h1>
                            <a href="newsletter.php">NEWS LETTER SUBSCRIBER</a>
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
$result="";
if(isset($_POST['sendNews'])){
 $title = $_POST['title'];
 $content =$_POST['entry_text'];
 $mails="";
 $query = mysqli_query($con, "SELECT * FROM newsletter");
 $rows = mysqli_num_rows($query);
    if($rows > 0){
        require '../phpmailer/PHPMailerAutoload.php';
        $mail =new PHPMailer;
        $mail->Host = 'stmp.gmail.com';
        $mail->Port='587';
        $mail->SMTPAuth=true;
        $mail->SMTPSecure='tls';
        $mail->Username='olagokeabel@mail.com';
        $mail->Password='Olagokeabel01#';
        $mail->setFrom('olagokeabel@gmail.com');

        while($row = mysqli_fetch_array($query)){
            $mail->addAddress($row['email']);
          }
                    
        $mail->addReplyTo('olagokeabel@gmail.com');     
        $mail->isHTML(true);
        $mail->Subject = "$title";
        $mail->Body = $content;
            
            if(!$mail->send()){
                    $result="Something went wrong. Please try again";
                }
                else{
                     $result= "News Letter sent";
                    }

    }
    else{
        $result="No Subscriber Found";
    }
  }

?>


                <?php
                    if(!empty($result)){
                ?>
                    <div class="alert alert-secondary alert-dismissible show text-center bg-primary" style="width:85%; margin: -20px auto 20px auto ; color:white">
                      <span style="color:white; font-size:17px"><?=$result?></span>
                      <button type="button" class="close" data-dismiss="alert">&times;</button>
                   </div>
                <?php
                    }
                ?>

                                    </div></center>
                                    <!-- Form Grid -->
                                    <form action="" method="POST" enctype="multipart/form-data">
                                        <div class="form-group form-row">
                                            <div class="col-9">
                                                <label>Newsletter Title</label>
                                                <input type="text" name="title" class="form-control" placeholder="Newsletter Title" value="<?php echo isset($_POST['title']) ? $_POST['title'] : '' ?>" required>
                                            </div>
                                           
                                        </div>

                                        <div class="form-group form-row">
                                            <div class="col-12">
                                                <label>Newsletter Content</label>
                                            <textarea id="summernote" name="entry_text" style="min-height:300px"><?php echo isset($_POST['entry_text']) ? $_POST['entry_text'] : '' ?></textarea>
                                            </div>
                                        </div>                        
                   
                                        <center><button type="submit" name="sendNews" class="btn btn-dark">Send News</button></center>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

<br>
                </div>
            </main>
            <!-- END Main Container -->


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
      

  <script>
    $(document).ready(function() {
        $('#summernote').summernote();
    });
  </script>

    </body>
</html>
