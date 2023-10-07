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

session_start();
 $conn= open_db();
 
 $id_user= $_GET['id_user'];
 $id = $_GET['id'];
//  require "cek.php";
//  $id = $_SESSION['id'];
 

// // $id_pengambilan= $_GET['id'];
// $sql4=$conn->query ("SELECT * from pengambilan where id_user='$id' and status='disetujui'");
// $row4 = mysqli_fetch_assoc($sql4);



// $status = "disetujui";

//  $sql= $conn->query ("update pengambilan set status='$status', sisa_simpanan_sukarela='$sisa_simpanan_sukarela' where id='$id'");


// print_r($id_user);
// print_r($id);
// die;  


 
//  $sql= $conn->query ("update pengambilan set status='$status' where id='$id'");

$sql3 = $conn->query("select * from pengambilan where id='$id'");
$row1 = mysqli_fetch_assoc($sql3);
// $id_user=$row1['id_user'];
$total_simpanan = $row1['total_simpanan_sukarela'];
$jumlah = $row1['jumlah_pengambilan'];
$pengambilan = number_format($jumlah,0,',','.');


// $sql5 = $conn->query("select * from pengambilan where id='$id' and status='disetujui'");
// $row2 = mysqli_fetch_assoc($sql5);
// $jumlah_disetujui=0;
// $jumlah_disetujui = $row2['jumlah_pengambilan'];
// $jumlah_disetujui= $jumlah_disetujui;

// $sql4=$conn->query ("SELECT count(*) AS jumlah_pengambilan from pengambilan where id='$id' and status='disetujui'");
$sql4 = "SELECT sum(jumlah_pengambilan) AS jumlah_pengambilan FROM pengambilan WHERE id_user='$id_user' and status='disetujui'";
    $data3 = mysqli_query($conn,$sql4);
    $row2 = mysqli_fetch_assoc($data3);
    $jumlah_disetujui =(int)$row2['jumlah_pengambilan'];
    // $jumlah_disetujui = $jumlah_disetujui+

$total_simpanan_sukarela = (int)$total_simpanan - (int)$jumlah_disetujui;
$sisa_simpanan_sukarela = (int)$total_simpanan_sukarela - (int)$jumlah;

// print_r($total_simpanan);
// die;  

$status = "disetujui";

 $sql= $conn->query ("update pengambilan set status='$status', total_simpanan_sukarela='$total_simpanan_sukarela', sisa_simpanan_sukarela='$sisa_simpanan_sukarela' where id='$id'");



 //Pilih seluruh data dari user dimana id nya adalah id $id
 $sql2 = $conn->query("select * from user where id=$id_user");
 $row = mysqli_fetch_assoc($sql2);

 $email = $row['email'];
    $mail = new PHPMailer;
        $subjek = "Tambahan Pinjaman";
        $pesan = "Pengambilan sukarela RP. $pengambilan sudah disetujui silahkan cek pada aplikasi koperasi";    
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
        header("location: pengambilansukarela.php?error16");
        }
 

?>