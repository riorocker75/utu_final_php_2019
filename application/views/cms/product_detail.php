<!-- breadrumb section -->
<section class="breadcrumbs">
    <div class="container">
        <div class="breadcrumbs-line">
            <ul>
                <li><a href="<?php echo base_url()?>">Home</a> </li>
               <li><a href="">Detail Produk</a></li>
               <?php foreach($product as $ps){ ?>
               <li><a href=""><?php echo $ps->prod_name?></a></li>
               <?php } ?>

               
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

<section class="product-single" ng-app="">
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
                                <span>Stok: <b><?php echo $p->prod_qty ?> </b></span>
                                <p> <span>Berat : <b> <?php echo $p->prod_berat ?> </b>gram</span></p>
                                <p ng-init="harga='<?php echo $p->prod_price?>'" ></p>

                                 <p class="tx-12" style="opacity:0.7;margin-top:-10px">Masukan jumlah yang ingin di beli</p>         
                                <div class="col-lg-4 col-md-4 col-sm-12" style="margin-top:-10px;margin-left:-15px;">
                                  <input class="input-spinner" type="number" min="1" name="jumlah_produk" value="1" max="90" ng-model="stock" />
                                  <input type="hidden" name="rowid[]" value="<?php echo $item['rowid'] ?>">
                                </div>
                               <input type="hidden" id="jumlah_produk" value="{{ (stock  * 1) || (1)}}">
                               <input type="hidden" id="stock_hasil" value="{{ (harga * stock) || (harga * 1) }}">

                                <input type="hidden" name="stock_hasil" value="{{ (harga * stock) || (harga * 1) }}"> 

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
       <div>
       <nav style="background: #fff;">
          <div class="nav nav-tabs nav-tab-custom" id="nav-tab" role="tablist">
            <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Detail</a>
            <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Estimasi Ongkir</a>
            <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Ulasan</a>
          </div>
        </nav>
        <div class="tab-content tab-custom " id="nav-tabContent"  style="background: #fff;">
          <div class="tab-pane fade show active product-single-detail" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
          <?php echo $p->prod_desc;?>
          </div>
          <!-- end deskripsi -->

          <!-- ongkir -->
          <div class="tab-pane fade product-single-detail" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                <label>Provinsi</label>
                                <?php
                                $province_ori = json_decode(GetProv(), TRUE);
                                echo "<select name='prov_origin' required class='form-control form-control-sm form-provinsi2' id='prov_origin'>";
                                echo "<option value=''>Pilih Provinsi ..</option>";
                                for ($i=1; $i < count($province_ori['rajaongkir']['results']); $i++) {
                                    echo "<option value='".$province_ori['rajaongkir']['results'][$i]['province_id']."' class='jne tiki pos all' >".$province_ori['rajaongkir']['results'][$i]['province']."</option>";
                                }
                                echo "</select>";
                                ?>
                                <?php echo "<span class='text-warning'>".form_error('prov_origin')."</span>"; ?>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Kota</label>
                                    <?php
                                    echo "<select name='city_origin' required class='form-control form-control-sm form-kota2' id='prov_origin'>";
                                    echo "<option value=''>Pilih provinsi terlebih dulu</option>";
                                    echo "</select>";
                                    ?>
                                    <?php echo "<span class='text-warning'>".form_error('city_origin')."</span>"; ?>
                                </div>
                            </div>
                        </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <?php echo "<span class='text-warning'>".form_error('kurir')."</span>"; ?>
                                                <div class="tempat-cost"></div>

                                            </div>
                                        </div>
                                    </div>
              
          </div>

          <!-- end ongkir -->

          <!-- ulasan product -->
          <div class="tab-pane fade product-single-detail" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                
                  <form action="" method="post">                     
                        <div class="ulasan-produk">
                              
                        <div class="col-lg-6 col-md-12 col-12 yellow-text text-darken-3" style="margin-bottom:10px;">
                                
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="rating" value="5">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </label>
                            </div>

                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="rating" value="4">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </label>
                            </div>

                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="rating" value="3">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </label>
                            </div>

                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="rating" value="2">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>    
                                </label>
                            </div>

                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="rating" value="1">
                                    <i class="fa fa-star"></i>
                               
                                </label>
                            </div>
                                     
                        </div>

                            <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                                <div class="input-group ">
                                    <textarea class="form-control" name="rating-komen" aria-label="With textarea" placeholder="Isi ulasan disini"></textarea>
                                </div>    
                                <button class="btn btn-primary" style="margin-top:15px;" type="submit">Kirim Ulasan</button>       
                            </div>
                               

                        </div>
                                               
                 </form>   
          </div>

          <!-- end ulasan product -->
        </div>
      </div>
  <!-- end product info -->
 
  
  <!-- product suggest -->
        <div class="product-suggest">
            <div class="product-s-title"  style="background: #fff;">
                <h1>Produk Rekomendasi</h1>
            </div>
           
            <div class="row">
                <?php
                    $arr = array(3,5,9,11);
                    for($a=0;$a<count($arr);$a++){
                    $ww = array('prod_id' => $arr[$a]);
                    $q = $this->m_dah->edit_data($ww,'dah_products')->result();
                    
                ?>
                <?php foreach($q as $pop){?>
                <div class="col-lg-3 col-md-6 col-sm-6">
             
                  <div class="product-suggest-form">
                      <!-- gambarproduct -->
                      <div class="product-suggest-img">
                        <?php       
                                    if($pop->prod_img1 !=""){
                                        echo "<img alt='Product' src='".base_url().'dah_image/products/'.$pop->prod_img1."'>";
                                    }else{
                                         echo "<img src='".base_url()."dah_image/default/no_product.jpg'>";
                                    }
                            ?>
                      </div>
                      <!-- end gambar product -->

                      <!-- product -suggest title -->
                      <div class="product-suggest-title">
                      <a href="<?php echo base_url().'produk/'.$pop->prod_id.'-'.create_slug($pop->prod_name) ?>"><?php echo substr(strip_tags($pop->prod_name),0,70); ?></a>
                      </div>
                      <!-- end produt-suggest -->

                        <!-- pdouct suggest sell -->
                        <div class="prod-price">
                  Rp. <?php echo number_format($pop->prod_price) ?>
                  <p class="tx-12" style="margin-top:3px;">
                    <i class="fa fa-star yellow-text text-darken-3"></i>
                    <i class="fa fa-star yellow-text text-darken-3"></i>
                    <i class="fa fa-star yellow-text text-darken-3"></i>
                    <i class="fa fa-star yellow-text text-darken-3"></i>
                    <i class="fa fa-star yellow-text text-darken-3"></i>
                    <span style="color:#000;opacity:0.4">(50) ulasan</span>
                  </p>

                  <p class="tx-13" style="margin-top:-5px;color:#000;opacity:0.5"> <i class="fas fa-store-alt"></i> 
                  <?php 
                      $nama_author=$this->m_dah->product_author_detail($pop->prod_author)->row();
                      echo $nama_author->user_name;      
                    ?> 

                </p>
                </div>
                      <!-- end product suggest sell -->
                  </div>
                </div>
                <?php } } ?>

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
               <span>Rp&nbsp;{{ (harga * stock) || (harga * 1) | number}},-</span>
             </div>

             <div class="harga-sticky-beli float-lg-left d-sm-none d-none d-md-block">
               <div class="sticky-ss">
                <img src="<?php echo base_url()?>dah_image/system/shop-store.png">                    
                                    
                 <div class="sticky-ss-nt teal-text text-accent-4">
                     <?php echo $nama_author->user_name; ?>  
                     <p class="yellow-text text-darken-3 tx-10" style="margin-top:5px;"> 
                     <i class="fa fa-star"></i> 
                     <i class="fa fa-star"></i> 
                     <i class="fa fa-star"></i>   
                     <i class="fa fa-star"></i> 
                     <i class="fa fa-star"></i> 
                     </p>             
                 </div>                   
               </div>
               
             </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-8 col-12">
          <div class="row" style="margin:0 5px;">
             <!-- <div class="col-2 d-sm-none d-md-none d-lg-none d-block">
               
               <a id="<?php echo $p->prod_id; ?>" data-toggle="tooltip" title="Masukkan ke keranjang !" data-placement="bottom" class="diki-tooltip btn-addtocart btn-bordered-sm-fullwidth bor-success"> <i class="fa fa-cart-arrow-down"></i> </a>

             </div>     -->
             
             <div class="col-lg-12 col-md-12 col-sm-12 col-12">
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