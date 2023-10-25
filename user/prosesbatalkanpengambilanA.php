
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
 $id_user = $_GET['id_user'];

 $sql3 = $conn->query("select * from pengambilan where id='$id'");
 $row1 = mysqli_fetch_assoc($sql3);
 $jumlah = $row1['jumlah_pengambilan'];
 $pengambilan = number_format($jumlah,0,',','.');

//   var_dump($pengambilan);
//  die;

 $sql= $conn->query ("DELETE from pengambilan where id='$id'");


//Pilih seluruh data dari user dimana id nya adalah id $id
$sql2 = $conn->query("select * from user where id=$id_user");
$row = mysqli_fetch_assoc($sql2);
$email = $row['email'];
// var_dump($row);
//  die;

    $mail = new PHPMailer;
        $subjek = "Pembatalan Pengambilan Simpanan";
        $pesan = "Pengajuan Pengambilan Simpanan Sukarela Anda Sebesar RP. $pengambilan Sudah Dihapus.";
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
        header('location:pengambilan.php?error22');
        }
 

?>