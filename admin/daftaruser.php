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
                            <li class="breadcrumb-item active">Daftar User</li>
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
                        <table id="table-user" class="table table-striped table-bordered table-sm" style="width:100%">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>NAME</th>
                                    <th>EMAIL</th>
                                    <th>STATUS</th>
                                    <th>ACTION</th>
                                    <th>PASSWORD</th>
                                </tr>
                            </thead>    
                            <tbody>
                                 <?php
                                            $no = 1;
                                            $conn= open_db();
                                            $sql = $conn->query("select * from user");
                                            while ($data=$sql->fetch_assoc()){
                                        ?>

                                        <tr>
                                            <td><?=$data['id']?></td>
                                            <td><?=$data['nama']?></td>
                                            <td><?=$data['email']?></td>
                                            <td><?=$data['status']?></td>
                                            <td>                                                                                              
                                                <?php
                                                if ($data['status'] == "aktif" ){
                                                ?>
                                                <a class="btn btn-danger btn-sm" onclick="return confirm('Anda Yakin Akan Menon Aktifkan Akun..!!!')" href="prosesnonaktifanggota.php?id=<?=$data['id']?>" role="button" ><i class="fas fa-user-times mr-2"></i>Non Aktifkan</a>  
                                                <?php } else {
                                                ?>
                                                <a class="btn btn-success btn-sm" href="prosesaktifanggota.php?id=<?=$data['id']?>" role="button" ><i class="fas fa-user-check mr-2"></i>Aktifkan</a>
                                                
                                                <?php } ?>
                                            </td>
                                            <td>
                                                <a class="btn btn-success btn-sm" href="ubahpassword.php?id=<?=$data['id']?>" role="button"><i class="fa fa-edit"></i> Ubah</a>
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
        <script>
            $(document).ready(function() {
            $('#table-user').DataTable();
             } );
             $("#aktif").hide();
             $("#pending").hide();

            $(".btn-success").click(function(){
                $("#aktif").show();
                
            });
            
            // $(".btn-danger").click(function(){
            //     $("#pending").show();
            // });  
        </script>

    </body>
</html>
