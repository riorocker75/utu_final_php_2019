<!-- Main Content -->
    <div class="container m-t-3">
      <div class="row">

        <!-- Account Sidebar -->
<?php $this->load->view('cms/user_sidebar'); ?>
        <!-- End Account Sidebar -->

        <!-- My Profile Content -->
        <div class="col-sm-8 col-md-9">
          <div class="title m-b-2"><span>Profile Saya</span></div>

          <div class="row">
              	<?php show_alert(); ?>
            <div class="col-xs-12">


              <ul class="list-group list-group-nav">
                    <?php foreach($profil as $p){ ?>
                <li class="list-group-item">
                  <strong>Nama</strong>
                  <p><?php echo $p->nama; ?></p>
                </li>
                <li class="list-group-item">
                  <strong>Alamat</strong>
                  <p><?php echo $p->alamat; ?></p>
                </li>
                <li class="list-group-item">
                  <strong>Provinsi</strong>
                  <p><?php echo $p->provinsi; ?></p>
                </li>
                <li class="list-group-item">
                  <strong>Kota</strong>
                  <p><?php echo $p->kota; ?></p>
                </li>
                <li class="list-group-item">
                  <strong>Kecamatan</strong>
                  <p><?php echo $p->kecamatan; ?></p>
                </li>
                <li class="list-group-item">
                  <strong>Kode Pos</strong>
                  <p><?php echo $p->kodepos; ?></p>
                </li>
                <li class="list-group-item">
                  <strong>Email</strong>
                  <p><?php echo $p->email; ?></p>
                </li>
                <li class="list-group-item">
                  <strong>Telpon / HP</strong>
                  <p><?php echo $p->telp; ?></p>
                </li>
                    <?php } ?>
              </ul>


              <a href="<?php echo base_url().'user/edit_profil'; ?>" class="btn btn-theme pull-right"><i class="fa fa-pencil"></i> Edit Profil Saya</a>
            </div>

          </div>
        </div>
        <!-- End My Profile Content -->

      </div>
    </div>
