<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title><?php echo get_option('blog_name'); ?></title>
    <!-- Bootstrap core CSS -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,500,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/css/bootstrap.css' ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/css/dahcode.css' ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/css/animate.css' ?>">
</head>

<body>

    <div class="notfound">
        <div class="flex-center">
          <?php 
          if(get_option('blog_logo') != ""){
           ?>
           <center><img class="animated fadeIn notfound-logo" src="<?php echo base_url().'dah_image/system/ikan.png';?>"></center>
           <?php
           }
           ?>
           <br/>
           <center><h1 class="animated shake">Oppss ! Halaman tidak di temukan.</h1></center>           
       </div>   
    </div>

<script type="text/javascript" src="<?php echo base_url().'assets/js/jquery.js' ?>"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="<?php echo base_url().'assets/js/bootstrap.js' ?>"></script>
</body>

</html>