<?php

    require "cek.php";
    $conn= open_db();      
    
    $id = $_SESSION['id'];
    $user = mysqli_query($conn, "SELECT * FROM user WHERE id = $id")->fetch_assoc();
    $nama =  $user['nama'];
    $pengambilan_simpanan = $_POST['ambil_simpanan'];

    
    $sql3 = "SELECT sum(simpanan_sukarela) AS simpanan_sukarela FROM simpanan WHERE id_user='$id' and status='disetujui'";
    $data3 = mysqli_query($conn,$sql3);
    $row2 = mysqli_fetch_assoc($data3);
    $total_simpanan_sukarela =(int)$row2['simpanan_sukarela'];

    // $pengambilan = mysqli_query($conn, "SELECT * FROM pengambilan WHERE id_user = '$id' and status='disetujui'")->fetch_assoc();
    // $pengambilan_simpanan1 = $pengambilan['jumlah_pengambilan'];

    // $total_simpanan_sukarela = $total_simpanan - $pengambilan_simpanan1;
    
    
    
    // var_dump($total_simpanan_sukarela);
    // die;
    
    
    date_default_timezone_set("Asia/Jakarta");
    $tanggal = date('Y-m-d');
    // $bulan = date('Y-m');
    $status = "pending";
    

   //membuang titik dengan menggunakan fungsi replace
    $pengambilan1= str_replace(",", "", $pengambilan_simpanan);
 

    if ($pengambilan1 > 0 && $pengambilan1 < 100000) {
        echo "<script>alert('Tidak boleh kurang dari Rp. 100.000'); window.location.href='tambahpengambilan.php'</script>";
        return false;
    }else {

        $sql = mysqli_query($conn, "INSERT INTO pengambilan (id_user, nama, tgl_pengajuan, total_simpanan_sukarela, jumlah_pengambilan, sisa_simpanan_sukarela, status) 
        VALUES ('$id','$nama', '$tanggal', '$total_simpanan_sukarela', '$pengambilan1', '$sisa_simpanan_sukarela', '$status')");

    header('location:pengambilan.php?error18');
    }

        
    
        

    close_db($conn);
?>

