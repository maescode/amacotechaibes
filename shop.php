<!--Shop-->
<div class="clv_shop_wrapper clv_section bg-light" style="margin-top: -100px">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6 col-md-6">
						<div class="clv_heading">
							<h3>our shop</h3>
							<div class="clv_underline"><img src="images/underline3.png" alt="image" /></div>
							<p>Check Out Some of Our Products at Amachotech</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 col-md-12">
						<div class="shop_slider">
							<div class="swiper-container">
								<div class="swiper-wrapper">

									<?php
						
						$result2 = mysqli_query($con, "SELECT * FROM products ORDER BY RAND() LIMIT 12");
						while($row = mysqli_fetch_array($result2)) {
					            ?>
					        <div class="swiper-slide">
										<div class="shop_slide">
											<div class="item_image">
												<?php $image = (!empty($row['productImage3'])) ? 'shop/admin/productimages/'.$row['productImage3'] : 'shop/images/noimage.jpg'; ?>
												<img src="<?=$image;?>" alt="image" class="img-fluid" />
											</div>
											<h5><?=$row['productName']; ?></h5>
											<h6><span><i class="fa fa-naira" aria-hidden="true"></i></span>&#8358;<?=number_format($row['productPrice'], 2)?></h6>
											<p>Click to order</p>
											<div class="item_overlay">
												<input type="checkbox" id="wishlist1" />
												<label for="wishlist1">
													<span class="wish_icon"><i class="fa fa-heart-o" aria-hidden="true"></i></span>
													<span class="wish_icon"><i class="fa fa-heart" aria-hidden="true"></i></span>
												</label>
												<h5><?=$row['productName']; ?></h5>
												<h6><span><i class="fa fa-naira" aria-hidden="true"></i></span>&#8358;<?=number_format($row['productPrice'], 2)?></h6>
												<a href="shop/product-details.php?pid=<?=$row['id']?>" class="shop_btn">Order</a>
											</div>
										</div>
									</div>
									
					
					  <?php } ?>

									
									
								</div>
							</div>
							<!-- Add Arrows -->
							<span class="slider_arrow shop_left left_arrow">
								<svg 
								 xmlns="http://www.w3.org/2000/svg"
								 xmlns:xlink="http://www.w3.org/1999/xlink"
								 width="10px" height="20px">
								<path fill-rule="evenodd"  fill="rgb(226, 226, 226)"
								 d="M0.272,10.703 L8.434,19.703 C8.792,20.095 9.372,20.095 9.731,19.703 C10.089,19.308 10.089,18.668 9.731,18.274 L2.217,9.990 L9.730,1.706 C10.089,1.310 10.089,0.672 9.730,0.277 C9.372,-0.118 8.791,-0.118 8.433,0.277 L0.271,9.274 C-0.082,9.666 -0.082,10.315 0.272,10.703 Z"/>
								</svg>
							</span>
							<span class="slider_arrow shop_right right_arrow">
								<svg 
								 xmlns="http://www.w3.org/2000/svg"
								 xmlns:xlink="http://www.w3.org/1999/xlink"
								 width="10px" height="20px">
								<path fill-rule="evenodd"  fill="rgb(226, 226, 226)"
								 d="M9.728,10.703 L1.566,19.703 C1.208,20.095 0.627,20.095 0.268,19.703 C-0.090,19.308 -0.090,18.668 0.268,18.274 L7.783,9.990 L0.269,1.706 C-0.089,1.310 -0.089,0.672 0.269,0.277 C0.627,-0.118 1.209,-0.118 1.567,0.277 L9.729,9.274 C10.081,9.666 10.081,10.315 9.728,10.703 Z"/>
								</svg>
							</span>
						</div>
					</div>
					<div class="col-12">
							<div class="text-center">
									<a href="shop/index.php" class="btn btn-lg btn-success  p-3" style="border-radius: 30px">Discover more products</a>
							</div>
					</div>
				</div>
			</div>
		</div>