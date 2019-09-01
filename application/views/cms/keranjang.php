<div class="container m-t-3">
      <div class="row">

        <!-- Shopping Cart List -->

        <div class="col-md-9">
          <?php show_alert(); ?>
                 <?php if(count($this->cart->contents())>0){ ?>
          <div class="title"><span>Isi Keranjang Belanja</span></div>
          <div class="table-responsive">
             <form action="<?php echo base_url().'index/update_cart' ?>" method="post">
            <table class="table table-bordered table-cart">
              <thead>
                <tr>
                  <th>Pesanan</th>
                  <th>Nama</th>
                  <th>Jumlah</th>
                  <th>Harga </th>
                  <th>Hapus</th>
                </tr>
              </thead>
              <tbody>
                <?php foreach($this->cart->contents() as $item){ ?>
                <tr>
                  <td class="img-cart">
                    <?php if($item['options']['gambar']!=""){

                    echo  "<img alt='Product' src='".base_url().'dah_image/products/'.$item['options']['gambar']."' class='img-thumbnail'>";
                  }else{
                    echo  "<img alt='Product' src='".base_url()."dah_image/default/no_product.jpg' class='img-thumbnail'>";
                  }
                  ?>
                  </td>
                  <td>
                    <p><a href="<?php echo base_url().'produk/'.$item['id'].'-'.create_slug($item['name']) ?>" class="d-block"><?php echo $item['name'] ?></a></p>

                  </td>
                  <td class=""><input type="number" name="jumlah_produk[]" value="<?php echo $item['qty'] ?>" class="form-control text-center">
                                       <input type="hidden" name="rowid[]" value="<?php echo $item['rowid'] ?>"></td>
                  <td class="unit">Rp. <?php echo number_format($item['price']).' ,-' ?></td>

                  <td class="action">
                    <a href="<?php echo base_url().'index/removefromcart/'.$item['rowid']; ?>" class="text-danger diki-tooltip" data-toggle="tooltip" data-placement="top" data-original-title="Hapus Belanja"><i class="fa fa-trash-o"></i></a>
                  </td>
                </tr>
                    <?php } ?>
                <tr>
                  <td colspan="4" class="text-right">Total Belanja</td>
                  <td colspan="2"><b><?php echo "Rp.". number_format($this->cart->total()).',-' ?></b></td>
                </tr>
              </tbody>
            </table>
             <input type="submit" value="Update Keranjang" class="btn btn-sm btn-primary">
             </form>
          </div>
          <?php } else{ ?>
            <br/>
            <br/>
            <p class="text-center">Keranjang Belanja Anda masih kosong. Ayo <a href="<?php echo base_url().'index/shop'; ?>">Belanja Ikan Favorit Anda</a>.</p>
            <?php } ?>

          <nav aria-label="Shopping Cart Next Navigation">
            <ul class="pager">
              <li class="previous"><a href="<?php echo base_url().'index' ?>"><span aria-hidden="true">&larr;</span> Lanjut Belanja</a></li>
              <?php if(count($this->cart->contents())>0){ ?>
              <li class="next"><a href="<?php echo base_url().'index/pembayaran' ?>">Langsung Bayar <span aria-hidden="true">&rarr;</span></a></li>
              <?php } ?>
            </ul>
          </nav>
        </div>
        <!-- End Shopping Cart List -->

        <!-- New Arrivals -->
        <div class="col-md-3 hidden-sm hidden-xs">
          <div class="title"><span><a href="products.html">Komoditas Favorit <i class="fa fa-chevron-circle-right"></i></a></span></div>
          <div class="widget-slider owl-carousel owl-theme owl-controls-top-offset">

            <div class="box-product-outer">
              <div class="box-product">
                <div class="img-wrapper">
                  <a href="">
                    <img alt="Product" src="images/demo/p1-1.jpg">
                  </a>
                  <div class="tags tags-left">
                    <span class="label-tags"><a href="products.html"><span class="label label-success arrowed-right">New Arrivals</span></a></span>
                  </div>
                  <div class="option">
                    <a href="#" data-toggle="tooltip" title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
                    <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="fa fa-align-left"></i></a>
                    <a href="#" data-toggle="tooltip" title="Add to Wishlist" class="wishlist"><i class="fa fa-heart"></i></a>
                  </div>
                </div>
                <h6><a href="detail.html">WranglerGrey Printed Slim Fit Round Neck T-Shirt</a></h6>
                <div class="price">
                  <div>$15.00</div>
                </div>
              </div>
            </div>

          </div>
        </div>
        <!-- End New Arrivals -->

      </div>
    </div>
    <!-- End Main Content -->
