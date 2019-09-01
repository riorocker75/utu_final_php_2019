<!-- <div class="thumbnail">
	<div class="thumb thumb-rounded thumb-slide">
		<img src="<?php echo base_url(); ?>dah_image/default/pembeli.jpg" alt="">
	</div>

	<div class="caption text-center">
		<h6 class="text-semibold no-margin"><?php echo $this->session->userdata('user_nama'); ?></h6>
	</div>

	<div class="list-group no-border no-padding-top">
		<a href="<?php echo base_url().'user'; ?>" class="list-group-item"><i class="icon-home4"></i> Dashboard</a>
		<a href="<?php echo base_url().'user/user_profil'; ?>" class="list-group-item"><i class="icon-user"></i> Profil</a>
		<a href="<?php echo base_url().'user/invoice'; ?>" class="list-group-item"><i class="icon-cash3"></i> Invoice</a>
		<a href="<?php echo base_url().'user/logout'; ?>" class="list-group-item"><i class="icon-cog3"></i> Logout</a>
	</div>
</div> -->
<div class="col-sm-4 col-md-3 m-b-3">
	<div class="account-picture"><img src="<?php echo base_url(); ?>images/user.png" alt="" class="img-circle img-responsive"></div>
	<h4 class="text-center m-b-3"><?php echo $this->session->userdata('user_nama'); ?></h4>
	<ul class="nav nav-pills nav-stacked">
		<li role="presentation"><a href="<?php echo base_url().'user'; ?>"><i class="fa fa-user"></i> &nbsp;Profil Saya</a></li>
		<!-- <li role="presentation"><a href="account-address.html">Alamat</a></li> -->
		<li role="presentation" ><a href="<?php echo base_url().'user/invoice'; ?>"><i class="fa fa-credit-card"></i> &nbsp;Invoice Pembelian</a></li>
		<li role="presentation" ><a href="account-password.html"><i class="fa fa-gears"></i> &nbsp;Logout</a></li>
	</ul>
</div>
