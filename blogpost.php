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
        <?php
        if (isset($_GET['id'])) {
            $id= $_GET['id'];
            $result = mysqli_query($con, "SELECT * FROM blog WHERE id={$id}");
            $row = mysqli_fetch_assoc($result);
        }
        ?>
		<title> <?=$row['title']?> AMACOTECH INTEGRATED BUSINESS AND EVENT SERVICES (AIBES) –  News Detail</title>
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
							<h3>News Detail</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="breadcrumb_block">
				<ul>
					<li><a href="blogs.php">Blog</a></li>
					<li>News details</li>
				</ul>
			</div>
		</div>

        <div class="blog_sidebar_wrapper clv_section">
			<div class="container">
				<div class="row">
					<div class="col-lg-9 col-md-9">
						<div class="blog_left_section">
							<div class="blog_section">
								<div class="agri_blog_image">
								 <img src="admin/<?=$row['image']?>" alt="<?=$row['title']?>" class="w-100">
									<span class="agri_blog_date"><?php echo(date("D, d-M-Y", strtotime($row['date_created'])));?></span>
								</div>
								<div class="agri_blog_content">
									<h3><?=$row['title']?></h3>
									<div class="blog_user">
										<div class="user_name">
											<img src="images/user.png" alt="image">
											<a href="javascript:;"><span><?=$row['author']?></span></a>
										</div>
									</div>
									<div class="text-justify">
                                       <?=$row['entry_text']?>
                                    </div>
								</div>
							</div>
                            <div class="share-box">
                                    <div class="social-box">
                                     <div class="d-flex">
                                         <span><i class="fa fa-2x mr-2">Share</i> <i class="fa fa-share-alt fa-2x mr-4"></i></span>
                                            <a href="https://www.facebook.com/sharer/sharer.php?u=&t=" title="Share on Facebook"
                                                target="_blank"
                                                onclick="window.open('https://www.facebook.com/sharer/sharer.php?u=' + encodeURIComponent(document.URL) + '&t=' + encodeURIComponent(document.URL)); return false;"><i
                                                    class="fa fa-facebook fa-2x mr-4"></i></a>
                                           
                                            <a href="https://twitter.com/intent/tweet?" target="_blank" title="Tweet"
                                    onclick="window.open('https://twitter.com/intent/tweet?text=' + encodeURIComponent(document.title) + ':%20 ' + encodeURIComponent(document.URL)); return false;"><i
                                        class="fa fa-twitter fa-2x mr-4" ></i></a>
                                           
                                            
                                        <a href="http://www.linkedin.com/shareArticle?mini=true&url=&title=&summary=&source="
                                            target="_blank" title="Share on LinkedIn"
                                            onclick="window.open('http://www.linkedin.com/shareArticle?mini=true&url=' + encodeURIComponent(document.URL) + '&title=' + encodeURIComponent(document.title)); return false;"><i
                                                class="fa fa-linkedin fa-2x mr-2"></i></a>
                                            
                                        </div>
                                    </div>
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
										
										$result = mysqli_query($con, "SELECT * FROM blog order by  RAND() desc LIMIT 5");
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