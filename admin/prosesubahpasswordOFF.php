<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

// require "../koneksi.php";

require_once "../PHPMailer/src/PHPMailer.php";
require_once "../PHPMailer/src/Exception.php";
require_once "../PHPMailer/src/OAuth.php";
require_once "../PHPMailer/src/POP3.php";
require_once "../PHPMailer/src/SMTP.php";
 
// $conn= open_db();
// $id_user = $_GET['id_user'];
// $password = password_hash($_POST["password"], PASSWORD_DEFAULT);
// $sql= $conn->query ("update user set password='$password' where id='$id'");

    require "cek.php";
    $conn= open_db();
    $id = $_SESSION['id'];

    $password = $_POST ['password'];
    $password = password_hash($password, PASSWORD_DEFAULT);
    // echo $password;
    // $sql="SELECT email FROM user WHERE email='$email'";
    // $results=$conn->query($sql);
    // $sql= mysqli_query($conn, "UPDATE profile SET nama='$nama', no_tlp='$no_tlp', email='$email' where id='$id' ");
    $sql= mysqli_query($conn, "UPDATE user SET password='$password' where id='$id'");
   
    // header('location:daftaruser.php');
// close_db($conn);

//Pilih seluruh data dari user dimana id nya adalah id $id
$sql2 = $conn->query("select * from user where id=$id");
$row = mysqli_fetch_assoc($sql2);
$email = $row['email'];
    $mail = new PHPMailer;
        $subjek ="Reset Akun Koperasi";
        $pesan = "<html>
                    <body>   
                        <center><b>COSTUMER SERVICE</b></center>
                        
                        <center><b>Id_User     : $id </b></center> 
                        <center><h3 style='color:rgb(23, 23, 100)'>Password berhasil di RESET silahkan Masukan Password Baru</h3></center>
                        <center><h1 style='color:red' id='dengan-rupiah'><b>$password</b></h1></center>
                    
                        <center><p style = 'font-family:Brush Script MT;'><b>TERIMAKASIH</b></p></center>
                        <center><h2><b>Koperasi Lebaksari</b></h2> </center>
                    </body>
                </html>";

        //Enable SMTP debugging.
        // $mail->SMTPDebug = 3;
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
        header("location: daftaruser.php");
        }
 

?>