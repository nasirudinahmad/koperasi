<?php
require "../koneksi.php";
session_start();
if($_SESSION['level'] !="user"){
    header("location: ../login.php");

}

?>