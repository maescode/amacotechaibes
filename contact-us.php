<?php require ('admin/includes/config.php'); ?>

<!DOCTYPE html>
<!-- 
Template Name: Cultivation - Multipurpose Responsive HTML Template
Version: 1.0.0
Author: Kamleshyadav
Website: 
Purchase: 
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="zxx">
<!--<![endif]-->
<!-- Begin Head --> 
<head>
		<title>AMACOTECH INTEGRATED BUSINESS AND EVENT SERVICES (AIBES) –  Contact us</title>
		<?php include 'includes/meta.php';?>
		<?php include 'includes/links.php';?>
</head>
<body>
<?php 
 include 'includes/preloader.php';
?>	

<?php 
    require('PHPMailer/mail.php');
    if(isset($_POST['sendmessage'])){
        $first_name = $_POST['first_name'];
        $last_name = $_POST['last_name'];
        $telephone = $_POST['telephone'];
        $email = $_POST['email'];
        $subject = $_POST['subject'];
        $message= $_POST['message'];
        
	    $to_email= 'info@amacotechaibes.com';
        $to_name='AMACOTECH INTEGRATED BUSINESS AND EVENT SERVICES (AIBES)';
        $subject=$_POST['subject'];
        $body ='<html><body style="border: 2px solid #24263f; border-radius: 10px; padding:10px; width:80%; margin:auto;">';
        $body.='<header>'; 
        $body.='<p>'.'Name : '. "$last_name $first_name"; 
        $body.='</p>';
        $body.='<p>'.'Telephone : '. "$telephone"; 
        $body.='</p>';
        $body.='<p>'.'Email : '. "<a href='maito:$email'>$email</a>"; 
        $body.='</p>';
        $body.='<p>'."$message"; 
        $body.='</p>';
        $body.='</header>';      
        $body.='</body></html>';
       
    mail::send_mail($to_email,$to_name,$subject,$body);

        ?>
              <script>
					swal({
						title: "Thanks for contacting us!",
						text: " Your message sent!",
						icon: "success",
						}); 
				</script>
        <?php
       
    } 
?>

<div class="clv_main_wrapper index_v2">
 
		<?php include 'includes/header.php';?>	
		<!--Breadcrumb-->
		<div class="breadcrumb_wrapper">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-4">
						<div class="breadcrumb_inner pt-5">
							<h3>Contact Us</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="breadcrumb_block">
				<ul>
					<li><a href="index.php">home</a></li>
					<li>Contact us</li>
				</ul>
			</div>
		</div>
		<!--Blog With Sidebar-->
		<div class="blog_sidebar_wrapper clv_section">
			 <div class="container">
                <!--Contact Form-->
    <div class="contact_form_wrapper clv_section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8">
                    <div class="contact_form_section">
                        <div class="row">
                            <div class="col-md-12 col-lg-12">
                                <h3>send message to us</h3>
                            </div>
							<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
                            <div class="col-md-6 col-lg-6">
                                <div class="form_block">
                                    <input type="text" name="first_name" class="form_field" placeholder="First Name" required >
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6">
                                <div class="form_block">
                                    <input type="text" name="last_name" class="form_field" placeholder="Last Name" required>

                                </div>
                            </div>
                            <div class="col-md-12 col-lg-12">
                                <div class="form_block">
                                    <input type="tel" placeholder="Telephone" name="telephone" class="form_field" required>
									
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6">
                                <div class="form_block">
                                    <input type="email" name="email" class="form_field" placeholder="Email" required >
                        
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6">
                                <div class="form_block">
                                    <input type="text" name="subject" class="form_field" placeholder="Subject" required>
                                </div>
                            </div>
                            <div class="col-md-12 col-lg-12">
                                <div class="form_block">
                                    <textarea placeholder="Message" name="message" class="form_field" required></textarea>  
                                </div>
                            </div>
                            <div class="col-md-12 col-lg-12">
                                <div class="form_block">
                                    <input type="submit" class="form_field btn-success" name="sendmessage" value="send">
                                </div>
                            </div>
							</form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4">
                    <div class="working_time_section">
                        <div class="timetable_block">
                            <h5>Our working hours</h5>
                            <ul>
                                <li>
                                    <p>monday</p>
                                    <p>8:00 am - 6:00 pm</p>
                                </li>
                                <li>
                                    <p>tuesday</p>
                                    <p>8:00 am - 6:00 pm</p>
                                </li>
                                <li>
                                    <p>wednesday</p>
                                    <p>8:00 am - 6:00 pm</p>
                                </li>
                                <li>
                                    <p>thursday</p>
                                    <p>8:00 am - 6:00 pm</p>
                                </li>
                                <li>
                                    <p>friday</p>
                                    <p>8:00 am - 6:00 pm</p>
                                </li>
                                <li>
                                    <p>saturday</p>
                                    <p>8:00 am - 6:00 pm</p>
                                </li>
                                <li>
                                    <p>sunday</p>
                                    <p>close</p>
                                </li>
                            </ul>
                        </div>
                        <div class="tollfree_block">
                            <h5>Contact Number</h5>
                            <h3>( +234 ) 8076465550</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="contact_map_wrapper">
            <div class="px-3 py-5 mt-5">
           
            <div class="row">
                <div class="col-md-6">
                    <div class="container">
                        <h2 class="display-4 my-2 text-dark">Primary Address</h2>
                        <hr>
                        <address class="" style="font-size: 20px">
                            No 6a/3051 Adeboye House,  <br>
                            Sango-Eleyele express Road, <br>
                            Alabama bus stop, Ibadan, <br>
                            Oyo state, Nigeria. 
                        </address>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="container">
                        <h2 class="display-4 my-2 text-dark">Others</h2>
                        <hr>
                        <address class="" style="font-size: 20px">
                           <p>No. 5, Olubadan, <br>Oluyole Estate, Ring Road, <br> Ibadan, Oyo State</p> 
                        </address>
                        
                    </div>
                </div>           
                
            </div>

            <div class="row mt-5">
                  <div class="col-md-6">
                    <div class="container">
                        <h2 class="display-4 my-2 text-dark">Lagos Address</h2>
                        <hr>
                        <address class="" style="font-size: 20px">
                          <p>31 Dosumu Street, <br> Carpenter Bus Stop, <br> Off Ekoro Road, <br> Abule-Egba,  Lagos State.</p> 
                         <p>
                            <b> Contact person details </b>
                         </p>
        
                         <p>
                              Mrs Agnes Areghan 
                             <i class="fa fa-phone fa-2x"></i> <a href="tel:+2349095773228">09095773228</a>
                         </p>


                        </address>
                        
                    </div>
                </div>

                 <div class="col-md-6">
                    <div class="container">
                        <h2 class="display-4 my-2 text-dark">Kaduna Address</h2>
                        <hr>
                        <address class="" style="font-size: 20px; text-transform: capitalize;">
                          <p>NO 1 MADAKIYA, <br> BUSY BEE RESTAURANT <br> KAFANCHAN, <br> KADUNA STATE.</p>
                          <p>
                            <b> Contact person details </b>
                         </p> 
                            <p>
                               Mr Jonathan Kyari <i class="fa fa-phone fa-2x"></i>  <a href="tel:+2348030591732">08030591732</a> or <a href="tel:+2348176129932">08176129932</a>
                            </p>

                        </address>
                        
                    </div>
                </div>
           </div>
          <div class="row mt-5">
                <div class="col-md-6">
                    <div class="container">
                        <h2 class="display-4 my-4 text-dark">USA Address</h2>
                        <hr>
                        <address class="" style="font-size: 20px;">
                          <p>1809 W.51st  street, <br> Chicago, Illinois 60609</p>
                          <p>
                            <b> Contact person details </b>
                         </p> 
                            <p>
                              <i class="fa fa-phone fa-2x"></i>  <a href="tel:8479621744">847-962-1744</a> <br>
                              <i class="fa fa-envelope fa-2x"></i> communityfarmersplace@yahoo.com  <a href="mailto:communityfarmersplace@yahoo.com"></a>

                            </p>

                        </address>
                        
                    </div>
                </div>
          
            </div>
            
          </div>
    </div>
    <!--Contact Map-->
   <div class="contact_map_wrapper">
            <div class="px-3 py-5 mt-5">
            <h1 class="display-4 my-2 text-dark">Our Locations</h1>
             <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3956.395349296223!2d3.8764716142694597!3d7.421423914133246!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1039f3ffecae5823%3A0xff38e8d1449eea89!2sAMACOTECH%20INTEGRATED%20BUSINESS%20AND%20EVENT%20SERVICES!5e0!3m2!1sen!2sng!4v1630361488036!5m2!1sen!2sng" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
           
           <iframe src="https://www.google.com/maps/embed?pb=!1m24!1m8!1m3!1d63306.84296315062!2d3.839109810857314!3d7.389967999999999!3m2!1i1024!2i768!4f13.1!4m13!3e0!4m5!1s0x10398cd17c7ac787%3A0xcb8062d5bc21af97!2s31%20Segun%20Oriola%20St%2C%20Eleyele%2C%20Ibadan!3m2!1d7.415746599999999!2d3.8583288!4m5!1s0x10398c4689710ad3%3A0xc5c4dbee7217411e!2sMarella%20Schools%2C%20Estate%2C%2027%20Olubadan%20Avenue%2C%207up%20Rd%2C%20Ibadan!3m2!1d7.3618108!2d3.8528165999999997!5e0!3m2!1sen!2sng!4v1624182215565!5m2!1sen!2sng" width="100%" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
             </div>
    </div>


  </div>
</div>
		<!--Footer-->
	<?php include 'includes/footer.php' ?>
</body>
</html>