	<!-- Page content -->
	<div class="page-content">

		<!-- Main content -->
		<div class="content-wrapper">

			<!-- Advanced login -->
			<form action="<?php echo base_url().'index/user_login'; ?>" method="post">
				<div class="row">
					<div class="col-md-4 col-md-offset-4">
						<div class="panel panel-body">
							<form action="#">
								<div class="text-center">								
									<h5 class="content-group">Login ke akun kamu <small class="display-block">Username & Password</small></h5>
								</div>

								<?php show_alert(); ?>

								<br/>
								<br/>
								<div class="form-group has-feedback has-feedback-left">
									<input type="text" class="form-control" placeholder="Email" name="email" required="required">
									<div class="form-control-feedback">
										<i class="icon-user text-muted"></i>
									</div>
									<span class="text-danger"><?php echo form_error('email'); ?></span>
								</div>
								<div class="form-group has-feedback has-feedback-left">
									<input type="password" class="form-control" placeholder="Password" name="password" required="required">
									<div class="form-control-feedback">
										<i class="icon-lock2 text-muted"></i>
									</div>
									<span class="text-danger"><?php echo form_error('password'); ?></span>
								</div>

								<div class="form-group login-options">
									<div class="row">
										<div class="col-sm-6">

										</div>
										<div class="col-sm-6 text-right">
											<a href="#">Forgot password?</a>
										</div>
									</div>
								</div>

								<div class="form-group">
									<button type="submit" class="btn bg-blue-400 btn-block">Login <i class="icon-arrow-right14 position-right"></i></button>
								</div>
							</form>											
							<span class="help-block text-center no-margin">Belum punya akun ? :( &nbsp; &nbsp; &nbsp;<a href="<?php echo base_url().'index/daftar'; ?>">Daftar sekarang</a></span>							
							<span class="help-block text-center no-margin">Dengan melakukan login, anda setuju dengan <a href="#">Syarat &amp; Ketentuan</a> kami</span>							
						</div>
					</div>
				</div>
			</form>
			<!-- /advanced login -->

		</div>
		<!-- /main content -->

	</div>
		<!-- /page content -->