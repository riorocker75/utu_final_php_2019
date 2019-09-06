<!-- breadrumb section -->
<section class="breadcrumbs">
    <div class="breadcrumbs-container">
        <div class="breadcrumbs-line">
            <ul>
                <li><a href="<?php echo base_url()?>">Home</a> </li>
                <li><a href="">Pembayaran</a> </li>
            </ul>
        </div>
    </div>

</section>

<!-- end breadcrumb -->

<section class="checkout-product">
    <div class="container">
     
           

       
        <!-- detail bayar  -->
                     <?php if($this->session->userdata('user_status')=="login"){ ?>
                    <form action="<?php echo base_url().'index/order' ?>" method="post">
                    <div class="row">

                        <div class="col-lg-8 col-md-6 col-sm-12 col-12">
                            <div class="laman-bayar">

                                <div class="laman-bayar-title">
                                <h2>Konfirmasi Pembayaran</h2>
                                </div>  

                                <div class="laman-bayar-body">    
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Atas Nama</label>
                                                <input type="text" name="nama" class="form-control" placeholder="Nama lengkap penerima .." required="required">
                                                <input type="hidden" name="ongkir" class="ongkir" required="required">
                                                <?php echo "<span class='text-warning'>".form_error('nama')."</span>"; ?>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            <label>Telp / HP</label>
                                                <input type="text" name="telp" class="form-control" placeholder="Telp / HP .." required="required">
                                                <?php echo "<span class='text-warning'>".form_error('telp')."</span>"; ?>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                            <label>Alamat Lengkap</label>
                                                <input type="text" name="alamat" class="form-control" placeholder="Alamat lengkap .." required="required">
                                                <input type="hidden" name="pembayaran" class="pembayaran">
                                                <?php echo "<span class='text-warning'>".form_error('alamat')."</span>"; ?>
                                            </div>
                                        </div>
                                    </div>

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
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Kecamatan</label>
                                                <input type="text" name="kecamatan" class="form-control" placeholder="Kecamatan .." required="required">
                                                <?php echo "<span class='text-warning'>".form_error('kecamatan')."</span>"; ?>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            <label>Kode Pos</label>
                                                <input type="text" name="kodepos" class="form-control" placeholder="Kode pos .." required="required">
                                                <?php echo "<span class='text-warning'>".form_error('kodepos')."</span>"; ?>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Catatan Tambahan</label>
                                                <input type="text" name="catatan" class="form-control" placeholder="Jenis Ikan ,Ukuran / dan lain-lain ..">
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
                                    <br/>
                                   
                               
                                </div>
                            </div>  
                        </div>

                         <!-- sidebar detail -->
                         <div class="col-lg-4 col-md-6 col-sm-12 col-12">

                               <!-- Metode Pembayaran-->
                               <div class="laman-bayar">

                                    <div class="laman-bayar-title">
                                    <h2>Metode Pembayaran</h2>
                                    </div>  

                                    <div class="laman-bayar-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <Label>Transfer ke rekening bank</label>
                                                    <select class="custom-select" name="rek_bank">
                                                        <option selected>Pilih Bank</option>
                                                        <option value="bm1">Bank Mandiri (9892019)</option>
                                                        <option value="bm2">Bank BRI (679199009)</option>
                                                        <option value="bm3">Bank BNI (87900908)</option>
                                                    </select>
                                                </div>
                                            </div>      
                                        </div>      

                                    </div>
                                 </div> 
                               <!-- end metode pembayaran -->

                              <!-- detail ringkasan-->
                             <div class="laman-bayar">

                                <div class="laman-bayar-title">
                                <h2>Ringkasan pembayaran</h2>
                                </div>  

                                <div class="laman-bayar-body">
                                <?php if(count($this->cart->contents())>0){ ?>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <?php foreach($this->cart->contents() as $item){ ?>
                                            <tr>
                                                <td class="no-padding-left no-padding-right"><?php echo $item['name'] ?></td>
                                                <td class="text-center"><?php echo $item['qty'] ?></td>
                                                <td class="no-padding-left no-padding-right text-right"><?php echo "Rp.". number_format($item['price']).',-' ?></td>
                                            </tr>
                                            <?php } ?>
                                            <tr>
                                                <td colspan="2" class="text-right">Total</td>
                                                <td class="pembayaran-total no-padding-left no-padding-right text-right text-bold" id="<?php echo $this->cart->total(); ?>"><?php echo "Rp.". number_format($this->cart->total()).',-' ?></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" class="text-right">Ongkos Kirim</td>
                                                <td class="no-padding-left no-padding-right text-right text-bold">
                                                    <span class="text-ongkos-kirim">Isi Alamat</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" class="text-left">Total harga (Harga + Ongkir)</td>
                                                <td class="no-padding-left no-padding-right text-right text-bold">
                                                    <span class="text-pembayaran"></span>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <?php }else{ ?>
                                    
                                        <img src="<?php echo base_url()?>dah_image/system/boxkosong.png" width="80px" style="position:relative;left:100px;right:0">

                                        <p class="text-center" style="opacity:0.7">Keranjang masih kosong. Ayo <a href="<?php echo base_url().'index/shop'; ?>">belanja</a>.</p>
                                         <?php } ?>
                                            </div>
                                         
                                            
                                  
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <input type="submit" class="btn-bordered-sm-fullwidth bor-primary" value="Buat Pesanan">
                                            </div>
                                        </div>
                                  
                                        </div>  
                                    <!-- end detail ringkasan-->
                                        
                                </div>
                         <!-- end sidebar detail -->
                         </div>
                     </form>

                     <?php }else{ ?>

                    <div class="row">
                        <div class="col-lg-4 offset-lg-3 col-md-6 col-sm-12 col-12">
                            
                            <form action="<?php echo base_url().'index/user_login_static'; ?>" method="post">
							<div class="main-login-form">
		
                                <div class="mlg-title">
                                    <h2 class="tx-18">Silahkan login untuk pembayaran</h2>
                                </div>
							<?php show_alert()?>
									<div class="form-group">

									<input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email">
									<!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
									</div>

									<div class="form-group">

									<input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Password">
									</div>

									<div class="row">
										<div class="col-12">
											<a href="" class=" float-right tx-13 red-text text-darken-4 tx-bold-600">Lupa Password ?</a> 
											
										</div>
									</div>

									<div class="col-12" style="margin-top:10px;">
										<button class="btn-login-fullwidth bor-login"> Masuk <i class="fas fa-sign-in-alt"></i></button>

									</div>

									<div class="col-12 d-flex justify-content-center tx-14" style="opacity:0.8;margin-top:10px;margin-bottom:-10px">
										Belum punya akun? 
											<a href="<?php echo base_url().'index/user_daftar'?>" class="blue-text text-darken-2 tx-bold-600">&nbsp;daftar</a>
									
									</div>
							</div>
		            	</form>
                         </div>
                         <!-- sidebar detail -->
                         <div class="col-lg-4 col-md-6 col-sm-12 col-12">
                             <div class="laman-bayar">

                                <div class="laman-bayar-title">
                                <h2>Ringkasan pembayaran</h2>
                                </div>  

                                <div class="laman-bayar-body">
                                <?php if(count($this->cart->contents())>0){ ?>
                        <div class="table-responsive">
                            <table class="table">
                                <?php foreach($this->cart->contents() as $item){ ?>
                                <tr>
                                    <td class="no-padding-left no-padding-right"><?php echo $item['name'] ?></td>
                                    <td class="text-center"><?php echo $item['qty'] ?></td>
                                    <td class="no-padding-left no-padding-right text-right"><?php echo "Rp.". number_format($item['price']).',-' ?></td>
                                </tr>
                                <?php } ?>
                                <tr>
                                    <td colspan="2" class="text-right">Total</td>
                                    <td class="pembayaran-total no-padding-left no-padding-right text-right text-bold" id="<?php echo $this->cart->total(); ?>"><?php echo "Rp.". number_format($this->cart->total()).',-' ?></td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="text-right">Ongkos Kirim</td>
                                    <td class="no-padding-left no-padding-right text-right text-bold">
                                        <span class="text-ongkos-kirim">Isi Alamat</span>
                                    </td>
                                </tr>
                                 <tr>
                                    <td colspan="2" class="text-left">Total harga (Harga + Ongkir)</td>
                                    <td class="no-padding-left no-padding-right text-right text-bold">
                                        <span class="text-pembayaran"></span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <?php }else{ ?>
                       
                        <img src="<?php echo base_url()?>dah_image/system/boxkosong.png" width="80px" style="position:relative;left:100px;right:0">

                        <p class="text-center" style="opacity:0.7">Keranjang masih kosong. Ayo <a href="<?php echo base_url().'index/shop'; ?>">belanja</a>.</p>
                        <?php } ?>
                                </div>
                             </div>       
                        </div>
                    <!-- end sidebar detail --> 
                    </div>   
                    <?php } ?>   
                    <!-- end detail bayar -->

                   
               
            
        
      

    </div>
</section>