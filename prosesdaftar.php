<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require "koneksi.php";
require_once "PHPMailer/src/PHPMailer.php";
require_once "PHPMailer/src/Exception.php";
require_once "PHPMailer/src/OAuth.php";
require_once "PHPMailer/src/POP3.php";
require_once "PHPMailer/src/SMTP.php";
// require_once "dompdf/dompdf/autoload.inc.php";


$conn= open_db();


        function upload1()
        {
            $nameFile = $_FILES["foto_ktp"]["name"];

            $sizeFile = $_FILES["foto_ktp"]["size"];

            $error = $_FILES["foto_ktp"]["error"];

            $tmpName = $_FILES["foto_ktp"]["tmp_name"];

            if ($error === 4) {
                echo "<script>alert('Tidak ada gambar Thumbnail yang dipilih');</script>";
                return false;
            }


    if ($sizeFile > 4000000) {
        echo "<script>alert('File gambar Thumbnail terlalu besar. Maximal 4mb!'); window.location.href='post-baru'</script>";
        return false;
    }


            $imageValid = ["jpg", "jpeg", "png"];
            $extImage = explode(".", $nameFile);

            $extImage = strtolower(end($extImage));

            

            $newNameFile = uniqid();

            $newNameFile .= ".";

            $newNameFile .= $extImage;

            // cari jarum dalam jerami
            move_uploaded_file($tmpName, 'img/' . $newNameFile);

            return $newNameFile;
        }


        
if(isset($_POST['daftar'])){
    $nama = strtolower($_POST["nama"]);
    $nik = strtolower($_POST["nik"]);
    $tgl_lahir = strtolower($_POST["tgl_lahir"]);
    $no_tlp = strtolower($_POST["no_tlp"]);
    $email = strtolower($_POST["email"]);
    $level = "user";
    $status = "pending";
    $password = password_hash($_POST["password"], PASSWORD_DEFAULT);


    $result = mysqli_query($conn, "SELECT email FROM user WHERE email = '$email'");

    if (mysqli_fetch_assoc($result)) {
        header('location:register.php?error2');
        return false;
    }

    $gambar = upload1();


    $sql = mysqli_query($conn, "INSERT INTO user (nama, nik, foto_ktp, tgl_lahir, no_tlp, email, password, level , status) VALUES ('$nama','$nik','$gambar', '$tgl_lahir', '$no_tlp', '$email', '$password', '$level','$status')");

    // mysqli_query($conn, "INSERT INTO profile (nama, no_tlp, email) values('$nama','$no_tlp','$email')");



    // phpmailer

    $mail = new PHPMailer;
        $subjek = "INVOICE CUSTOMER";
    $pesan = "<br><br><center><h3>INVOICE CUSTOMER</h3></center> <br><br><br> <p> Halo <strong><?= $nama?></strong>, Silakan lakukan pembayaran Simpanan Pokok untuk aktivasi akun Anda. </p><br><br> <center> Jumlah : <b>Rp 75.000</b></center>";
    
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
            header('location:register.php?error3');
        // header('location:simpanan.php?error6');
        }
    
    
    // end phpmailer



    
}




$results=$conn->query($sql);
close_db($conn);





?>
