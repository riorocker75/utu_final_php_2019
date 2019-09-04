
  <!-- product index   -->
  <br>	
<div class="container">
<?php
					if(count($products) > 0){
				
?>
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
  <?php }else{?> 
    Product Masih Belum 
  <?php } ?> 
</div>
<!-- end product -->


<div class="chat-sess red accent-4 white-text ui-widget-content" id="draggable" title="Pindahkan aku kalau ganggu!">
  <i class="far fa-comment tx-30"></i>
  </div>