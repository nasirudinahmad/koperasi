<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require_once "../PHPMailer/src/PHPMailer.php";
require_once "../PHPMailer/src/Exception.php";
require_once "../PHPMailer/src/OAuth.php";
require_once "../PHPMailer/src/POP3.php";
require_once "../PHPMailer/src/SMTP.php";
require "cek.php";


    $conn= open_db();
    $id_pinjaman = $_POST['id_pinjaman'];
    $id = $_SESSION['id'];
    $total_angsuran = $_POST['cicilan_perbulan'];


    
    // var_dump($row2);
    // die;
   
    
    
    // echo $data;
    // die ();



    date_default_timezone_set("Asia/Jakarta");
    $tanggal = date('Y-m-d');
    // $bulan = date('Y-m');
    $status = "pending";
    

    //membuang titik dengan menggunakan fungsi replace
    $angsuran1= str_replace(",", "", $total_angsuran);

    if ($angsuran1 > 0 && $angsuran1 < 10000) {
        echo "<script>alert('Tidak boleh kurang dari Rp. 10.000'); window.location.href='tambahangsuran.php'</script>";
        return false;
    }else {

        $tagihanID = mt_rand(10000000,99999999);
        $tigabelakang = mt_rand(100,999);
        $total = $angsuran1;
        $totalFormatted = number_format($total,0,',','.');
        $jumlah = $angsuran1 + $tigabelakang;
        $jumlahFormatted = number_format($jumlah,0,',','.');
        

        $sql = mysqli_query($conn, "INSERT INTO angsuran (id_user, id_pinjaman, total_angsuran, tagihan_angsuran, tanggal, status) 
        VALUES ('$id', '$id_pinjaman', '$angsuran1', '$jumlah', '$tanggal', '$status')");
    }
    




 //Pilih seluruh data dari user dimana id nya adalah id $id
 $sql2 = $conn->query("select * from user where id=$id");
 $row = mysqli_fetch_assoc($sql2);
 $email = $row['email'];
    $mail = new PHPMailer;
        $subjek = "Rincian Tagihan";
        $pesan = "<html>
                    <body>   
                        <center><b>CUSTOMER INVOICE</b></center>
                        <center><h3 style='color:rgb(23, 23, 100)'>Tagihan sudah dibuat silahkan melakukan pembayaran</h3></center>
                        <center><b>Id_User     : $id </b></center> 
                        <center><h3 style='color:rgb(23, 23, 100)'><b>No. KL-$tagihanID</b></h3></center>
                        
                        <center><h4>Rincian Tagihan :</h4></center>
                        <center>SP  : Rp. $angsuran1 </center> <br>                                                    
                        <center>Total : <b>Rp $totalFormatted</b> (Kode Unik : <b>$tigabelakang </b>)</center>
                        <center><h3>Jumlah yang harus dibayar</h3> </center>
                        <center><h1 style='color:red' id='dengan-rupiah'><b>Rp. $jumlahFormatted</b></h1></center>
                    
                        <center><i>Transfer dapat dilakukan melalui Bank berikut :</i> </center>    
                        <center><i>a/n</i> <b>Nasirudin Ahmad</b></center>
                        <center><h3>Bank Mandiri</h3> </center>
                        <center><h1><b>1330014486484</b></h1> </center>              
                        <center><h5>Masa berlaku tagihan ini adalah maksimal <b>24 Jam</b> setelah tagihan ini diterbitkan.</h5> </center>
                        <center><p style = 'font-family:Brush Script MT;'><b>TERIMAKASIH</b></p></center>
                        <center><h2><b>Koperasi Lebaksari</b></h2> </center>
                    </body>
                </html>";

                
                

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
        $mail->AddAttachment('cv.pdf', 'CV-loe.pdf'); //kirim file
        if(!$mail->send())
        {
        echo "Mailer Error: " . $mail->ErrorInfo;
        }
        else
        {
        header('location:angsuran.php?error10');
        }

close_db($conn);
?>

