<div class="container m-t-3">
    <div class="content-wrapper">
        <ul class="breadcrumb heading-text">
            <li><a href="<?php echo base_url(); ?>"><i class="icon-home2 position-left"></i> Home</a></li>
            <li class="active">Pembayaran</li>
        </ul>
        <div class="row">
            <div class="col-md-8">
                <?php if($this->session->userdata('user_status')=="login"){ ?>
                <div class="panel panel-flat">
                           <div class="title"><span>Konfirmasi Pengiriman</span></div>

                    <div class="panel-body">
                        <form action="<?php echo base_url().'index/order' ?>" method="post">
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
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="submit" class="btn btn-primary pull-right" value="Buat Pesanan">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <?php }else{ ?>
                <div class="panel panel-flat">
                    <div class="title">
                        <span>Silahkan login atau daftar akun untuk melanjutkan pembayaran.</span>
                    </div>

                    <div class="panel-body">
                        <br/><br/>
                        <?php show_alert(); ?>
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                                <div class="login-form">
                                    <!-- Form -->

                                    <div class="tab-content">
                                        <div>
                                            <form action="<?php echo base_url().'index/pembayaran_user_login'; ?>" method="post">
                                                <div class="text-center">
                                                    <h5 class="content-group">Login ke akun kamu <small class="display-block">Username & Password</small></h5>
                                                </div>

                                                <div class="form-group has-feedback has-feedback-left">
                                                    <input type="text" class="form-control" placeholder="Email" name="email" required="required">
                                                    <div class="form-control-feedback">
                                                        <i class="icon-user text-muted"></i>
                                                    </div>
                                                    <?php echo "<span class='text-warning'>".form_error('email')."</span>"; ?>
                                                </div>

                                                <div class="form-group has-feedback has-feedback-left">
                                                    <input type="password" class="form-control" placeholder="Password" name="password" required="required">
                                                    <div class="form-control-feedback">
                                                        <i class="icon-lock2 text-muted"></i>
                                                    </div>
                                                    <?php echo "<span class='text-warning'>".form_error('password')."</span>"; ?>
                                                </div>

                                                <div class="form-group login-options">
                                                    <div class="row">
                                                        <div class="col-sm-12 text-center">
                                                            Belum punya akun ? yuk <a href="<?php echo base_url().'index/user_daftar' ?>">daftar</a>
                                                        </div>

                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-block" style="color:white; background-color:#1565C0;">Login <i class="icon-arrow-right14 position-right"></i></button>
                                                </div>
                                            </form>
                                            <span class="help-block text-center no-margin">Dengan melakukan login, anda setuju dengan <a href="#">Syarat &amp; Ketentuan</a> kami</span>
                                        </div>
                                    </div>
                                    <!-- /form -->
                                </div>
                            </div>
                        </div>

                        <br/><br/>

                    </div>
                </div>
                <?php } ?>
            </div>
            <div class="col-md-4">
                <div class="panel panel-flat">
                    <div class="title">
                        <span>Belanjaan</span>
                    </div>

                    <div class="panel-body">
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
                                    <td colspan="2" class="text-right">Total Pembayaran (Harga + Ongkir)</td>
                                    <td class="no-padding-left no-padding-right text-right text-bold">
                                        <span class="text-pembayaran"></span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <?php }else{ ?>
                        <br/>
                        <br/>
                        <p class="text-center">Keranjang masih kosong. Ayo <a href="<?php echo base_url().'index/shop'; ?>">belanja</a>.</p>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
