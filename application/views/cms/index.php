
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

        <a href="<?php echo base_url().'index/kategori_produk/6'?>">
          <div class="cat-index-body">
              <div class="cat-ib-img">
                  <img src="<?php echo base_url()?>dah_image/icon-cate/icon-kentang.png">
              </div>

              <div class="cat-ib-title">
              Produk Kentang
              </div>
          </div>
          </a>

        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 col-6">
    
              <a href="<?php echo base_url().'index/kategori_produk/29'?>">
              <div class="cat-index-body">
                  <div class="cat-ib-img">
                      <img src="<?php echo base_url()?>dah_image/icon-cate/icon-bawang.png">
                  </div>

                  <div class="cat-ib-title">
                  Produk Bawang
                  </div>
              </div>
              </a>
       
        </div>
      
        <div class="col-lg-3 col-md-4 col-sm-6 col-6">
           
                  <a href="<?php echo base_url().'index/kategori_produk/17'?>">
                <div class="cat-index-body">
                    <div class="cat-ib-img">
                        <img src="<?php echo base_url()?>dah_image/icon-cate/icon-ubi.png">
                    </div>

                    <div class="cat-ib-title">
                    Produk Ubi
                    </div>
                </div>
                </a>
             
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 col-6">
       
          <a href="<?php echo base_url().'index/kategori_produk/30'?>">
                <div class="cat-index-body">
                    <div class="cat-ib-img">
                        <img src="<?php echo base_url()?>dah_image/icon-cate/icon-wortel.png">
                    </div>

                    <div class="cat-ib-title">
                    Produk Wortel
                    </div>
                </div>
                </a>
            </div>
            
            <div class="col-lg-3 col-md-4 col-sm-6 col-6">
       
          <a href="<?php echo base_url().'index/kategori_produk/32'?>">
             <div class="cat-index-body">
                 <div class="cat-ib-img">
                     <img src="<?php echo base_url()?>dah_image/icon-cate/icon-lobak.png">
                 </div>

                 <div class="cat-ib-title">
                 Produk Lobak
                 </div>
             </div>
             </a>
         </div>
         
         <div class="col-lg-3 col-md-4 col-sm-6 col-6">
       
       <a href="<?php echo base_url().'index/kategori_produk/33'?>">
          <div class="cat-index-body">
              <div class="cat-ib-img">
                  <img src="<?php echo base_url()?>dah_image/icon-cate/icon-jicama.png">
              </div>

              <div class="cat-ib-title">
              Produk Bengkuang
              </div>
          </div>
          </a>
      </div>

      <div class="col-lg-3 col-md-4 col-sm-6 col-6">
       
       <a href="<?php echo base_url().'index/kategori_produk/34'?>">
          <div class="cat-index-body">
              <div class="cat-ib-img">
                  <img src="<?php echo base_url()?>dah_image/icon-cate/icon-talas.png">
              </div>

              <div class="cat-ib-title">
              Produk Talas
              </div>
          </div>
          </a>
      </div>

      
      <div class="col-lg-3 col-md-4 col-sm-6 col-6">
       
       <a href="<?php echo base_url().'index/kategori_produk/31'?>">
          <div class="cat-index-body">
              <div class="cat-ib-img">
                  <img src="<?php echo base_url()?>dah_image/icon-cate/icon-talas.png">
              </div>

              <div class="cat-ib-title">
              Produk Garut
              </div>
          </div>
          </a>
      </div>
      

    </div>
</div>

<!-- end categori -->

<?php	if(count($products) > 0){?>
  <p class="tx-16 tx-bold-600" style="margin-bottom:20px;">Baru di panen nih</p> 
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
              <img src="<?php echo base_url()?>dah_image/system/payment-secure.png">        
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

<div class="chat-sess-body" id="chat-body">
    <div class="grt-close">
      <a style="cursor:pointer"> <i class="fa fa-times red-text"></i> </a>
    </div>
  
    <div class="grt-cs">
    
      <img src="<?php echo base_url()?>dah_image/system/supp.png" alt="">
      <div class="grt-cs-isi">
       <label id="pesan-hari"></label>,<br> Ada yang bisa kami bantu ?
      
      </div>
    </div>

    <div class="grt-wa" style="text-align:center;margin-top:15px">
      <a href="" class="tx-13 white-text green darken-3" style="border-radius:8px; padding:8px 20px;"> <i class="fab fa-whatsapp tx-18"></i> Chat Kami Di Whatsapp</a>
    </div>
</div>
<div class="chat-sess-flat pink accent-4 white-text " id="chat-sess">
 <i class="fas fa-comment-dots tx-30"></i>
</div>

<script>
$(document).ready(function () {
		$('<audio id="notif_sound"><source src="<?php echo base_url()?>dah_image/notif.mp3" type="audio/mpeg"></audio>').appendTo('body');
		var sound_x = document.getElementById("notif_sound");
		function chat_ses1(){
			$('#chat-sess').fadeIn();
		}
		function playNotif() {
			sound_x.play();
		}
		function bc_sess(){
			$('.chat-sess-body').fadeIn();
			$('#notif_sound')[0].play();
		}
		window.setTimeout(chat_ses1, 3000);
		window.setTimeout(bc_sess, 4000);
		window.setTimeout(playNotif, 4000);
	
	});

</script>