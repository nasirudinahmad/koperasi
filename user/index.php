<?php
require "cek.php";
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="shortcut icon" href="../img/logo.png">
        <title>Dashboard</title>
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
                        <h1 class="mt-2"></h1>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item active">Dashboard</li>
                            </ol>
                                <?php
                                    $conn= open_db();
                                    $id_user = $_SESSION['id'];
                                    $jmlpendaftar = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM user"));
                                    $jmlaktif = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM user WHERE status = 'aktif'"));
                                    $jmltransaksi = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM simpanan"));
                                    $jmltransaksipinjaman = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM pinjaman"));

                                ?>
                        <div class="row">
                            <div class="col-xl-3 col-md-4">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">Simpanan Wajib</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <?php
                                            $sql = $conn->query("select SUM(simpanan_wajib) AS jml_simpananwajib from simpanan where id_user='$id_user' and status='disetujui'");
                                            while ($data=$sql->fetch_assoc()){
                                            echo "Rp. " . number_format($data['jml_simpananwajib'],'0',',','.');
                                            }
                                        ?>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-4">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Simpanan Sukarela</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <?php
                                            $sql = $conn->query("select SUM(simpanan_sukarela) AS jml_simpanansukarela from simpanan where id_user='$id_user' and status='disetujui'");
                                            while ($data=$sql->fetch_assoc()){
                                            echo "Rp. " . number_format($data['jml_simpanansukarela'],'0',',','.');
                                            }
                                        ?>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-4">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Jumlah Anggota Aktif</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <?= $jmlaktif; ?> User
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="col-xl-3 col-md-4">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Total Transaksi</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <?= $jmltransaksi; ?>
                                    </div>
                                </div>
                            </div> -->
                            <div class="col-xl-3 col-md-4">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">Yang Mengajukan Pinjaman</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <?= $jmltransaksipinjaman; ?> Pengajuan
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area mr-1"></i>
                                        Area Chart Example
                                    </div>
                                        <div class="card-body"><canvas id="myAreaChart" width="10%" height="40"></canvas>
                                        </div>
                                </div>
                            </div>
                            
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar mr-1"></i>
                                        Bar Chart Example
                                    </div>
                                        <div class="card-body"><canvas id="myBarChart" width="0%" height="40"></canvas>
                                        </div>
                                </div>
                            </div>
                        </div>
            </div>
        </div>
    </body>
</html>
