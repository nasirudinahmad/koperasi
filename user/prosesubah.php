<?php
   require "cek.php";
    $conn= open_db();
    $id = $_SESSION['id'];
    $nama = $_POST['nama'];
    $no_tlp = $_POST['no_tlp'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $password = password_hash($password, PASSWORD_DEFAULT);
    // echo $password;
    // $sql="SELECT email FROM user WHERE email='$email'";
    // $results=$conn->query($sql);
    // $sql= mysqli_query($conn, "UPDATE profile SET nama='$nama', no_tlp='$no_tlp', email='$email' where id='$id' ");
    $sql= mysqli_query($conn, "UPDATE user SET nama='$nama', no_tlp='$no_tlp', email='$email', password='$password' where id='$id' ");
   
    header('location:profile.php');
close_db($conn);
?>

