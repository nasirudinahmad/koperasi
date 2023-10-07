<?php
require "koneksi.php";
session_start();
$conn= open_db();

if(isset($_POST['login'])){
    $email=mysqli_real_escape_string($conn,$_POST['email']);
    $password=mysqli_real_escape_string($conn,$_POST['password']);
    $sql="SELECT * FROM user WHERE email='$email'";
    
    $data=mysqli_query($conn,$sql);
    $numrows=mysqli_num_rows($data);
    $row = mysqli_fetch_assoc($data);
    $passworddb = $row['password'];
    $status= $row['status'];
    $level = $row['level'];
    $id = $row['id'];

    if($numrows==1){
        if(password_verify($password, $passworddb) && $level == "admin"){
            $_SESSION['level'] = "admin";
            $_SESSION['id'] = $id;
            header("location: admin/index.php");
        } else if (password_verify($password, $passworddb) && $level == "user" && $status == "aktif"){
            $_SESSION['level'] = "user";
            $_SESSION['id'] = $id;
            header("location: user/index.php");
        }else {
            header("location:login.php?error4");
            // echo "Password Anda Salah atau Akun Anda Masih pending silahkan cek Email";
            echo "<a href='https://mail.google.com/' target='_blank'>Cek Email</a>";
        }
    }else {
        header("location:login.php?error");
    }
}

$results=$conn->query($sql);
close_db($conn);

?>