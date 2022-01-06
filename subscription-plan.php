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
		<title>AMACOTECH INTEGRATED BUSINESS AND EVENT SERVICES (AIBES) –  Our Subscription Plans</title>
		<?php include 'includes/meta.php';?>
		<?php include 'includes/links.php';?>
</head>
<body>
<?php include 'includes/preloader.php';?>	

<div class="clv_main_wrapper index_v2">
 
<?php include 'includes/header.php';?>	
<?php require ('admin/includes/config.php'); ?>

<?php 
												require('PHPMailer/mail.php');
												if(isset($_POST['submitapplication'])){
													$title = $_POST['title'];
													$full_name = $_POST['full_name'];
													$home_address=$_POST['home_address'];
													$office_address = $_POST['office_address'];
													$occupation = $_POST['occupation'];
													$nationality = $_POST['nationality'];
													$religion = $_POST['religion'];
													$state_of_birth = $_POST['state_of_birth'];
													$psp = $_POST['psp'];
													$email = $_POST['email'];
													$telephone = $_POST['telephone'];
													$state_of_residence = $_POST['state_of_residence'];
													$referrer = $_POST['referrer'];
													$reg_no = $_POST['reg_no'];
													$acct_num = $_POST['acct_num'];
													$message= $_POST['message'];
													
													$to_email= 'info@amacotechaibes.com';
													$to_name='AMACOTECH INTEGRATED BUSINESS AND EVENT SERVICES (AIBES)';
													$subject='AMACOTECH SUBSCRIPTION APPLICATION';
													$body ='<html><body style="border: 2px solid #24263f; border-radius: 10px; padding:10px; width:80%; margin:auto;">';
													$body.='<header>';
													$body.='<h6 style="text-center"></h6>';
													$body.='<table style="border:0px; width:100%">';
													$body.='<tr><td>Name</td><td>'."$title $full_name".'</td></tr>';
													$body.='<tr><td>Home Address</td><td>'."$home_address".'</td></tr>';
													$body.='<tr><td>Office Address</td><td>'."$office_address".'</td></tr>';
													$body.='<tr><td>Occupation</td><td>'."$occupation".'</td></tr>';
													$body.='<tr><td>Nationality</td><td>'."$nationality".'</td></tr>';
													$body.='<tr><td>Religion</td><td>'."$religion".'</td></tr>';
													$body.='<tr><td>State of Birth</td><td>'."$state_of_birth".'</td></tr>';
													$body.='<tr><td>Preferred Subscription Package (You can upgrade anytime)</td><td>'."$psp".'</td></tr>';
													$body.='<tr><td>Email</td><td>'."$email".'</td></tr>';
													$body.='<tr><td>Telephone</td><td>'."$telephone".'</td></tr>';
													$body.='<tr><td>State od Residence</td><td>'."$state_of_residence".'</td></tr>';
													$body.='<tr><td>Referrer</td><td>'."$referrer".'</td></tr>';
													$body.='<tr><td>Registration Number</td><td>'."$reg_no".'</td></tr>';
													$body.='<tr><td>Account Number</td><td>'."$acct_num".'</td></tr>';
													$body.='<tr><td>Message</td><td>'."$message".'</td></tr>';
													$body.='</header>';
													$body.='</table>';      
													$body.='</body></html>';
												
											mail::send_mail($to_email,$to_name,$subject,$body);


													?>
														<script>
																swal({
																	title: "Thanks for chosing our subscription plan!",
																	text: " Your Application sent Successfully! We will get in touch soon",
																	icon: "success",
																	}); 
															</script>
													<?php
												
												} 
?>

		<!--Breadcrumb-->
		<div class="breadcrumb_wrapper">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-4">
						<div class="breadcrumb_inner pt-5">
							<h3>Amacotech Subscription Plans</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="breadcrumb_block">
				<ul>
					<li><a href="index.php">home</a></li>
					<li>Amacotech Subscription Plan</li>
				</ul>
			</div>
		</div>
		
        <!--Partners-->
			<div class="clv_partner_wrapper clv_section">
				<div class="container">
					<div class="row">
						 <div class="col-12 mb-5 text-center">
						    <h1>Our Subscription Plan</h1>`
							<span><img src="images/agri_underline2.png" alt="image" /></span>
						 </div>
					</div>	
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-12">
                           <div class="jumbotron">
							   <h2>Subscription Plan</h2>
                               <p class="lead">
							     Kindly go through our subscription plan
							   </p>
                              
							</div>
							<div class="container">
							    <img src="./images/sub-plan (2).jpeg" alt="" srcset="" class="w-100">
							</div>	
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12">
                            <div class="contact_form_wrapper clv_section">
						        <div class="container">
						            <div class="row">
						                <div class="col-lg-12 col-md-12">
						                    <div class="contact_form_section">
						                        <div class="row">
						                            <div class="col-md-12 col-lg-12">
						                                <h3>Subscription Form</h3>
						                                <p>
						                                Kindly fill the form; Check the contact address for details
						                            	</p>
						                            </div>

													
												<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
													<div class="col-md-12 col-lg-12">
						                                <div class="form_block">
						                                    <input type="text" name="title" class="form_field" placeholder="Title" required>
						                                </div>
						                            </div>
						                            <div class="col-md-12 col-lg-12">
						                                <div class="form_block">
						                                    <input type="text" name="full_name" class="form_field" placeholder="Full name" required >
						                                </div>
						                            </div>
						                            <div class="col-md-12 col-lg-12">
						                                <div class="form_block">
						                                    <input type="text" name="home_address" class="form_field" placeholder="Home Address" required >
						                                   
						                                </div>
						                            </div>
						                            <div class="col-md-12 col-lg-12">
						                                <div class="form_block">
						                                    <input type="text" name="office_address" class="form_field" placeholder="Office Address" required >
						                                </div>
						                            </div>
						                            <div class="col-md-12 col-lg-12">
						                                <div class="form_block">
						                                    <input type="text" name="occupation" class="form_field" placeholder="Occupation"  required >
						                                </div>
						                            </div>
						                            <div class="col-md-12 col-lg-12">
						                                <div class="form_block">
						                                    <input type="text" name="nationality" class="form_field" placeholder="Nationality" required >
						                                </div>
						                            </div>
						                             <div class="col-md-12 col-lg-12">
						                                <div class="form_block">
						                                    <input type="text" name="religion" class="form_field" placeholder="Religion"  required>
						                                </div>
						                            </div>
						                            <div class="col-md-12 col-lg-12">
						                                <div class="form_block">
						                                    <input type="text" name="state_of_birth" class="form_field" placeholder="State of Birth" required >
						                                </div>
						                            </div>
						                             <div class="col-md-12 col-lg-12">
						                                <div class="form_block">
						                                    <input type="text" name="email" class="form_field" placeholder="Email" required >
						                                </div>
						                            </div>
						                             <div class="col-md-12 col-lg-12">
						                                <div class="form_block">
						                                    <input type="text" name="state_of_residence" placeholder="State of Residence (If same as state of birth, please ignore)" name="state_of_residence" class="form_field" required >
						                                </div>
						                            </div>
						                            <div class="col-md-12 col-lg-12">
						                                <div class="form_block">
						                                    <input type="telephone" placeholder="Telephone" name="telephone" class="form_field" required>
						                                </div>
						                            </div>
						                            <div class="col-md-12 col-lg-12">
						                                <div class="form_block">
						                                    <input type="text" name="psp" class="form_field" placeholder="Preferred Subscription Package (You can upgrade anytime)">
						                                </div>
						                            </div>
						                            <div class="col-md-6 col-lg-6">
						                                <div class="form_block">														
						                                    <input type="text" name="referrer" class="form_field" placeholder="Referrer's name" required>
						                                </div>
						                            </div>
						                            <div class="col-md-6 col-lg-6">
						                                <div class="form_block">
						                                    <input type="text" name="reg_no" class="form_field" placeholder="Registration number" required>
						                                </div>
						                            </div>
						                            <div class="col-md-12 col-lg-12">
						                                <div class="form_block">
						                                    <input type="text" name="acct_num" class="form_field" placeholder="Account name (Optional)" >
						                                </div>
						                            </div>
						                            <div class="col-md-12 col-lg-12">
						                                <div class="form_block">
						                                    <textarea placeholder="Message" name="message" class="form_field" required></textarea>
						                                </div>
						                            </div>
						                            <div class="col-md-12 col-lg-12">
						                                <div class="form_block">
						                                    <input type="submit" name="submitapplication" class="form_field btn-success" value="Submit form">
						                                </div>
						                            </div>
													</form>
						                        </div>
						                    </div>
						                </div>
						                
						            </div>
						        </div>
    						</div>
						</div>
					</div>
				</div>
		    </div>
	<!--Footer-->
	<?php include 'includes/footer.php' ?>
</body>
</html>