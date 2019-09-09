
<div class="modal-cart modal fade" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			</div>
			<div class="modal-body">
				<p class="text-center">Produk berhasil di masukkan ke keranjang.</p>
			</div>
			<div class="modal-footer">
				<a href="#" class="btn btn-default btn-sm" data-dismiss="modal">Lanjut belanja</a>
				<a href="<?php echo base_url().'index/keranjang' ?>" class="btn btn-primary btn-sm">Keranjang / Pembayaran</a>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- footer start -->
<footer class="footer-class">
  <div class="container">

      <div class="row">
        <div class="col-lg-3 col-md-6 col-sm-12 col-12">
          <div class="tittle-footer">
              <h2>Tentang </h2>
          </div>

          <div class="body-footer">
            <ul>
              <li>
                <a href=""><i class="fas fa-envelope-open-text"></i> tes--support@gmail.com</a>
			  </li>
			  
			  <li>
                <a href=""><i class="fa fa-phone" aria-hidden="true"></i> 0852-8745-6390 </a>
			  </li>
			  <li>
			  <div id="lokasi" style="max-width:100%; height:150px"></div>
			  </li>
			</ul>
			
			
          </div>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-12 col-12">
            <div class="tittle-footer">
                <h2>Kategory </h2>
            </div>
  
            <div class="body-footer">
              <ul>
			  <?php foreach($category_product as $k){ ?>
                <li>
				<a href="<?php echo base_url().'index/kategori_produk/'.$k->pcat_id;?>"><?php echo $k->pcat_name?></a>
				</li>
				<?php } ?> 
              </ul>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 col-12">
            <div class="tittle-footer">
                <h2>Metode Pembayaran</h2>
            </div>
  
            <div class="body-footer">
              <ul>
                <li>
                  <a href="">Bank Mandiri</a>
  
				</li>
				<li>
                  <a href="">Bank BRI</a>
  
				</li>
				<li>
                  <a href="">Bank BNI</a>
  
                </li>
              </ul>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 col-12">
            <div class="tittle-footer">
                <h2>Jasa Pengiriman </h2>
            </div>
  
            <div class="body-footer">
              <ul>
                <li>
                  <a href="">Pos Indonesia</a>
				</li>
				<li>
                  <a href="">JNE</a>
				</li>
				<li>
                  <a href="">TIKI</a>
				</li>
				<li>
                  <a href="">JN&T</a>
                </li>
              </ul>
            </div>
        </div>
      </div>

     
  </div>

  <div class="copyright-footer">
    <div class="d-flex justify-content-center">
      &copy;2019 Dibuat Oleh : <a href="" class="pink-text text-lighten-2">&nbsp;U.Core</a>&nbsp;with <i class="fa fa-heartbeat pink-text" style="margin-top:6px;margin-left:5px;"></i>

    </div>
    </div>
  
</footer>
<!-- end footer -->


<!-- modal login dan daftar -->
<!-- Modal -->
<div class="modal fade modal-login" id="login-pembeli" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Masuk Akun</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="<?php echo base_url().'index/user_login' ?>" method="post">
        <div class="modal-body">  
        <div class="form-group">
             
              <input type="email" class="form-control tx-14" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email">
              <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
          </div>
        <div class="form-group">
      
          <input type="password" class="form-control tx-14" name="password" id="exampleInputPassword1" placeholder="Password">
        </div>

             <div class="row">
                <div class="col-6">
                 <a href="" class=" float-left tx-13 red-text text-darken-4 tx-bold-600">Lupa Password ?</a> 
                 
                </div>
                <div class="col-6 ">
                   <a href="<?php echo base_url().'index/user_daftar';?>" class="float-right tx-13 blue-text text-darken-2 tx-bold-600">Daftar akun</a>
                </div>

             </div>

             <div class="col-12" style="margin-top:10px;">
               <button type="submit" class="btn-login-fullwidth bor-login"> Masuk <i class="fas fa-sign-in-alt"></i></button>

             </div>


        
          </div>
      </form>
     
    </div>
  </div>
</div>

<!-- end modal login dan daftar -->


    <script src="<?php echo base_url()?>assets_front/js/jquery.min.js" ></script>
    <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>   
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    <script src="<?php echo base_url()?>assets_front/js/core_utu.js"></script>
	<script src="<?php echo base_url()?>assets_front/js/input-spinner.js" ></script>
	<script src="<?php echo base_url()?>assets_front/js/slick.js" ></script>


    <script>
      $( function() {
        $( "#draggable" ).draggable();
	  } );
	  

	  $(".variable").slick({
        dots: true,
        infinite: true,
		variableWidth: true,
		infinite: true,
		speed: 300,
		slidesToShow: 1,
		centerMode: true,
		autoplay: true,
  		autoplaySpeed: 5000,
      });
      </script>

<script type="text/javascript">
			$(document).ready(function(){
				$('.diki-tooltip').tooltip();

					$('body').on("click",".btn-addtocart",function(){
						var id = $(this).attr('id');
						var data = "id="+id;
						$.ajax({
							type: 'POST',
							url: "<?php echo base_url(); ?>" + "index/addtocart",
							data: data,
							success: function(){
								$('.modal-cart').modal();
							},
							beforeSend: function(){
								$('#'+id).after("<span class='ajax-cart heading-text pull-right'><i class='icon-spinner2 spinner position-left'></i></span>");
								$('#'+id).hide();
							},
							complete: function(){
								$('.ajax-cart').hide();
								$('#'+id).show();
							},
							error: function() {
								alert("Gagal menambahkan produk ke keranjang !");
							}
						});
					});

					$('body').on("click",".btn-bayarlangsung",function(){
						var id = $(this).attr('id');
						var data = "id="+id;
						$.ajax({
							type: 'POST',
							url: "<?php echo base_url(); ?>" + "index/addtocart",
							data: data,
							success: function(){
								window.location.replace("<?php echo base_url().'index/pembayaran'?>");
							},
							error: function() {
								alert("Gagal menuju laman pembayaran mohon diulangi lagi !");
							}
						});
					});		



	$('body').on("change",".form-provinsi",function(){
				var provinsi = $(this).val();
				var data = "provinsi="+provinsi;
				$.ajax({
					type: 'POST',
					url: "<?php echo base_url(); ?>" + "index/get_kota/",
					data: data,
					success: function(html){
						$('.form-kota').html(html);
					},
					beforeSend: function(){
						$('.form-kota').after("<center><span class='ajax-ongir heading-text text-center'><i class='icon-spinner2 spinner position-left'></i></span></center>");
						$('.form-kota').hide();
					},
					complete: function(){
						$('.ajax-ongir').hide();
						$('.form-kota').show();
					},
					error: function() {
						alert("Gagal mendapatkan data ongkir!");
					}
				});
			});

			$('body').on("change",".form-kota",function(){
				var kota = $(this).val();
				var id_prod = $('.id_prod').val();
				var kurir = $('.form-kurir').val();
				var data = "kota="+kota+"&id_prod="+id_prod;
				$.ajax({
					type: 'POST',
					url: "<?php echo base_url(); ?>" + "index/get_cost/",
					data: data,
					success: function(html){
						$('.tempat-cost').html(html);
					},
					beforeSend: function(){
						$('.tempat-cost').before("<center><span class='ajax-cost heading-text text-center'><i class='icon-spinner2 spinner position-left'></i></span></center>");
					},
					complete: function(){
						$('.ajax-cost').hide();
					},
					error: function() {
						alert("Gagal mendapatkan data ongkir!");
					}
				});
			});



			// payment ship
			$('body').on("change",".form-provinsi2",function(){
				var provinsi = $(this).val();
				var data = "provinsi="+provinsi;
				$.ajax({
					type: 'POST',
					url: "<?php echo base_url(); ?>" + "index/get_kota2/",
					data: data,
					success: function(html){
						$('.form-kota2').html(html);
					},
					beforeSend: function(){
						$('.form-kota2').after("<center><span class='ajax-ongir heading-text text-center'><i class='icon-spinner2 spinner position-left'></i></span></center>");
						$('.form-kota2').hide();
					},
					complete: function(){
						$('.ajax-ongir').hide();
						$('.form-kota2').show();
					},
					error: function() {
						alert("Gagal mendapatkan data ongkir!");
					}
				});
			});

			$('body').on("change",".form-kota2",function(){
				var kota = $(this).val();
				var data = "kota="+kota;
				$.ajax({
					type: 'POST',
					url: "<?php echo base_url(); ?>" + "index/get_cost2/",
					data: data,
					success: function(html){
						$('.tempat-cost').html(html);
					},
					beforeSend: function(){
						$('.tempat-cost').before("<center><span class='ajax-cost heading-text text-center'><i class='icon-spinner2 spinner position-left'></i></span></center>");
					},
					complete: function(){
						$('.ajax-cost').hide();
					},
					error: function() {
						alert("Gagal mendapatkan data ongkir!");
					}
				});
			});

			$('body').on("change",".pilih-kurir",function(){
						var cost = $(this).attr('id');
						var total = $('.pembayaran-total').attr('id');
						var x = parseInt(total)+parseInt(cost);
						$('.text-ongkos-kirim').html("Rp. "+cost+" ,-");
						$('.text-pembayaran').html("Rp. "+ x +" ,-");
						$('.pembayaran').val(x);
						$('.ongkir').val(cost);
					});
			// akhir pembayaran
			$('body').on("click",".btn-hide-alert",function(){
						$(this).parent().hide();
					});

					$(".modal-cart").modal("hide").on("hidden.bs.modal", function () {
						location.reload();
					});

			$('input[type="submit"]').on("click",function(){
					$(this).addClass('disabled');
				});



				function readCookie(name) {
							var nameEQ = name + "=";
							var ca = document.cookie.split(';');
							for (var i = 0; i < ca.length; i++) {
								var c = ca[i];
								while (c.charAt(0) == ' ') c = c.substring(1, c.length);
								if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
							}
							return null;
						}
	// akhir public
		});
				</script>
	<script>
            $(".input-spinner").inputSpinner()
    </script>  
	
	<script>
  


      function initMap() {
	  var map;
	  var lok={lat: 5.2030553, lng: 97.0612123};
        map = new google.maps.Map(document.getElementById('lokasi'), {
          center: lok,
          zoom: 14
        });

		var marker = new google.maps.Marker({
          position: lok,
          map: map,
          title: 'Lokasi Kami'
        });
	
      }
    </script>	

 	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDVbyFOcEs46t1t4srUIKVZIfZpSXsbiN8&callback=initMap" async defer></script>

  </body>
</html>