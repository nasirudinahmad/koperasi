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
        <title>Pengambilan</title>
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
                            <li class="breadcrumb-item active">Pengambilan</li>
                        </ol>
                        <div class="alert alert-warning alert-dismissible fade show" role="alert" id="aktif">
                            <strong>Proses Kirim Berkas!</strong> Mohon Tunggu!
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
                        <a class="btn btn-primary mb-2" href="tambahpengambilan.php"><i class="fa fa-plus-square"></i> Tambah Ambil Simpanan</a>
                        <table id="table-pinjaman" class="table table-striped table-bordered table-sm" style="width:100%">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>ID USER</th>
                                    <th>TANGGAL</th>
                                    <th>TOTAL SIMPANAN SUKARELA</th>
                                    <th>AMBIL SIMPANAN SUKARELA</th>   
                                    <th>SISA SIMPANAN SUKARELA</th> 
                                    <th>STATUS</th>  


                                </tr>
                            </thead>    
                            <tbody>
                                 <?php
                                            $id_user=$_SESSION['id'];
                                            $no = 1;
                                            $total1=0;
                                            $total2=0;
                                            $jumlah_pengambilan=0;
                                            $conn= open_db();
                                            $sql = $conn->query("select * from pengambilan where id_user='$id_user' and status='disetujui'");
                                            while ($data=$sql->fetch_assoc()){
                                                $total1 = $data['total_simpanan_sukarela'];
                                                // $total1+=(int)$data['simpanan_sukarela'];
                                                $jumlah_pengambilan = ['jumlah_pengambilan'];
                                                // $total2 = (int)$total1 - (int)$jumlah_pengambilan;
                                            
                                        ?>

                                        <tr>
                                            <td><?=$data['id']?></td>
                                            <td><?=$data['id_user']?></td>
                                            <td><?=$data['tgl_pengajuan']?></td>                                            
                                            <th>RP
                                                <?php
                                                $sql3="SELECT sum(simpanan_sukarela) AS count FROM simpanan WHERE id_user='$id_user' and status='disetujui'";
                                                $data3=mysqli_query($conn,$sql3);
                                                $row2 = mysqli_fetch_assoc($data3);                                                
                                                echo number_format($row2['count'],'0',',','.'); 
                                                // print_r($row2);
                                                ?></th> 
                                            <td>RP <?= number_format($data['jumlah_pengambilan'],'0',',','.')?></td>
                                            <td>RP <?= number_format($data['sisa_simpanan_sukarela'],'0',',','.')?></td>                                    
                                            <td><?=$data['status']?></td>
                                        </tr>
                                    <?php } 
                                    ?>
                                    
    
                            </tbody>
                        
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
            if(path.indexOf('error18') >-1 ) {
            Swal.fire({
            title: 'Permintaan Pengambilan Simpanan Sudah Terkirim',
            text: 'Mohon Menunggu Konfirmasi Selanjutnya',
            icon: 'success',
            confirmButtonText: 'OK'
            
        }).then(function() {
            window.location = "pengambilan.php";
        });
        }
        }); 
        </script>
        

    </body>
</html>
