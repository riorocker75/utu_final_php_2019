<div class="page-content">

	<!-- Main content -->
	<div class="content-wrapper">	


		<!-- User profile -->
		<div class="row">
			<div class="col-lg-3">
								
				<?php $this->load->view('cms/user_sidebar'); ?>
			</div>
			<div class="col-lg-9">
				<div class="panel panel-flat">
					<div class="panel-heading">
						<h6 class="panel-title">Profil Saya</h6>						
					</div>

					<div class="panel-body">						
						<?php foreach($profil as $p){ ?>
						<form action="<?php echo base_url().'user/user_edit_profil_act' ?>" method="post">
							<div class="form-group">
								<div class="row">
									<div class="col-md-6">
										<label>Nama Lengkap</label>
										<input type="text" name="nama" value="<?php echo $p->nama ?>" class="form-control">
										<?php echo form_error('nama'); ?>
									</div>
									<div class="col-md-6">
										<label>Email</label>
										<input type="text" name="email" value="<?php echo $p->email ?>" class="form-control">
										<?php echo form_error('email'); ?>
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-md-12">
										<label>Alamat</label>
										<input type="text" name="alamat" value="<?php echo $p->alamat; ?>" class="form-control">
										<?php echo form_error('alamat') ?>
									</div>										
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-md-4">
										<label>Provinsi</label>
										<input type="text" name="provinsi" value="<?php echo $p->provinsi; ?>" class="form-control">
										<?php echo form_error('provinsi'); ?>
									</div>
									<div class="col-md-4">
										<label>Kota</label>
										<input type="text" name="kota" value="<?php echo $p->kota; ?>" class="form-control">
										<?php echo form_error('kota'); ?>
									</div>
									<div class="col-md-4">
										<label>Kecamatan</label>
										<input type="text" name="kecamatan" value="<?php echo $p->kecamatan; ?>" class="form-control">
										<?php echo form_error('kecamatan'); ?>
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-md-6">
										<label>Kode Pos</label>
										<input type="text" name="kodepos" value="<?php echo $p->kodepos; ?>" class="form-control">
										<?php echo form_error('kodepos'); ?>
									</div>										
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-md-6">
										<label>Telpon / HP</label>
										<input type="text" name="telp" value="<?php echo $p->telp; ?>" class="form-control">
										<?php echo form_error('telp'); ?>											
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-md-6">											
										<input type="submit" class="btn btn-primary" value="Simpan">											
									</div>
								</div>
							</div>								
						</form>
						<?php } ?>
						
					</div>
				</div>				
			</div>			
		</div>
		<!-- /user profile -->

	</div>
	<!-- /main content -->

</div>
