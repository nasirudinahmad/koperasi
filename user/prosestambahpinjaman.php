<?php

require "cek.php";
    $conn= open_db();
    if (isset($_POST['proses'])) {
        $pinjaman_anggota =$_POST['pinjaman_anggota'];
        $lama_pinjaman =$_POST['lama_pinjaman'];
        $operator =$_POST['lama_pinjaman'];
        switch ($operator){
            case '6':
            $hasil=$pinjaman_anggota / $lama_pinjaman;
            break;
            case '12':
            $hasil=$pinjaman_anggota / $lama_pinjaman; 
            break;
            case '18':
            $hasil=$pinjaman_anggota / $lama_pinjaman;
            break;
            case '24':
            $hasil=$pinjaman_anggota / $lama_pinjaman;
            break;
        }
        if (isset($hasil)){
            echo "Hasil perhitungan: $pinjaman_anggota $operator $lama_pinjaman = $hasil";
        }
    }
    

    $id = $_SESSION['id'];
    $user = mysqli_query($conn, "SELECT * FROM user WHERE id = $id")->fetch_assoc();
    $nama=  $user['nama'];
    $pinjaman = $_POST['pinjaman_anggota'];
    $lama_pinjaman = $_POST['lama_pinjaman'];
    $cicilan_perbulan=  $_POST['cicilan_perbulan'] != '' ? $_POST['cicilan_perbulan'] : 0;
    
    date_default_timezone_set("Asia/Jakarta");
    $tanggal = date('d-m-Y');
    // $bulan = date('Y-m');
    $status = "pending";
    

   //membuang titik dengan menggunakan fungsi replace
    $pinjaman1= str_replace(",", "", $pinjaman);
    $cicilan_perbulan2= str_replace(",", "", $cicilan_perbulan);

    if ($pinjaman1 > 0 && $pinjaman1 < 100000) {
        echo "<script>alert('Tidak boleh kurang dari Rp. 100.000'); window.location.href='tambahpinjaman.php'</script>";
        return false;
    }else {

    $sql = mysqli_query($conn, "INSERT INTO pinjaman (id_user, nama, tanggal, pinjaman_anggota, lama_pinjaman, cicilan_perbulan, status) 
    VALUES ('$id','$nama', '$tanggal', '$pinjaman1', '$lama_pinjaman', '$cicilan_perbulan2', '$status')");
    
    header('location:pinjaman.php?error9');
    }


        

    close_db($conn);
?>

