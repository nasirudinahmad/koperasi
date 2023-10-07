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
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.7.0/css/buttons.dataTables.min.css">
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
                            <li class="breadcrumb-item active">Laporan Harian</li>
                        </ol>
                        <form>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <input type="date" placeholder="dd-mm-yyyy" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                        <table id="table-user" class="table table-striped table-bordered table-sm" style="width:100%">
                            <thead>
                                <tr>
                                    <th>NAME</th>
                                    <th>TANGGAL</th>
                                    <th>SIMPANAN POKOK</th>
                                    <th>SIMPANAN WAJIB</th>
                                    <th>SIMPANAN SUKARELA</th>
                                    <th>Jumlah</th>
                                </tr>
                            </thead>    
                            <tbody>

                                <?php
                                    $no = 1;
                                    $conn= open_db();
                                    $sql = $conn->query("select tanggal, id, id_user, simpanan_pokok, simpanan_wajib, simpanan_sukarela, sum(simpanan_pokok + simpanan_wajib + simpanan_sukarela) AS count from simpanan where status='disetujui' GROUP BY id");
                                    // nampilin data dan data yang dijumlah (sum) dimana status = disetujui dan digouping berdasarkan id
                                    $total=0;
                                    $total1=0;
                                    $total2=0;
                                    $total3=0;
                                    $total4=0;
                                    while ($data=$sql->fetch_assoc()){
                                    $id_user=$data['id_user'];
                                    $id=$data['id'];
                                    // menjumlahkan setiap kolom yang bernama kolom simpanan pokok
                                    $total1+=(int)$data['simpanan_pokok'];
                                    $total2+=(int)$data['simpanan_wajib'];
                                    $total3+=(int)$data['simpanan_sukarela'];
                                    // menjumlahkan data kolom yang di (sum) di line 47 atau mensimpelkan nama
                                    $total4+=(int)$data['count'];
                                    // pilihsemua data dari tabel profil dimana id= id user dari tabel simpanan
                                    $sql2="SELECT * FROM profile WHERE id='$id_user'";
                                    $data2=mysqli_query($conn,$sql2);
                                    // row nampilin data orang hanya satu dari id
                                    $row = mysqli_fetch_assoc($data2);
                                ?>

                                <tr>
                                    <td><?=$row['nama']?></td>
                                    <td><?=$data['tanggal']?></td>
                                    <td><?=$data['simpanan_pokok']?></td>
                                    <td><?=$data['simpanan_wajib']?></td>
                                    <td><?=$data['simpanan_sukarela']?></td>
                                    <td><?= $data['count'];?></td>
                                </tr>
                                <?php } ?> 

                            </tbody>
                            <tfoot>
                            <tr>
                            <th></th>
                            <th>Total</th>
                            <th><?= $total1; ?></th>
                            <th><?= $total2;?></th>
                            <th><?= $total3;?></th>
                            <th><?= $total4;?></th>
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
        <script src="https://cdn.datatables.net/buttons/1.7.0/js/dataTables.buttons.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.html5.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.print.min.js"></script>
         
        <script>
            $(document).ready(function() {
            // $('#table-user').DataTable();
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
            window.location = "persetujuanSA.php";
        });
        }
        });

        $("#1").click(function(){
        $("#1").html("<div class='text-center'><div class='spinner-border spinner-border-sm' role='status'><span class='sr-only'>Loading...</span> </div> </div>");
        });
            
            // $(".btn-danger").click(function(){
            //     $("#pending").show();
            // });
            
           
        $(document).ready(function() {
            $('#table-user').DataTable( {
                dom: 'Bfrtip',
                buttons: [
                    {
                        extend: 'excelHtml5',
                        title: 'Laporan Harian',
                        footer: true
                    },
                    {
                        extend: 'pdfHtml5',
                        title: 'Laporan Harian',
                        footer: true
                    }
                ]
            } );
        } );
        </script>


    </body>
</html>
