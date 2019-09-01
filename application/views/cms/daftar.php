	<!-- Page content -->
	<div class="page-content">

		<!-- Main content -->
		<div class="content-wrapper">

			<!-- Advanced login -->
			<form action="<?php echo base_url().'index/user_daftar'; ?>" method="post">
				<div class="row">
					<div class="col-md-4 col-md-offset-4">
						<div class="panel panel-body">

							<form action="<?php echo base_url().'index/user_daftar' ?>" method="post">
								<div class="text-center">									
									<h5 class="content-group">Daftar akun baru <small class="display-block">Semua harus di isi</small></h5>
								</div>
								<br/>
								<div class="form-group has-feedback has-feedback-left">
									<input type="text" class="form-control" name="email" placeholder="Email kamu yang valid">
									<div class="form-control-feedback">
										<i class="icon-mention text-muted"></i>
									</div>
									<span class="text-danger"><?php echo form_error('email'); ?></span>
								</div>

								<div class="form-group has-feedback has-feedback-left">
									<input type="text" class="form-control" name="nama" placeholder="Nama Lengkap">
									<div class="form-control-feedback">
										<i class="icon-user-check text-muted"></i>
									</div>
									<span class="text-danger"><?php echo form_error('nama'); ?></span>
								</div>

								<div class="form-group has-feedback has-feedback-left">
									<input type="password" class="form-control" name="password" placeholder="Password">
									<div class="form-control-feedback">
										<i class="icon-user-lock text-muted"></i>
									</div>
									<span class="text-danger"><?php echo form_error('password'); ?></span>
								</div>								
								<br/>								
								<div class="form-group">								
									<div class="checkbox">
										<label>
											<input type="checkbox" class="styled">
											Accept <a href="#">terms of service</a>
										</label>
									</div>
								</div>
								<button type="submit" class="btn bg-blue-400 btn-block">Daftar <i class="icon-circle-right2 position-right"></i></button>
								<a href="<?php echo base_url(); ?>" class="btn btn-default btn-block" data-dismiss="modal">Batal</a>
							</form>
						</div>
					</div>
				</div>
			</form>
			<!-- /advanced login -->

		</div>
		<!-- /main content -->

	</div>
		<!-- /page content -->