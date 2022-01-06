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
		<title>AMACOTECH INTEGRATED BUSINESS AND EVENT SERVICES (AIBES) –  Our Services</title>
		<?php include 'includes/meta.php';?>
		<?php include 'includes/links.php';?>
</head>
<body>
<?php include 'includes/preloader.php';?>	

<div class="clv_main_wrapper index_v2">
 
<?php include 'includes/header.php';?>	
		<!--Breadcrumb-->
		<div class="breadcrumb_wrapper">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-4">
						<div class="breadcrumb_inner mt-5">
							<h3>Amacotech Gallery</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="breadcrumb_block">
				<ul>
					<li><a href="index.php">home</a></li>
					<li>Amacotech Gallery</li>
				</ul>
			</div>
		</div>
		
		<!--Gallery -->
		<div class="row">
			<div class="col-md-12 mt-5">
			    <div class="gallery_slide">
			    	<div class="gallery_grid pl-5">
			    		
				  <?php
						
						$result = mysqli_query($con, "SELECT * FROM gallery order by id desc LIMIT 20");
						while($row = mysqli_fetch_array($result)) {
				  
					 ?>
					       <div class="gallery_grid_item">
									<div class="gallery_image">
										<img src="./admin/<?=$row['picture'];?>" />
										<div class="gallery_overlay">
											<a href="./admin/<?=$row['picture'];?>" class="view_image"><span><i class="fa fa-search" aria-hidden="true"></i></span></a>
									</div>
								</div>
							</div>

					<?php } ?>
								
								
			    	</div>
			    </div>	
			</div>
		</div>
	<!--Footer-->
	<?php include 'includes/footer.php' ?>
</body>
</html>