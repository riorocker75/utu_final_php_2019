<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title><?php echo $this->m_dah->get_option('blog_name'); ?> | <?php echo strip_tags($this->m_dah->get_option('blog_description')); ?></title>
	<link rel="icon" type="image/png" href="<?php echo base_url().'dah_image/system/logo1.png' ?>">
	<!-- Global stylesheets -->
  <!-- core CSS -->
  	<link rel="stylesheet" href="<?php echo base_url() ?>assets_front/css/bootstrap.css">
    <link rel="stylesheet" href="<?php echo base_url() ?>assets_front/dist/css/core_utu.css">
    <link rel="stylesheet" href="<?php echo base_url() ?>assets_front/dist/css/custom_utu.css">


    <!-- font -->
    <link rel="stylesheet" href="<?php echo base_url() ?>assets_front/font-aw/css/all.css">
    <link rel="stylesheet" href="<?php echo base_url() ?>assets_front/material-icon/material-icon.css">




	<!-- Core JS files -->

	<!-- Theme JS files -->


	 <!-- Histats.com  START  (aync)-->

<!-- Histats.com  END  -->
</head>

  <body>

<!-- nsearchnav -->
<div class="search-nav sticky-top teal darken-1">
        <div class="header-container">
     <div class="row">
       <div class="col-sm-3 col-md-3 col-lg-3 d-none d-sm-block">
      
           Logo
 
        </div>
       <div class="col-12 col-sm-4 col-md-4 col-lg-4 ">
         <form action="" method="post" class="search-area ">
           <input type="text" class="search-in-area" placeholder="Cari yang kamu inginkan">
          <i class="fa fa-search"></i>
         </form>
       </div>
       <div class="col-sm-5 col-md-5 col-lg-5 d-none d-sm-block ">
        
        <div class="float-right">
          <ul class="search-right">
            
              <!-- <li>
                  <a href=""><i class="fa fa-user"></i></a>
              </li> -->

              <li>
                  <a href=""><i class="fa fa-cart-arrow-down"></i></a>
                </li>  
                
                <li class="d-sm-none d-md-none u-lg-block" style="margin-top:-7px;">
                  <a href="" class="btn-bordered-sm ">Daftar</a>
                  <a href="" class="btn-bordered-sm">Login</a>
                </li>  
              
                <li class="d-lg-none u-md-block d-sm-inline-block">
                  <a href="" title="login"><i class="fas fa-sign-in-alt"></i></a>
                </li>
              
         
          </ul>

        </div>
      
      </div>
     </div>
    </div>
    </div>
    <!-- end searchnav -->

    <!-- navbar -->
    <nav class="navbar navbar-expand-lg teal darken-3">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
     <i class="fa fa-bars white-text" aria-hidden="true"></i>
      </button>

      
      <div class="float-right">
        <ul class="nav-bawah-right d-md-none d-sm-none">
          <li>
              <a href="">
                <i class="fa fa-cart-arrow-down white-text"></i>
              </a>    
          </li>
          <li class="has_dropdown_side ">
            <a href="#" class="">
             <i class="fa fa-user white-text" aria-hidden="true"></i></a>
          <ul class="dropdown_ct_side">
            
                <li><a href=""><i class="fa fa-home tx-16"></i> Dashboard</a></li>
                <li><a href=""><i class="fa fa-user tx-16"></i> Profile</a></a></li>
                <li><a href=""><i class="fa fa-briefcase tx-16"></i> Pesanan</a></a></li>
                <li><a href=""><i class="fas fa-sign-out-alt tx-16"></i> Logout</a></a></li>

          </ul>
        </li>
        </ul> 
    </div> 
  
    
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto ">
          <li class="nav-item active">
            <a class="nav-link white-text" href="#">Home <span class="sr-only"></span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link white-text" href="#">Tentang</a>
          </li>
          <li class="nav-item">
            <a class="nav-link white-text" href="#">Kontak</a>
          </li>
		  <li class="nav-item">
            <a class="nav-link white-text" href="#">Cara Pemesanan</a>
          </li>
		  <li class="nav-item">
            <a class="nav-link white-text" href="#">Metode Pembayaran</a>
          </li>
         
         
        </ul>
       
        
      </div>
     
    </nav>
    <!-- end navbar -->
