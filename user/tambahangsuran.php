<?php
require "cek.php";
// echo $_SESSION['id'];
// die ();
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
        
        <title>Tambah Angsuran</title>
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
                            <li class="breadcrumb-item active">Transaksi Angsuran</li>
                        </ol>
        
                        <form class="col-md-4" action="" method="GET">
                        <div>
                            <label for="">Pilih ID Pinjaman</label>
                            <p>
                                <select name="id_pinjaman" id="id_pinjaman" class='form-control' onchange="this.form.submit()">
                                    <option value="">--pilih--</option>
                                    <?php
                                    $conn= open_db();                            
                            
                                    $sql = $conn->query("select * from pinjaman where id_user=".$_SESSION['id']." and status='disetujui'");
                                    while ($data=$sql->fetch_assoc()){
                                        // $angsuran = $conn->query("SELECT * FROM `pinjaman` WHERE 1"); 
                                        // $data = $angsuran->fetch_assoc();
                                        
                                        // print_r($data);
                                        
                                        
                                        ?>
                                    <option value="<?= $data['id']?>" <?=(isset($_GET['id_pinjaman']) && ($data['id'] == $_GET['id_pinjaman'])) ? 'selected' : '' ?> ><?= $data['id'] . " - " . $data['tanggal']?></option>
                                    <?php 
                                    } ?>

                                </select>
                        </div>
                        </form>
                        <br>
                            
                            <?php
                                
                                if (isset($_GET['id_pinjaman'])) {
                                    $conn= open_db();
                                
                                $sql2="SELECT * FROM pinjaman WHERE id=".$_GET['id_pinjaman']." and status='disetujui'";
                                $data=mysqli_query($conn,$sql2);
                                $row = mysqli_fetch_assoc($data);
                                                                
                            ?>

                            <!-- <label for="exampleInputEmail1">Angsuran</label> -->
                            <form class="col-md-4" id="5" action="prosestambahangsuran.php" method="POST">
                                
                            <input type="hidden" name="id_pinjaman" value="<?= $_GET['id_pinjaman'] ?>">
                            <label for="exampleInputEmail1">Angsuran Perbulan</label>
                            <div class="input-group flex-nowrap mb-4">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="">Rp.</span>
                                </div>
                                    <div>
                                    <input value="<?php echo array_sum(array($row['cicilan_perbulan']));?>" type="text" name="cicilan_perbulan" id="123" class="form-control" readonly id="exampleInputEmail1" aria-describedby="emailHelp">                                         
                                </div>                       
                             
                            </div>
                       
                        
                            <button class="btn btn-primary" id="6" type="submit" name="kirim"><i class="fa fa-paper-plane"></i> Kirim</button>
                            <a class="btn btn-secondary btn-sm"href="index.php"><i class="fa fa-home"></i> kembali</a>
                            <!-- <a href="simpanan.php" class="btn btn-secondary">Kembali</a> -->
                            </form>
                            <?php
                            }
                            ?>
                    
                        
                    </div>  
                </main>  
            </div>
        </div>

        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

        <script src="../js/jquery.number.js"></script>
        <script>
            $('#rupiah').number( true, 0 );
            $('#123').number( true, 0 );
        </script>
                 
        <script>
        // Jika form (id=5) di submit maka (id=6) text berubah atau diganti
        $("#5").submit(function(){
        $("#6").html("<div class='text-center'><div class='spinner-border spinner-border-sm' role='status'><span class='sr-only'>Loading...</span> </div> </div>");
        });
        </script>

    </body>
</html>
