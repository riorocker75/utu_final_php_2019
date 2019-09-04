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
                <a href="">tes</a>

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
                <li>
                  <a href="">tes</a>
  
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
                <li>
                  <a href="">tes</a>
  
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
                <li>
                  <a href="">tes</a>
  
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
    <script src="<?php echo base_url()?>assets_front/js/bootstrap.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  
    <script>
      $( function() {
        $( "#draggable" ).draggable();
      } );
      </script>
      
  </body>
</html>