<div class="container m-t-3">
	<!-- Main content -->
	<div class="content-wrapper">
		<!-- User profile -->
		<div class="row">
			<?php $this->load->view('cms/user_sidebar'); ?>
			<div class="col-lg-3">



			</div>
			<div class="col-lg-9">
				<?php foreach($invoice as $i){ ?>

				<?php if($i->status != "3" && $i->status != "4" ){ ?>
				<div class="panel panel-white">
					<div class="panel-heading">
						<h6 class="panel-title">Konfirmasi Pembayaran - <?php echo $i->no; ?><a class="heading-elements-toggle"><i class="icon-more"></i></a></h6>
					</div>

					<div class="panel-body">
						<form method="post" action="<?php echo base_url().'user/upload_slip' ?>" enctype="multipart/form-data">
							<p class="text-muted">Silahkan upload bukti pembayaran pada form di bawah ini. Selanjutnya pembayaran akan di periksa untuk di lanjutkan ke tahap selanjutnya.</p>
							<br/>
							<div class="row">
								<div class="col-sm-12">
									<div class="form-group">
										<label>Bukti pembayaran</label>
										<input type="hidden" name="id_inv" value="<?php echo $i->id; ?>">
										<input type="file" name="slip" accept="image/*">
										<?php echo "<span class='text-warning'>".form_error('slip')."</span>"; ?>
									</div>
								</div>
								<div class="col-sm-12">
									<div class="form-group">
										<input type="submit" value="Upload" class="btn btn-sm btn-primary">
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				<?php } ?>
				<div class="panel panel-white">
					<div class="panel-heading">
						<h6 class="panel-title"><?php echo $i->no; ?><a class="heading-elements-toggle"><i class="icon-more"></i></a></h6>
						<div class="heading-elements">
							<button type="button" class="btn btn-default btn-xs heading-btn"><i class="icon-file-check position-left"></i> Cetak / Unduh</button>
						</div>
					</div>

					<div class="panel-body no-padding-bottom">
						<div class="row">
							<div class="col-sm-6 content-group">
								<ul class="list-condensed list-unstyled">
									<li>Fisbis.com</li>
									<li>Indonesia</li>
									<li>+62853-6008-0642</li>
								</ul>
							</div>

							<div class="col-sm-6 content-group">
								<div class="invoice-details">
									<h5 class="text-uppercase text-semibold">Invoice <?php echo $i->no; ?></h5>
									<ul class="list-condensed list-unstyled">
										<li>Tanggal:
											<span class="text-semibold">
												<?php
												$phpdate = strtotime($i->tgl);
												$mysqldate = date( 'd-M-Y', $phpdate );
												echo $mysqldate;
												?>

											</span>
										</li>
										<li>Status:
											<span class="text-semibold">
												<?php
												if($i->status == 0){
													echo "<span class='label label-warning'>Menunggu pembayaran</span>";
												}else if($i->status == 1){
													echo "<span class='label label-default'>Menunggu konfirmasi</span>";
												}else if($i->status == 2){
													echo "<span class='label label-danger'>Di tolak</span>";
												}else if($i->status == 3){
													echo "<span class='label label-primary'>Di proses</span>";
												}else if($i->status == 4){
													echo "<span class='label label-success'>Di bayar</span>";
												}
												?>
											</span>
										</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-6 col-lg-8 content-group">
								<span class="text-muted">Invoice Untuk:</span>
								<ul class="list-condensed list-unstyled">
									<li><h5><?php echo $i->nama; ?></h5></li>
									<li><span class="text-semibold"><?php echo $i->alamat; ?></span></li>
									<li>Provinsi : <?php echo tampil_provinsi($i->provinsi); ?></li>
									<li>Kota / Kab : <?php echo tampil_kota($i->kota); ?></li>
									<li>Kecamatan : <?php echo $i->kecamatan; ?></li>
									<li>Kode Pos : <?php echo $i->kodepos; ?></li>
									<li>Tlp/HP : <?php echo $i->telp; ?></li>
								</ul>
								<br/>
								<span class="text-muted">Kurir:</span>
								<ul class="list-condensed list-unstyled">
									<li><h4><?php echo $i->kurir; ?></h4></li>
								</ul>
							</div>

							<div class="col-md-6 col-lg-4 content-group">
								<p class="text-muted text-right">Lakukan Pembayaran Ke:</p>
								<ul class="list-condensed list-unstyled invoice-payment-details">
									<li><span class="text-semibold">Bank &nbsp;:  &nbsp; BRI ( Bank Rakyat Indonesia )</span></li>
									<li><span>No.Rek  &nbsp;: &nbsp;3234-01-018899-53-0</span></li>
									<li><span>A/N &nbsp;: &nbsp; Fisbis jaya mandiri</span></li>
								</ul>
							</div>
						</div>
					</div>

					<div class="table-responsive">
						<table class="table table-lg">
							<thead>
								<tr>
									<th>Produk</th>
									<th class="col-sm-2 text-center">Harga</th>
									<th class="col-sm-1 text-center">Jumlah</th>
									<th class="col-sm-2 text-center">Total</th>
								</tr>
							</thead>
							<tbody>
								<?php
								foreach($barang as $b){
									?>
									<tr>
										<td>
											<h6 class="no-margin"><?php echo $b->prod_name; ?></h6>
											<span class="text-muted"></span>
										</td>
										<td class="text-center"><?php echo "Rp. ". number_format($b->order_harga)." ,-"; ?></td>
										<td class="text-center"><?php echo $b->order_jumlah; ?></td>
										<td class="text-center"><span class="text-semibold"><?php echo "Rp. ".number_format($b->order_jumlah*$b->order_harga)." ,-"; ?></span></td>
									</tr>
									<?php } ?>
								</tbody>
							</table>
						</div>

						<div class="panel-body">
							<div class="row invoice-payment">
								<div class="col-sm-7">

								</div>

								<div class="col-sm-5">
									<div class="content-group">
										<h6>Total due</h6>
										<div class="table-responsive no-border">
											<table class="table">
												<tbody>
													<tr>
														<th>Subtotal :</th>
														<td class="text-right"><?php if($subtotal>0){echo "Rp. ".number_format($subtotal)." ,-";} ?></td>
													</tr>
													<tr>
														<th>Ongkir :</th>
														<td class="text-right"><?php echo "Rp. ".number_format($i->ongkir)." ,-"; ?></td>
													</tr>
													<tr>
														<th>Total Pembayaran:<br/><span class="text-muted">(Subtotal + Ongkir)</span></th>
														<td class="text-right text-primary"><h5 class="text-semibold"><?php echo "Rp. ".number_format($i->ongkir+$subtotal)." ,-"; ?></h5></td>
													</tr>
												</tbody>
											</table>
										</div>

									</div>
								</div>
							</div>

							<h6>Informasi penting</h6>
							<p class="text-muted">
								Terima kasih sudah berbelanja di Fisbis.com Ini adalah invoice atau faktur pesanan kamu. Kamu bisa melakukan pembayaran untuk tagihan invoice ini dengan cara mentransfer ke rekening yang tertera di atas sejumlah nominal total pembayaran yang tertera.
								Selanjutnya kamu tinggal mengupload slip bukti pembayaran untuk selanjutnya di periksa dan di konfirmasi oleh Tim kami.
								Jika ada yang kurang jelas, kamu bisa langsung berkonsultasi dengan CS kami melalui nomor hp yang tertera di atas.
								Pertanyaan kamu bisa kamu sampaikan melalui SMS, Telpon atau WA. Terima kasih.	</p>
							</div>
						</div>
						<?php } ?>
					</div>
				</div>
				<!-- /user profile -->

			</div>
			<!-- /main content -->

		</div>
