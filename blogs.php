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
		<title>AMACOTECH INTEGRATED BUSINESS AND EVENT SERVICES (AIBES) –  News and Event</title>
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
						<div class="breadcrumb_inner pt-5">
							<h3>Amacotech News and Event</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="breadcrumb_block">
				<ul>
					<li><a href="index.php">home</a></li>
					<li>Amacotech News and Event</li>
				</ul>
			</div>
		</div>
		<!--Blog With Sidebar-->
		<div class="blog_sidebar_wrapper clv_section">
			<div class="container">
				<div class="row">
					<div class="col-lg-9 col-md-9">
						<div class="blog_left_section">
						<?php
						
						$result = mysqli_query($con, "SELECT * FROM blog order by id desc LIMIT 15");
						while($row = mysqli_fetch_array($result)) {
				  
					 ?>
							<div class="blog_section">
								<div class="agri_blog_image">
								 <img src="admin/<?=$row['image']?>" alt="<?=$row['title']?>" class="w-100">
									<span class="agri_blog_date"><?php echo(date("D, d-M-Y", strtotime($row['date_created'])));?></span>
								</div>
								<div class="agri_blog_content">
									<h3><a href="blogpost.php?id=<?=$row['id']?>"><?=$row['title']?></a></h3>
									<div class="blog_user">
										<div class="user_name">
											<img src="images/user.png" alt="image">
											<a href="javascript:;"><span><?=$row['author']?></span></a>
										</div>
									</div>
									<a href="blogpost.php?id=<?=$row['id']?>">Read more <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span></a>
								</div>
							</div>
							
					<?php } ?>

							<div class="blog_pagination_section">
								<ul>
									<li class="blog_page_arrow">
										<a href="javascript:;">
											<svg 
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink"
											width="10px" height="15px">
											<path fill-rule="evenodd"  fill="rgb(112, 112, 112)"
											d="M0.324,8.222 L7.117,14.685 C7.549,15.097 8.249,15.097 8.681,14.685 C9.113,14.273 9.113,13.608 8.681,13.197 L2.670,7.478 L8.681,1.760 C9.113,1.348 9.113,0.682 8.681,0.270 C8.249,-0.139 7.548,-0.139 7.116,0.270 L0.323,6.735 C0.107,6.940 -0.000,7.209 -0.000,7.478 C-0.000,7.747 0.108,8.017 0.324,8.222 Z"/>
											</svg>
											<span>prev</span>
										</a>
									</li>
									<li><a href="javascript:;">01</a></li>
									<li><a href="javascript:;">02</a></li>
									<li><a href="javascript:;">....</a></li>
									<li><a href="javascript:;">12</a></li>
									<li><a href="javascript:;">13</a></li>
									<li class="blog_page_arrow">
										<a href="javascript:;">
											<span>next</span>
											<svg 
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink"
											width="19px" height="25px">
											<path fill-rule="evenodd" fill="rgb(112, 112, 112)"
											d="M13.676,13.222 L6.883,19.685 C6.451,20.097 5.751,20.097 5.319,19.685 C4.887,19.273 4.887,18.608 5.319,18.197 L11.329,12.478 L5.319,6.760 C4.887,6.348 4.887,5.682 5.319,5.270 C5.751,4.861 6.451,4.861 6.884,5.270 L13.676,11.735 C13.892,11.940 14.000,12.209 14.000,12.478 C14.000,12.747 13.892,13.017 13.676,13.222 Z"/>
											</svg>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-3">
						<div class="blog_sidebar">
							<div class="sidebar_block">
								<div class="sidebar_heading">
									<h3>search</h3>
									<img src="images/footer_underline.png" alt="image">
								</div>
								<div class="sidebar_search">
									<input type="text" placeholder="Search here">
									<a href="javascript:;"><i class="fa fa-search" aria-hidden="true"></i></a>
								</div>
							</div>
							<div class="sidebar_block">
								<div class="sidebar_heading">
									<h3>recent post</h3>
									<img src="images/footer_underline.png" alt="image">
								</div>
								<div class="">
									<ul>
									<?php
										
										$result = mysqli_query($con, "SELECT * FROM blog order by id desc LIMIT 15");
										while($row = mysqli_fetch_array($result)) { ?>
													<li class="border p-2 my-2">
														<div class="post_image">
															<img src="admin/<?=$row['image']?>" alt="#" width="100%">    
														</div>
														<div class="post_content">
															<p><?php echo(date("D, d-M-Y", strtotime($row['date_created'])));?></p>
															<a href="blogpost.php?id=<?=$row['id']?>" class="text-success font-weight-bold"><?=$row['title']?></a>
														</div>
													</li>
										<?php } ?>
									</ul>
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