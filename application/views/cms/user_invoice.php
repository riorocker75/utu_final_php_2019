<div class="container m-t-3">
	<!-- Main content -->
	<div class="content-wrapper">
		<!-- User profile -->

		<div class="row">
				<?php $this->load->view('cms/user_sidebar'); ?>
			<div class="col-lg-3">



			</div>
			<div class="col-lg-8">
				<div class="panel panel-flat timeline-content">
					<div class="title">
						<span>Invoice Saya</span>
					</div>

					<div class="panel-body">
						<?php show_alert(); ?>
						<div class="table-responsive">
							<?php if($this->m_dah->edit_data(array('user_id' => $this->session->userdata('user_id')),'invoice')->num_rows()>0){ ?>
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>No. Invoice</th>
										<th>Resi</th>
										<th>Status</th>
									</tr>
								</thead>
								<tbody>
									<?php foreach($invoice as $p){ ?>
									<tr>
										<td>
											<a href="<?php echo base_url().'user/invoice_detail/'.$p->id ?>"><?php echo $p->no; ?></a><br/>
											<small class="text-muted">
												<?php
												$phpdate = strtotime($p->tgl);
												$mysqldate = date( 'd-M-Y', $phpdate );
												echo $mysqldate;
												?>
											</small>
										</td>
										<td>
											<?php
											if($p->resi == ""){
												echo "Resi belum di input";
											}else{
												echo $p->resi;
											}
											?>
										</td>
										<td>
											<?php
											if($p->status == 0){
												echo "<span class='label label-warning'>Menunggu pembayaran</span>";
											}else if($p->status == 1){
												echo "<span class='label label-default'>Menunggu konfirmasi</span>";
											}else if($p->status == 2){
												echo "<span class='label label-danger'>Di tolak</span>";
											}else if($p->status == 3){
												echo "<span class='label label-primary'>Di proses</span>";
											}else if($p->status == 4){
												echo "<span class='label label-success'>Di bayar</span>";
											}
											?>
										</td>
									</tr>
									<?php } ?>
								</tbody>
							</table>
							<?php }else{ ?>
							<p class="text-muted text-center">Anda belum memiliki invoice apapun. segeralah belanja</p>
							<?php } ?>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /user profile -->

	</div>
	<!-- /main content -->

</div>
