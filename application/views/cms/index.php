
  <!-- product index   -->
  <br>	
<div class="container">

<!-- carousel gambar -->
<section class="variable slider" style="margin-bottom:40px;">
    <div>
      <img src="<?php echo base_url()?>dah_image/tester_img/tester.png">
    </div>
    <div>
      <img src="<?php echo base_url()?>dah_image/tester_img/tester2.png">
     
    </div>
    <div>
      <img src="<?php echo base_url()?>dah_image/tester_img/tester3.png">
    </div>
  </section>
<!-- end carousel gambar -->


<!-- categori -->
<div class="cat-index">
    <p class="tx-16 tx-bold-600" style="margin-bottom:2px;">Kategori</p> 
    <div class="row">
      
        <div class="col-lg-3 col-md-4 col-sm-6 col-6 ">

        <a href="">
          <div class="cat-index-body">
              <div class="cat-ib-img">
                  <img src="<?php echo base_url()?>dah_image/icon-cate/icon-kentang.png" alt="" srcset="">
              </div>

              <div class="cat-ib-title">
              Produk Kentang
              </div>
          </div>
          </a>

        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 col-6">
    
              <a href="">
              <div class="cat-index-body">
                  <div class="cat-ib-img">
                      <img src="<?php echo base_url()?>dah_image/icon-cate/icon-bawang.png" alt="" srcset="">
                  </div>

                  <div class="cat-ib-title">
                  Produk Bawang
                  </div>
              </div>
              </a>
       
        </div>
      
        <div class="col-lg-3 col-md-4 col-sm-6 col-6">
           
                  <a href="">
                <div class="cat-index-body">
                    <div class="cat-ib-img">
                        <img src="<?php echo base_url()?>dah_image/icon-cate/icon-ubi.png" alt="" srcset="">
                    </div>

                    <div class="cat-ib-title">
                    Produk Ubi
                    </div>
                </div>
                </a>
             
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 col-6">
       
          <a href="">
                <div class="cat-index-body">
                    <div class="cat-ib-img">
                        <img src="<?php echo base_url()?>dah_image/icon-cate/icon-wortel.png" alt="" srcset="">
                    </div>

                    <div class="cat-ib-title">
                    Produk Wortel
                    </div>
                </div>
                </a>
            </div>  
      

    </div>
</div>

<!-- end categori -->

<?php	if(count($products) > 0){?>
    <div class="row">
    <?php 	foreach($products as $p){?>
      <div class="col-lg-3 col-md-6 col-sm-6 col-12">
   
        <div class="prod-index">
         
              <!-- image -->
              <div class="prod-img">
                <a href="<?php echo base_url().'produk/'.$p->prod_id.'-'.create_slug($p->prod_name) ?>">
                    <?php if($p->prod_img1!=""){
                        echo"<img alt='Product' src='".base_url().'dah_image/products/'.$p->prod_img1."'>";
                        }else{
                          echo"<img alt='Product' src='".base_url()."dah_image/default/no_product.jpg'>";
                        }
                        ?>
                </a>
              </div>

              <!-- end image -->
              <!-- judul -->
             
                <div class="prod-title">
                    <a href="<?php echo base_url().'produk/'.$p->prod_id.'-'.create_slug($p->prod_name) ?>">
                      <?php 
                          echo substr(strip_tags($p->prod_name),0,70);
                      ?> 
                    </a>         
                </div>
          
              <!-- end judul -->
             <a href="<?php echo base_url().'produk/'.$p->prod_id.'-'.create_slug($p->prod_name) ?>">
                <!-- harga & add to cart -->
                <div class="prod-price">
                  Rp. <?php echo number_format($p->prod_price) ?>
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
                      $nama_author=$this->m_dah->product_author_detail($p->prod_author)->row();
                      echo $nama_author->user_name;      
                    ?> 

                </p>
                </div>
                <!-- end harga -->
            </a>
             
              <div class="prod-stats center">
                     <i class="fas fa-award"></i>    Segar
              </div>
            </div>  
    </div>
    
  <?php } ?> 
    </div>

    <!-- start lvl 2 -->
    <div class="row">
      <div class="col-lg-6 col-md-12 col-sm-12 col-12">
            <div class="dtl-txc-minat">
                  <p class="tx-18 red-text text-accent-4 tx-bold-600">Apakah anda memiliki hasil pertanian umbi-umbian?</p>  
                  <p class="tx-14" style="margin-top:-10px;">ayo jual hasil anda di kami, mendapatkan penghasilan tambahan dengan pembeli diseluruh indonesia</p>
                  
                  <a href="<?php echo base_url().'daftar-petani'?>" class="btn-bordered-md bor-success" style="margin-left:0;">Mulai Menjual</a>

            </div>
      </div>
      <div class="col-lg-6 col-md-12 col-sm-12 col-12">
      <div class="dtl-txc-minat">
            <p class="tx-18 orange-text text-accent-4 tx-bold-600">Bingung cari produk umbi-umbian ?</p>  
            <p class="tx-14" style="margin-top:-10px;">Belanja di kami dengan berbagai macam hasil pertanian dari petani lokal, dengan hasil terbaik</p>
            
            <a href="<?php echo base_url().'shop'?>" class="btn-bordered-md bor-primary" style="margin-left:0;">Mulai Belanja</a>

      </div>               

      </div>
    </div>
                       

    <div class="dtl-txc">
      <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-12 col-12">
              <div class="dtl-txc-img">
              <img src="<?php echo base_url()?>dah_image/system/payment-secure.png" alt="" srcset="">        
                    <div class="dtl-txc-kosa">
                        Transaksi di kami sangat aman, dan menjamin data pembeli tidak disalahgunakan 
                    </div>
              </div>
                       
          </div>
          <div class="col-lg-4 col-md-4 col-sm-12 col-12">
              <div class="dtl-txc-img">
                  <img src="<?php echo base_url()?>dah_image/system/fast-delivery.png">        
                        <div class="dtl-txc-kosa">
                            Pengiriman kami menjangkau seluruh daerah di Indonnesia, jadi jangan khawatir produk tidak sampai 
                        </div>
                  </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-12 col-12">
              <div class="dtl-txc-img">
                      <img src="<?php echo base_url()?>dah_image/system/garansi.png" style="width:60px;height:60px;margin-top:-10px;margin-left:-10px">        
                            <div class="dtl-txc-kosa">
                               Pembelian anda akan aman, dikarenakan apabila produk dalam keadaan tidak sesuai uang anda dijamin kembali 
                            </div>
               </div>        

          </div>               
      </div>               
    </div>
    <!-- end lvl 2 -->
  <?php }else{?> 
    Product Masih Belum 
  <?php } ?> 
</div>
<!-- end product -->


<div class="chat-sess-flat pink accent-4 white-text " >
 <i class="fas fa-comment-dots tx-30"></i>
  </div>