<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="shortcut icon" href="img/logo.png">
    <title>Login</title>
</head>

<body>
<div class="jumbotron jumbotron-fluid pb-0 mb-0 bg-white">
  <div class="container">
      <div class="row">
          <div class="col-md-8 d-none d-md-block">
            <img src="img/bg.png" alt="perbaikan" width="700" height="510">
          </div>
            <div class="col-md-4 my-auto">
                <div class="card bg">
                    <div class="card-body">
                        <div class="text-center">
                        <img src="img/logo.png" alt="perbaikan" width="75" height="75">
                        <h5>Login</h5>
                        </div>
                        <form class="mt-3" action="proseslogin.php" method="POST">
                            <div class="form-group mb-0">
                                <label>Email</label>
                                <input type="email" name="email" placeholder="Masukan Email Anda" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label >Password</label>
                                <input type="password" name="password" placeholder="Masukan Password Anda" class="form-control" required>
                            </div>
                            <button class="btn btn-block btn-login fa" id="2" type="submit" name="login">login</button>
                        

                            <div class="text-center mt-4">
                                <p class="font-weight-bold">Don't have an account ?
                                <a href="register.php">Register Now!</a>
                                </p>
                                <p>Forgot Password ?</p>
                                <p>Call Center Koperasi Kita</p>
                                <i class="fab fa-whatsapp"></i>
                                <a href="https://api.whatsapp.com/send?phone=6283819802919" target="_blank" class="font-weight-bold">083819802919</a>
                                
                            </div>                            
                        </form>
                    </div>
                </div>
            </div>
      </div>
   
    </div>
</div>
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-bottom">
  <p class="mb-0 ml-auto">&copy; Copyright 2021 AcIeM</p>
</nav>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>


<script>
$( document ).ready(function() {
    var path = window.location.href;
    if(path.indexOf('error') >-1 ) {
    Swal.fire({
    title: 'Email Anda Salah',
    text: 'Do you want to continue',
    icon: 'error',
    confirmButtonText: 'Kembali'
})
 }
});
$("#2").submit(function(){
   $("#2").html("<div class='text-center'><div class='spinner-border' role='status'><span class='sr-only'>Loading...</span> </div> </div>");
});
</script>
<script>
$( document ).ready(function() {
    var path = window.location.href;
    if(path.indexOf('error4') >-1 ) {
    Swal.fire({
    title: 'Password Anda salah atau akun Anda masih pending, silakan cek Email Anda',
    text: 'Do you want to continue',
    icon: 'warning',
    confirmButtonText: 'Kembali'
})
 }
});
</script>
</body>
</html>
