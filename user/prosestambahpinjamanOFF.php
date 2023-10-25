<?php

require "cek.php";
    $conn= open_db();
    $id = $_SESSION['id'];
    $user = mysqli_query($conn, "SELECT * FROM user WHERE id = $id")->fetch_assoc();
    $nama=  $user['nama'];
    $pinjaman = $_POST['pinjaman_anggota'];
    date_default_timezone_set("Asia/Jakarta");
    $tanggal = date('d-m-Y');
    // $bulan = date('Y-m');
    $status = "pending";
    // echo $id;
    // echo $simpananpokok;
    // echo $simpananwajib;
    // echo $simpanansukarela;
    // echo $tanggal;
    // echo $status;
    // echo $password;
    // $sql="SELECT nama FROM user WHERE nama='$nama'";
    // $results=$conn->query($sql);

   //membuang titik dengan menggunakan fungsi replace
    $pinjaman1= str_replace(",", "", $pinjaman);

    if ($pinjaman1 > 0 && $pinjaman1 < 100000) {
        echo "<script>alert('Tidak boleh kurang dari Rp. 100.000'); window.location.href='tambahpinjaman.php'</script>";
        return false;
    }else {

    $sql = mysqli_query($conn, "INSERT INTO pinjaman (id_user, nama, tanggal, pinjaman_anggota, status) VALUES ('$id','$nama', '$tanggal', '$pinjaman1', '$status')");
    }

 //Pilih seluruh data dari user dimana id nya adalah id $id
//  $sql2 = $conn->query("select * from pinjaman where id=$id");
//  $row = mysqli_fetch_assoc($sql2);

        header('location:pinjaman.php?error9');

close_db($conn);
?>

