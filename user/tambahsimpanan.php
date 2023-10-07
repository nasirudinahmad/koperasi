<?php
require "cek.php";
$conn= open_db();
$id = $_SESSION['id'];
$simpanan = mysqli_query($conn, "SELECT * FROM simpanan WHERE id_user = $id and status = 'disetujui' and simpanan_pokok = 75000")->fetch_assoc();
// var_dump ($simpanan);
// die;

$simpananpokok=false;
//ketika simpanan id nya ada atau simpanan pokoknya disetujui atau benar
if (isset($simpanan['id'] )) {
    $simpananpokok= true;

}

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
        <!-- <script type="text/javascript" src="../js/my.js"></script> -->
        
        <!-- right text input -->
        <!-- <link rel="stylesheet" type="text/css" href="../css/style.css"> -->
        
        <title>Tambah Simpanan</title>
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
                            <li class="breadcrumb-item active">Transaksi Simpanan</li>
                        </ol>       
                
                    <form class="col-md-4" id="5" action="prosestambahsimpanan.php" method="POST">
                       <?php if ($simpananpokok == false):?>
                        <label for="exampleInputEmail1">Simpanan Pokok</label>
                        <div class="input-group flex-nowrap mb-4">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="as">Rp</span>                                
                            </div>                              
                                <select name="simpananpokok" id="rupiah1" class="form-control price price_1">
                                    <option value="">--Pilih--</option>
                                    <option value="75000">75.000</option>
                                </select>                         
                                <!-- <input type="text" inputmode="numeric" placeholder="0" name="simpananpokok" class="form-control" id="rupiah1"> -->
                                <!-- <input type="text" id="inputku" name="simpananpokok" class="form-control price price_1" onkeydown="return numbersonly(this, event);" onkeyup="javascript:tandaPemisahTitik(this);">        -->
                            </div>
                            <?php else:  ?>
                            <input type="hidden" value='0'>
                            <?php endif ?>
                            
                        <!-- <label for="exampleInputEmail1">Simpanan Pokok</label>
                        <div class="input-group flex-nowrap mb-4">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="as">Rp</span>                          
                            </div> 
                                <select name="simpananpokok2" id="rupiah11" class="form-control price price_1">
                                 
                                <option value="">Sudah Bayar</option> 

                                </select> 
                        </div>        -->


                        <label for="exampleInputEmail1">Simpanan Wajib</label>
                        <div class="input-group flex-nowrap mb-4">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="as">Rp</span>
                            </div>
                            <select name="simpananwajib" id="rupiah2" class="form-control price price_1">
                                <option value="">--Pilih--</option>
                                <option value="25000">25,000</option>
                            </select>

                            <!-- <input  type="text" inputmode="numeric" placeholder="0" name="simpananwajib" class="form-control price price_1" id="rupiah2"> -->

                            <!-- <input type="text" id="b" name="simpananwajib" class="form-control price price_1" onkeydown="return numbersonly(this, event);" onkeyup="javascript:tandaPemisahTitik(this);"> -->
                            <!-- <small class="text-danger" id="coba"></small>
                            <script>
                                $('#simpanan-wajib').on('keyup', function () {
                                    if ($('#simpanan-wajib').val() < 25000) {
                                        $('#coba').text("kurang");
                                    }else{
                                        $('#coba').text('');
                                    }
                                })
                            </script> -->
                        </div>

                        <label for="exampleInputEmail1">Simpanan Sukarela</label>
                        <div class="input-group flex-nowrap mb-4">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="as">Rp</span>
                            </div>
                            <input  type="text" inputmode="numeric" placeholder="0" name="simpanansukarela" class="form-control" id="rupiah3" aria-describedby="as">
                            <!-- <input type="text" id="b" name="simpanansukarela" class="form-control price price_1" onkeydown="return numbersonly(this, event);" onkeyup="javascript:tandaPemisahTitik(this);"> -->
                        </div>
                                
                       
                        
                        <button class="btn btn-primary" id="6" type="submit" name="kirim"><i class="fa fa-paper-plane"></i> Kirim</button>
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
            // $('#rupiah1').number( true, 0 );
            // $('#rupiah2').number( true, 0 );
            $('#rupiah3').number( true, 0 );
        </script>
        
        
        <script>
        // Jika form (id=5) di submit maka (id=6) text berubah atau diganti
        $("#5").submit(function(){
        $("#6").html("<div class='text-center'><div class='spinner-border spinner-border-sm' role='status'><span class='sr-only'>Loading...</span> </div> </div>");
        });
        </script>

    </body>
</html>
