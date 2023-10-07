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
 $status = "pending";
        $sql4=$conn->query ("SELECT * from pinjaman where id='$id_pinjaman'");
        $row4 = mysqli_fetch_assoc($sql4);
        $lama_pinjaman = $row4['lama_pinjaman'];

        $sql4=$conn->query ("SELECT count(*) AS total_angsuran from angsuran where id_pinjaman='$id_pinjaman' and status='disetujui' group by id_pinjaman")->fetch_assoc();
        $total_angsuran = 0;
        if (isset ($sql4['total_angsuran'])){
            $total_angsuran=$sql4['total_angsuran'];
        }

        $total_angsuran = $total_angsuran -1;
        $sisa_lama_pinjaman = $lama_pinjaman - $total_angsuran;



    $sql= $conn->query ("update angsuran set status='$status', sisa_lama_pinjaman=$sisa_lama_pinjaman where id='$id'");
    //  header("location: simpanananggota.php");



    $sql3 = $conn->query("select * from angsuran where id=$id");
    $row1 = mysqli_fetch_assoc($sql3);
    $jumlah = $row1['tagihan_angsuran'];
    $tagihan_angsuran = number_format($jumlah,0,',','.');


    //Pilih seluruh data dari user dimana id nya adalah id $id
    $sql2 = $conn->query("select * from user where id=$id_user");
    $row = mysqli_fetch_assoc($sql2);
    //  print_r($row);
    //  die;

    $email = $row['email'];
    $mail = new PHPMailer;
        $subjek = "Membatalkan Angsuran";
        $pesan = "Angsuran Rp. $tagihan_angsuran dibatalkan silahkan cek pada aplikasi koperasi karena gagal transaksi mohon lampirkan bukti transfer dengan gambar yang jelas";
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
        header("location: angsurananggota.php?error14");
        }
 

?>