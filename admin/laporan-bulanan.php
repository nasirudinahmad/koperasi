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
                            <li class="breadcrumb-item active" >Laporan Bulanan</li>
                        </ol>
                        <form action="">
                        <div class="form-group row">
                            <label for="inputbulan" class="col-form-label pl-3">Bulan</label>
                            <div class="col-sm-2">
                            <select class="form-control" name="bulan" id="exampleFormControlSelect1">
                            <?php
                            $conn= open_db();
                            $sql1 = $conn->query("SELECT DISTINCT bulan FROM simpanan");
                            while ($data=$sql1->fetch_assoc()){
                                $bulan1 = $data['bulan'];
                                $bulan2 = (int)substr($bulan1, 5, 2);
                                $tahun = substr($bulan1, 0, 4);
                                $bulan = array(1=>'Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember');
                                $text = $bulan[$bulan2]." ".$tahun;
                                echo "<option value='$bulan1'>$text</option>";
                            }
                            ?>
                            </select>
                            </div>
                        <button type="submit" class="btn btn-primary mb-2"><i class="fas fa-eye"></i> Filter</button>
                        </div>

                        </form>
                        <table id="table-user" class="table table-striped table-bordered table-sm" style="width:100%">
                            <thead>
                                <tr>
                                    <th>ID</th>
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
                                            error_reporting(0);
                                            $bulan = $_GET['bulan'];
                                            $sql = $conn->query("select tanggal, id, id_user, simpanan_pokok, simpanan_wajib, simpanan_sukarela, sum(simpanan_pokok + simpanan_wajib + simpanan_sukarela) AS count from simpanan where bulan='$bulan' AND status='disetujui' GROUP BY id");
                                            // nampilin data dan data yang dijumlah (sum) dimana status = disetujui dan digrouping berdasarkan id
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
                                            $sql2="SELECT * FROM user WHERE id='$id_user'";
                                            $data2=mysqli_query($conn,$sql2);
                                            // row nampilin data orang hanya satu dari id
                                            $row = mysqli_fetch_assoc($data2);
                                        ?>

                                        <tr>
                                            <td><?=$row['id']?></td>
                                            <td><?=$row['nama']?></td>
                                            <td><?=$data['tanggal']?></td>
                                            <td>Rp <?=number_format($data['simpanan_pokok'],'0',',','.')?></td>
                                            <td>Rp <?=number_format($data['simpanan_wajib'],'0',',','.')?></td>
                                            <td>Rp <?=number_format($data['simpanan_sukarela'],'0',',','.')?></td>
                                            <td>Rp <?=number_format($data['count'],'0',',','.')?></td>
                                        </tr>

                                        <?php } ?>       
                            </tbody>
                            <tfoot>
                            <tr>
                            <th></th>
                            <th></th>
                            <th>Total</th>
                            <th>Rp <?=number_format($total1,'0',',','.')?></th>
                            <th>Rp <?=number_format($total2,'0',',','.')?></th>
                            <th>Rp <?=number_format($total3,'0',',','.')?></th>
                            <th>Rp <?=number_format($total4,'0',',','.')?></th>
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
            
           
$(document).ready(function() {
    $('#table-user').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'Laporan Bulanan',
                footer: true
            },
            {
                extend: 'pdfHtml5',
                title: 'Laporan Bulanan',
                footer: true
            }
        ]
    } );
} );
        </script>


    </body>
</html>
