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
        <title>Admin</title>
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
                            <li class="breadcrumb-item active">Approved Simpanan</li>
                        </ol>
                        <table id="table-user" class="table table-striped table-bordered table-sm" style="width:100%">
                            <thead>
                                <tr>
                                    <th class="text-center">ID</th>
                                    <th class="text-center" style="width:100px" >#AKSI</th>
                                    <th class="text-center">NAME</th>
                                    <th class="text-center">TANGGAL</th>
                                    <th class="text-center">SIMPANAN POKOK</th>
                                    <th class="text-center">SIMPANAN WAJIB</th>
                                    <th class="text-center">SIMPANAN SUKARELA</th>
                                    <th class="text-center">TAGIHAN SIMPANAN</th>
                                    <th class="text-center" style="width:230px">BUKTI TRANSFER</th>
                                    
                                </tr>
                            </thead>    
                            <tbody>
                                        <?php
                                            $no = 1;
                                            $conn= open_db();
                                            $sql = $conn->query("select * from simpanan");
                                            // nampilin seluruh data sampai perulangan nya selesai
                                            while ($data=$sql->fetch_assoc()){
                                            $id_user=$data['id_user'];
                                            $id=$data['id'];
                                            
                                            // pilihsemua data dari tabel profil dimana id= id user dari tabel simpanan
                                            $sql2="SELECT * FROM user WHERE id='$id_user'";
                                            $data2=mysqli_query($conn,$sql2);
                                            // row nampilin data orang hanya satu dari id
                                            $row = mysqli_fetch_assoc($data2);
                                        ?>

                                        <tr>
                                            <td><?=$row['id']?></td>
                                            <td>                                                                                              
                                                <?php
                                                if ($data['status'] == "pending" ){
                                                ?>
                                                <a class="btn btn-success btn-sm" id="1" href="prosespersetujuansimpanan.php?id=<?=$data['id']?>&id_user=<?=$data['id_user']?>" role="button" ><i class="fas fa-check-circle mr-2"></i>Setujui</a>
                                                <?php }?>
                                                <?php
                                                if ($data['status'] == "disetujui" ){
                                                ?>
                                                <a class="btn btn-danger btn-sm" id="2" href="prosesbatalkansimpanan.php?id=<?=$data['id']?>&id_user=<?=$data['id_user']?>" role="button" ><i class="fa fa-times-circle mr-2"></i>Batalkan</a>
                                                <?php } ?>
                                            </td>
                                            <td><?=$row['nama']?></td>
                                            <td><?=$data['tanggal']?></td>
                                            <td>Rp <?=number_format($data['simpanan_pokok'],'0',',','.')?></td>
                                            <td>Rp <?=number_format($data['simpanan_wajib'],'0',',','.')?></td>
                                            <td>Rp <?=number_format($data['simpanan_sukarela'],'0',',','.')?></td> 
                                            <td>Rp <?=number_format($data['tagihan_simpanan'],'0',',','.')?></td>
                                            <td>
                                                <div class="form-group row">
                                                    <div class='col-sm-6 text-center'>
                                                    <img src="../img/<?=$data['upload_simpanan']?>" width='100' height='80'/>
                                                    </div>
                                                
                                                    <div class='col-sm-6 text-center'>
                                                    <a class="btn btn-outline-success btn-sm" href="../img/<?=$data['upload_simpanan']?>"><i class="fa fa-eye mr-2"></i>Lihat File</a><p></p>
                                                    <a class="btn btn-outline-primary btn-sm" href="../img/<?=$data['upload_simpanan']?>" download><i class="fa fa-download mr-2"></i>Download</a>
                                                    </div>
                                                </div>
                                            </td>                                       
                                            
                                        </tr>

                                        <?php } ?>       
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
             $("#disetujui").hide();
             $("#pending").hide();

            $(".btn-success").click(function(){
                $("#disetujui").show();
                
            });

             $( document ).ready(function() {
            var path = window.location.href;
            if(path.indexOf('error7') >-1 ) {
            Swal.fire({
            title: 'Simpanan Anggota sudah di Setujui',
            text: '',
            icon: 'success',
            confirmButtonText: 'OK'
            
        }).then(function() {
            window.location = "simpanananggota.php";
        });
        }
        });

        $("#1").click(function(){
        $("#1").html("<div class='text-center'><div class='spinner-border spinner-border-sm' role='status'><span class='sr-only'>Loading...</span> </div> </div>");
        });
            
            // $(".btn-danger").click(function(){
            //     $("#pending").show();
            // });  
        </script>
        <script>
            $(document).ready(function() {
            $('#table-user').DataTable();
             } );
             $("#disetujui").hide();
             $("#pending").hide();

            $(".btn-success").click(function(){
                $("#disetujui").show();
                
            });

             $( document ).ready(function() {
            var path = window.location.href;
            if(path.indexOf('error13') >-1 ) {
            Swal.fire({
            title: 'Simpanan Anggota dibatalkan',
            text: '',
            icon: 'success',
            confirmButtonText: 'OK'
            
        }).then(function() {
            window.location = "simpanananggota.php";
        });
        }
        });

        $("#2").click(function(){
        $("#2").html("<div class='text-center'><div class='spinner-border spinner-border-sm' role='status'><span class='sr-only'>Loading...</span> </div> </div>");
        });
            
            // $(".btn-danger").click(function(){
            //     $("#pending").show();
            // });  
        </script>

    </body>
</html>
