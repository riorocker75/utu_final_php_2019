<div class="page-content">

	<!-- Main content -->
	<div class="content-wrapper">								

		<ul class="breadcrumb heading-text">
			<li><a href="<?php echo base_url(); ?>"><i class="icon-home2 position-left"></i> Home</a></li>		
				<li>Kategori Produk</li>		
			<li class="active"><?php echo $kategori_produk; ?></li>
		</ul>
		

		<!-- Thumbnail footer -->
		<h6 class="content-group text-semibold">
			Kategori : <?php echo $kategori_produk; ?>
			<small class="display-block">Semua produk dalam kategori <?php echo $kategori_produk; ?></small>
		</h6>

		<div class="product-list">
			<?php 			
			if(count($products) > 0){
				foreach($products as $p){
					?>
					<div class="col-md product-item">
						<div class="thumbnail product">
							<div class="thumb">
								
								<?php if($p->prod_img1!=""){ 
									echo "<img class='img-responsive' src='".base_url().'dah_image/products/'.$p->prod_img1."'>";
								}else{ 
									echo "<img class='img-responsive' src='".base_url()."dah_image/default/no_product.jpg'>";
								}
								?>	

								<div class="caption-overflow">
									<span>
										<?php if($p->prod_img1!=""){ 
											$gambar=base_url().'dah_image/products/'.$p->prod_img1;
										}else{ 
											$gambar=base_url()."dah_image/default/no_product.jpg";
										}
										?>
										<a href="<?php echo $gambar; ?>" class="btn btn-flat border-white text-white btn-rounded btn-icon" data-popup="lightbox"><i class="icon-zoomin3"></i></a>
										<a href="<?php echo base_url().'produk/'.$p->prod_id.'-'.create_slug($p->prod_name) ?>" class="btn btn-flat border-white text-white btn-rounded btn-icon"><i class="icon-link"></i></a>
									</span>
								</div>
							</div>

							<div class="caption">
								<h6 class="text-semibold no-margin-top"><a href="<?php echo base_url().'produk/'.$p->prod_id.'-'.create_slug($p->prod_name) ?>"><?php echo $p->prod_name; ?></a></h6>								
								<!-- disini text caption-->
							</div>

							<div class="panel-footer panel-footer-transparent">
								<div class="heading-elements">
									<a href="#" class="heading-text text-default product-harga"><?php echo "Rp.".number_format($p->prod_price).",-"; ?></a>									
									<a id="<?php echo $p->prod_id; ?>" class="heading-text text-default pull-right diki-tooltip btn-addtocart" data-toggle="tooltip" title="Masukkan ke keranjang !" data-placement="bottom"><i class="icon-cart-add2 position-left"></i></a>																		
								</div>
							</div>
						</div>
					</div>
					<?php 
				}
			}else{
				echo "<div class='row'>";				
				echo "<h4>Oppss ! Sepertinya produk tidak tersedia.</h4>";
				echo "<a href='".base_url()."'>Kembali</a'>";				
				echo "</div>";
			}
			?>
						
			<div class="text-center bootpag-flat paging">
				<?php echo $this->pagination->create_links(); ?>
			</div>
		</div>
		<!-- /thumbnail footer -->
		<br/><br/>		

	</div>

</div>
<!-- /main content -->

		