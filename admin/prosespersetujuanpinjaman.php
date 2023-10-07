<?php
require "../koneksi.php";
require_once "../PHPMailer/src/PHPMailer.php";
require_once "../PHPMailer/src/Exception.php";
require_once "../PHPMailer/src/OAuth.php";
require_once "../PHPMailer/src/POP3.php";
require_once "../PHPMailer/src/SMTP.php";
require_once "../dompdf/dompdf/autoload.inc.php";

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

 
 $conn= open_db();
 $id = $_GET['id'];
//  $id_user = $_GET['id_user'];
 $status = "disetujui";
 
 $sql= $conn->query ("update pinjaman set status='$status' where id='$id'");

 $sql3 = $conn->query("select * from pinjaman where id=$id");
$row1 = mysqli_fetch_assoc($sql3);
$id_user=$row1['id_user'];
$jumlah = $row1['pinjaman_anggota'];
$pinjaman = number_format($jumlah,0,',','.');

// print_r($row1);
// die; 

 //Pilih seluruh data dari user dimana id nya adalah id $id
 $sql2 = $conn->query("select * from user where id=$id_user");
 $row = mysqli_fetch_assoc($sql2);

 $email = $row['email'];
    $mail = new PHPMailer;
        $subjek = "Tambahan Pinjaman";
        $pesan = "Pinjaman Rp. $pinjaman sudah disetujui silahkan cek pada aplikasi koperasi";    
        // $dompdf = "tes";

        //Enable SMTP debugging.
        $mail->SMTPDebug = 0;
        //Set PHPMailer to use SMTP.
        $mail->isSMTP();
        //Set SMTP host name
        $mail->Host = "smtp.gmail.com"; //host mail server
        //Set this to true if SMTP host requires authentication to send email
        $mail->SMTPAuth = true;
        //Provide username and password
        $mail->Username = "nasirsuganda2@gmail.com";   //nama-email smtp
        $mail->Password = "ausbpwwgjvmgczpx";           //password email smtp
        //If SMTP requires TLS encryption then set it
        $mail->SMTPSecure = "ssl";
        //Set TCP port to connect to
        $mail->Port = 465;

        $mail->From = "nasirsuganda2@gmail.com"; //email pengirim
        $mail->FromName = "KOPERASI"; //nama pengirim

        $mail->addAddress($email); //email penerima

        $mail->isHTML(true);

        $mail->Subject = $subjek; //subject
        $mail->Body    = $pesan; //isi email
        
        $mail->AltBody = "PHP mailer"; //body email

        if(!$mail->send())
        {
        echo "Mailer Error: " . $mail->ErrorInfo;
        }
        else
        {
        header("location: pinjamananggota.php?error8");
        }
 

?>