<!-- breadrumb section -->
<section class="breadcrumbs">
    <div class="breadcrumbs-container">
        <div class="breadcrumbs-line">
            <ul>
                <li><a href="<?php echo base_url()?>">Home</a> </li>
               <li><a href="">Detail Produk</a></li>

               
            </ul>
        </div>
    </div>

</section>

<!-- end breadcrumb -->
<?php
			if(count($product) > 0){
				foreach($product as $p){
	?>
<!-- product-single -->

<section class="product-single">
    <div class="container">
   
            <div class="product-single-container ">
                <!-- detail produxt -->
                <div class="col-lg-12">
                    <div class="row">
                        <!-- img sinlge produxt -->
                         <div class="col-lg-5 col-md-12 col-sm-12 col-12" style="background: #fff;">
                                <div class="single-img">
                                     <?php
                                          if($p->prod_img1 != ""){
                                          echo "<img alt='".$p->prod_name."' src='".base_url().'dah_image/products/'.$p->prod_img1."' > ";
                                          }else{

                                          echo "<img alt='".$p->prod_name."' src='".base_url()."dah_image/default/no_product.jpg'>";
                                          }
                                      ?>
                                 </div> 
                        </div>
                        <!-- end img single product -->
                        <!-- detail product -->
                        <div class="col-lg-7 col-md-12 col-sm-12" style="background: #fff;padding-top:6px;">
                    
                            <div class="product-single-title">

                                <h1><?php echo ucfirst($p->prod_name); ?> </h1>
                               <i class="fa fa-star yellow-text text-darken-3 tx-13" aria-hidden="true"></i>
                               <i class="fa fa-star yellow-text text-darken-3 tx-13" aria-hidden="true"></i>     
                               <i class="fa fa-star yellow-text text-darken-3 tx-13" aria-hidden="true"></i>     
                               <i class="fa fa-star yellow-text text-darken-3 tx-13" aria-hidden="true"></i>     
                               <i class="fa fa-star yellow-text text-darken-3 tx-13" aria-hidden="true"></i>     
                                
                             </div>

                             <div class="product-single-price">
                                <h2 class="blue-text text-darken-3"><?php echo "Rp.".number_format($p->prod_price).",-"; ?></h2>
                                <span>Stock produk: <b><?php echo $p->prod_qty ?> </b></span>
                                <p> <span>Berat : <b> <?php echo $p->prod_berat ?> </b>gram</span></p>
                             </div>

                            <div class="single-seller">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                        <ul>
                                            <li>
                                                Penjual : <a href="">
                                                   <?php 
                                                      $nama_author=$this->m_dah->product_author_detail($p->prod_author)->row();
                                                      echo $nama_author->user_name;      
                                                   ?> 

                                                </a>

                                            </li>
                                            <li>
                                                Rating  &nbsp;: 
                                                <i class="fa fa-star yellow-text text-darken-3 tx-13" aria-hidden="true"></i>
                                                <i class="fa fa-star yellow-text text-darken-3 tx-13" aria-hidden="true"></i>
                                                <i class="fa fa-star yellow-text text-darken-3 tx-13" aria-hidden="true"></i>
                                                <i class="fa fa-star yellow-text text-darken-3 tx-13" aria-hidden="true"></i>
                                                <i class="fa fa-star yellow-text text-darken-3 tx-13" aria-hidden="true"></i>
                                            </li>

                                            <li>
                                                Proses Kirim : <b class="green-text text-darken-1"><?php echo $p->prod_kirim ?></b> 
                                            </li>
                                        </ul>

                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                        <ul>
                                            <li>
                                            Pengirim : <a href=""><?php echo $p->prod_jasa_kirim ?></a>
                                            </li>
                                            <li>
                                            Lokasi &nbsp;&nbsp;&nbsp;&nbsp;: <?php echo $p->prod_lokasi ?>
                                            </li>

                                            <li>
                                            Terjual &nbsp;&nbsp;&nbsp;&nbsp;: <b class="red-text text-darken-1">400 product</b> 
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <br>
                             <!--
                             <div class="product-single-act d-none d-md-block d-lg-block d-xl-block">
                            
                                <div class="row">
                                      <div class="col-lg-6 col-md-6-col-sm-12">
                                          <a href="" class="btn btn-fullwidth btn-success">Beli Sekarang</a>
                                      </div>
                                      <div class="col-lg-6 col-md-6-col-sm-12">
                                          <a href="" class="btn btn-fullwidth  btn-primary">Ke Keranjang</a>

                                      </div>
                                  </div>
                              </div> -->

                          
                         
                        </div>
                        <!-- end detail -->
                    </div>    
        </div>
       <!-- product information -->
       <div class="box-shadow-card">
       <nav style="background: #fff;">
          <div class="nav nav-tabs nav-tab-custom" id="nav-tab" role="tablist">
            <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Detail Product</a>
            <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Estimasi Ongkir</a>
            <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Ulasan Product</a>
          </div>
        </nav>
        <div class="tab-content tab-custom " id="nav-tabContent"  style="background: #fff;">
          <div class="tab-pane fade show active product-single-detail" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
          <?php echo $p->prod_desc;?>
          </div>
          <!-- end deskripsi -->

          <!-- ongkir -->
          <div class="tab-pane fade product-single-detail" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo sapiente exercitationem enim error quaerat fugit! Ratione, expedita quis incidunt odit eligendi, veritatis consequatur corrupti aliquam, eaque repellat nihil id facilis!
              
          </div>

          <!-- end ongkir -->

          <!-- ulasan product -->
          <div class="tab-pane fade product-single-detail" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo sapiente exercitationem enim error quaerat fugit! Ratione, expedita quis incidunt odit eligendi, veritatis consequatur corrupti aliquam, eaque repellat nihil id facilis!
              
          </div>

          <!-- end ulasan product -->
        </div>
      </div>
  <!-- end product info -->
 
  
  <!-- product suggest -->
        <div class="product-suggest">
            <div class="product-s-title"  style="background: #fff;">
                <h1>Product Rekomendasi</h1>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                  <div class="product-suggest-form">
                      <!-- gambarproduct -->
                      <div class="product-suggest-img">

                      </div>
                      <!-- end gambar product -->

                      <!-- product -suggest title -->
                      <div class="product-suggest-title">
                          tes
                      </div>
                      <!-- end produt-suggest -->

                      <!-- pdouct suggest sell -->
                          <div class="product-suggest-sell">

                          </div>
                      <!-- end product suggest sell -->
                  </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                      <div class="product-suggest-form">

                      </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                      <div class="product-suggest-form">
                          
                          </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                      <div class="product-suggest-form">
                          
                      </div>
                </div>
            </div>
        </div>
  <!-- end product suggest -->
</div>

<!-- end detail product -->

<!-- sidebar single product -->

<!-- end single sidebar product -->
</div>
<!-- d-none d-sm-block d-md-none -->
    <div class="sticky-beli">
      <div class="row">

        <div class="col-lg-8 col-md-6 col-sm-4 col-12 ">
            <div class="harga-sticky-beli float-lg-right float-sm-left d-none  d-sm-block d-md-block">
                <p>Total:</p>  
               <span><?php echo "Rp.".number_format($p->prod_price).""; ?></span>
             </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-8 col-12">
          <div class="row" style="margin:0 5px;">
             <div class="col-2 d-sm-none d-md-none d-lg-none d-block">
               
               <a id="<?php echo $p->prod_id; ?>" data-toggle="tooltip" title="Masukkan ke keranjang !" data-placement="bottom" class="diki-tooltip btn-addtocart btn-bordered-sm-fullwidth bor-success"> <i class="fa fa-cart-arrow-down"></i> </a>

             </div>    
             
             <div class="col-lg-12 col-md-12 col-sm-12 col-10">
             <a id="<?php echo $p->prod_id; ?>" class="btn-u-md-fullwidth btn-primary white-text btn-bayarlangsung" style="cursor:pointer">Beli Sekarang</a>

             </div>
                                          
          </div>

       
    

        </div>
      </div>
       </div>
</section>

<?php }?>
    <?php }else{?> Product Belum ada <?php }?>

<!-- end product-single -->