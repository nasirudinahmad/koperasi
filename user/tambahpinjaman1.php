<?php
require "cek.php";
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link rel="shortcut icon" href="../img/logo.png">
        <meta name="description" content="" />
        <meta name="author" content="" />
        <script type="text/javascript" src="../js/my.js"></script>
        <title>User</title>
    </head>
    <body class="sb-nav-fixed">
        <?php
            include_once "menu-navbar.php";
        ?>
        <div id="layoutSidenav">
            <?php
                include_once "menu-sidebar.php";
            ?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <ol class="breadcrumb mt-2 mb-4">
                            <li class="breadcrumb-item active">Transaksi Pinjaman</li>
                        </ol>
        
                    <form class="col-md-4" id="7" action="prosestambahpinjaman.php" method="POST">
                        <!-- <label for="exampleInputEmail1">Alasan Peminjaman Dana</label>
                        <div class="input-group flex-nowrap mb-4">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="as"></span>
                            </div>                           
                            <input type="text" name="" class="form-control" aria-describedby="as">
                          
                        </div> -->
                        <label for="exampleInputEmail1">Jumlah Pinjaman</label>
                        <div class="input-group flex-nowrap mb-4">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="as">Rp.</span>
                            </div>                           
                            <input type="text" inputmode="numeric" placeholder="0" name="pinjaman_anggota" class="form-control" id="rupiah1" aria-describedby="as">
                            <!-- <input type="text" name="pinjaman" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"> -->
                            <!-- <input type="text" id="inputku" name="pinjaman" class="form-control price price_1" onkeydown="return numbersonly(this, event);" onkeyup="javascript:tandaPemisahTitik(this);">        -->
                            <!-- harus upload gambar
                                KTP, KK, Rekening listrik -->
                        </div>
                        
                        
                        <button class="btn btn-primary" id="9" type="submit" name="kirim"><i class="fa fa-paper-plane"></i> Kirim</button>
                        <a class="btn btn-secondary btn-sm"href="index.php"><i class="fa fa-home"></i> kembali</a>
                        <!-- <a href="simpanan.php" class="btn btn-secondary">Kembali</a> -->
                    </form>
                    
                        
                    </div>  
                </main>  
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

        <script src="../js/jquery.number.js"></script>
        <script>
            $('#rupiah1').number( true, 0 );
        </script>
        

        <script>
        // Jika form (id=5) di submit maka (id=6) text berubah atau diganti
        $("#7").submit(function(){
        $("#9").html("<div class='text-center'><div class='spinner-border spinner-border-sm' role='status'><span class='sr-only'>Loading...</span> </div> </div>");
        });
        </script>

    </body>
</html>
