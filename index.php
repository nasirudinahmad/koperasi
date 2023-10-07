<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="shortcut icon" href="img/logo.png">
    <title>Koperasi Kita</title>
    <style>
        /* body{
            background-image: url("img/bg2.png");
            background-position:  ;
            background-size: cover class="my-3";
        } */
    </style>
</head>
<body>
        <!-- <?php
            include_once "menu-navbar.php";
        ?> -->
<nav class="navbar navbar-light bg-light">
  <a class="navbar-brand"><img src="img/logo.png" width="40" height="25" class="mr-3">KOPERASI</a>
  <form class="form-inline">
    <h6 class="mr-3 my-auto d-none d-md-block">Anda Belum Masuk</h6>
    <a class="btn btn-dark btn-sm mr-2" href="login.php" role="button">Masuk</a>
    <a class="btn btn-primary btn-sm" href="register.php" role="button">Daftar</a>
  </form>
</nav>
        
      

  <!-- <marquee class="center" direction="left" scrollamount="5" width="100%" style="color: blue;">
  <?php
      date_default_timezone_set('Asia/Jakarta'); 
      // $waktu = date("H:i:s" );
      $waktu = date('m/d/Y h:i:s a', time());
      echo "SILAKAN DAFTAR TERLEBIH DAHULU JIKA BELUM MEMPUNYAI AKSES ";
      echo $waktu;

  ?>
  </marquee> -->

  <div class="container">
  <div class="row">
    <div class="col-md-8">
      <img src="img/bg22.png" alt="background" width="600" height="397">
    </div>
    <div class="col-md-4 justify-content-center my-auto">
      <h1>Koperasi</h1>
      <p>Aplikasi koperasi memudahkan Anda menyimpan uang</p>
    </div>
  </div>
  </div>

<nav class="navbar navbar-expand-lg navbar-light fixed-bottom">
  <!-- <?php
      $tanggal = date("d/m/Y");
  
      echo $tanggal;
  ?> -->
  
  <p class="mb-0 ml-auto">&copy; Copyright 2021 AcIeM</p>
</nav>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
</body>

</html>