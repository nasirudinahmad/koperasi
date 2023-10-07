<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use Dompdf\Dompdf;



require_once "../PHPMailer/src/PHPMailer.php";
require_once "../PHPMailer/src/Exception.php";
require_once "../PHPMailer/src/OAuth.php";
require_once "../PHPMailer/src/POP3.php";
require_once "../PHPMailer/src/SMTP.php";
require_once '../dompdf/dompdf/autoload.inc.php';
require "cek.php";
    $conn= open_db();
    $id = $_SESSION['id'];
    $simpananpokok = $_POST['simpananpokok'];
    // $simpananpokokFormatted = number_format($simpananpokok,0,',','.');
    $simpananwajib = $_POST['simpananwajib'] != '' ? $_POST['simpananwajib'] : 0;
    // $simpananwajibFormatted = number_format($simpananwajib,0,',','.');
    $simpanansukarela = $_POST['simpanansukarela'] != '' ? $_POST['simpanansukarela'] : 0;
    // $simpanansukarelaFormatted = number_format($simpanansukarela,0,',','.');
    // echo $simpananwajib;
    
    date_default_timezone_set("Asia/Jakarta");
    $tanggal = date('d-m-Y');
    $bulan = date('Y-m');
    $tahun = date('Y');
    $status = "pending";
    // var_dump($_SESSION);
    // die;

  
    if ($simpananpokok > 0 && $simpananpokok < 75000) {
        // echo "<script>alert('untuk simpananpokok silakan di kosongkan'); window.location.href='tambahsimpanan.php'</script>";
        return false;
    }else {
        //membuang titik dengan menggunakan fungsi replace
        $simpananpokok1= str_replace(",", "", $simpananpokok);
        $simpananwajib1= str_replace(",", "", $simpananwajib);
        $simpanansukarela1= str_replace(",", "", $simpanansukarela);
    $tagihanID = mt_rand(10000000,99999999);
    $tigabelakang = mt_rand(100,999);
    $total = (int)$simpananpokok1 + (int)$simpananwajib1 + (int)$simpanansukarela1;
    $totalFormatted = number_format($total,0,',','.');
    $jumlah = (int)$simpananpokok1 + (int)$simpananwajib1 + (int)$simpanansukarela1 + $tigabelakang;
    $jumlahFormatted = number_format($jumlah,0,',','.');
        
        $sql = mysqli_query($conn, "INSERT INTO simpanan (id_user, tanggal, bulan, tahun, simpanan_pokok, simpanan_wajib, simpanan_sukarela, tagihan_simpanan, status) 
        VALUES ('$id', '$tanggal', '$bulan', '$tahun', '$simpananpokok1', '$simpananwajib1', '$simpanansukarela1', '$jumlah', '$status')");
    }

    
    

    // $sql = mysqli_query($conn, "UPDATE `simpanan` SET `tagihan_simpanan` = '$jumlahFormatted' WHERE id=$id");

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
                        <center>SP  : Rp. $simpananpokok + SW  : Rp. $simpananwajib + SS  : Rp. $simpanansukarela</center> <br>                                                    
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

        $dompdf = new Dompdf();
        $html = "<html>
                        <body>   
                            <center><b>COSTUMER INVOICE</b></center>
                            <center><h3 style='color:rgb(23, 23, 100)'>Tagihan sudah dibuat silahkan melakukan pembayaran</h3></center>
                            <center><b>Id_User     : $id </b></center> 
                            <center><h3 style='color:rgb(23, 23, 100)'><b>No. KL-$tagihanID</b></h3></center>
                            
                            <center><h4>Rincian Tagihan :</h4></center>
                            <center>SP  : Rp. $simpananpokok + SW  : Rp. $simpananwajib + SS  : Rp. $simpanansukarela</center> <br>                                                    
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
        $dompdf->loadHtml($html);
        $dompdf->setPaper('A4', 'portrait');
        $dompdf->render();
        $pdfString = $dompdf->output();

        $mail->Subject = $subjek; //subject
        $mail->Body    = $pesan; //isi email
        $mail->AltBody = "PHP mailer"; //body email
        $mail->addStringAttachment($pdfString, 'Tagihan Koperasi Lebaksari.pdf'); //kirim file
        if(!$mail->send())
        {
        echo "Mailer Error: " . $mail->ErrorInfo;
        }
        else
        {
        header('location:simpanan.php?error6');
        }

close_db($conn);
?>

