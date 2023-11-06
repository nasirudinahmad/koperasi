<?php

require "cek.php";
    
    
$conn= open_db();
$id=$_POST['id_simpanan_upload'];


function upload1()
{
    //mengambil data gambar dan menyimpannya kedalam variabel
    $nameFile = $_FILES['upload_simpanan']["name"];

    $sizeFile = $_FILES["upload_simpanan"]["size"];

    $error = $_FILES["upload_simpanan"]["error"];

    $tmpName = $_FILES["upload_simpanan"]["tmp_name"];

    if ($error === 4) {
        echo "<script>alert('Tidak ada file yang dipilih');</script>";
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

$sql = mysqli_query($conn, "UPDATE `simpanan` SET `upload_simpanan` = '$gambar' WHERE id=$id");


header('location:simpanan.php?error12');

?>


