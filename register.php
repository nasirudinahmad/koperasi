<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="shortcut icon" href="img/logo.png">
    <title>Register</title>
</head>

<body>
<div class="jumbotron jumbotron-fluid pb-0 mb-0 bg-white">
    <div class="container">
        <div class="row">
            <div class="col-md-8 d-none d-md-block">
            <img src="img/bg.png" alt="perbaikan" width="700" height="510">
            <img src="img/bg22.png" alt="perbaikan" width="210" height="153">
            <img src="img/bg22.png" alt="perbaikan" width="210" height="153">
            <img src="img/bg22.png" alt="perbaikan" width="210" height="153">
            </div>
          
            <div class="col-md-4 my-auto">
                <div class="card bg">
                    <div class="card-body">
                        <div class="text-center">
                        <img src="img/logo.png" alt="perbaikan" width="75" height="75">
                        <h5>Register</h5>
                        </div>
                        <form class="mt-1" id="1" action="prosesdaftar.php" method="POST" enctype="multipart/form-data">
                            <div class="form-group mb-0">
                                <label>Nama Sesuai Identitas</label>
                                <input type="text" name="nama" placeholder="Masukan Nama Pendaftar" class="form-control" required autofocus>
                            </div>
                            <div class="form-group mb-0">
                                <label>Nomor Identitas</label>
                                <input type="text" name="nik" placeholder="NIK" class="form-control" required>
                            </div>
                            <div>
                                <label>Foto KTP</label>
                                <input type="file" name="foto_ktp" placeholder="Upload Foto KTP" required>
                            </div>
                            <div class="form-group mb-0">
                                <label>Tanggal Lahir</label>
                                <input type="date" name="tgl_lahir" placeholder="Tanggal Lahir" class="form-control" required>
                            </div>
                            <div class="form-group mb-0">
                                <label>No Tlp</label>
                                <input type="text" name="no_tlp" placeholder="Masukan No Tlp" class="form-control" required>
                            </div>
                            <div class="form-group mb-0">
                                <label>Email</label>
                                <input type="email" name="email" placeholder="Masukan Email" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label >Password</label>
                                <input type="text" name="password" placeholder="Masukan Password" class="form-control" required>
                            </div>
                            <button class="btn btn-block btn-login" id="2" type="submit" name="daftar" value="daftar">Daftar</button>
                            <div class="text-center mt-4">
                                <p class="font-weight-bold">Sudah Daftar Silakan klik
                                    <a href="login.php">Login</a>
                                </p>
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
        if(path.indexOf('error2') >-1 ) {
        Swal.fire({
        title: 'Email Anda Sudah Terdaftar',
        text: 'Do you want to continue',
        icon: 'info',
        confirmButtonText: 'Kembali'
    })
    }
    });
    </script>
    <script>
    $( document ).ready(function() {
        var path = window.location.href;
        if(path.indexOf('error3') >-1 ) {
        Swal.fire({
        title: 'Pendaftaran Anda telah berhasil, Email pemberitahuan telah dikirimkan ke Email Anda',
        text: 'Do you want to continue',
        icon: 'success',
        confirmButtonText: 'Login'
    }).then(function() {
        window.location = "login.php";
    });
    }
    });
    $("#1").submit(function(){
    $("#2").html("<div class='text-center'><div class='spinner-border' role='status'><span class='sr-only'>Loading...</span> </div> </div>");
    });
    </script>

</body>
</html>