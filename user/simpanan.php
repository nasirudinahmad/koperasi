<?php
require "cek.php";
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.min.css">
        <link rel="shortcut icon" href="../img/logo.png">
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Simpanan</title>
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
                        <ol class="breadcrumb mt-2 mb-2">
                            <li class="breadcrumb-item active">Simpanan</li>
                        </ol>
                        <div class="alert alert-warning alert-dismissible fade show" role="alert" id="aktif">
                            <strong>Proses kirim email!</strong> Mohon Tunggu!
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="alert alert-warning alert-dismissible fade show" role="alert" id="pending">
                            <strong>Proses Pending!</strong> Mohon Tunggu.
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <a class="btn btn-primary mb-2" href="tambahsimpanan.php"><i class="fa fa-plus-square"></i> Tambah Simpanan</a>
                        <table id="table-user" class="table table-striped table-bordered table-sm" style="width:100%">
                            <thead>
                                <tr>
                                    <th class="text-center">ID</th>
                                    <th class="text-center">TANGGAL</th>
                                    <th class="text-center">SIMPANAN POKO</th>
                                    <th class="text-center">SIMPANAN WAJIB</th>
                                    <th class="text-center">SIMPANAN SUKARELA</th>
                                    <th class="text-center">TAGIHAN SIMPANAN</th>
                                    <th class="text-center">STATUS</th>
                                    <th class="text-center">UPLOAD BUKTI TRANSFER</th>
                                </tr>
                            </thead>    
                            <tbody>
                                 <?php
                                            $id_user=$_SESSION['id'];
                                            $no = 1;
                                            $total1=0;
                                            $total2=0;
                                            $total3=0;
                                            $conn= open_db();
                                            $sql = $conn->query("select * from simpanan where id_user='$id_user'");
                                            while ($data=$sql->fetch_assoc()){
                                            $total1+=(int)$data['simpanan_pokok'];
                                            $total2+=(int)$data['simpanan_wajib'];
                                            $total3+=(int)$data['simpanan_sukarela'];
                                            // print_r($data);
                                        ?>

                                        

                                        <tr>
                                            <td><?=$data['id']?></td>
                                            <td><?=$data['tanggal']?></td>
                                            <td>Rp <?=number_format($data['simpanan_pokok'],'0',',','.')?></td>
                                            <td>Rp <?=number_format($data['simpanan_wajib'],'0',',','.')?></td>
                                            <td>Rp <?=number_format($data['simpanan_sukarela'],'0',',','.')?></td>
                                            <td>Rp <?=number_format($data['tagihan_simpanan'],'0',',','.')?></td>
                                            <td><?=$data['status']?></td>
                                            <td><form method="post" enctype="multipart/form-data" action="uploadprosessimpanan.php">
                                            <div class="form-group row">
                                                <div class='col-sm-8'>
                                                <Input type="file" name="upload_simpanan" class="form-control">
                                                </div>
                                                    <input type="hidden" name="id_simpanan_upload" value="<?=$data['id']?>">
                                                <div class='col-sm-4'>
                                                <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-upload"></i>Upload</span>
                                                </div>
                                                <!-- <img src="file" id="preview" class="img-thumbnail"> -->  
                                            </div>
                                            </form>
                                            </td>
                                        </tr>
                                    <?php } 
                                    ?>
                                    
    
                            </tbody>
                            <tfoot>
                            <tr>
                            <th></th>
                            <th>Total</th>
                            <th>Rp <?= number_format($total1,'0',',','.')?></th>
                            <th>Rp <?= number_format($total2,'0',',','.')?></th>
                            <th>Rp <?= number_format($total3,'0',',','.')?></th>
                            </tr>
                            </tfoot>
                        </table>
                    </div>  
                </main>  
            </div>
        </div>

        <script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap4.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
        <script>
            $(document).ready(function() {
            $('#table-user').DataTable();
             } );
             $("#aktif").hide();
             $("#pending").hide();

            $(".btn-success").click(function(){
                $("#aktif").show();
                
            });

         $( document ).ready(function() {
            var path = window.location.href;
            if(path.indexOf('error6') >-1 ) {
            Swal.fire({
            title: 'Tagihan simpanan sudah dikirimkan ke Email Anda',
            text: 'Silahkan membayar sesuai tagihan',
            icon: 'success',
            confirmButtonText: 'OK'
            
        }).then(function() {
            window.location = "simpanan.php";
        });
        }
        }); 
        </script>

         <script>
        $( document ).ready(function() {
            var path = window.location.href;
            if(path.indexOf('error12') >-1 ) {
            Swal.fire({
            title: 'Upload Bukti Transfer Simpanan Berhasil',
            text: 'akan segera kami proses',
            icon: 'success',
            confirmButtonText: 'OK'
            
        }).then(function() {
            window.location = "simpanan.php";
        });
        }
        }); 
        </script>
        

    </body>
</html>
