<?php

require "../koneksi.php";

 
 $conn= open_db();
 $id = $_GET['id'];
//  $id_user = $_GET['id_user'];
 $status = "disetujui";
 $sql= $conn->query ("update pinjaman set status='$status' where id='$id'");
 //Pilih seluruh data dari user dimana id nya adalah id $id
//  $sql2 = $conn->query("select * from user where id=$id_user");
//  $row = mysqli_fetch_assoc($sql2);

 header("location: pinjamananggota.php?error8");

?>

