<?php

require "cek.php";
    
    
$conn= open_db();
$id=$_POST['id_angsuran_upload'];


function upload1()
{
    //mengambil data gambar dan menyimpannya kedalam variabel
    $nameFile = $_FILES['upload_angsuran']["name"];

    $sizeFile = $_FILES["upload_angsuran"]["size"];

    $error = $_FILES["upload_angsuran"]["error"];

    $tmpName = $_FILES["upload_angsuran"]["tmp_name"];

    if ($error === 4) {
        echo "<script>alert('Tidak ada gambar Thumbnail yang dipilih');</script>";
        return false;
    }


if ($sizeFile > 15000000) {
echo "<script>alert('File gambar Thumbnail terlalu besar. Maximal 15mb!'); window.location.href='post-baru'</script>";
return false;
}


    $imageValid = ["jpg", "jpeg", "png"];
    $extImage = explode(".", $nameFile);

    $extImage = strtolower(end($extImage));

    

    $newNameFile = uniqid();

    $newNameFile .= ".";

    $newNameFile .= $extImage;

    // cari jarum dalam jerami
    move_uploaded_file($tmpName, '../img/' . $newNameFile);

    return $newNameFile;
}

$gambar = upload1();

// var_dump($gambar);
// die;

$sql = mysqli_query($conn, "UPDATE `angsuran` SET `upload_angsuran` = '$gambar' WHERE id=$id");


header('location:angsuran.php?error11');

?>


