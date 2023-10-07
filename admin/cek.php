<?php
require"../koneksi.php";
session_start();
if($_SESSION['level'] !="admin"){
    header("location:../login.php");

}

?>