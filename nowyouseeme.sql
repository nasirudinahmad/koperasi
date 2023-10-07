-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Okt 2019 pada 08.39
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nowyouseeme`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `assetcategories`
--

CREATE TABLE `assetcategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `assetcategories`
--

INSERT INTO `assetcategories` (`id`, `name`, `color`) VALUES
(14, 'Multipurpose Building', '#1a880b'),
(13, 'Office', '#2a89c5'),
(12, 'School', '#e2a115'),
(6, 'Land', '#e28415'),
(7, 'Mission House', '#d61e6a'),
(8, 'Mosque', '#471fbc'),
(9, 'Library', '#15e2b0'),
(10, 'Aux Building', '#85913c'),
(11, 'Cemetery', '#9e1580'),
(15, 'Housing', '#d62bba');

-- --------------------------------------------------------

--
-- Struktur dari tabel `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `manufacturerid` int(11) NOT NULL,
  `modelid` int(11) NOT NULL,
  `supplierid` int(11) NOT NULL,
  `statusid` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `warranty_months` int(11) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `serial` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `locationid` int(11) NOT NULL,
  `purchase_order` varchar(255) NOT NULL,
  `value` bigint(20) NOT NULL,
  `condition` varchar(255) NOT NULL,
  `removal_date` varchar(100) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `originalid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `assets`
--

INSERT INTO `assets` (`id`, `categoryid`, `adminid`, `clientid`, `userid`, `manufacturerid`, `modelid`, `supplierid`, `statusid`, `purchase_date`, `warranty_months`, `tag`, `name`, `serial`, `notes`, `locationid`, `purchase_order`, `value`, `condition`, `removal_date`, `lat`, `lng`, `originalid`) VALUES
(5, 6, 2, 97, 0, 4, 19, 4, 7, '1990-01-15', 0, 'JD-71-1', 'Tanah Hibah Rujito', 'SHM NO. 1029', '<p>Riwayat : </p><ol><li>Merupakan tanah jual beri dari Drs. Rujito SHM No. 1029 tanggal 12/01/1982 luas 625 m2. Kemudian dihibahkan dengan Surat Pernyataan Hibah tanggal 15/01/1990. Ada dokumen asli SHM dan fotokopi Surat Pernyataan Hibah. </li><li>HARUS DIBUAT AKTA HIBAH</li></ol><p><br></p><p>Box : 17<br></p>', 2, '', 2500000000, '625', '', -8.646808, 115.269972, 1),
(6, 6, 2, 293, 3, 12, 19, 4, 9, '2006-10-09', 0, 'JD-120-6', 'Tanah', 'SURAT HIBAH 09/10/2006', '<div>Riwayat : </div><div><br></div><div>Menghibahkan/menyumbangkan sebidang taoah seluas 5 x 8 meter persegi, pada sertifikat tanah No. 883, Surat ukur No. 148 / 2./)03 di JI. Laksamana Gang Karma Yuda Desa Bakti Seraga Singaraja, kepada: Jemaat Ahmadiyah Indonesia Cabang Singaraja. Ada fotokopi SHM No. 883 atas nama Drs. Made Sri Pageh dengan luas 135 m2.&nbsp;</div><div><br></div><div>HARUS DIBUAT AKTA HIBAH ATAS NAMA JAI</div><div><br></div><div>Box : 17</div>', 3, '', 0, '40', '', -8.12778, 115.077717, 2),
(7, 6, 2, 232, 3, 4, 19, 4, 9, '1997-03-09', 0, 'JD-272-7', 'Tanah', 'SURAT HIBAH TANGGAL 09/03/1997', '<p>Riwayat : </p><ol><li>HIBAH DARI PAK DEDI ROHANIAWAN Hibah Tanah seluas 250 m2 pada tanggal 9/03/1997</li><li>HRS DIBUAT AKTA HIBAH MELALUI  PPAT</li><li>ADA SHM fotokopi No. 22.04.01.09.1.00574</li></ol><p><br></p><p>Box : 17<br></p>', 6, '', 0, '250', '', -8.163806, 114.727084, 2),
(9, 6, 2, 97, 0, 2, 6, 4, 7, '2008-09-20', 0, 'JD-71-9', 'Tanah Beli Ahmad Junaidi', 'SHM NO. 4583', '<p>Riwayat : </p><ol><li>Jual beli dari Sanimah kepada Ahmad Junaidi tanah seluas 12,100 m2 di BJ Pangkung Dedari Melaya Kecamatan Melaya, Jembrana Bali. Pembayaran lunas tanggal 20 September 2008 seharaga Rp. 193,600,000. Ada fotopkopi AJB No. 11/2009 tanggal 10 Nopember 2009. Ada fotokopi sebagian dari SHM No. 4583 tanggal 10 Juni 2010. Desa Melaya,SPPT NO.51.01.01 0.006.000-0441.7,PERSIL No. -,Kelas A40. Ada fotokopi berita acara penyerahan dokumen dari Ahmad Junaidi berupa AJB dan SHM kepada Wahyu Ahmad Raksa tanggal 2 Juli 2010. </li><li>Harus dibuat surat contra letter. Harus ada dokumen asli. </li></ol><p><br></p><p>Box : 17<br></p>', 4, '', 193600000, '12100', '', -8.278494, 114.494674, 2),
(10, 6, 2, 38, 3, 12, 18, 5, 7, '0000-00-00', 0, 'JD-343-10', 'Tanah', 'SURAT PAJAK BPHTP', '<p>Riwayat : </p><ol><li>Sertifikasi sedang diurus. Bayar pajak BPHTP sebesar Rp. 8,795,400</li></ol><p><br></p><p>Box : 5<br></p>', 7, '', 0, '1380', '', 0, 0, 0),
(11, 6, 2, 18, 3, 10, 7, 5, 9, '1994-11-30', 0, 'JD-156-11', 'Tanah', 'AKTA PENGOPERAN NO.593.83/16/SPHAT/ MRG/94', '<p>Riwayat : </p><p>DOKUMEN ASLI Akte Pernyataan Menyerahkan dan Melepaskan/Pengoperan HAK atas Tanah Seluas 20.000.m2 dari Matsuri  Kepada Ir.Achmad Lubis  tgl.30 November 1994  no.593.83/16/SPHAT/MRG/1994 dengan Kwitansi no.06 tgl.20 Oktober 1992 dan Surat Keterangan menyatakan dbg pemilik/achli wari dari orang tanya Sulaiman(Almarhum) tgl.31 Agustus 1992 yang diketahui dan di tanda tanganim oleh Kepala Dusun Tanjung Ratu Bpk.Anwar Kadul.</p><p>Box : 5</p>', 8, '', 0, '20000', '', 0, 0, 1),
(12, 6, 2, 18, 3, 10, 7, 5, 9, '1994-11-30', 0, 'JD-156-12', 'Tanah', 'AKTA PENGOPERAN NO.593.83/15/SPHAT/MRG/94', '<p>Riwayat :&nbsp;</p><p>DOKUMEN ASLI Akte Pernyataan Menyerahkan dan Melepaskan/Pengoperan HAK atas Tanah Seluas 6.800.m2 dari A.Gani Kepada Ir.Achmad Lubis&nbsp; tgl.30 November 1994. no.593.83/15/SPHAT/MRG/1994 dan Kwitansi no.05 tgl 17 Sept.1992 yang menjual A.Gani Yang Membeli. Bugil</p><p><br></p><p>Box : 5<br></p>', 8, '', 0, '6800', '', 0, 0, 0),
(13, 6, 2, 18, 3, 2, 7, 5, 9, '1994-11-30', 0, 'JD-156-13', 'Tanah', 'AKTA PENGOPERAN NO.593.83/17/SPHAT/MRG/94', '<p>Riwayat : </p><ol><li>Dalam Akta Pengoperan Hak Atas Tanah Nomor 583.83/17/SPHAT/MRG/1994 disebutkan IBU MASIAH menyerahkan dan melepaskan (mengoperkan) kepada pihak Ir. Achmad Lubis Msc segala macam hak berdasarkan Surat Keterangan/Tanda Terima Kwitansi Nomor 02 Tanggal 17 Juni 1992.&nbsp;</li><li>HIBAH DARI PAK BUGIL, DATA DARI KETERANGAN MUBALIGH WILAYAH MLV. MUNIRUL ISLAM SY.&nbsp; Ada Copy Kwitansi nomor 02 tgl.17 Juni 1992 yang Menjual Masiah yang Membeli Bugil. Ada Keterangan HIBAH dari Pak Bugil ( 1.Masjid dan R.Dinas) data dari keterangan dari Mubwil. Mlv.Munirul Islam.</li><li>HARUS DIBUATKAN AKTA HIBAH.&nbsp;</li></ol><div><br></div><div>Box : 5<br></div>', 9, '', 0, '3888', '', 0, 0, 0),
(14, 6, 2, 18, 3, 10, 7, 5, 9, '2004-10-05', 0, 'JD-156-14', 'Tanah', 'SURAT PERNY A TAAN MENYERAHKAN DAN MELEPASKAN HAK ATAS TANAH Nomor : 593.83/270/01/X/2004', '<p>Riawayat : </p><ol><li>Zarkasi Mat Dain menyerahkan dan melepaskan kembali hak atas tanah di Lingkungan Srimenanti luas 1037,25 m2 berdasarkan Surat Keterangan Hak Usaha Atas Tanah No: 199/SKHUAT/LSM/KII/1996 tanggal 27 Desember 1996 kepada Asro Matnur atas nama JAI. Bayar ganto rugi sebesar Rp. 25,000,000.</li></ol><p><br></p><p>Box : 5<br></p>', 10, '', 0, '1037,25', '', 0, 0, 0),
(26, 6, 2, 113, 3, 4, 19, 7, 9, '2003-01-24', 0, 'JD-141-20', 'Tanah', 'SURAT HIBAH TANGGAL 24/01/2003', '<div>Riwayat :&nbsp;</div><div><br></div><ol><li>Hibah dari Durwanto Suratmin tanggal 24 Januari 2003. Luas tanah 1100 m2.&nbsp;</li><li>Atas nama Durmanto</li><li>Harus dibuat akta hibah atas nama JAI</li><li>Surat hibah asli dan fotokopi</li><li>Harus dibuat contra letter dari Suratnin</li></ol><p><br></p><p>Box : 5</p>', 23, '', 0, '1100', '', -1.476051, 101.190054, 0),
(15, 6, 2, 337, 3, 12, 18, 4, 11, '0000-00-00', 0, 'JD-247-15', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat : </p><ol><li>Perlu diverifikasi ulang. </li><li>Luas masjid 100 m2 dan rumah dinas 18 m2</li></ol><p><br></p><p>Box : 17<br></p>', 5, '', 0, '118', '', 0, 0, 2),
(16, 6, 2, 41, 3, 2, 6, 6, 9, '1997-05-10', 0, 'JD-152-16', 'Tanah', 'SHM NO. 07.04.01.03.1.00267', '<div>Riwayat :&nbsp;</div><div><br></div><ol><li>SHM. No.00267 a/n Suharsono tgl. 10-5-1997 luas tanah 1.480.m2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </li><li>Balik nama dari Suharsono kepada Mulyadi.BA tgl.09/07/2008 bberdasarkan AJB.oleh Mufti Nakhman.SH.PPAT/Notaris Kota Bengkulu no.906/2000/tgl.25.06.2008.&nbsp;</li></ol><p><br></p><p>Box : 5</p>', 18, '', 0, '1480', '', 0, 0, 0),
(17, 6, 2, 41, 3, 9, 19, 6, 9, '1991-08-26', 0, 'JD-152-17', 'Tanah', 'SURAT HIBAH ', '<div>Riwayat :&nbsp;</div><div><br></div><ol><li>HIBAH DARI (ALM) MUH.NAFIS KEPADA: R. SOEWIGNYO KRT DAN SYAMSIR ALAM A/N JAI KEL. BENGKULU</li><li>SHM. No.242 a/n M.Napis tgl.26-8-1991 luas tanah 379.m2&nbsp; &nbsp;</li><li>Dalam bundel ada Surat Pernyataan Hibah dari Saridah Muhd.Nafis kepada R.Soewignyo Krt. Dan Syamsir Alam(wkl dr JAI) tgl. 7 Januari 1991 dgn luas tanah 420.m2 ( ada AJB no.10/PPAT/X/1990&nbsp; tgl. 24 Okt 1990 sbg pembeli Bpk Napis)</li><li>Tanah masjid dan rumah dinas dari surat hibah</li><li>Gedung serbaguna dari jual beli AJB NO.&nbsp;10/ PPAT/X/1990,&nbsp; 24-10- 90</li></ol><p><br></p><p>Dokumen :&nbsp;<br></p><ol><li>SERTIFIKAT HM NO.242 A/N M.NAFIS</li><li>SURAT HIBAH&nbsp; ( asli ) TGL. 7-1-1991</li><li>AKTA JUAL-BELI NO.10/ PPAT/X/1990,&nbsp; 24-10- 90</li><li>H.M. ADAT</li></ol><p><br></p><p>Box : 5</p>', 19, '', 0, '379', '', 0, 0, 0),
(18, 6, 2, 96, 3, 6, 6, 6, 9, '1982-01-26', 0, 'JD-56-18', 'Tanah', 'SHM NO. 2714  ', '<p>Riwayat : </p><ol><li>SERTIFIKAT HM NO.2714&nbsp; /CRP/RL/82 A/N TJIK AMIN ( COPY ) (01.26.1982, 10.18.2005) seluas 360 m2. Terdiri dari Wakaf 180 m2 (Surat Wakaf asli) dan jual beli 180 m2.&nbsp;</li><li>SHM Fotokopi</li><li>Surat Wakaf asli</li></ol><p><br></p><p>Box : 5<br></p>', 21, '', 0, '360', '', 0, 0, 0),
(19, 6, 2, 96, 3, 2, 16, 6, 7, '2005-07-15', 0, 'JD-56-19', 'Tanah', 'AJB NO. 326', '<p>Riwayat : </p><ol><li>Jual beli atas nama Cik Amin</li></ol><p><br></p><p>Box : 5<br></p>', 20, '', 7000000, '400', '', 0, 0, 0),
(27, 6, 2, 113, 3, 2, 19, 7, 9, '2003-09-01', 0, 'JD-141-27', 'Tanah', 'SURAT HIBAH TANGGAL 01/09/2003', '<div>Riwayat :&nbsp;</div><div><br></div><ol><li>Jual beli atas nama Ngasino</li><li>Dihibahkan dari Ngasino kepada Suratmin atas nama JAI tanggal 01 September 2003. Luas tanah 935 m2. Untuk pembangunan masjid ahmadiyah. Diketahui oleh kepada desa Sungai Lintang, Bapak Tukimin.&nbsp;</li><li>Surat hibah asli</li><li>Harus dibuatkan contra letter dari Suratmin kepada JAI</li></ol><p><br></p><p>Box : 5</p>', 24, '', 0, '935', '', -1.792235, 101.190054, 0),
(28, 6, 2, 124, 3, 2, 6, 7, 9, '2005-06-07', 0, 'JD-294-28', 'Tanah', 'SHM NO 4158 ', '<div>Riwayat :&nbsp;</div><div><br></div><ol><li>Jual beli berdasarkan AJB Nomor 344/KB/2005 Tanggal 23/05/2005.&nbsp;</li><li>SHM No. 4158 atas nama Ma\'mun Ahmad dan Andi Saharuddin. Asli dan fotokopi.</li><li>Ada surat contra letter.</li></ol><p><br></p><p>Box : 5<br></p>', 25, '', 0, '2440', '', -1.659451, 103.591139, 0),
(29, 6, 2, 202, 3, 4, 19, 7, 9, '1998-09-26', 0, 'JD-235-29', 'Tanah', 'SURAT HIBAH TANGGAL 26/09/1998', '<div>Riwayat :&nbsp;</div><div><br></div><ol><li>Hibah dari Ahmad Sunarya. Dalam bundel tidak ada bukti surat</li><li>Ada Surat Proposal pembangunan masjid ukuran 6x6 . Biaya Rp. 32,750,000</li></ol><p><br></p><p>Box : 5</p>', 26, '', 0, '300', '', -1.476051, 103.008788, 0),
(30, 6, 2, 295, 3, 4, 19, 7, 9, '1997-10-21', 0, 'JD-124-30', 'Tanah', 'SURAT KETERANGAN HIBAH TANGGAL 21/10/1997', '<div>Riwayat :&nbsp;</div><div><br></div><ol><li>Hibah dari Ahmad Sunarya kepada Abdurahman atas nama JAI. Tanggal 21/10/1997. Terletak di Dusun Sidomukti, Desa Batu Putih, Kecamatan Pelawan Singkut. Luas : Utara 20 m, Selatan 26 m, Timur 44 m, dan Barat 37 m sama dengan ukuran 23 x 40 = 920 m2.</li><li>Dalam Surat Nomor 50/Mas/Jan/2003 tanggal 9 Januari 2003 perihal Pendataan Tanah dan Bangunan milik Jemaat dilaporkan berdiri bangunan&nbsp; &nbsp;a). Masjid ukuran 7,5x10,5 m. b) Rumah Misi ukuran 6x6 m, c). Madrasah ukuran 7x14 m. d) KM ukuran 3x6 m.</li><li>Dokumen hibah scan</li></ol><p><br></p><p>Box : 5</p>', 27, '', 0, '920', '', -2.438659, 102.753882, 0),
(31, 6, 2, 295, 3, 4, 19, 7, 9, '1999-05-01', 0, 'JD-124-31', 'Tanah', 'SURAT HIBAH TANGGAL 01/05/1999', '<p>SURAT KETERANGAN HIBAH KEDUA A/N ABDURRAHMAN</p><p>Box : 5</p>', 27, '', 0, '210', '', -2.438659, 102.753882, 0),
(32, 6, 2, 295, 3, 2, 18, 7, 11, '2004-06-28', 0, 'JD-124-32', 'Tanah', 'SURAT KETERANGAN', '<p>Dalam surat Nomor 65/Has/Jan/2004 tanggal 26 Januari 2004 perihal membangun masjid di lahan mubayyin baru tertera Pembelian tanah ukuran 23 x 25 m (Dalam surat lain tanggal 28 Juni 2004 ukurannya 22x35 m) seharga Rp. 1,500,000 dan gandeng dengan tanah hibah dari anggota Singkut IV dengan ukuran 23 x 25 m2.&nbsp; Dan pemeblian rumah ukuran 7 x 14 m2 ditambah L ukuran 4x6 m3 dengan harga Rp. 2,000,000. Tidak ada dokumen resmi jual beli tanah. Perlu diperiksa ulang ke cabang.</p><p>Tidak ada dokumen surat tanah</p><p><br></p><p>Box : 5</p>', 27, '', 1500000, '770', '', -2.438659, 102.753882, 0),
(33, 6, 2, 295, 3, 2, 18, 7, 7, '2008-04-29', 0, 'JD-124-33', 'Tanah', 'SURAT JUAL BELI TANAH ', '<p>Jual beli dari Nurdin kepada Suparman. Tanah seluas 5600 m2 di Desa Lubuk Sepuluh, Kecamatan Pelawan, Kabupaten Sarolangun dengan harga 15,000,000.&nbsp;</p><p>Ada surat pernyataan bahwa Suparman digunakan namanya oleh JAI untuk membeli tanah tersebut.&nbsp;</p><p><br></p><p>Box : 5</p>', 28, '', 15000000, '5600', '', -2.438659, 102.753882, 0),
(34, 6, 2, 36, 3, 2, 16, 8, 9, '1991-03-30', 0, 'JD-183-34', 'Tanah', 'AJB NO. 1366/1991', '<p>Riwayat : </p><ol><li>Jual beli dari Janur bin Melih kepada Abdurahman Saqib tanah seluas 300 m2. AJB Atas nama Saqib. Harga +- Rp. 300,000 /m2</li><li>Peruntukan 1 buah lahan parkiran</li></ol><p>Box : 8</p>', 29, '', 90000000, '300', '', 0, 0, 0),
(35, 6, 2, 36, 3, 4, 6, 8, 11, '1998-03-17', 0, 'JD-183-35', 'Tanah', 'SHM NO. 02753', '<p>Riwayat : </p><ol><li>Anggota bekasi Bp Ahmad Riadi mewakafkan tanah 500 m2 dari tanah 1500 m2. Karena bukan daerah biniaan maka diserahkan ke PB untuk ditindalanjuti. </li><li>Belum ada tindak lanjut samapi Juli 2019</li><li>Ada fotokopi SHM No. 2753 luas 1500 m2</li><li>HARUS DITINDAKLANJUTI. SURAT WAKAF DARI PEMBERI WAKAF</li></ol><p><br></p><p>Box : 8</p>', 30, '', 0, '500', '', 0, 0, 0),
(36, 6, 2, 331, 0, 4, 6, 9, 9, '2019-07-20', 0, 'JD-4-36', 'Tanah', 'SHM NO 01230', '<p>Hibah dari anggota yang sudah meninggal. Di wasiyatkan untuk dihibahkan ke Jemaat. Surat diserahkan oleh Bp. ___- tanggal 20 Juli 2009. </p>', 50, '', 0, '66', '', 0, 0, 2),
(37, 6, 2, 331, 0, 4, 6, 9, 9, '2019-07-20', 0, 'JD-4-37', 'Tanah', 'SHM NO. 01232', '<p>Hibah dari anggota yang sudah meninggal. Di wasiyatkan untuk dihibahkan ke Jemaat. Surat diserahkan oleh Bp. ___- tanggal 20 Juli 2009. <br></p>', 51, '', 0, '1124', '', 0, 0, 2),
(38, 6, 2, 36, 3, 2, 6, 8, 9, '1991-03-20', 0, 'JD-183-38', 'Tanah', 'SHM NO 01942', '<p>Riwayat :&nbsp;</p><ol><li>Ir. Abdurahman Saqib diberi amanah&nbsp; oleh JAI untuk membeli tanah +- 1000 m2. Dan sudah dibeli secara mencicil. AJB tanggal 21/08/1989. Tanah dibeli dari Bp. Janur bin Melih .&nbsp;</li><li>Tanah dihibahkan tanggal 22/09/1989 dengan Surat Pernyataan Hibah dari Ir. Abdurahman Saqib.&nbsp;</li><li>Diterbitkan SHM No. 01942 tanggal 20/03/1991 luas 1023 m2.&nbsp;</li><li>Peruntukkan Masjid Al-Misbach dan Rumah Misi</li></ol>', 31, '', 618000000, '1023', '', 0, 0, 0),
(39, 6, 2, 36, 3, 2, 6, 8, 9, '2008-01-24', 0, 'JD-183-39', 'Tanah', 'SHM NO. 00373', '<p>Riwayat :&nbsp;</p><ol><li>Jual beli dari Janur bin Melih kepada Ir. Elon Ahmadi tanah seluas 300 m2. AJB No. 6/2007. Tanggal 27 April 2007.&nbsp;</li><li>Diterbitkan SHM No. 00373 tanggal 24 Januari 2008. Tanah seluas 300 m2. Atas nama Elon Ahmadi.&nbsp;</li><li>Harus dibuatkan surat contra letter</li></ol><p><br></p><p>Box : 8</p>', 31, '', 0, '300', '', 0, 0, 0),
(40, 6, 2, 36, 3, 2, 15, 8, 11, '0000-00-00', 0, 'JD-183-40', 'Tanah', 'KWITANSI', '<p>Riwayat :&nbsp;</p><ul><li>Tidak ada riwayat jual beli. Hanya ada laporan&nbsp;</li></ul><p><br></p><p>Box : 8</p>', 30, '', 0, '40', '', 0, 0, 0),
(41, 6, 2, 36, 3, 6, 20, 8, 11, '1993-10-19', 0, 'JD-183-41', 'Tanah', 'IKRAR WAKAF TANGGAL 19/10/1993', '<p>Riwayat :&nbsp;</p><p>Ikrar wakaf dari Manon bin Marun mewakafkan tanah 200 m2. Diurus oleh nadzir bernama M. Otib</p><p><br></p><p>Box : 8</p>', 36, '', 0, '200', '', 0, 0, 0),
(42, 6, 2, 44, 3, 4, 19, 8, 9, '1998-10-26', 0, 'JD-84-42', 'Tanah', 'SURAT KETERANGAN HIBAH TANGGAL 26/10/1998', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Narma bin Nisin kepada JAI sebidang tanah darat di Kp. karamat, RT 20 RW 06 Desa Kedungwaringin Kecamatan Kedungwaringan Kabupaten Bekasi. Luas tanah 300 m2. Tanggal 26 Oktober 1998.&nbsp;</li><li>Hibah dari dari tanah seluas 1,038 m2. Ada bukti SPPT SPPT.0012 blok 007 dan Surat Keterangan pemilik tanah.&nbsp;</li><li>Harus dibuatkan Akta Hibah atas nama JAI.&nbsp;</li></ol>', 39, '', 0, '300', '', -6.260221, 107.271456, 0),
(43, 6, 2, 44, 3, 4, 18, 8, 11, '1997-11-07', 0, 'JD-84-43', 'Tanah', 'DAFTAR INVENTARIS', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Tarib dan Saiyem berupa Masjid Al-Mahdi ukuran 10,5 x 7,5 m2</li><li>Dalam daftar inventaris tanggal 7 November 1997 luas tanah 168 m2, Masjid ukuran 6 x 10 m2, dan Rumah Dinas Mubaligh ukuran 2 x 3 m2.&nbsp;Bangunan didirikan tahun 1963 dan direnovasi tahun 1995</li><li>Ada SPPT Induk</li><li> Harus dibuatkan Akta HIbah dan Sertifikasi atas nama JAI</li></ol><p><br></p><p>Box : 8</p>', 38, '', 0, '168', '', -6.252146, 107.202333, 0),
(44, 6, 2, 44, 3, 4, 18, 8, 11, '0000-00-00', 0, 'JD-84-44', 'Tanah', 'DAFTAR INVENTARIS', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Tarib dan Saiyem tanah seluas 450 m2.&nbsp;&nbsp;Ada SPPT Induk</li><li>Harus dibuatkan Akta HIbah dan Sertifikasi atas nama JAI</li></ol><p><br></p><p>Box : 8</p>', 38, '', 0, '450', '', -6.272039, 107.265529, 0),
(45, 6, 2, 52, 3, 12, 18, 8, 11, '1996-04-01', 0, 'JD-295-45', 'Tanah', 'SPPT NO. 32.18.120.010.002-0013.0/96-01', '<p>Riwayat :&nbsp;</p><ol><li>Dari surat tanggal 4 Agustus 1996, Jemaat Bulaktemu memohon dana untuk tempat saran pembinaa mubayin baru, tarbiyat dan taklim yaiu pembuatan Masjid di Jl. Kedung, Desa Sukadaya, Kecamatan Tambelang, Kabupaten Bekasi. Tanah atas nama Nein bin Moa seluas 1,701 dengan SPPT Nomor 0013. Tahun 1996.</li><li>Harus di cek kembali apakah ada infrastuktur disana</li></ol><p><br></p><p>Box : 8</p>', 40, '', 0, '1701', '', -6.140743, 107.109168, 0),
(46, 6, 2, 52, 3, 4, 18, 8, 11, '0000-00-00', 0, 'JD-295-46', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat :&nbsp;</p><ol><li>Hanya ada informasi di dalam database lama. Disebutkan hibdah dari Pak Sarim berupa masjid ukuran 6x8 m2.&nbsp;</li><li>Harus dibuatkan akta hibah atas nama JAI</li></ol><p><br></p><p>Box : 8</p>', 40, '', 0, '100', '', -6.136971, 107.115823, 0),
(47, 6, 2, 74, 3, 6, 6, 8, 9, '2002-05-06', 0, 'JD-276-47', 'Tanah', 'SHM NO. 5344', '<p>Riwayat :&nbsp;</p><ol><li>Wakaf dari anggota Hj. Rohani Bt Sukardi. Tanah luas 690 m2. SHM No. 5344 tanggal 21 Januari 2001. Pemisahan hak milik No. 3025.&nbsp;</li><li>SHM fotokopi tidak ada asli</li><li>Harus dibuatkan sertifikat wakaf atas nama JAI.&nbsp;</li><li>Harus dikirimkan sertifikat asli</li></ol><p><br></p><p>Box : 8</p>', 41, '', 0, '690', '', -6.365228, 107.395829, 0),
(48, 6, 2, 74, 3, 12, 18, 8, 11, '0000-00-00', 0, 'JD-295-48', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat : </p><ol><li>Dalam surat No. 07/IV/MS/06 dari Jemaat Bulaktemu menyebutkan permohonan pembangunan masjid di tanah Bp. Ketua, H. Moh Asmin seluas 200 m2. Masjid Al Fadhl. </li><li>Harus di cek kembali apakah ada infrastuktur di tanah tersebut. </li><li>Harus dibuatkan akta hibah atas nama JAI</li></ol><p><br></p><p>Box : 8</p>', 53, '', 0, '200', '', -6.388419, 107.412897, 0),
(49, 6, 6, 139, 3, 2, 5, 8, 7, '1997-07-01', 0, 'JD-80-49', 'Tanah', 'SHM NO 03958', '<p>Riwayat :&nbsp;</p><ol><li>Dari jual beli</li><li>Fotokopi SHM No. 03958 atas nama JAI Karawang.&nbsp;</li><li>Masjid Baitullah</li><li>Harus dikirim sertifikat asli ke Pusat.&nbsp;</li></ol><p><br></p><p>Box : 8</p>', 43, '', 0, '104', '', -6.304665, 107.294583, 0),
(50, 6, 2, 74, 3, 2, 16, 8, 9, '1998-04-15', 0, 'JD-276-50', 'Tanah', 'AJB NO. 289/Tempuran/1997', '<p>Riwayat :&nbsp;</p><ol><li>&nbsp;AJB No.289/Tempuran/1997 tgl.15 April 1997 dari Hadi Niman kepada Iyah binti Asad luas tanah 954.m2 di Desa Jaya Nagara Kec.Tempuran Kab Karawang Prop. Jawa Barat.</li><li>Tidak ada keterangan milik JAI atau tidak&nbsp;</li><li>Harus dibuatkan contra letter</li><li>AJB fotokopi</li></ol><p><br></p><p>Box : 8</p>', 54, '', 0, '954', '', -6.196669, 107.474616, 0),
(51, 6, 2, 139, 3, 2, 16, 8, 9, '1997-04-15', 0, 'JD-80-51', 'Tanah', 'AJB NO. 289/Tempuran/1997', '<p>Riwayat :&nbsp;</p><ol><li>&nbsp;AJB No.289/Tempuran/1997 tgl.15 April 1997 dari Hadi Niman kepada Iyah binti Asad luas tanah 954.m2 di Desa Jaya Nagara Kec.Tempuran Kab Karawang Prop. Jawa Barat</li><li>AJB fotokopi</li><li>Harus dibuat surat contra letter</li><li>Kirim AJB asli</li></ol><p><br></p><p>Box : 8</p>', 42, '', 0, '954', '', -6.196669, 107.474616, 0),
(52, 6, 2, 139, 3, 2, 6, 8, 9, '1997-07-02', 0, 'JD-80-52', 'Tanah', 'SHM NO.05352', '<p>Riwayat : </p><ol><li>SHM No.0532 tgl.02 Juli 1997 a/n Suparno Hasan Miharjo di Desa Adiarsa -Rengas Condong rt.02/01  Karawang Jawa Barat</li><li>SHM fotokopi</li><li>Kirim SHM asli</li></ol><p><br></p><p>Box : 8</p>', 44, '', 0, '264', '', -6.315862, 107.305008, 0),
(53, 6, 2, 139, 3, 2, 16, 8, 11, '0000-00-00', 0, 'JD-80-53', 'Tanah', 'AJB', '<p>Riwayat : </p><ol><li>Tidak ada keterangan bahwa tanah ini ada. Hanya tertera di dalam database lama</li><li>HARUS DIVERIFIKASI </li></ol><p><br></p><p>Box : 8</p>', 55, '', 0, '100', '', -6.288946, 107.330157, 0),
(54, 6, 2, 139, 3, 4, 18, 8, 11, '0000-00-00', 0, 'JD-80-54', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Pak Endang</li><li>Tidak ada dokumen pendukung. Hanya tertera di dalam database lama</li><li>Informasinya ada masjid ukuran 80 m2</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 8</p>', 55, '', 0, '120', '', -6.288946, 107.330157, 0),
(55, 6, 2, 139, 3, 12, 18, 8, 11, '0000-00-00', 0, 'JD-80-55', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat :&nbsp;</p><ol><li>Tanah milik negera. Diusahakan dibei Jemaat</li><li>Tidak ada dokumen pendukung. Hanya informasi di database lama</li><li>HARUS DIVERIFIKASi&nbsp;</li></ol><p><br></p><p>Box : 8</p>', 55, '', 0, '246', '', -6.302904, 107.293715, 0),
(56, 6, 2, 139, 3, 4, 18, 8, 11, '0000-00-00', 0, 'JD-80-56', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Pak Sawad</li><li>Tidak ada dokumen pendukung. Hanya informasi di database lama</li><li>HARUS DIVERIFIKASi</li></ol><p><br></p><p>Box : 8</p>', 42, '', 0, '140', '', -6.232809, 107.485748, 0),
(57, 6, 2, 167, 3, 4, 6, 8, 9, '1997-03-26', 0, 'JD-83-57', 'Tanah', 'SHM NO. 490', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Alm. Pak Adim seluas 135 m2 berupa Masjid An-Nur</li><li>Jual beli seluas 114 m2 berupa Rumah Dinas Mubaligh dengan ukuran 6 x 10 m2</li><li>Sudah ada SHM No. 490 atas nama Edi Mubarok tanggal 26 Maret 1997 C.no.47/71/60/D.III di Desa Tanjungsari Kp.Kaliulu Rt.03/01 Bekasi seluas 249 m2</li><li>Harus dibuat akta pelepasan hak</li><li>Harus disertifikasi atas nama JAI</li><li>SHM asli dan Surat Pernyataan Hibah asli dan Surat Contra Letter asli.&nbsp;</li></ol><p><br></p><p>Box : 8</p>', 45, '', 0, '249', '', -6.258845, 107.160544, 0),
(58, 6, 2, 167, 3, 2, 15, 8, 11, '0000-00-00', 0, 'JD-83-58', 'Tanah', 'KWITANSI JUAl BELI', '<p>Riwayat :&nbsp;</p><ol><li>Tidak ada dokumen pendukung. Hanya informasi di database lama</li><li>HARUS DIVERIFIKASi</li></ol><p><br></p><p>Box : 8</p><p><br></p>', 45, '', 0, '200', '', -6.206234, 107.193892, 0),
(59, 6, 2, 167, 3, 12, 6, 8, 11, '1997-03-26', 0, 'JD-83-59', 'Tanah', 'SHM NO. 00489', '<p>Riwayat :</p><ol><li>Hanya ada fotokopi SHM No. 489</li><li>Tidak ada keterangan milik JAI atau tidak</li><li>HARUS DIVERIFIKASi</li></ol><p><br></p><p>Box : 8</p>', 45, '', 0, '143', '', -6.258872, 107.160685, 0),
(60, 6, 2, 167, 3, 4, 19, 8, 9, '0000-00-00', 0, 'JD-83-60', 'Tanah', 'SURAT PERNYATAAN HIBAH TANGGAL 30/01/1994', '<p>Riwayat :&nbsp;</p><ol><li> Hibah dari Pak Remin Saputra kepada JAI. Surat Hibah tanggal 30 Januari 1994. Luas tanah mushola ukuran 8 x 8 m2 atau 64 m2</li><li>Harus dibuatkan akta hibah</li><li>Harus dimintakan dokumen hibah asli</li></ol><p><br></p><p>Box : 8</p>', 56, '', 0, '64', '', -6.206234, 107.193892, 0),
(61, 6, 2, 167, 3, 4, 19, 8, 9, '1994-05-01', 0, 'JD-83-61', 'Tanah', 'SURAT HIBAH TANGGAL 01/05/1994', '<p>Riwayat : </p><ol><li>Surat pernyataan hibah tanggal 1 Mei 1994 dari Manon bin Marun / Abdul Chotib luas tanah 200.m2 (Masjid 7x 7 =49.m2) di Kp.Pembelokan Rt.06/03 Desa Sukamakmur Kec.Sukatani Bekasi. 1366/JBH/HTS/10.26.1998</li><li>Surat hibah fotokopi</li><li>Harus dikirim surat hibah asli</li></ol><p><br></p><p>Box : 8</p><div><br></div>', 46, '', 0, '200', '', -6.189132, 107.21756, 0),
(62, 6, 2, 322, 3, 4, 6, 8, 9, '0000-00-00', 0, 'JD-85-62', 'Tanah', 'SHM NO. 03658', '<p>Riwayat :&nbsp;</p><ol><li>Hibah lisan dari H. Nyain Achmadi tanah seluas 200 m2</li><li>Tidak ada dokumen hibah</li><li>HARUS DIBUAT AKTA HIBAH</li><li>HARUS PECAH SERTIFIKAT</li></ol><p><br></p><p>Box : 8</p>', 48, '', 0, '200', '', -6.247143, 107.060247, 0),
(63, 6, 2, 322, 3, 6, 20, 8, 9, '1991-05-29', 0, 'JD-85-63', 'Tanah', 'SURAT PERNYATAAN WAKAF TANGGAL 29/05/1991', '<p>Riwayat :&nbsp;</p><ol><li>Wakaf masjid dari Alm Dul Choir tanah seluas 75 m2</li><li>Surat Pernyataan Wakaf asli</li><li>HARUS DIBUAT AKTA WAKAF.&nbsp;</li></ol><p><br></p><p>Box : 8</p>', 48, '', 0, '75', '', -6.247143, 107.060247, 0),
(64, 6, 2, 322, 3, 2, 18, 8, 11, '2010-12-29', 0, 'JD-85-64', 'Tanah', 'PROPOSAL PEMBELIAN TANAH', '<p>Riwayat :&nbsp;</p><ol><li>Dalam proposal pembelian tanah 300 m2 untuk lahan parkir</li><li>Tanah berada dalam sertifikat SHM No. 03658 seluas 1749 m2</li><li>HARUS DIVERIFIKASi</li><li>HARUS PECAH SERTIFIKAT</li></ol><p><br></p><p>Box : 8</p>', 48, '', 0, '300', '', -6.253343, 107.253254, 0),
(65, 6, 2, 322, 3, 12, 18, 8, 11, '0000-00-00', 0, 'JD-85-65', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat :&nbsp;</p><ol><li>Tidak ada informasi jelas dan dokumen pendukung&nbsp;</li><li>Hanya ada informasi di database lama, tanah atas nama Dr. Ir. Munawar Ahmad luas 2179 m2</li></ol><p><br></p><p>Box : 8</p>', 58, '', 0, '2179', '', 0, 0, 0),
(66, 6, 2, 43, 3, 2, 12, 10, 7, '1981-11-10', 0, 'JD-3-66', 'Tanah', 'SHGB NO.533', '<p>Riwayat : </p><ol><li>Jual beli</li><li>SHGB berakhir tanggal 09 November 2001</li></ol><p><br></p><p>Box : 9</p>', 60, '', 0, '495', '2001-11-09', -6.591438, 106.786257, 2),
(67, 6, 2, 43, 3, 2, 12, 10, 7, '0000-00-00', 0, 'JD-3-67', 'Tanah', 'SHGB NO.  AH 755983', '<p>Riwayat :&nbsp;</p><ol><li>Tanah perumahan jemaat</li><li>Proses perpanjangan shgb oleh pak Suganda tahun 2016</li><li>Belum ada informasi lagi</li><li>Prosesnya sedang diangani oleh BPN Bogor, akan mengirim surat ke Kanwil Bandung. Setelah itu, BPN Bogor akan meneruskan pemecahan surat ke BPN Pusat.&nbsp;</li><li>Tujuan sertifikatnya dipecah oleh BPN Bogor untuk 29 orang pemilih tanah.&nbsp;</li><li>Target selesai adalah November 2019</li></ol><p><br></p><p>Box : 9</p>', 61, '', 0, '8200', '', -6.59016, 106.771022, 0),
(68, 6, 2, 43, 3, 2, 6, 10, 9, '1993-06-22', 0, 'JD-3-68', 'Tanah', 'SHM NO. 45', '<p>Riwayat :&nbsp;</p><ol><li>Dalam surat permohonan Februari 2010/ JAI Bogor berencanan membeli rumah 306 m2 di tanah 978 m2. SHM No. 45 atas nama Ir. Hasono. </li><li>Tidak ada informasi kelanjutannya. Hanya ada di database lama</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p>', 61, '', 0, '978', '', -6.591806, 106.785471, 0),
(69, 6, 2, 43, 0, 12, 18, 10, 11, '0000-00-00', 0, 'JD-3-69', 'Tanah', 'TANAH 6600 m2', '<p>Riwayat : </p><ol><li>Tanah 6600 m2</li><li>Tidak ada riwayat. Hanya ada di database lama</li></ol><p><br></p><p>Box : 9</p>', 62, '', 0, '6600', '', 0, 0, 2),
(70, 6, 6, 62, 3, 4, 21, 10, 9, '2001-11-26', 0, 'JD-91-70', 'Tanah', 'AKTA HIBAH NO. 328/2001', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Kosim, Cholil, dan Amin kepada Ahmad Hidayat atas nama JAI.&nbsp;</li><li>Akta Hibah asli No. 328/2001 tanggal 26 November 2001.&nbsp;</li><li>Masjid sudah dihancurkan&nbsp;</li></ol><p><br></p><p>Box : 9</p>', 64, '', 0, '320', '', -6.607213, 106.679769, 0),
(71, 6, 2, 67, 3, 2, 16, 10, 9, '2001-06-27', 0, 'JD-267-71', 'Tanah', 'AJB NO. 303/2001', '<p>Riwayat :&nbsp;</p><ol><li>Dari proses jual beli. AJB Atas nama R.A. Ginawati</li><li>Tidak ada informasi lain apakah tanah milik Jemaat atau tidak&nbsp;</li><li>HARUS DIVERIFIKASI</li><li>AJB fotokopi</li></ol><p><br></p><p>Box : 9</p>', 66, '', 0, '242', '', -6.496756, 106.810472, 0),
(72, 6, 2, 67, 3, 2, 6, 10, 9, '0000-00-00', 0, 'JD-267-72', 'Tanah', 'SHM NO. 2343', '<p>Riwayat :&nbsp;</p><ol><li>JUAL - BELI, SHM. No.2343 a/n Drs.Yoyo D.Wijaya tgl. 16 Desember 2005 luas tanah 390.m2</li><li>SHM asli</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p>', 67, '', 0, '390', '', -6.514118, 106.835615, 0),
(73, 6, 2, 68, 3, 4, 18, 10, 9, '1996-07-05', 0, 'JD-46-73', 'Tanah', 'DAFTAR INVENTARIS', '<p>Riwayat :&nbsp;</p><ol><li>&nbsp;HIBAH dari Pak Muharan (Alm) luas tanah 220.m2 Masjid 132.m2 dan 2.R.Dinas 24.m2 dan Girik di pegang oleh Kep.Desa</li><li>Tidak ada informasi lain. Hanya ada di database lama</li></ol><p><br></p><p>Box : 9</p>', 68, '', 0, '220', '', -6.650658, 106.643146, 0),
(74, 6, 6, 72, 3, 4, 19, 10, 9, '1984-10-30', 0, 'JD-87-74', 'Tanah', 'SURAT HIBAH TANGGAL 30/10/1984', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Hj. Aisyah persil No. 8 kelas D.I. luas 45 m2</li><li>Harus dibuat Akta Hibah</li><li>Surat pernyataan hibah asli</li></ol><p><br></p><p>Box : 9&nbsp;<br></p>', 69, '', 0, '45', '', -6.580395, 106.746337, 0),
(75, 6, 2, 72, 3, 6, 20, 10, 9, '1970-06-26', 0, 'JD-87-75', 'Tanah', 'SURAT WAKAF TANGGAL 26/06/70', '<p>Riwayat :&nbsp;</p><ol><li>Wakaf dari Ma Manah dan Ma Ening luas 230,6 m2 tanggal 26 Juni 1970</li><li>Harus dibuat Akta Hibah</li><li>Surat Wakaf fotokopi bersegel</li></ol><p><br></p><p>Box : 9</p>', 71, '', 0, '231', '', -6.580395, 106.746337, 0),
(76, 6, 2, 72, 3, 2, 16, 10, 9, '2015-03-02', 0, 'JD-87-76', 'Tanah', 'AJB NO. 052/2015', '<p>Riwayat :&nbsp;</p><ol><li>Jual beli dari Ny. Juriah dan Tn Kiki Dasuki kepada Usman Ahmadi. Luas 60 m2</li><li>AJB asli&nbsp;</li><li>Harus dibuat sertifikat atas nama JAI</li><li>Harus dibuat surat contra letter dari Usman Ahmadi</li></ol><p><br></p><p>Box : 9</p>', 70, '', 0, '60', '', -6.580395, 106.746337, 0),
(77, 6, 2, 83, 3, 4, 18, 10, 9, '1996-07-07', 0, 'JD-92-77', 'Tanah', 'DAFTAR INVENTARIS TANGGAL 07/07/1996', '<p>Riwayat : </p><ol><li>Hibah lisan dari Pak Armuja. Luas tanah 276 m2 dan 174 m2. </li><li>Dalam bundel tidak ada bukti kepemilikikan tanah hanya surat jaidad No. 03/10 Ihsan HS/Mei 2007 perihal Pertanggung Jawaban Pembuat Tempat Widhu dan MCK Masjid dan daftar inventaris</li><li>Harus dibuat Akta Hibah</li></ol><p><br></p><p>Box : 9</p>', 72, '', 0, '400', '', -6.610603, 106.66393, 0),
(78, 6, 2, 89, 3, 2, 16, 10, 9, '2004-05-19', 0, 'JD-18-78', 'Tanah', 'AJB NO. 1697/2004', '<p>Riwayat :&nbsp;</p><ol><li>Jual beli dengan&nbsp;AJB.no.1697/2004 dari Z.Arifin kepada Mubarik Ahmad tgl.19 Mei 2004 luas tanah 1250.m2</li><li>AJB asli dan fotokopi, SPPT asli</li><li>Harus disertifikasi atas nama JAI</li><li>Harus ada contra letter dari nama Mubarik Ahmad</li></ol><p><br></p><p>Box : 9</p>', 73, '', 0, '1250', '', -6.610865, 106.678654, 0),
(79, 6, 2, 89, 3, 4, 18, 10, 11, '0000-00-00', 0, 'JD-18-79', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat :</p><ol><li>Hibah dari keluarga Alm. H. Moh Rauf</li><li>Tidak ada dokumen</li><li>Harus dibuat akta hibah</li></ol><p><br></p><p>Box : 9</p>', 73, '', 0, '845', '', -6.610865, 106.678654, 0),
(80, 6, 2, 89, 3, 4, 18, 10, 11, '0000-00-00', 0, 'JD-18-80', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Pak Rainah. Menurut keterangan tinggal keturunan ke-4 ada yang ahmadi dan non ahmadi. Tanah pekuburan luas 500 m2</li><li>Tidak ada dokumen&nbsp;</li><li>Harus dibuat akta hibah&nbsp;</li></ol><p><br></p><p>Box : 9</p>', 73, '', 0, '500', '', -6.610865, 106.678654, 0),
(81, 6, 2, 89, 3, 4, 19, 10, 9, '1992-12-15', 0, 'JD-18-81', 'Tanah', 'SURAT PERNYATAAN HIBAH 300,9', '<p>Riwayat : </p><ol><li>Hibah dari Abdul Karim bin H. Mohammad Soleh kepadaJAI tanah seluas 300,9 m2.</li><li>Surat hibah asli tanggal 15 Desember 1992</li><li>Harus dibuat surat contra letter</li></ol><p><br></p><p>Box : 9</p>', 73, '', 0, '300,9', '', -6.610865, 106.678654, 0),
(82, 6, 2, 89, 3, 4, 19, 10, 9, '1992-12-15', 0, 'JD-18-82', 'Tanah', 'SURAT PERNYATAAN HIBAH 163', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Abdul Karim bin H. Mohammad Soleh kepadaJAI tanah seluas 163 m2.</li><li>Surat hibah asli tanggal 15 Desember 1992</li><li>Harus dibuat surat contra letter</li></ol><p><br></p><p>Box : 9</p>', 73, '', 0, '163', '', -6.610865, 106.678654, 0),
(83, 6, 2, 89, 3, 4, 18, 10, 11, '0000-00-00', 0, 'JD-18-83', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Pak Husen dan Pak H.Soleh tgl.30-3-1991(tdk ada dalam bundel)</li><li> Masjid Attaufik 210.m2 Luas tanah 400.m2</li><li>Tidak ada dokumen</li><li>HARUS DIVERIFIKASi</li></ol><p><br></p><p>Box : 9</p>', 74, '', 0, '400', '', -6.610865, 106.678654, 0),
(84, 6, 2, 89, 3, 4, 18, 10, 11, '0000-00-00', 0, 'JD-18-84', 'Tanah', 'SURAT PERNYATAAN HIBAH 304,5', '<p>Riwayat :&nbsp;</p><ol><li>HIBAH DARI PAK KARIM&nbsp; 134,5 M2. </li><li>HIBAH DARI PAK SAIRAN&nbsp; 170 M2 </li><li>Hibah dari Pak.Karim 134.5.m2 (1.Rumah Dinas 134.5.m2 dan Madrasah 7 x 11.5.m2 Pernyataan Hibah 15-12-1992. </li><li>SURAT PERNYATAAN HIBAH TANAH dari Bp.Abdul Karim bin H.Mohammad Soleh kepada Bahtiar Ahmad Safari bin Abdul Hamid tgl. 15 Desember 1992 dengan luas tanah 300.9.m2</li><li>Tidak ada dokumen</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p>', 74, '', 0, '304,5', '', -6.610865, 106.678654, 0),
(85, 6, 2, 89, 3, 4, 18, 10, 11, '0000-00-00', 0, 'JD-18-85', 'Tanah', 'SURAT PERNYATAAN HIBAH 1320', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Soleh 900 m2, Satria 275 m2 dan Karim 163 m2</li><li>Tidak ada dokumen&nbsp;</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p>', 74, '', 0, '1320', '', -6.610865, 106.678654, 0),
(86, 6, 0, 95, 3, 4, 18, 10, 11, '0000-00-00', 0, 'JD-186-86', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Syamsudin</li><li>Tidak ada dokumen</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p>', 75, '', 0, '150', '', -8.12778, 115.077717, 0),
(87, 6, 2, 140, 3, 4, 18, 10, 11, '0000-00-00', 0, 'JD-188-87', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat :&nbsp;</p><ol><li>Tanah milik PLN. Ada surat oper garap luas 35 m2. Harga Rp. 20,000/100,000 m2. Tanah milik Arif Dastaman</li><li>Pembangunan masjid diprotes masyarakat. Masjid 4x6 m2. Dari 35 - 125</li><li>Tidak ada dokumen</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p>', 76, '', 0, '40', '', -6.636843, 106.635861, 0),
(88, 6, 2, 140, 3, 2, 18, 10, 11, '0000-00-00', 0, 'JD-188-88', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat :&nbsp;</p><ol><li>Tidak ada dokumen. Hanya ada proposal dana pelunasan tanah asli dan fotokopi tanggal 30 Juli 2007</li><li>Tidak ada dokumen&nbsp;</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p>', 76, '', 0, '500', '', -6.636843, 106.635861, 0),
(89, 6, 2, 171, 3, 4, 18, 10, 11, '0000-00-00', 0, 'JD-88-89', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat : </p><ol><li>Tanah hibah daari Abdul Mukti berupa tanah pekuburan</li><li>Tidak ada dokumen. Hanya ada informasi di data inventaris</li><li>Harus ada surat asli. Harus dibuatkan akta hibah</li></ol><p><br></p><p>Box : 9</p>', 77, '', 0, '500', '', -6.565039, 106.591928, 0),
(90, 6, 2, 171, 3, 4, 19, 10, 9, '1979-06-06', 0, 'JD-88-90', 'Tanah', 'SURAT PERNYATAAN HIBAH  72 DAN 500', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari dari E.Sulaeman bin H.Damiri.(alm) dan Neneng biti H.Damiri. Surat Keterangan Hibah Tanah Darat luas tanah( no.F.1149&nbsp; Pesil.28 =72.m2 dan F.1149 Persil 170 Blok Makam luas tanah 500.m2 tgl.6 Juni 1979.</li><li>Masjid dirusak masa tahun 2005</li><li>Dokumen fotokopi</li></ol><p><br></p><p>Box : 9</p>', 77, '', 0, '672', '', -6.565039, 106.591928, 0),
(91, 6, 2, 171, 3, 2, 15, 10, 9, '1986-07-25', 0, 'JD-88-91', 'Tanah', 'SURAT PERNYATAAN JUAL BELI 40', '<p>Riwayat :&nbsp;</p><ol><li>Jual beli. Tanah Arif Dastaman 40 m2</li><li>Informasi : Hibah 1 rumah dinas 65 m2 dari Arif Dastaman. Sudah dihancurkan.&nbsp;</li><li>Dokumen fotokopi</li></ol><p><br></p><p>Box : 9</p>', 77, '', 0, '40', '', -6.564224, 106.604185, 0),
(92, 6, 2, 290, 0, 12, 7, 10, 7, '1978-04-12', 0, 'JD-89-92', 'Tanah', 'AKTA PELESAPASAN TANAH NO. C301/1978', '<p>Riwayat :</p><ol><li>Akta pelepasa hak tanggal 4 Desember 1978. Atas nama Ir. A. Qoyyum</li><li>Asli dan Fotokopi</li></ol><p><br></p><p>Box : 9</p>', 78, '', 0, '280', '', -6.577034, 106.761381, 1),
(93, 6, 2, 290, 0, 12, 7, 10, 7, '1978-03-22', 0, 'JD-89-93', 'Tanah', 'AKTA PELESAPASAN TANAH NO. C1054/1978', '<p>Riwayat : </p><ol><li>Akta pelepasan hak tanah nomor c1054/1978 tanggal 22 Maret 1978</li><li>Dokumen asli dan fotokopi</li></ol><p><br></p><p>Box : 9</p>', 78, '', 0, '37220', '', -6.577034, 106.761381, 1),
(94, 6, 2, 290, 0, 12, 7, 10, 7, '1978-04-22', 0, 'JD-89-94', 'Tanah', 'AKTA PELEPASAN TANAH NO. C 1714/1978', '<p>Riwayat :&nbsp;</p><ol><li>Akta pelepasan hak tanah nomor c1714/1978&nbsp;</li><li>Asli</li></ol><p><br></p><p>Box : 9</p>', 78, '', 0, '1177', '', -6.577034, 106.761381, 1),
(95, 6, 2, 290, 0, 12, 7, 10, 7, '1978-04-12', 0, 'JD-89-95', 'Tanah', 'AKTA PELEPASAN TANAH NO. C 583/1978', '<p>Riwayat :&nbsp;</p><ol><li>Akta pelepasan hak tanah nomor c583/1978&nbsp;</li><li>Asli dan Fotokopi<br></li></ol><p><br></p><p>Box : 9</p>', 78, '', 0, '4255', '', -6.577034, 106.761381, 1),
(96, 6, 2, 290, 0, 2, 16, 10, 7, '1956-11-28', 0, 'JD-89-96', 'Tanah', 'AKTA PENJUALAN DAN PEMBELIAN NO. 6/1959', '<p>Riwayat : </p><ol><li>Jual beli dari Yayasan Kesejahteraan Sosial kepada Hasan Ahja Barmawi atas nama JAI.</li><li>Dokumen akta asli dan fotokopi</li></ol><p><br></p><p>Box : 9</p>', 78, '', 0, '2910', '', -6.577034, 106.761381, 1),
(97, 6, 2, 290, 0, 12, 12, 10, 7, '1960-11-01', 0, 'JD-89-97', 'Tanah', 'SHGB NO.5 ', '<p>Riwayat : </p><ol><li>Tidak ada informasi</li><li>Dokumen SHGB fotokopi</li></ol><p><br></p><p>Box : 9</p>', 78, '', 0, '15200', '', -6.577034, 106.761381, 2),
(98, 6, 2, 290, 0, 4, 6, 10, 7, '1990-09-03', 0, 'JD-89-98', 'Tanah', 'SHM NO 481 ', '<p>Riwayat : </p><ol><li>SHM atas nama M. Hanizar. kemudian di akte hibahkan No. 773/XI/1990 dari H. Hanizar kepada Sy. Datuk Bagindo Ratu dan Drs. Ishak Gani. </li><li>Sepertinyua jadi wakaf sehingga harus diselesaikan</li><li>SHM Asli dan potocopy tanggal 3-9-1990, Akta Hibah no 773/xx/1990  Asli dan fc tanggal 14 nopember 1990. SPPT fc tanggal 1 april 1998</li></ol><p><br></p><p>Box : 9</p>', 78, '', 0, '1000', '', -6.577034, 106.761381, 1),
(99, 6, 2, 290, 0, 2, 17, 10, 7, '0000-00-00', 0, 'JD-89-99', 'Tanah', 'SPPT NO. 32.71.040.002-001-0018.0/ 99-02', '<p>Riwayat : </p><ol><li>Jual beli. SPPT No. 32.71.040.002-001-0018.0/ 99-02  a/n Drs.Ishak Djuarsa fotokopi</li><li>Luas Tanah 804 m2</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p>', 78, '', 0, '804', '', -6.577034, 106.761381, 2),
(100, 6, 2, 290, 0, 2, 22, 10, 7, '1960-09-23', 0, 'JD-89-100', 'Tanah', 'SURAT JUAl BELI MUTLAK', '<p>Riwayat :&nbsp;</p><ol><li>Dibeli dari Darmaatmaja oleh R. I. Wiraatmaja tanah seluas 675 m2, tanggal 23 September 1960.&nbsp;</li><li>Dijual kembali oleh R. I. Wiraatmaja kepada Rd. Hidayat, Ketua JAI atas nama JAI tanggal 30 September 1960</li><li>Dokumen fotokopi.&nbsp;</li></ol><p><br></p><p>Box: 9</p>', 78, '', 0, '675', '', -6.577034, 106.761381, 2),
(101, 6, 2, 290, 0, 2, 22, 10, 7, '1960-08-24', 0, 'JD-89-101', 'Tanah', 'SURAT JUAl BELI MUTLAK', '<p>Riwayat : </p><ol><li>Jual beli dari Sukri Husin kepada Yayasan Pendidikan Islam JAI tanah seluas 5985 m2 tanggal 24 Agustus 1960. Surat salinan atas nama Ahmad Soepardja, Ketua JAI Cabang Sindangbarang.</li><li>Dokumen surat jual beli fotokopi</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p>', 79, '', 0, '5985', '', -6.577034, 106.761381, 2),
(102, 6, 2, 290, 0, 2, 22, 10, 7, '1960-11-17', 0, 'JD-89-102', 'Tanah', 'SURAT JUAl BELI MUTLAK', '<p>Riwayat : </p><ol><li>Jual beli dari Ny. T. Djubaedah kepada Raden Iwa Wiraatmaja atas nama JAI tanah 500 m2 tanggal 17 November 1960</li><li>Dokumen fotokopi</li><li>HARUS DIVERIFIKASi</li></ol><p><br></p><p>Box : 9</p>', 79, '', 0, '500', '', -6.577034, 106.761381, 2),
(103, 6, 2, 290, 0, 2, 22, 10, 9, '1993-03-03', 0, 'JD-89-103', 'Tanah', 'SURAT PERJANJIAN', '<p>Riwayat : </p><ol><li>Jual beli</li><li>Surat perjanjian asli. Sertifikat nomor 119 dan 120 yang disebutkan di dalam surat tidak ada dokumennya.  </li><li>Sedang proses sertifikasi</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p>', 79, '', 0, '3280', '', -6.577034, 106.761381, 1),
(104, 6, 2, 114, 3, 12, 6, 11, 9, '0000-00-00', 0, 'JD-292-104', 'Tanah', 'SHM NO. 441', '<p>Riwayat : </p><ol><li>SHM. No00441 tgl.24 Mey 2000 a/n Ali Imron Sukri Mubarok Hak Adat luas tanah 16.m2 Desa Girisekar Kec.Panggang Kac.Gunung Kidul DIY</li><li>Dokumen SHM asli Nomor 13.02.01.02.1.00441</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p>', 96, '', 0, '165', '', -8.040434, 110.725031, 0),
(105, 6, 2, 114, 3, 2, 22, 11, 9, '2009-05-08', 0, 'JD-292-105', 'Tanah', 'SURAT KESEPAKATAN JUAL BELI', '<p>Riwayat :&nbsp;</p><ol><li>Tanah jual beli Bpk Sakir Wastono kepada Ahmad Kamsori atas nama JAI. Luas 5500 m2</li><li>Dokumen jual beli fotokopi. Ada fotokopi SHM atas nama Ny. Wastono tanah 5800 m2</li><li>Informasinya surat2 tanah di gadaikan ke bank untuk pinjaman usaha keluarga.</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p>', 97, '', 0, '5500', '', -8.040434, 110.725031, 0),
(106, 6, 2, 114, 3, 4, 18, 11, 11, '0000-00-00', 0, 'JD-292-106', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Ir. Zakir. Ada masjid dan rumah misi</li><li>Aset tidak diketahui</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p>', 96, '', 0, '2000', '', -8.040434, 110.725031, 0),
(107, 6, 2, 250, 0, 4, 18, 11, 11, '0000-00-00', 0, 'JD-245-107', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat : </p><ol><li>Hibah lisan dari Pak Firdasi</li><li>Tidak ada dokumen</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 15</p>', 98, '', 0, '225', '', -7.840178, 110.461834, 2),
(108, 6, 2, 250, 3, 4, 18, 11, 11, '0000-00-00', 0, 'JD-245-108', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat :&nbsp;</p><ol><li>MILIK PAK RW DAN KELUARGA YG MASUK JEMAAT DAN AKAN DIHIBAHKAN KEPADA JEMAAT&nbsp;</li><li>TIDAK ADA DOKUMEN TANAH Kecuali Rencana Pembangunan Masjid dan Dan Pembelian Tanah seluas 1500.m2 dengan harga Rp.100.000.000 Surat Pernyataan Dari Nasir Ahmad tgl 15 Desember 2009</li><li>ADA BUKTI Pengiriman Uang Rp.75.000.000 via BRI tgl 03-12-09 dan Rp.37.500.000 tgl.07-12-09 a/n BRI-Nasir Ahmad</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 15</p>', 98, '', 0, '210', '', -7.840178, 110.461834, 0),
(109, 6, 2, 360, 3, 2, 5, 11, 7, '0000-00-00', 0, 'JD-23-109', 'Tanah', 'SHM. NO. 10', '<p>Riwayat : </p><ol><li>JUAL-BELI</li><li>SHM NO.10 (ASLI) ADA DI PB</li><li>DIUSAHAKAN ADA PBB / SPPT NYA </li><li>1. HAK PAKAI&nbsp; no.19 a/n Abdul Wahid dan R.Ahmad Sarido tgl.16 Pebruari 1984 luas tanah 805.m2 berlaku 23 September 1990 Asal Persil P/Gk. Jln.Atmosukarto no.15 Desa Kotabaru Kel.Kotabaru Kec.Gondokusuman DIY. 2. SHM no,10 a/n JAI tgl.11 Oktober 1988</li></ol><p><br></p><p>Box : 15</p>', 99, '', 0, '805', '', -7.788033, 110.377863, 0),
(110, 6, 2, 63, 3, 4, 6, 10, 9, '2016-12-06', 0, 'JD-263-110', 'Tanah', 'SHM NO. 3313', '<p>Riwayat :&nbsp;</p><ol><li>SHM NO. 3313 asli Tanggal 6 Desember 2016 , denah fc dan surat kuasa fc tanggal 25 desember 2001</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p><p></p><p></p>', 80, '', 0, '130', '', -6.893628, 106.781949, 0),
(111, 6, 2, 88, 3, 12, 18, 12, 11, '0000-00-00', 0, 'JD-264-111', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat : </p><ol><li>Dalam Bundel hanya ada Surat Rencana Pembangunan Masjid seluas 100.m2</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p>', 0, '', 0, '300', '', -6.92188, 106.897026, 0),
(112, 6, 2, 93, 3, 6, 6, 12, 9, '1993-08-18', 0, 'JD-66-112', 'Tanah', 'SHM WAKAF NO. 173', '<p>Riwayat :&nbsp;</p><ol><li>Wakaf dari Pak Solehkepada H. Ambari wakil dari JAI dengan Surat Pernyataan Wakaf tanggal 12 Mei 2000. Luas tanah 512 m2. SHM Wakaf No. 173 tangga 18 Agustus 1992.</li><li>Dokumen shm asli</li></ol><p><br></p><p>Box : 9</p>', 82, '', 0, '515', '', -7.056496, 106.74919, 0),
(113, 6, 2, 93, 3, 2, 17, 12, 11, '0000-00-00', 0, 'JD-66-113', 'Tanah', 'SPPT', '<p>Riwayat :&nbsp;</p><ol><li>Jual beli dari Pak Sutia seluas 2500 m2 dan dari JAI seluas 2500 m2. Jadi total tanah adalah 5000 m2. Harus dibuatkan akta jual belinya. Ada tanah pekuburan dan SPPT atas nama Pak Rafi Jemaat Singkut.&nbsp;</li><li>Tidak ada dokumen&nbsp;</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p>', 82, '', 0, '5000', '', -7.056496, 106.74919, 0),
(114, 6, 2, 93, 3, 4, 19, 12, 9, '2000-05-12', 0, 'JD-66-114', 'Tanah', 'SURAT PERNYATAAN HIBAH 500', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Alm Pak Uben kepada Pak Ahmad wakil dari JAI. Tanah seluas 500 m2 nomor persil 37 a D/6800 yang dihibahkan tahun 1999 untuk keperluan JAI. Surat Hibah dibuat tanggal 12 Mei 2000. Harus dibuatkan surat keterangan dari ketua jemaat setempat. Harus dibuatkan akta hibahnya.&nbsp;</li><li>Dokumen hibah asli</li></ol><p><br></p><p>Box : 9</p>', 83, '', 0, '500', '', -7.056496, 106.74919, 0),
(115, 6, 2, 137, 3, 4, 20, 12, 9, '1997-04-10', 0, 'JD-96-115', 'Tanah', 'SURAT KETERANGAN HIBAH MUGNI', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Pak Mugni bin Mian kepada Jemaat Ahmadiyah Indonesia yang diwakili M. Hasan tanggal 8 April 1997. Luas tanah 100 m2. Kondisi masjid dan rumah dinas sudah dihancurkan masyarakat setempat.</li><li>Harus dibuatkan akta tanah</li><li>Dokumen surat hibah fotokopi</li></ol><p><br></p><p>Box : 9</p>', 84, '', 0, '104', '', 0, 0, 0),
(116, 6, 2, 137, 3, 4, 21, 12, 7, '0000-00-00', 0, 'JD-96-116', 'Tanah', 'SURAT HIBAH OHI BIN ENO', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Pak Ohi tanggal 10 April 1999. Masjid nya sedang dibangun. Harus dibuatkan akta hibanhnya. </li><li>Surat Hibah tangga 10 April 1999 dan 19 Oktober 2000.</li><li>Akta hibah asli tanggal 19 Oktober 2000</li></ol><p><br></p><p>Box : 9</p>', 85, '', 0, '100', '', -6.887581, 106.823172, 0),
(117, 6, 2, 166, 3, 4, 19, 12, 9, '1995-08-04', 0, 'JD-93-117', 'Tanah', 'SURAT HIBAH IBU INING, ROMANAH', '<p>Riwayat : </p><ol><li>Surat Hibah Mutlak FC terdapat 2 surat dengan total luas 157.7 m2 tanggal 4 agustus 1995. Ibu Ining luas 56 m , ibu romanah luas 101,7&nbsp;</li><li>Dokumen fotokopi</li></ol><p><br></p><p>Box : 9</p>', 86, '', 0, '158', '', -6.797132, 106.719107, 0),
(118, 6, 2, 166, 3, 4, 19, 12, 9, '1994-04-01', 0, 'JD-93-118', 'Tanah', 'SURAT HIBAH PAK MAHROM, MUZAF, IBU ITI', '<p>Riwayat :&nbsp;</p><ol><li>Surat Hibah Mutlak FC PA MUZAF dan IBU ITI fc dengan masing2 luas bpk muzaf 70 m dan ibu iti 19,5 m dan total luas 89,5 m. Tanggal 1 April 1994</li><li>Harus diukur ulang</li></ol><p><br></p><p>Box : 9</p>', 87, '', 0, '142', '', 0, 0, 0),
(119, 6, 2, 166, 3, 4, 19, 12, 9, '0000-00-00', 0, 'JD-93-119', 'Tanah', 'SURAT HIBAH PAK TURI', '<p>Riwayat :&nbsp;</p><ol><li>Surat Hibah Mutlak FC tanggal 4 agustus 1995</li><li>Harus dibuat akta hibah</li></ol><p><br></p><p>Box : 9</p><div><br></div>', 89, '', 0, '280', '', -6.795898, 106.715432, 0),
(120, 6, 2, 229, 3, 6, 6, 12, 9, '1997-07-30', 0, 'JD-72-120', 'Tanah', 'SHM WAKAF NO. 256', '<p>Riwayat :&nbsp;</p><ol><li>HIBAH DARI IBU HJ. HALIMAH SHM.WAKAF no.256 tgl.30-7-1993 luas tanah 182.m2&nbsp;</li><li>Harus dibuatkan akta wakaf</li></ol><p><br></p><p>Box : 9</p>', 90, '', 0, '182', '', -6.895941, 106.938555, 0),
(121, 6, 2, 235, 3, 2, 6, 12, 9, '1998-04-17', 0, 'JD-64-121', 'Tanah', 'SHM NO 223', '<p>Riwayat :&nbsp;</p><ol><li>SHM NO 199 A/N ASEP SAEPUDIN ( 555 M2 ), 2). SHM NO 223 A/N ASEP SAEPUDIN ( 270 M2 ), 3). SHM NO 505 A/N ASEP SAEPUDIN ( 475 M2 )&nbsp;</li><li>Harus dipecah sertifikatnya</li></ol><p><br></p><p>Box : 9</p>', 91, '', 0, '1300', '', -6.797132, 106.719107, 0),
(122, 6, 2, 235, 3, 2, 6, 12, 9, '2006-06-20', 0, 'JD-64-122', 'Tanah', 'SHM NO 848', '<p>Riwayat :&nbsp;</p><ol><li>SHM&nbsp; FC 20 juni 2006</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p><p><br></p><p></p><p></p>', 91, '', 0, '565', '', 0, 0, 0),
(123, 6, 2, 235, 3, 2, 6, 12, 9, '1999-04-15', 0, 'JD-64-123', 'Tanah', 'SHM N0 506', '<p>Riwayat :</p><ol><li>Tidak ada riwayat</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 9</p>', 91, '', 0, '1115', '', 0, 0, 0),
(124, 6, 2, 235, 3, 2, 15, 12, 11, '2000-01-31', 0, 'JD-64-124', 'Tanah', 'KWITANSI JUAl BELI', '<p>Riwayat : </p><ol><li>Ada kwitansi pembelian tanah seluas 100.m2 Rp.1.250.000,- tgl 13-1-2000&nbsp; a/n Mahpudin</li></ol><p><br></p><p>Box : 9</p>', 91, '', 0, '270', '', -6.782793, 106.78338, 0),
(125, 6, 2, 235, 3, 12, 18, 12, 11, '0000-00-00', 0, 'JD-64-125', 'Tanah', 'SURAT PERNYATAAN OPER-GARAP', '<p>Riwayat :&nbsp;</p><ol><li>Jaul beli, over garap</li><li>ada banguan tua dijual dan menjadi tanah kosong</li><li>Surat pernyataan over garap tanggal 9-6-1999</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p>', 91, '', 0, '210', '', 0, 0, 0),
(126, 6, 2, 235, 3, 12, 18, 12, 11, '2003-11-29', 0, 'JD-64-126', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat :&nbsp;</p><ol><li>Laporan pembelian tanah asli dan otokopi</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p>', 91, '', 0, '170', '', 0, 0, 0),
(127, 6, 2, 235, 3, 2, 22, 12, 9, '1999-09-10', 0, 'JD-64-127', 'Tanah', 'SURAT JUAL BELI SEBELUM AKTA A/N H.Mahpudin', '<p>Riwayat :</p><ol><li>Surat jual beli fc tanggal 10 september 1999, dan kwitansi fc tanggal 13-1-2000, SURAT PERNYATAAN ASLI tanggal 18 agustus 1999 atas nama H. Mahudin</li><li>HARUS DIVERFIKASI</li></ol><p><br></p><p>Box : 9</p>', 91, '', 0, '440', '', -6.782793, 106.78338, 0),
(128, 6, 2, 304, 3, 4, 6, 12, 9, '1991-12-31', 0, 'JD-6-128', 'Tanah', 'SHM NO. 625', '<p>Riwayat :&nbsp;</p><ol><li>&nbsp;LUAS ( 785 + 36 + 150 )&nbsp;</li><li>HIBAH DARI BPK RUSTAM ADNAN</li><li>ADA SURAT PERNYATAAN PELEPASAN HAK 10-5-2000&nbsp;</li><li>SHM ( Wakaf).no.625 a/n H.Rustam Adenan tgl.31 Desember 1991 luas tanah 785.m2.</li><li>Surat Pernyataan Sertifikate kpd Amir Nasional JAI, dari H.Ahmad Basyir, H.Rustam Adenan, H.Ratu Juhana tgl 10 Mei 2000.</li><li>Dokumen shm fotokopi dan surat pernyataan fotokopi dengan luas 785 m2</li></ol><p><br></p><p>Box : 9</p>', 92, '', 0, '870', '', -6.915852, 106.927501, 0),
(129, 6, 2, 304, 3, 2, 16, 12, 9, '2002-02-28', 0, 'JD-6-129', 'Tanah', 'TANAH HIBAH 400 M2', '<p>Tidak ada riwayat</p><p><br></p><p>Box : 9</p>', 92, '', 0, '400', '', 0, 0, 0),
(130, 6, 2, 352, 3, 6, 6, 12, 9, '0000-00-00', 0, 'JD-148-130', 'Tanah', 'SHM WAKAF NO. 35', '<p>Riwayat : </p><ol><li>Wakaf dari Alm. Gazali. Tanah seluas 192 m2. SHM Wakaf No. 35 tanggal 12 Agustus 1992 atas nama M. Nadrudin. Tanah Masjid Mubarak. Atas nama aparat termasuk Pak Santoni.</li></ol><p><br></p><p>Box : 9</p>', 109, '', 0, '192', '', -7.22086, 106.591444, 0);
INSERT INTO `assets` (`id`, `categoryid`, `adminid`, `clientid`, `userid`, `manufacturerid`, `modelid`, `supplierid`, `statusid`, `purchase_date`, `warranty_months`, `tag`, `name`, `serial`, `notes`, `locationid`, `purchase_order`, `value`, `condition`, `removal_date`, `lat`, `lng`, `originalid`) VALUES
(131, 6, 2, 352, 3, 4, 18, 12, 11, '0000-00-00', 0, 'JD-148-131', 'Tanah', 'TANAH HIBAH PAK BASYIR', '<p>Riwayat : </p><ol><li>Hibah dari Pak Basyir. Tanah seluas 5000 m2. Sertifikat induk atas nama Pak Basyir. Harus dibuatkan akta hibah.</li></ol><p><br></p><p>Box : 9</p>', 109, '', 0, '5000', '', -7.22086, 106.591444, 0),
(132, 6, 2, 355, 3, 2, 6, 12, 9, '1992-02-08', 0, 'JD-95-132', 'Tanah', 'SHM NO. 364', '<p>Riwayat : </p><ol><li>SHM&nbsp; FC 8 februari 1992, DAFTAR ISIAN INVENTARIS tanggal 3 maret 1997</li><li>JUAL-BELI A/N PAK SODIK</li><li>HRS DIBUAT SRT PERNYATAAN DAN PELEPASAN HAK</li></ol><p><br></p><p>Box : 9</p><div><br></div><div><br></div>', 95, '', 0, '190', '', -6.976659, 106.721641, 0),
(133, 6, 2, 355, 3, 4, 19, 12, 9, '0000-00-00', 0, 'JD-95-133', 'Tanah', 'SURAT HIBAH TANAH A/N SUKATJA 11 MARET 97', '<p>Riwayat :&nbsp;</p><ol><li>Surat hibah fotokopi</li></ol><p><br></p><p>Box : 9</p>', 95, '', 0, '500', '', 0, 0, 0),
(134, 6, 2, 355, 3, 4, 19, 12, 9, '1999-08-13', 0, 'JD-95-134', 'Tanah', 'SURAT PERNYATAAN H.AHMAD BASYIR', '<p>Riwayat :&nbsp;</p><ol><li>Tidak ada riwayat</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p>', 95, '', 0, '100', '', -6.950896, 106.469135, 0),
(135, 6, 2, 355, 3, 4, 18, 12, 11, '0000-00-00', 0, 'JD-95-135', 'Tanah', 'TANAH HIBAH LISAN SUKAYAT', '<p>Riwayat :&nbsp;</p><ol><li>Tidak ada informasi riwayat. Hanya hibah lisan</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p>', 95, '', 0, '500', '', 0, 0, 0),
(136, 6, 2, 93, 3, 2, 18, 12, 9, '2004-11-22', 0, 'JD-66-136', 'Tanah', 'SURAT KETERANGAN RUMAH', '<p>Riwayat :&nbsp;</p><ol><li>Dari jual beli</li><li>Ada surat keterangan rumah asli dan fotokoi tanggal 27 Oktober 2004. Surat no.09./Jaidad/27 oktober 2004<li>Ada rumah missi&nbsp;</li><li>HARUS DIVERIFIKASI</li></li></ol><p><br></p><p>Box : 9</p>', 82, '', 0, '450', '', -7.056496, 106.74919, 0),
(137, 6, 2, 137, 3, 12, 18, 12, 11, '0000-00-00', 0, 'JD-96-137', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat :&nbsp;</p><ol><li>Tidak ada informasi</li></ol><p><br></p><p>Box : 9</p>', 84, '', 0, '700', '', -6.896105, 106.822461, 0),
(138, 6, 2, 166, 3, 12, 18, 12, 11, '0000-00-00', 0, 'JD-93-138', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat :&nbsp;</p><ol><li>Tidak ada informasi</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 9</p>', 86, '', 0, '640 ', '', -6.797132, 106.719107, 0),
(139, 6, 2, 229, 3, 6, 18, 12, 9, '0000-00-00', 0, 'JD-72-139', 'Tanah', 'AKTA PENGGANTI AKTA IKRAR WAKAF', '<p>Riwayat :&nbsp;</p><ol><li>Salinan akta atas nama zaenal tanggal 13 November 1989</li></ol><p><br></p><p>Box : 9</p>', 90, '', 0, '150', '', 0, 0, 0),
(140, 6, 2, 5, 3, 4, 18, 13, 11, '0000-00-00', 0, 'JD-149-140', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat : </p><ol><li>Hibah dari Dindin Nasir Ahmad. Hibah masjid ukuran 5x7 m2. Luas tanah 200 m2</li><li>Harus dibuatkan akta hibah. Hanya ada daftar isian inventaris tanggal 6 Juni 1997</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 10</p>', 134, '', 0, '200', '', -7.340398, 107.012178, 0),
(141, 6, 2, 5, 3, 4, 18, 13, 11, '0000-00-00', 0, 'JD-149-141', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat : </p><ol><li>Hibah dari Rukmana masjid An-Nur ukuran 8x10 m2. Luas tanah 120 m2</li><li>Tidak ada dokumen </li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 10</p>', 134, '', 0, '120', '', -7.340398, 107.012178, 0),
(142, 6, 2, 5, 3, 4, 19, 13, 7, '1997-06-15', 0, 'JD-149-142', 'Tanah', 'SURAT PERNYATAAN HIBAH 100', '<p>Riwayat:&nbsp;</p><ol><li>Hibah dari Pak Usan (Alm). Masjid An-Nur ukuran 7x5 m2. Luas tanah 100 m2</li><li>Surat pernyataan hibah fotokopi</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 10&nbsp;&nbsp;&nbsp;&nbsp;</p>', 110, '', 0, '100', '', -7.424167, 106.93331, 0),
(143, 6, 2, 266, 3, 12, 18, 13, 11, '0000-00-00', 0, 'JD-253-143', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat : </p><ol><li>Tanah pinjaman. Diusahan tanah dimiliki Jemaat</li><li>Jemaat baru Ranca Umbul</li></ol><p><br></p><p>Box : 9</p><p><br></p>', 136, '', 0, '32', '', -7.405101, 106.9666, 0),
(144, 6, 2, 266, 3, 12, 18, 13, 11, '0000-00-00', 0, 'JD-253-144', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat :&nbsp;</p><ol><li>Tanah pinjaman di Ranca Umbul&nbsp;</li><li>Masjid ukuran 64 m2</li><li>Tidak ada dokumen</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 10</p>', 136, '', 0, '64', '', -7.405101, 106.9666, 0),
(145, 6, 2, 25, 3, 6, 6, 13, 9, '1999-12-27', 0, 'JD-129-145', 'Tanah', 'SHM WAKAF NO. 20', '<p>Riwayat :&nbsp;</p><ol><li>WAkaf/Hibah dari Pak Saca. Nomor 20 tanggal 27 Desember 1993 atas nama Saca. Luas tanah 210 m2</li><li>Diusahan nazir membuat pernyataan bahwa tanah milik JAI</li><li>HARUS DIVERIFIKASI</li></ol><p><br></p><p>Box : 10</p>', 111, '', 0, '210', '', -7.080014, 107.169051, 0),
(146, 6, 2, 25, 3, 4, 18, 13, 11, '0000-00-00', 0, 'JD-129-146', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Pak Fachrudin. Madrasah ukuran 6x10 m2</li><li>Tidak ada dokumen</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 111, '', 0, '144', '', -7.080014, 107.169051, 0),
(147, 6, 2, 25, 3, 2, 16, 13, 9, '0000-00-00', 0, 'JD-129-147', 'Tanah', 'AJB NO 04/2009', '<p>Riwayat :&nbsp;</p><ol><li>Jual beli.&nbsp;</li><li>AJB asli tanggal 14 Mei 2009</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 111, '', 0, '434', '', -7.071612, 107.175357, 0),
(148, 6, 2, 25, 3, 2, 16, 13, 9, '0000-00-00', 0, 'JD-129-148', 'Tanah', 'AJB NO 12/2010', '<p>Riwayat :&nbsp;</p><ol><li>Jual beli</li><li>AJB asli tanggal 23 November 2010</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 111, '', 0, '133', '', -7.073017, 107.175604, 0),
(149, 6, 2, 45, 3, 4, 21, 13, 9, '1998-07-07', 0, 'JD-178-149', 'Tanah', 'AKTA HIBAH NO. 31/457/BP/98', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari A. Rasidi dan E. Kusmana kepada JAI. Rencana dijual dan beli lagi. SPPT tahun 1997. Hak milik atas nama Ahmad Rasidi huruf C Nomor 1130 persil Nomor II/15254 Ciranjang</li><li>Akta hibah asli nomor 31/457/BP/98 tanggal 7 Juli 1998. Surat hibah fotokopi. Pernyataan hibah dari A. Sarida fotokopi tanggal 4 Juli 1997 lokasi c no 1130 kohir 312 persil nomor 151a</li></ol><p><br></p><p>Box : 10</p>', 112, '', 0, '400', '', -6.823568, 107.30367, 0),
(150, 6, 2, 45, 3, 4, 19, 13, 9, '1976-07-01', 0, 'JD-178-150', 'Tanah', 'SURAT PERNYATAAN HIBAH 640', '<p>Riwayat :</p><ol><li>Surat pernyataan hibah fotokopi dari Ahmad Rasidi dan Kusmana</li></ol><p><br></p><p>Box : 10</p>', 113, '', 0, '640', '', -6.848733, 107.272039, 0),
(151, 6, 2, 60, 3, 4, 6, 13, 9, '1997-06-10', 0, 'JD-8-151', 'Tanah', 'SHM NO. 195', '<p>Riwayat : </p><ol><li>SHM asli dan fotokopi nomor 195 tanggal 7 September 2001. Ada surat keterangan dari kepala desa ciandam tanggal 11 Juni 1997</li><li>Surat keterangan kepemilikin tanggal 10 Juni 1997 oleh A. Sarida</li><li>Girik nomor 00152 atas nama A. Sarida</li><li>Harus diverifikasi</li><li>Masjid Al Badar</li></ol><p><br></p><p>Box : 10</p>', 114, '', 0, '525', '', -6.746557, 107.182198, 0),
(152, 6, 2, 60, 3, 2, 16, 13, 9, '2010-02-23', 0, 'JD-8-152', 'Tanah', 'AJB no 44.23/02/2010', '<p>Riwayat :&nbsp;</p><ol><li>Jual beli.&nbsp;</li><li>AJB fotokopi tanggal 23 Februari 2010 atas nama Ikmal Ahmad bin Ahmad Sarida</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 114, '', 0, '500', '', -6.746557, 107.182198, 0),
(153, 6, 2, 60, 3, 4, 21, 13, 9, '2010-01-06', 0, 'JD-8-153', 'Tanah', 'Akte Hibah no 03.06/01/2010', '<p>Riwayat :&nbsp;</p><ol><li>Hibah. Akta hibah fotokopi</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 114, '', 0, '546', '', -6.746557, 107.182198, 0),
(154, 6, 2, 60, 3, 4, 19, 13, 9, '2007-09-07', 0, 'JD-8-154', 'Tanah', 'SURAT PERNYATAAN HIBAH 500', '<p>Riwayat :&nbsp;</p><ol><li>Surat pernyataan hibah fotokopi di&nbsp;Blok Sukarohmat, Desa Ciandam, Cianjur, Jawa Barat</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 114, '', 0, '500', '', -6.746557, 107.182198, 0),
(155, 6, 2, 61, 3, 4, 19, 13, 9, '1997-06-22', 0, 'JD-7-155', 'Tanah', 'SURAT HIBAH TANGGAL ', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Sanusi 66 m2 dan Solihih 45 m2. Total 111 m2.&nbsp; Atas nama U. Sanusi atas nama JAI</li><li>Tanah harus diukur kembali</li><li>Harus dibuat akta hibah</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 115, '', 0, '111', '', -7.117849, 107.12942, 0),
(156, 6, 2, 61, 3, 2, 16, 13, 9, '2009-05-14', 0, 'JD-7-156', 'Tanah', 'AJB NO. 04', '<p>Riwayat :&nbsp;</p><ol><li>Atas nama Nurdin bin Noid. Tidak ada informasi</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 115, '', 0, '434', '', -7.026367, 107.12095, 0),
(157, 6, 2, 61, 3, 2, 16, 13, 9, '2012-11-08', 0, 'JD-7-157', 'Tanah', 'AJB NO. 66', '<p>Riwayat :&nbsp;</p><ol><li>Tidak ada informasi</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 115, '', 0, '319', '', 0, 0, 0),
(158, 6, 2, 61, 3, 2, 16, 13, 9, '2012-11-08', 0, 'JD-7-158', 'Tanah', 'AJB NO. 67', '<p>Riwayat :&nbsp;</p><ol><li>Ada fotokopi AJB atas nama Agus Samsul Bahri.&nbsp;</li><li>Tidak ada informasi</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 115, '', 0, '2175', '', 0, 0, 0),
(159, 6, 2, 61, 3, 4, 21, 13, 9, '2010-11-23', 0, 'JD-7-159', 'Tanah', 'AKTA HIBAH NO. 12', '<p>Riwayat :&nbsp;</p><ol><li>Hanya ada fotokopi AJB. Atas nama Dede Pahrudin. TIdak ada informasi</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 115, '', 0, '133', '', -7.026367, 107.12095, 0),
(160, 6, 2, 61, 3, 4, 6, 13, 9, '1992-05-23', 0, 'JD-7-160', 'Tanah', 'SHM NO. 937', '<p>Riwayat : </p><ol><li>Hibah dari Ibu Sukaemi Dharma. Harus dibuatka akta pinjam nama/pelepasan hak. Aas nama Y. D. Narasoma</li><li>SHM fotokopi dan akta tanah fotokopi</li><li>Harus diambil sertifikat asli</li></ol><p><br></p><p>Box : 10</p>', 116, '', 0, '303', '', -6.814163, 107.131922, 2),
(161, 6, 0, 61, 0, 4, 19, 13, 9, '1993-04-01', 0, 'JD-7-161', 'Tanah', 'SURAT HIBAH 258', '<p>Riwayat :&nbsp;</p><ol><li>Atas nama Y. D. Narasoma dan Hamidin.&nbsp;</li><li>Surat hibah fotokopi. Tidak ada informasi</li></ol><p><br></p><p>Box : 10</p>', 115, '', 0, '258', '', -6.814163, 107.131922, 0),
(162, 6, 2, 61, 3, 4, 19, 13, 11, '1997-06-22', 0, 'JD-7-162', 'Tanah', 'SURAT KETERANGAN HIBAH 42', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Ibu Mami. Masjid ukuran 22 m2.&nbsp;</li><li>Harus dibuat akta hibah</li><li>Tidak ada dokumen&nbsp;</li><li>Harus diambil dokumen aslinya</li></ol><p><br></p><p>Box : 10</p>', 115, '', 0, '42', '', -6.79854, 107.16928, 0),
(163, 6, 2, 61, 3, 4, 19, 13, 11, '0000-00-00', 0, 'JD-7-163', 'Tanah', 'SURAT PERNYATAAN HIBAH 189', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Rd. Muslih.&nbsp;</li><li>Tidak ada dokumen</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 115, '', 0, '189', '', -6.79854, 107.16928, 0),
(164, 6, 2, 61, 3, 7, 18, 13, 11, '0000-00-00', 0, 'JD-7-164', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat :&nbsp;</p><ol><li>Tidak ada dokumen. Harus diverifikasi</li><li>Ada masjid ukuran 120 m2 berdasarkan surat permohonan bantuan asli tanggal 10 Februari 2002 di Cikadu</li></ol><p><br></p><p>Box : 10</p>', 118, '', 0, '360', '', -7.362607, 107.231234, 0),
(165, 6, 2, 61, 3, 2, 16, 13, 9, '2017-05-22', 0, 'JD-7-165', 'Tanah', 'AJB NO.02/2017', '<p>Riwayat :&nbsp;</p><ol><li>Ada ajb asli. Tidak ada informasi</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 115, '', 0, '582', '', 0, 0, 0),
(166, 6, 2, 61, 3, 4, 6, 13, 7, '2016-12-14', 0, 'JD-7-166', 'Tanah', 'SHM NO 691', '<p>Riwayat : </p><ol><li>Tidak ada informasi</li><li>Ada SHM asli dan akta hibah No. 435. </li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 137, '', 0, '22683', '', -7.117811, 107.087702, 0),
(167, 6, 2, 61, 3, 2, 16, 13, 9, '2013-07-26', 0, 'JD-7-167', 'Tanah', 'AJB NO. 037/2013', '<p>Riwayat : </p><ol><li>AJB fotokopi. Tidak ada informasi.&nbsp;</li><li>Harus diverfikasi</li></ol><p><br></p><p>Box : 9</p>', 115, '', 0, '438', '', -7.026367, 107.12095, 0),
(168, 6, 2, 61, 3, 12, 18, 13, 9, '1982-03-29', 0, 'JD-7-168', 'Tanah', 'SURAT KUASA NO.170/Inv/PB/82', '<p>Riwayat : </p><ol><li>Surat Kuasa FC Tanggal 29 Maret 1982. Tidak ada informasi</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 115, '', 0, '6400', '', -7.026367, 107.12095, 0),
(169, 6, 2, 61, 3, 12, 22, 13, 9, '2003-02-01', 0, 'JD-7-169', 'Tanah', 'SURAT PERNYATAAN JUAL BELI 1 FEBRUARI 2003', '<p>Riwayat : </p><ol><li>Surat Pernyataan Jual Beli FC tanggal 1 februari 2003</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p><p></p><p></p>', 115, '', 0, '300', '', -7.026367, 107.12095, 0),
(170, 6, 2, 61, 3, 12, 6, 13, 9, '1996-12-09', 0, 'JD-7-170', 'Tanah', 'SHM NO. 1081', '<p>Riwayat :&nbsp;</p><ol><li>SHM fotokopi</li></ol>', 115, '', 0, '99', '', 0, 0, 0),
(171, 6, 2, 61, 3, 2, 22, 13, 9, '2012-10-21', 0, 'JD-7-171', 'Tanah', 'SURAT PERNYATAAN PEMBELIAN TANAH DAN RUMAH', '<p>Riwayat :&nbsp;</p><ol><li>Atas nama Hafid. Tidak ada informasi</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 115, '', 0, '140', '', 0, 0, 0),
(172, 6, 2, 69, 3, 6, 6, 13, 7, '1993-10-11', 0, 'JD-130-172', 'Tanah', 'SHM WAKAF NO. 53', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Pak Jaya yang bersal dari Pak Atma dan Emat yang kemudian dituka atau dibeli. SHM Wakaf No. 53 atas nama Jaya bin Wasba&nbsp;</li><li>Harus dibuatkan sertifikat atas nama JAI.&nbsp;</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 119, '', 0, '267', '', -7.001454, 107.107501, 0),
(173, 6, 2, 69, 3, 12, 18, 13, 11, '0000-00-00', 0, 'JD-130-173', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat :&nbsp;</p><ol><li>Jual beli lalu dibangun</li><li>Tidak ada dokumen</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 119, '', 0, '120', '', 0, 0, 0),
(174, 6, 2, 73, 3, 6, 20, 13, 11, '1961-03-06', 0, 'JD-12-174', 'Tanah', 'SURAT WAKAF 520', '<p>Riwayat : </p><ol><li>Hibah dari Djaenudin kepada JAI. </li><li>Surat pernyataan wakaf dari Djaenudin atas nama Ny.R. H. Rofiah (alm) kepada Sualeman atas nama JAI tanah seluas 641,25 pada tanggal 6 Maret 1961. Nomor 1348 persil 204.d.I</li><li>SPPT nomor 32.05.210.010.025-0096-0 tanggal 03 Januari 2005 atas nama Djaenudin JAI. </li><li>Fotokopi Girik atas nama Djumaat bin/alias R. I. Dhaenuddin</li><li> Keterangan Jual beli rumah dinas tanggal 08 September 1991. Penyerahan rumah dinas tanggal 13 September 1991. <br></li><li>IMB Masjid dan Rumah Dinas atas nama Jajang Sobandi.</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 120, '', 0, '520', '', -6.699325, 107.217115, 0),
(175, 6, 2, 73, 3, 2, 18, 13, 11, '0000-00-00', 0, 'JD-12-175', 'Tanah', 'SURAT PERNYATAAN ', '<p>Riwayat :&nbsp;</p><ol><li>Surat pernyataan tanggal 8/9/1991 atas nama DRS. S. A. DJUWAENI.&nbsp;</li><li>Tidak ada dokumen</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 120, '', 0, '0', '', -6.699325, 107.217115, 0),
(176, 6, 2, 85, 3, 8, 20, 13, 9, '0000-00-00', 0, 'JD-15-176', 'Tanah', 'SURAT WAKAF NO. W.3/49/2/1/1989', '<p>Riwayat :&nbsp;</p><ol><li>Tanah hasil tukar dengan yang 1800 m2. Akta Pengganti Ikra Wakaf asli tanggal 7 Maret 1989 Persil No. 192 (Ikrar Wakaf No. W3149/02/89 tanggal 19 Rajab 1409 (25 Februari 1989)) dari Bapak Cece kepada M. Somad wakil JAI tanah seluas 800 m2 . Ditandatangaini oleh Kepada Kantor Urusan Agama Kecamatan yi Bapak R.A. Hidajatullah.</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 121, '', 0, '800', '', -6.974647, 107.149723, 0),
(177, 6, 2, 85, 3, 4, 19, 13, 9, '2003-01-01', 0, 'JD-15-177', 'Tanah', 'SURAT HIBAH 85', '<p>Riwayat :&nbsp;</p><ol><li>Surat Pernyataan Hibah fotokopi tanggal 3/1/2003. Posisi tanah tidak tertera dalam surat</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 121, '', 0, '85', '', -6.974647, 107.149723, 0),
(178, 6, 2, 85, 3, 4, 19, 13, 11, '2007-10-17', 0, 'JD-15-178', 'Tanah', 'SURAT JUAL BELI 1440', '<p>Riwayat :&nbsp;</p><ol><li>Surat Pernyataan Jual Beli mutlak tanggal 17 Oktober 2007</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 121, '', 0, '1440', '', -6.974647, 107.149723, 0),
(179, 6, 0, 85, 0, 5, 18, 13, 11, '0000-00-00', 0, 'JD-15-179', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Riwayat : </p><ol><li>Tanah wakaf Subita berupa komplek pemakaman.&nbsp;Wakaf dari Alm. Subita tanah seluas 400 m2 dan dari beli seluas 400 m2. Harus dilihat asal-usulnya.</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 121, '', 0, '800', '', -6.974647, 107.149723, 0),
(180, 6, 2, 85, 3, 6, 6, 13, 9, '1993-12-27', 0, 'JD-15-180', 'Tanah', 'SHM WAKAF NO. 20', '<p>Riwayat :&nbsp;</p><ol><li>SHM fotokopi. Tidak ada informasi lain</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 121, '', 0, '210', '', 0, 0, 0),
(181, 6, 2, 86, 3, 2, 16, 13, 9, '0000-00-00', 0, 'JD-296-181', 'Tanah', 'AJB NO. 304/2006', '<ol><li>Beli tanah dari Mamad bin Hasan Basri kepada A. Sutarwan. AJB. No.304/2006 tangga 18 Mei 2006. Ada Surat Pernyataan dari Manap Sutarwan bhw tanah tersebut milik JAI tgl.23 Juni 2006. 11.06.2002 NO.304/2006. </li><li>AJB Asli dan fc tanggal 14 mei 2006, Berita acara pembelian tanah asli dan fc. Tanggal 21 oktober 2012. Surat pernyataan fc&nbsp;</li><li>Box ; 10</li></ol><div><br></div>', 123, '', 0, '140', '', 0, 0, 0),
(182, 6, 2, 86, 3, 4, 6, 13, 9, '2008-08-28', 0, 'JD-296-182', 'Tanah', 'AKTA PERJANJIAN PEMBERIAN HIBAH DAN SHM NO. 162', '<p>Riwayat :&nbsp;</p><ol><li>Tidak ada riwayatnya.</li><li>Akta Perjanjian Pemberian Hibah no.8 asli dan fc tanggal 28 agustus 2008. SHM NO 162 Asli dan fc tanggal 2-9-2002</li><li>Harus diverifikasi</li></ol><p><br></p><p>Box : 10</p>', 123, '', 0, '664', '', -6.808839, 107.292396, 0),
(183, 6, 2, 370, 3, 4, 19, 13, 9, '2011-11-29', 0, 'JD-348-183', 'Tanah', 'SURAT PERNYATAAN HIBAH 0042', '<p>Riwayat : </p><ol><li>Pernyataan hibah asli  tanggal 29 nopember 2011</li><li>Pembangunan Masjid Datar kupa. 02 Februari 2019. UMK Rp. 25,000,000</li></ol><p><br></p><p>Box : 10</p>', 139, '', 0, '420', '', -6.968656, 107.127184, 0),
(184, 6, 2, 170, 3, 6, 20, 13, 11, '0000-00-00', 0, 'JD-16-184', 'Tanah', 'SURAT KETERANGAN WAKAF 1600', '<p>Riwayat :&nbsp;</p><ol><li>Wakaf dari Pak Syuma bin Usnari kepada O. Abdurachman atas nama JAI. Surat Wakaf tanggal 10 Juni 1968 di Kp. Gelar Anyar</li><li>Tidak ada dokumen</li><li>Harus diverifikasi</li></ol><p>Box : 10</p>', 124, '', 0, '1600', '', -7.186027, 107.090599, 0),
(185, 6, 2, 208, 3, 6, 6, 13, 9, '2010-09-16', 0, 'JD-144-185', 'Tanah', 'SHM NO. 193', '<p>Riwayat :&nbsp;</p><ol><li>Tanah jual beli mutlak sebidang tanah dari Ibu Sukasih kepada Pak Kemal Idris tanggal 17 Oktober 2007. Tanah diwakafkan kepada JAI dengan sertifikat SHM No. 193 tanggal 6 September 2010 a/n Kemal Idris bin Ijra Rukiyah (Wkl.JAI) Luas Tanah 10.000.m2.</li><li>Dokumen asli dan fotokopi</li></ol><p><br></p><p>Box : 10</p>', 125, '', 0, '10000', '', -7.000229, 107.124573, 0),
(186, 6, 2, 208, 3, 6, 6, 13, 9, '1993-10-11', 0, 'JD-144-186', 'Tanah', 'SHM WAKAF NO. 48 ', '<p>Riwayat :&nbsp;</p><ol><li>Hibah dari Pak Syair tanah seluas 300 m2 dan dari BELI seluas 497 m2. Sertifkat asli telah diserahkan ke PB pada tanggal 29 Juni 1997. Dokumen SHM Wakaf No. 48 tanggal 10 Oktober 1993 atas nama Sair luas tanah 797 di Kp. Neglasri Sukadana Cianjur. Akta Pengganti Akta Ikrar Wakaf No. W.3/22/012 tahun 1991 luas tanah 800.m2. Tanah tersebut adalah wakaf dari Sair tahun 1975 yang diserahkan kepada Kemal Idris (Wkl.JAI)</li><li>Dokumen asli dan fotokopi</li></ol><p><br></p><p>Box : 10</p>', 126, '', 0, '797', '', -7.000229, 107.124573, 0),
(187, 6, 2, 208, 3, 6, 6, 13, 9, '1993-10-11', 0, 'JD-144-187', 'Tanah', 'SHM WAKAF NO.53', '<p>SHM Asli tanggal 11-10-1993</p><div><br></div><div>Box : 10</div>', 126, '', 0, '267', '', -7.000229, 107.124573, 0),
(188, 6, 2, 208, 3, 6, 6, 13, 9, '1991-09-17', 0, 'JD-144-188', 'Tanah', 'SHM WAKAF NO. 50', '<p>SHM Asli dan fc, tanggal 26-10-1993. Akta pengganti ikrar wakaf asli dan fc tanggal 17 september 1991 atas nama Kemal Idris</p><p><br></p><p>Box : 10</p><div><br></div>', 126, '', 0, '423', '', -7.000229, 107.124573, 0),
(189, 6, 2, 208, 3, 6, 6, 13, 11, '0000-00-00', 0, 'JD-144-189', 'Tanah', 'SHM WAKAF NO. 50', '<p>Hibah beli dari Kemal Idris tanah seluas 300 m2 dan dari Sapri tanah seluas 230 m2. Total 530 m2. Sertifikat asli informasinya ada di PB. Diserahkan pada tanggal 28 Juni 1971. Sertifika SHM Wakaf No. 50 atas nama Nazir yi aparat setempat. Diusahakan Nazir membuat pernyataan bahwa tanah tersebut adalah milik JAI. Ada dokumen Hibah Beli pada tanggal 16 September 1991. Ada pernyataan hibahnya.</p><p>Dokumen tidak ada. Harus diverifikasi</p><p><br></p><p>Box : 10</p>', 126, '', 0, '530', '', -7.000229, 107.124573, 0),
(190, 6, 2, 370, 3, 4, 19, 13, 9, '1997-06-10', 0, 'JD-348-190', 'Tanah', 'SURAT HIBAH 1000', '<p>surat pernyataan hibah fc tanggal 10 juni 1997. Hibah dari Ibu Edah. Surat Pernyataan Hibah tanggal 10 Juni 1997. Tanah Pekuburan C No. 124 Persil No. 174 luas tanah 160 m2. Harus dibuatkan akta hibah. </p><p><br></p><p>Box : 10</p><div><br></div>', 140, '', 0, '1000', '', -6.968396, 107.126008, 0),
(191, 6, 2, 208, 3, 4, 19, 13, 9, '2001-07-19', 0, 'JD-144-191', 'Tanah', 'SURAT HIBAH 138', '<p>Surat Pernyataan Hibah dari Pak Kemal Idris kepada JAI (Pak Daman-Ketua)&nbsp; tgl.19 Juli 2001</p><p><br></p><p>Box : 10</p>', 125, '', 0, '138', '', -7.000229, 107.124573, 0),
(192, 6, 2, 208, 3, 4, 19, 13, 9, '1991-09-17', 0, 'JD-144-192', 'Tanah', 'SURAT HIBAH 200', '<p>Surat Pernyataan Hibah dari Pak Kemal Idris kepada JAI tgl.17-9-1991 luas tanah 200.m2.&nbsp;Surat Pernyataan hibah tanah asli dan fc tanggal 17-9-1991</p><p><br></p><p>Box : 10</p>', 125, '', 0, '200', '', -7.000229, 107.124573, 0),
(193, 6, 2, 208, 3, 4, 19, 13, 9, '1997-06-10', 0, 'JD-144-193', 'Tanah', 'SURAT HIBAH 400', '<p>Hibah dari Pak Handi. Surat Pernyataan hibah tanggal 10 Juni 1997 dari Handi kepada Kemal Idris (wakil JAI) Masjid Baitur Rahman ukuran 7 x 8 m2 (56 m2). Surat Pernyataan Hibah tanggal 22 Mei 1981 luas tanah 400 m2 C No. 124 persil No. 174, Datar Suka 10 Juni 1997. surat pernyataan hibah asli dan fc tanggal 10 juni&nbsp; 1997<br></p><div><br></div><div>Box : 10</div>', 127, '', 0, '400', '', -6.968396, 107.126008, 0),
(194, 6, 2, 208, 3, 4, 19, 13, 9, '1997-06-10', 0, 'JD-144-194', 'Tanah', 'SURAT PERNYATAAN HIBAH 124', '<p>surat pernyataan hibah fc, tanggal 10 JUNI 1997</p><div><br></div><div>Box : 10</div>', 127, '', 0, '124', '', 0, 0, 0),
(195, 6, 2, 208, 3, 4, 19, 13, 9, '1997-06-10', 0, 'JD-144-195', 'Tanah', 'SURAT HIBAH 160', '<p>&gt;Hibah dari Ibu Edah. Surat Pernyataan Hibah tanggal 10 Juni 1997. Tanah Pekuburan C No. 124 Persil No. 174 luas tanah 160 m2. Harus dibuatkan akta hibah. Surat pernyataan hibah fc, tanggal 10 JUNI 1997</p><p><br></p><p>Box : 10</p><div><br></div>', 127, '', 0, '160', '', 0, 0, 0),
(196, 6, 2, 208, 3, 4, 19, 13, 9, '1991-09-16', 0, 'JD-144-196', 'Tanah', 'SURAT HIBAH 300', '<p>Hibah beli dari Alm. Syair tanggal 16 September 1991. Harus dibuat akta hibah. Surat pernyataan hibah fc, tanggal 16 september 1991</p><p><br></p><p>Box : 10</p><div><br></div>', 125, '', 0, '300', '', -7.000229, 107.124573, 0),
(197, 6, 2, 208, 3, 4, 18, 13, 11, '0000-00-00', 0, 'JD-144-197', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tidak ada dokumen</p><p><br></p><p>Box : 10</p>', 125, '', 0, '400', '', -7.000229, 107.124573, 0),
(198, 6, 2, 208, 3, 2, 22, 13, 9, '2006-11-07', 0, 'JD-144-198', 'Tanah', 'SURAT PEMBELIAN TANAH 14000', '<p>surat pembelian tanah fc dan profil tanah 7 november 2006</p><p><br></p><p>Box : 10</p><div><br></div>', 128, '', 0, '14000', '', -7.000229, 107.124573, 0),
(199, 6, 2, 208, 3, 2, 18, 13, 11, '1998-03-01', 0, 'JD-144-199', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Jual beli tanah pada bulan Maret 1998 untukl tanah pekurburan seluas 700 m2. Harus dibuat akta hibah.</p><p><br></p><p>Box : 10</p>', 125, '', 0, '700', '', -7.000229, 107.124573, 0),
(200, 6, 2, 208, 3, 2, 22, 13, 9, '2007-10-17', 0, 'JD-144-200', 'Tanah', 'SURAT PERNYATAAN JUAL BELI 1440', '<p>Hibah tanah pekuburan dari Ibu Oting bulan Maret 1998. Harus dibuat akta hibah</p><p><br></p><p>Box : 10</p><div><br></div>', 125, '', 0, '1440', '', -7.000229, 107.124573, 0),
(201, 6, 2, 208, 3, 12, 18, 13, 11, '0000-00-00', 0, 'JD-144-201', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tanah milik 3 anggota. Di Kelompok Cilimus.&nbsp; Masjid ukuran 24 m2. Harus diverifikasi</p><p><br></p><p>Box : 10</p>', 128, '', 0, '100', '', 0, 0, 0),
(202, 6, 2, 233, 3, 2, 16, 13, 9, '2013-07-26', 0, 'JD-27-202', 'Tanah', 'AJB NO. 037', '<p>Tdak ada informasi. AJB asli dan fotokopi. Atas nama Agus Samsul Bahri</p><p><br></p><p>Box : 10</p>', 129, '', 0, '438', '', -7.026367, 107.12095, 0),
(203, 6, 2, 233, 3, 2, 22, 13, 9, '2003-02-01', 0, 'JD-27-203', 'Tanah', 'SURAT PERNYATAAN JUAL BELI TANAH 300', '<p>Atas nama Apud Mahpudin, Surat jual beli tanah 300 m2. Harus diverifikasi</p><p><br></p><p>Box : 10</p>', 129, '', 0, '300', '', -7.026367, 107.12095, 0),
(204, 6, 2, 233, 3, 4, 19, 13, 9, '1997-06-07', 0, 'JD-27-204', 'Tanah', 'SURAT KETERANGAN GIRIK HIBAH 1000', '<p>Hibah dari Pak Muhtar. Harus dibuat akta hibah. surat keterangan fc tanggal 7 juni 1997</p><p><br></p><p>Box : 10</p>', 129, '', 0, '1000', '', -7.026367, 107.12095, 0),
(205, 6, 2, 233, 3, 4, 8, 13, 9, '1997-06-07', 0, 'JD-27-205', 'Tanah', 'SURAT KETERANGAN GIRIK HIBAH 297', '<p>Hibah dan beli dari Pak Muhtar. Menurut riwayat tanah ini berasal dari orang tua Pak Muhtar yi H. Sanusi. Apakah ini tanah Girik?. Harus dibuat akta hibah. surat keterangan fc tanggal 7 juni 1997</p><p><br></p><p>Box : 10</p>', 129, '', 0, '297', '', -7.026367, 107.12095, 0),
(206, 6, 2, 233, 3, 12, 18, 13, 11, '0000-00-00', 0, 'JD-27-206', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Pak Firman Hidayat. Harus dibuat akta hibah<br></p>', 129, '', 0, '1700', '', -7.026367, 107.12095, 0),
(207, 6, 2, 291, 3, 4, 8, 13, 11, '0000-00-00', 0, 'JD-17-207', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibdah dari Pak Oji dan Ibu Maya. Masjid AtTaher ukuran 13 x 10 m2. Harus dibuat akta hibahnya. Girik atas nama Pak Oji dan Ibu Maya. Hanya ada di&nbsp;Daftar Isian Inventaris Asli tanggal 30-5-1997.</p><p><br></p><p>Box : 10</p>', 132, '', 0, '500', '', -7.188777, 107.043946, 0),
(208, 6, 2, 291, 3, 4, 18, 13, 9, '0000-00-00', 0, 'JD-17-208', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibdah dari Pak Syarik masjid ukuran 4,5 x 6,5 m2 (30 m2). Harus dibuat akta hibahnya. Tidak ada dokumen. Harus diverifikasi</p><p><br></p><p>Box : 10</p>', 132, '', 0, '200', '', -7.188777, 107.043946, 0),
(209, 6, 2, 319, 3, 4, 19, 13, 9, '0000-00-00', 0, 'JD-58-209', 'Tanah', 'SURAT PERNYATAAN 4000', '<p>Hibah dari Ibu H. Hadijah tanah seluas 4000 m2. Ada surat pernyataan asli dari Ibu Hj. Hadijah berupa sawah/tanah darat seluas 4000 m2 pada persil C.17869.&nbsp;Harus dibuat akta hibah. Girik atas nama O. Wahyudi.&nbsp;</p><p><br></p><p>Box : 10</p>', 133, '', 0, '4000', '', -7.249189, 107.027173, 0),
(210, 6, 2, 391, 0, 12, 18, 13, 11, '0000-00-00', 0, 'JD-369-210', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Belum ada dokumen. Ada pembangunan masjid tanggal 1 Maret 2018. LPJ 23,341,000</p><p><br></p><p>Box : 10</p>', 142, '', 0, '0', '', -7.06128, 106.928387, 0),
(211, 6, 2, 9, 3, 12, 6, 14, 9, '1993-12-27', 0, 'JD-260-211', 'Tanah', 'SHM WAKAF NO. 10.13.07.09.1.00020', '<p>Tidak ada riwayat. Hanya ada shm wakaf asli. </p><p><br></p><p>Box : 10</p>', 143, '', 0, '210', '', -7.022449, 107.595213, 0),
(212, 6, 2, 9, 3, 2, 18, 14, 11, '0000-00-00', 0, 'JD-260-212', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tidak ada riwayat. Harus diverifikasi.</p><p><br></p><p>Box : 10</p>', 144, '', 0, '225', '', -7.022449, 107.595213, 0),
(213, 6, 2, 9, 3, 2, 22, 14, 9, '2004-04-11', 0, 'JD-260-213', 'Tanah', 'SURAT PERNYATAAN AKTA JUAL BELI NO. 369/1999', '<p>Hanya ada Surat pernyataan akta jual beli no 369 /1999&nbsp; tanggal 11 April 2004 luas tanah 420 m2, dan sebuah bangunan rumah panggung ukuran 5x6 m dengan kelengkapan lain dan penerangan listrik 250 watt. Setelah menjadi cabang, ajb diserahkan kepada dan disimpan oleh Sdr Iin Solihin selaku ketua jemaat arjasari.&nbsp;</p><p><br></p><p>Box : 10</p><div><br></div>', 145, '', 0, '420', '', -7.033105, 107.537336, 0),
(214, 6, 2, 15, 3, 12, 18, 14, 8, '2012-08-27', 0, 'JD-2-214', 'Tanah', 'TANDA BUKTI PEMBAYARAN SEWA TANAH 140 ', '<p>Ada informasi AJB No. 131 tanggal 25 Oktober 1965 (tidak ada dokumen). Hanya ada tanda bukti pembayaran sewa tanah fotokopi tanggal 27 Agustus 2012. </p><p><br></p><p>Box : 10</p>', 146, '', 0, '140', '', -6.90213, 107.596139, 0),
(215, 6, 2, 15, 3, 2, 6, 14, 9, '0000-00-00', 0, 'JD-2-215', 'Tanah', 'SHM NO. 1959', '<p>Jual beli tanggal 15-11-60.&nbsp; 646 M2 dan 2058 M2. Ada masjid ukuran 90 m2</p><p><br></p><p>Box : 10</p>', 148, '', 0, '2704', '', -6.937015, 107.643543, 0),
(216, 6, 2, 15, 3, 2, 5, 14, 7, '2001-11-07', 0, 'JD-2-216', 'Tanah', 'SHM NO. 1185', '<p>Jual beli dengan AJB No. 29 tanggal 06 Maret 1948 dan IMB tanggal 30 Juli 1948. SHM NO. 1185 asli Tanggal 07.11.2001. Mosque , Mission House , office 400 sq.m</p><p><br></p><p>Box : 10</p>', 147, '', 0, '434', '', -6.925232, 107.596896, 0),
(217, 6, 2, 16, 3, 4, 18, 14, 8, '0000-00-00', 0, 'JD-277-217', 'Tanah', 'AKTA HIBAH NO. 77', '<p>HIBAH DARI ( ALM ) IBU DHARMA. Mosque 450 sq.m 2nd floor 2nd floor Mission House 300 sq.m.&nbsp;AKTA HIBAH NO. 77 TANGGAL 24-7-75.&nbsp;PERJANJIAN SEWA TANAH NO 593 / 1989.&nbsp;IMB NO 751, 27-6-79 4). 07.24.1979.&nbsp;SEMUA DOKUMEN TANAH JEMAAT BANDUNG AKAN DISELESAIKAN OLEH IKAHAI</p><p><br></p><p>Box : 10</p>', 149, '', 0, '1000', '', -6.89563, 107.634337, 0),
(218, 6, 2, 17, 3, 4, 21, 14, 9, '1997-03-19', 0, 'JD-278-218', 'Tanah', 'SHM NO. 1181', '<p>SHM asli tanggal 19-03-1997, akta perjanjian pemberian hibah no.3 asli Tanggal 19 Juli 2010. Atas nama Dr. Ir. Munawar AHmad</p><div>Box : 11</div>', 150, '', 0, '300', '', -6.92562, 107.678857, 0),
(219, 6, 2, 17, 3, 4, 18, 14, 1, '0000-00-00', 0, 'JD-278-219', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Laporan dari kelompok tarbiyat ada tanah hibah di ujung berung</p><p><br></p><p>Box : 11</p>', 151, '', 0, '10000', '', -6.913355, 107.710515, 0),
(220, 6, 2, 21, 3, 4, 21, 14, 11, '1992-01-01', 0, 'JD-90-220', 'Tanah', 'AKTA HIBAH NO. 675 PAPK/VII/1992', '<p>Hibah dari Pak Dahnan. Menurut surat penyataan tanggal 11 April 2004, bahwa Asep Kurniadi Rasmana bertindak mewakili JAI&nbsp; dalam transaksi hibah untuk Akta Hibah tanah masjid seluas 145 m2 No. 675 PAPK/VII/1992. Namun tidak ada informasi dimana dokumen disimpan. Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 11</p>', 152, '', 0, '145', '', -7.022449, 107.595213, 0),
(221, 6, 2, 21, 3, 2, 6, 14, 11, '1992-01-01', 0, 'JD-90-221', 'Tanah', 'SERTIFIKAT TANAH NO. 6460/1992', '<p>Menurut surat pernyataan tanggal 11 April 2004 bahwa Asep Kurniada Rasaman mewakili jai dalam transasksi untuk sertifikat tanah rumah mubaligh seluas 169 m2 No. 6460/1992. Namun tidak ada informasi dokumen tersimpan dimana. Harus diverifikasi&nbsp;</p><p><br></p><p>Box : 11</p>', 152, '', 0, '169', '', -7.022449, 107.595213, 0),
(222, 6, 2, 21, 3, 4, 6, 14, 11, '0000-00-00', 0, 'JD-90-222', 'Tanah', 'SERTIFIKAT NO. 21/1989', '<p>Sertifikat No. 21/1989, luas tanah 97 m2 atas nama Ibu Didin Kardinah (tanah masjid). Dokumen disimpan oleh Asep Kurniadi Rasmana (dalam surat pernyataanya).&nbsp;</p><p><br></p><p>Box : 11</p>', 152, '', 0, '97', '', -7.022449, 107.595213, 0),
(223, 6, 2, 21, 3, 4, 6, 14, 11, '1989-01-01', 0, 'JD-90-223', 'Tanah', 'SERTIFIKAT NO. 128/1989', '<p>Sertifikat No. 128/1989 luas tanah 71 m2 atas nama Ibu Didin Kardinah (jalan masjid). Dokumen disimpan oleh Asep Kurniadi Rasmana (berdasarkan surat pernyataannya). Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 11</p>', 152, '', 0, '71', '', -7.022449, 107.595213, 0),
(224, 6, 2, 249, 3, 2, 16, 14, 9, '0000-00-00', 0, 'JD-261-224', 'Tanah', 'AJB NO. 227/AJS/1997', '<p>Dalam surat pernyataan Asep Kurniadi Rasmana bahwa dokumen disimpan oleh Sdr. Nanan S., selaku ketua jemaat pinggirsari. Ada fotokopi Surat Penyataan Akta Jual Beli No. 227 tanggal 11 April 2015.</p><p><br></p><p>Box : 11</p>', 153, '', 0, '700', '', -6.922628, 107.704952, 0),
(225, 6, 2, 70, 3, 4, 21, 14, 7, '2002-09-04', 0, 'JD-280-225', 'Tanah', 'SHM NO. 10.12.24.03.1.00299', '<p>Dihibahkan kepada Abdul Basith (AMIRNAS) a/n JAI melalui Akte Perjanjian Hibah no 09 tanggal 28.08.2008.&nbsp;SHM Asli tanggal 04-09-2002, Akta perjanjian pemberian hibah no 09 Tanggal 28 Agustus 2008.</p><p><br></p><p>Box : 11</p>', 154, '', 0, '134', '', -6.978502, 107.833358, 0),
(226, 6, 2, 70, 3, 4, 19, 14, 11, '0000-00-00', 0, 'JD-280-226', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Pak Idji Sutisna. Ada informasi perihal copy surat pernyataan hibah dari Idji Sutisna tanggal 2 November 1993. Dokumen tidak ada. Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 11</p>', 154, '', 0, '51', '', -6.978502, 107.833358, 0),
(227, 6, 2, 70, 3, 2, 16, 14, 11, '1993-01-01', 0, 'JD-280-227', 'Tanah', 'AJB NO. 650 ', '<p>Atas nama Ahmad Sumeji. Tidak ada dokumen. Harus diverifikasi</p><p><br></p><p>Box : 11</p>', 155, '', 0, '5096', '', -6.978502, 107.833358, 0),
(228, 6, 2, 70, 3, 2, 16, 14, 11, '1993-12-04', 0, 'JD-280-228', 'Tanah', 'AJB NO. 651', '<p>Atas nama Ahmad Sumeji. Tidak ada dokumen. Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 11</p>', 155, '', 0, '4102', '', -6.978502, 107.833358, 0),
(229, 6, 2, 70, 3, 12, 18, 14, 11, '0000-00-00', 0, 'JD-280-229', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tanah atas nama Qomar Ana. Tidak ada dokumen. Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 11</p>', 154, '', 0, '515', '', -6.978502, 107.833358, 0),
(230, 6, 2, 182, 3, 2, 16, 14, 11, '0000-00-00', 0, 'JD-111-230', 'Tanah', 'AJB NO. 363', '<p>Atas nama Endang Dardjo. Tidak ada dokumen. Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 11</p>', 156, '', 0, '210', '', -7.038545, 107.755325, 0),
(231, 6, 2, 182, 3, 4, 19, 14, 11, '0000-00-00', 0, 'JD-111-231', 'Tanah', 'SURAT PERNYATAAN HIBAH 420', '<p>Surat pernyataan hibah dari Asep Sodikin. Tidak ada dokumen. Harus diverifikasi</p><p><br></p><p>Box : 11</p>', 156, '', 0, '420', '', -7.038545, 107.755325, 0),
(232, 6, 2, 225, 0, 2, 16, 14, 9, '0000-00-00', 0, 'JD-268-232', 'Tanah', 'AJB N0 127', '<p>Tidak ada informasi. </p><p><br></p><p>Box : 11</p>', 157, '', 0, '1040', '', -7.235861, 107.526748, 2),
(233, 6, 2, 225, 3, 4, 18, 14, 11, '0000-00-00', 0, 'JD-268-233', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Ibu Ombi. Tidak ada dokumen&nbsp;</p><p><br></p><p>Box : 11</p>', 157, '', 0, '56 ', '', -7.235861, 107.526748, 0),
(234, 6, 2, 225, 3, 4, 18, 14, 11, '0000-00-00', 0, 'JD-268-234', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Ade Ahmad Sidik. Tidak ada dokumen.</p><p><br></p><p>Box : 11</p>', 157, '', 0, '100', '', -7.235861, 107.526748, 0),
(235, 6, 2, 225, 3, 2, 18, 14, 11, '2014-07-05', 0, 'JD-268-235', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Jual Beli tanah 65 Tumbak dari Cucu Sumayati kepada Masykurullah Ahmadi pada tanggal 05/07/2014<br></p>', 157, '', 0, '65', '', -7.235861, 107.526748, 0),
(236, 6, 2, 249, 3, 2, 16, 14, 11, '2009-11-06', 0, 'JD-261-236', 'Tanah', 'AJB NO. 1290', '<p>Dokumen tidak ada. Harus diverifikasi. Atas nama Iin Solihin</p><p><br></p><p>Box : 11</p>', 153, '', 0, '168', '', -6.922628, 107.704952, 0),
(237, 6, 2, 300, 3, 4, 18, 14, 11, '0000-00-00', 0, 'JD-226-237', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tidak ada dokumen. &nbsp;Harus ditegaskan tentang rencana hibahnya. Harus dibuatkan akta hibah</p><p><br></p><p>Box : 11</p>', 158, '', 0, '315', '', -6.977826, 107.533547, 0),
(238, 6, 2, 300, 0, 12, 18, 14, 11, '0000-00-00', 0, 'JD-226-238', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tidak ada dokumen. Harus diverifikasi. </p><p><br></p><p>Box : 11</p>', 158, '', 0, '150', '', -7.011707, 107.53436, 2),
(239, 6, 2, 309, 3, 2, 16, 14, 11, '0000-00-00', 0, 'JD-110-239', 'Tanah', 'AJB NO. 132', '<p>Jual beli dengan ada Copy AJB no 132/2004 a/n Enik Leni Kusrini. Tidak ada dokumen. </p><p> </p><p>Box : 11</p>', 159, '', 0, '469', '', -6.833854, 107.999697, 0),
(240, 6, 2, 309, 3, 4, 6, 14, 11, '0000-00-00', 0, 'JD-110-240', 'Tanah', 'SHM NO. 29', '<p>Hibah dari Ibu Ombi. Luas 500 atau 469? Harus diverifikasi. Tidak ada dokumen.&nbsp;</p><p><br></p><p>Box : 11</p>', 159, '', 0, '500', '', -6.833854, 107.999697, 0),
(241, 6, 2, 309, 3, 4, 18, 14, 11, '2005-07-01', 0, 'JD-110-241', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah tanggal 01.07.2005. Tidak ada dokumen.&nbsp;</p><p><br></p><p>Box : 11</p>', 159, '', 0, '140', '', -6.833854, 107.999697, 0),
(242, 6, 2, 65, 0, 4, 21, 15, 7, '2000-02-23', 0, 'JD-115-242', 'Tanah Hibah Iri Saftari', 'AKTA HIBAH NO. 69 / 2000', '<p>Hibah dari Pak Mamat kepada Iri Saftari atas bana JAI . Copy akta dikirim ke PB, Bangunan sangat tua akan segera direnovasi. Harus ada surat contra letter.&nbsp;</p><p><br></p><p>Box : 11</p>', 160, '', 0, '336', '', -7.061667, 108.034076, 0),
(243, 6, 2, 65, 3, 2, 16, 15, 11, '0000-00-00', 0, 'JD-115-243', 'Tanah', 'AJB', '<p>Tanah beli dana dari Pak Yoyo. Akta copy dikirim ke PB. Dokumen tidak ada. Tanah untuk komplek pemakaman</p><p><br></p><p>Box : 11</p>', 160, '', 0, '308', '', -7.061667, 108.034076, 0),
(244, 6, 2, 80, 3, 4, 21, 15, 11, '2000-11-04', 0, 'JD-116-244', 'Tanah', 'AKTA HIBAH NO.  219  11/4/2000', '<p>Hibah dari Pak Romli. Hanya ada dokumen fotokopi Akta Hibah No. 219. Ada keterangan bahwa tanah hibah 75 m2 dari Pak Salkon dijual untuk membangun masjid. Copy girik dikirim ke PB. Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 11</p>', 161, '', 0, '70', '', -7.260181, 107.852299, 0),
(245, 6, 2, 92, 0, 2, 6, 15, 7, '1993-03-15', 0, 'JD-118-245', 'Tanah Wakaf Masjid', 'SHM WAKAF NO. 24/1993', '<p>Dari jual beli. Tanah adat daftar c.383 persil no. 49 D.V. Kedua sertifikat aslinya diserahkan kepada ketua BOT. SHM Wakaf atas nama H. Ukiyah. Nazir JAI. </p><p><br></p><p>Box : 11</p>', 162, '', 0, '578', '', -7.274723, 107.781797, 0),
(246, 6, 2, 92, 3, 6, 6, 15, 7, '1993-08-18', 0, 'JD-118-246', 'Tanah', 'SHM WAKAF NO 30/1993', '<p>SHM Wakaf atas nama Hambali.&nbsp;</p><p><br></p><p>Box : 11</p>', 162, '', 0, '179', '', -7.274723, 107.781797, 0),
(247, 6, 2, 104, 3, 2, 16, 15, 9, '2005-04-19', 0, 'JD-5-247', 'Tanah', 'AJB NO. 16', '<p>AJB&nbsp; no.16/2005&nbsp; dari Ibu Yeyet kpd Bpk.Ade Rukman&nbsp; luas tanah 210.m2 a/n Ade Rukman. Dokumen AJB asli. Berdasarkan surat tanggal 20 April 2005, tanah tersebut akan dihibahkan. Belum ada dokumen hibah.&nbsp;</p><p><br></p><p>Box : 11</p>', 163, '', 0, '210', '', -7.344013, 107.81373, 0),
(248, 6, 2, 104, 3, 2, 16, 15, 7, '2001-07-16', 0, 'JD-5-248', 'Tanah', 'AJB NO. 372', '<p>Jual beli dari Upi Sopiah kepada Ade Rukmana. Asal tanah ini dari SHM.483 a/n Sukatma&nbsp; 19-4-1967 Daftar C.no.1704 Persil. no27b S.IV (Luas tanah 2700.m2) &nbsp;Ibu Upi Sopiah adalah Ahli waris dari Bpk H.Moh.Affandi bin Abd.Hamid dengan no. Ahli waris 474.3/55/Pem/2001. Surat pernyataan fotokopi dari Ade Rukmana bahwa tanah tersebut milik JAI, tanggal 1 Nopember 2001. Dokumen AJB fotokopi.&nbsp;</p><p>Berdasarkan surat laporan Jemaat Garut tanggal 6 Februari 2010, tanah saat ini dijadikan kapling, sudah terjual sebagian sebesar 25 juta masih disimpan oleh Pak Ade Rukmana.&nbsp;</p><p><br></p><p>Box : 11</p>', 164, '', 0, '3857', '', -7.21593, 107.914749, 0),
(249, 6, 2, 104, 3, 4, 21, 15, 7, '1962-03-26', 0, 'JD-5-249', 'Tanah', 'AKTA HIBAH NO. 6', '<p>Hibah dari Ibu Ayu Kursinah tanggal 26 Maret 1962. Dokume hibah fotokopi.&nbsp;</p><p><br></p><p>Box : 11</p>', 165, '', 0, '180', '', -7.221545, 107.906388, 0),
(250, 6, 2, 104, 3, 4, 6, 15, 7, '1953-09-12', 0, 'JD-5-250', 'Tanah', 'AKTA EIGENDOM NO. 801', '<p>Hibah dari Ibu Ayu Kursinah tahun 1963. Ada AKTE EIGENDOM NO.801 NO.Verponding 470 tgl.25 November 1952 no.968/1952 Kota Kulon Garut no.551/Sutji srt Ukur tgl.17 Desember 1920 no.571. Jual beli dari Rd.Satibi sbg kuasa dari Nyi Kursinah tgl 31 Januari 1952 sbg Pihak pertama (Penjual) kepada Jajasan Ahmadiyah sbg Pembeli. </p><p>Dokumen : </p><ol><li>AKTA EIGENDOM 801 TGL 12 SEP 1953</li><li>VP VERPONDING 1955 ATAS R V E REEP 470</li><li>IMB NO 20/01/GRT 1987</li></ol><p><br></p><p>Box : 11</p>', 165, '', 0, '440', '', -7.221545, 107.906388, 0),
(251, 6, 2, 104, 3, 12, 6, 15, 9, '2005-10-14', 0, 'JD-5-251', 'Tanah', 'SHM NO. 1184 ', '<p>SHM. No118 tgl.14-10-2005 a/n Riyati Kusharyati. Harus diverifikasi. Dokumen fotokopi.&nbsp;</p><p><br></p><p>Box : 11</p>', 167, '', 0, '125', '', -7.219843, 107.906322, 0),
(252, 6, 2, 104, 3, 2, 6, 15, 7, '2015-04-22', 0, 'JD-5-252', 'Tanah', 'SHM NO. 323', '<p>SHM asli atas nama Ade Pujaswara. Surat pernyataan contra letter asli dari Ade Pujaswara bahwa sertifikat nomor 323 adalah milik JAI tanggal 22 April 2015. Saksi Kurnia Wardi dan Oman Rohman.&nbsp;</p><p><br></p><p>Box : 11</p>', 168, '', 0, '275', '', -7.251028, 107.907024, 0),
(253, 6, 2, 104, 3, 2, 6, 9, 7, '2015-03-18', 0, 'JD-5-253', 'Tanah', 'SHM NO. 3663', '<p>SHM asli atas nama Cecep A. Santosa, S.S. Surat pernyataan contra letter asli dari Cecep Ahmad Santosa menyatakan bahwa tanah milik JAI, tanggal 27 Maret 2015.&nbsp;</p><p><br></p><p>Box : 11</p>', 165, '', 0, '68', '', -7.221545, 107.906388, 0),
(254, 6, 2, 104, 3, 4, 6, 15, 7, '2012-12-13', 0, 'JD-5-254', 'Tanah', 'SHM NO. 2416', '<p>SHM asli atas nama Cecep Ahmad Santosa. Surat pernyataan contra letter asli menyatakan bahwa tanah milik JAI tanggal 01 September 2013. Harus dibuatkan akta hibah.&nbsp;</p><p>Hibah dari keluarga besar H. Basyari Hasan (alm) di Jl. Terusan Pembangunan Kampung Cikopo RT 04 RW 11 Desa Jayaraga, Tarogong Kidul, Garus seluas 77 tumbah. Amanatnya dapat dibangun Masjid, Rumah Misi dan Madrasah.&nbsp;</p><p><br></p><p>Box : 11</p>', 170, '', 0, '817', '', -7.200639, 107.900054, 0),
(256, 6, 2, 104, 3, 4, 21, 15, 7, '1987-05-05', 0, 'JD-5-256', 'Tanah', 'AKTA HIBAH NO. 102', '<p>Hibah dari Raden Roestandi Anggawiria kepada Tuan Sapardi atas nama JAI. Tanggal&nbsp; 5 mei 1987. Dokumen akta hibah fotokopi. Sertifikat tanah asli.&nbsp;</p>', 165, '', 0, '111', '', -7.221553, 107.906413, 0),
(257, 6, 2, 278, 3, 6, 20, 15, 7, '1996-01-28', 0, 'JD-5-257', 'Tanah', 'SURAT PERNYATAAn WAKAF 840', '<p>Wakaf tanah dari Imas Masitoh atas nama suaminya Mahmud S. tanah di blok kampung Sampiruen seluas 60 tumbak = 840 m2 kepada JAI untuk pembangunan masjid. Dokumen fotokopi. </p><p><br></p><p>Box : 11</p>', 184, '', 0, '840', '', 0, 0, 0),
(258, 6, 2, 233, 3, 2, 16, 13, 7, '2009-05-14', 0, 'JD-27-258', 'Tanah', 'AJB NO 04/2009', '<p>Box : 10</p>', 129, '', 0, '434', '', 0, 0, 0),
(259, 6, 2, 233, 3, 2, 16, 15, 7, '2019-11-08', 0, 'JD-27-259', 'Tanah', 'AJB NO 66/2012', '<p>Box : 10</p>', 129, '', 0, '319', '', 0, 0, 0),
(260, 6, 2, 233, 3, 2, 16, 15, 7, '2012-11-08', 0, 'JD-27-260', 'Tanah', 'AJB NO 67/2012', '<p>Box : 10</p>', 129, '', 0, '2175', '', 0, 0, 0),
(261, 6, 2, 233, 3, 2, 16, 13, 7, '2017-12-29', 0, 'JD-27-261', 'Tanah', 'AJB NO 073/2017', '<p>Hibah </p><p>Box : 10</p>', 129, '', 0, '90', '', 0, 0, 0),
(408, 6, 2, 379, 0, 2, 22, 17, 7, '1999-07-07', 0, 'JD-357-408', 'Tanah Beli Mualim Basit NA', 'SURAT PERNYATAAN JUAL BELI TANAH PEKARANGAN 140', '<p>Jual beli dari Daskiah Kartono kepada Mualim Basit NA atas nama JAI tanah pekarangan di Dusun Cigintung, Sadabumi Cilacapa seharga Rp. 6.000.000. Harus dibuat surat contra letter. </p><p><br></p><p>Box : 14</p>', 224, '', 6000000, '140', '', -7.22735, 108.696867, 1),
(263, 6, 2, 233, 3, 4, 21, 13, 7, '2010-11-23', 0, 'JD-27-263', 'Tanah', 'AKTA HIBAH NO 12/2010', '<p>Box : 10</p>', 129, '', 0, '133', '', 0, 0, 0),
(264, 6, 2, 138, 3, 4, 18, 15, 11, '0000-00-00', 0, 'JD-94-264', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Pak Adang. Harus dibuat akta hibah. Dokumen induk/girik dicopy. Tidak ada dokumen.&nbsp;</p><p><br></p><p>Box : 11</p>', 178, '', 0, '119', '', -7.227559, 107.933142, 0),
(265, 6, 2, 138, 3, 4, 21, 15, 7, '1962-10-17', 0, 'JD-94-265', 'Tanah', 'SURAT PERBAIKAN AKTA HIBAH', '<p>Hibah dari Pak Sukri Barmawi tanggl 17 Oktober 1962. Akta hibah No. 28/1962 tanggal 3 Desember 1962 C.111C persil 148 D.11 blok bayubud. Dokumen asli harus dicari. Pengawasan lapangan diserahkan kepada jemaat karangpawitan. Sewa/kontrak harus jelas. Menurut sppt luas 8400. Perlu dipatok dan diukur kembali.</p><p><br></p><p>Box : 11</p>', 178, '', 0, '10350', '', -7.227559, 107.933142, 0),
(266, 6, 2, 138, 3, 2, 22, 15, 7, '1999-05-22', 0, 'JD-94-266', 'Tanah', 'SURAT JUAL BELI 37 M2', '<p>Surat pernyataan jual beli fc A/N MAMAN bin Eumer tanggal 22 mei 1999. Jual bei rumah misi. Harus ada AJB</p><p><br></p><p>Box : 11</p><div><br></div>', 178, '', 0, '37', '', -7.227559, 107.933142, 0),
(267, 6, 2, 138, 3, 12, 18, 15, 11, '0000-00-00', 0, 'JD-94-267', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tidak ada dokumen. Harus diverfikasi.&nbsp;</p><p><br></p><p>Box : 11</p>', 178, '', 0, '1950', '', -7.227559, 107.933142, 0),
(268, 6, 2, 212, 3, 4, 19, 15, 11, '0000-00-00', 0, 'JD-97-268', 'Tanah', 'SURAT HIBAH NON AHMADI', '<p>Hibah dari seorang non ahmadi. Boleh dipakai tapi tidak boleh dikuasai. Harus diusahakan ditempat milik Jemaat. Nizam jemaat lemah . Tidak ada dokumen. </p><p><br></p><p>Box : 11</p>', 180, '', 0, '48', '', -7.241412, 107.908257, 0),
(269, 6, 2, 212, 3, 4, 19, 15, 7, '1999-03-10', 0, 'JD-97-269', 'Tanah', 'SURAT PERNYATAAn HIBAH 210 ', '<p>Surat pernyataan hibah dari Pak Warsa kepada Mumud untuk dibangun masjid JAI tanggal 10 Maret 1999. Dokumen fotokopi.</p>', 180, '', 0, '210', '', -7.241412, 107.908257, 0),
(270, 6, 2, 274, 3, 4, 21, 15, 7, '2000-12-04', 0, 'JD-117-270', 'Tanah', 'AKTA HIBAH NO 219/2000', '<p>AKTA HIBAH ASLI DAN FC tanggal 4 Nopember 2000. Dala akta hibah tanah hibah dari AA Rasyidin alias Agus Sofyan kepada Holil. Menurut informasi database Hibah dari Pak Sukarya tanggal 29 Juni 1973. Surat hibah asli hilang ketika akan diurus oleh Pak Mln. Dadang Nasir. Surat hibah ulang sedang sertifikasi tapi berubah menjadi wakaf, diusahkan surat ke tanah PPAT.&nbsp;</p><p>Harus dibuat surat contra letter.</p><p><br></p><p>Box : 11</p><div><br></div>', 181, '', 0, '70', '', -7.202523, 107.816485, 0),
(271, 6, 2, 274, 3, 2, 16, 15, 7, '1997-09-05', 0, 'JD-117-271', 'Tanah', 'AJB 290/1997', '<p>AJB ASLI DAN FC Tanggal 5 september 1997. Jual beli dari Aah kepada Holil.&nbsp;</p><p><br></p><p>Box : 11</p><div><br></div>', 181, '', 0, '84', '', -7.202523, 107.816485, 0),
(272, 6, 2, 274, 3, 4, 19, 15, 7, '0000-00-00', 0, 'JD-117-272', 'Tanah', 'SURAT PERNYATAAn HIBAH 70', '<p>Menurut informasi database Hibah dari Pak Sukarya tanggal 29 Juni 1973. Surat hibah ulang sedang sertifikasi tapi berubah menjadi wakaf, diusahkan surat ke tanah PPAT.&nbsp;</p><p><br></p><p>Box : 11</p>', 181, '', 0, '70', '', -7.202523, 107.816485, 0),
(273, 6, 2, 274, 3, 2, 15, 15, 7, '1977-08-06', 0, 'JD-117-273', 'Tanah', 'KWITANSI JUAL BELI 70', '<p>Jual beli dari Pak Afandi tanah 5 tumbak di blok Ciparaya Desa Sukarasa, Samarang. Harus dibuat akta nya. Harus diverifikasi. Rumah misi ukuran 12 x 7 = 84 m2</p><p><br></p><p>Box : 11</p>', 181, '', 0, '70', '', -7.202523, 107.816485, 0),
(274, 6, 2, 274, 3, 4, 19, 15, 7, '1990-03-23', 0, 'JD-117-274', 'Tanah', 'SURAT PERNYATAAN HIBAH 84', '<p>Hibah dari Cicih bin Ahya kepada JAI tanah 7,5 x 6 m2. Atas nama Holil. </p><p><br></p><p>Box : 11</p>', 181, '', 0, '45', '', -7.202523, 107.816485, 0),
(275, 6, 2, 274, 3, 2, 16, 15, 7, '2004-04-30', 0, 'JD-117-275', 'Tanah', 'AJB NO. 131/2004', '<p>Jual beli dari Onih kepada Holil.&nbsp; Pembelian tanah gair ahmadi yang menghalangi masjid jemaat samarang. Dana dibantu jemaat pusat sebesar 7,500,000</p><p><br></p><p>Box : 11</p>', 182, '', 0, '87', '', -7.202523, 107.816485, 0),
(276, 6, 2, 274, 3, 2, 16, 15, 7, '2009-08-31', 0, 'JD-117-276', 'Tanah', 'AJB NO. 190', '<p>Jual beli dari Holil kepada Dedeng Mulyana.&nbsp;</p><p><br></p><p>Box : 11</p>', 181, '', 0, '140', '', -7.202523, 107.816485, 0),
(277, 6, 2, 274, 3, 2, 16, 15, 7, '2014-10-16', 0, 'JD-117-277', 'Tanah', 'AJB NO. 131/2014', '<p>Jual beli dari Amri kepada Munawar Ahmad tanah seluas 60 m2 dan bangunan 30 m2. Hak milik adat persil no. 52 blok bongkor kohir no. c. 774. Seharaga 36 juta</p>', 181, '', 0, '60', '', -7.202523, 107.816485, 0),
(278, 6, 2, 220, 3, 4, 19, 15, 7, '1987-03-01', 0, 'JD-151-278', 'Tanah', 'SURAT PERNYATAAN HIBAH 140', '<p>Surat hibah fc Tanggal 1 Maret 1987. Hibah dari Pak Omo Sukarya bin Nur kepada JAI tanggal 1 Maret 1987. Ketika sedang dibangun masjid permanen dihentikan karena tidak ada IMB. Copy surat kirim ke PB.&nbsp;</p><p><br></p><p>Box : 11</p><div><br></div>', 183, '', 0, '140', '', -7.653124, 107.748101, 0),
(279, 6, 2, 278, 3, 2, 18, 15, 11, '1987-05-05', 0, 'JD-327-279', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Beli tanah di Kp. Bojong Jalan Telaga Bodas. Luas 643,55 m2. Tanggal 05 Mei 1987. Harus diukur kembali. Diusahakan tanya dokumen ke desa. Tidak ada keterangan lain selain dari bundel yang ada. Dokumen tidak ada. Harus dicari aslinya. </p><p><br></p><p>Box : 11</p>', 184, '', 0, '644', '', -7.224702, 107.899794, 0),
(280, 6, 2, 220, 3, 4, 18, 15, 7, '0000-00-00', 0, 'JD-151-280', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari siapa tidak diketahui. Tidak ada dokumen</p><p><br></p><p>Box : 11</p>', 183, '', 0, '112', '', -7.224702, 107.899794, 0),
(281, 6, 2, 278, 3, 4, 18, 15, 7, '2008-05-12', 0, 'JD-327-281', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah. Surat pemberitahuan asli. Tidak ada dokumen lain.&nbsp;&nbsp;</p><p><br></p><p>Box : 11</p>', 184, '', 0, '112', '', -7.224702, 107.899794, 0),
(282, 6, 2, 278, 3, 12, 18, 15, 11, '0000-00-00', 0, 'JD-327-282', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tidak ada keterangan. Dokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 11</p>', 184, '', 0, '56', '', -7.213132, 107.924412, 0);
INSERT INTO `assets` (`id`, `categoryid`, `adminid`, `clientid`, `userid`, `manufacturerid`, `modelid`, `supplierid`, `statusid`, `purchase_date`, `warranty_months`, `tag`, `name`, `serial`, `notes`, `locationid`, `purchase_order`, `value`, `condition`, `removal_date`, `lat`, `lng`, `originalid`) VALUES
(283, 6, 2, 278, 3, 4, 18, 15, 11, '0000-00-00', 0, 'JD-327-283', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>TANAH HIBAH IBU OCIH.&nbsp;Tanah pengganti sumbangan dari bapak Affandi. Ada 11 kavling. Untuk dibangun masjid. Hibah dari Bu Ocih Suka Regan Jl. Jendral Ahmad Yani. Tidak ada dokumen.&nbsp;</p><p><br></p><p>Box : 11</p><div><br></div>', 184, '', 0, '1656', '', -7.21593, 107.914749, 0),
(284, 6, 2, 305, 3, 6, 20, 15, 7, '1991-02-19', 0, 'JD-107-284', 'Tanah', ' AKTA PRA IKRAR WAKAF 2/19/1991', '<p>Salinan akta pengganti akta ikrar wakaf fc tanggal 19-2-1991. Wakaf dari Ibu Samsi. Sedang sertifikasi dengan nazir anggota JAI. Dokumen fotokopi. </p><p><br></p><p>Box : 11</p><div><br></div>', 185, '', 0, '360', '', -7.326678, 107.938365, 2),
(285, 6, 2, 310, 3, 6, 6, 15, 7, '1992-01-22', 0, 'JD-98-285', 'Tanah', 'SHM WAKAF NO. 227', '<p>Hibah dari Pak Bullah Hasbuloh. Dokumen asli dan fotokopi.&nbsp;</p><p><br></p><p>Box : 11</p>', 186, '', 0, '221', '', -7.155013, 108.005158, 0),
(286, 6, 0, 310, 0, 2, 16, 15, 7, '2012-06-05', 0, 'JD-98-286', 'Tanah', 'AJB NO. 106', '<p>Jual beli tanah atas nama Wasim Ahmad.&nbsp;</p><p><br></p><p>Box : 11</p>', 186, '', 0, '169', '', -7.155013, 108.005158, 0),
(287, 6, 2, 351, 0, 12, 18, 15, 11, '0000-00-00', 0, 'JD-160-287', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Jemaat baru. Kegiatan bergabung dengan jemaat sukawening. </p><p><br></p><p>Box : 11</p>', 187, '', 0, '0', '', -7.166271, 107.993227, 0),
(288, 6, 2, 46, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-251-288', 'Tanah Bojongsirna', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Pak Bahrum. Harus dibuat akta hibahnya. Hanya ada permintaan dana untuk pembangunan masjid tanggal 2 Januari 2010 dan 7 Januari 2009. </p><p><br></p><p>Box : 11</p>', 188, '', 0, '182', '', -7.339297, 107.941638, 2),
(289, 6, 2, 46, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-251-289', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tidak ada informasi lain. Ada musholla. </p><p><br></p><p>Box : 11</p>', 188, '', 0, '118,75', '', -7.339297, 107.941638, 2),
(290, 6, 2, 46, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-251-290', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Musholla kelompok babakan</p><p><br></p><p>Box : 11</p>', 188, '', 0, '12', '', -7.33929, 107.941638, 2),
(291, 6, 2, 46, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-251-291', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Mushola kelompok cihoe</p><p><br></p><p>Box : 11</p>', 188, '', 0, '12', '', -7.339297, 107.941638, 2),
(292, 6, 2, 46, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-251-292', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Mushola kelompok cileutik</p><p><br></p><p>Box : 11</p>', 188, '', 0, '12', '', -7.339297, 107.941638, 0),
(293, 6, 2, 46, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-251-293', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Mushola kelompok cipari</p><p><br></p><p>Box : 11</p>', 188, '', 0, '24', '', -7.339297, 107.941638, 2),
(294, 6, 2, 46, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-251-294', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Mushola kelompok pangbolo</p><p><br></p><p>Box : 11</p>', 188, '', 0, '24', '', -7.339297, 107.941638, 2),
(295, 6, 2, 379, 3, 2, 22, 9, 11, '0000-00-00', 0, 'JD-357-295', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Surat jual beli tanah 179 m2. Tidak ada dokumen. Harus diverifikasi. </p><p><br></p><p>Box : 14</p>', 189, '', 0, '179', '', -7.228895, 108.749521, 2),
(296, 6, 2, 71, 0, 2, 17, 9, 7, '1998-03-02', 0, 'JD-114-296', 'Tanah', 'SPPT JUHARA', '<p>SPPT fotokopi. Harus dibuat akta. </p><p><br></p><p>Box : 12</p>', 190, '', 0, '1900', '', -7.339303, 107.941611, 2),
(411, 6, 2, 59, 0, 4, 21, 17, 7, '1990-12-12', 0, 'JD-40-411', 'Tanah Ciamis', 'AKTA HIBAH NO 549.4 /234/ KEC/1990', '<p>Hibah dari Ibu Isoh Husen kepada Iyon Sofyan BA (atas nama JAI). Akta hibah asli dan fotokopitgl 12 Desember 1990. Daftar Isian Inventaris (fotokopi) tanggal 13 september 1997, Harus ada surat contra letter dari keluarga Iyon Sofyan</p><div><br></div><p><br></p><p>Box : 12</p>', 228, '', 274800000, '1050', '', -7.627793, 108.73574, 1),
(301, 6, 2, 71, 0, 4, 17, 9, 7, '1995-04-01', 0, 'JD-114-301', 'Tanah', 'NO.SPPT. 32.08.110.013.000.0335.7/95-01', '<p>Ada NO.SPPT. 32.08.110.013.000.0335.7/95-01 luas tanah 3000.m2 a/n Ny.Emi Tenjowaringin -salawu Cigunungtilu fotokopi. Harus dibuat akta hibah. </p><p><br></p><p>Box : 12</p>', 190, '', 0, '3000', '', -7.339303, 107.941611, 2),
(302, 6, 2, 71, 0, 6, 6, 9, 7, '1993-01-02', 0, 'JD-114-302', 'Tanah', 'SHM WAKAF NO. 96', '<p>SHM-WAKAF no.96 a/n Kosin tgl.2 Januari 1993 luas tanah 874.m2-Tenjowaringin blok Sukamantri Tasikmalaya -MilikmAdat Kohir C.no.510 Persil no.223 D/IV. Dokumen fotokopi. </p><p><br></p><p>Box : 12</p>', 190, '', 0, '874', '', -7.339303, 107.941611, 2),
(303, 6, 2, 71, 3, 4, 18, 9, 7, '1998-08-08', 0, 'JD-114-303', 'Tanah', 'SURAT KETERANGAN NO. 140/75//VIII/1998 ', '<p>SURAT KETERANGAN no.140/75//VIII/1998 dari Kepala Desa Tenjowaringin tgl.8 Agustus 1998 bahwa tanah seluas 2.800. m2 Persil no.219-C dan No.C 1145 terletak di blok Puncak desa Tenjowaringin a/n ADAH bin EMAD. Harus dibuat akta hibah.&nbsp;</p><p><br></p><p>Box : 12</p><div><br></div>', 190, '', 0, '2800', '', -7.339303, 107.941611, 2),
(304, 6, 2, 71, 3, 4, 18, 9, 7, '0000-00-00', 0, 'JD-114-304', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tanah masjid milik anggota. Kelompok Jeunjing. Harus dibuatkan akta hibah. Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 12</p>', 190, '', 0, '12', '', -7.339303, 107.941611, 2),
(305, 6, 2, 71, 0, 4, 18, 9, 7, '0000-00-00', 0, 'JD-114-305', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Ada laporan keuangan pembangunan dengan luas 24 meter  tanggal 25 mei  2009. Masjid kelompok Cibunar</p><p><br></p><p>Box : 12</p><div><br></div>', 190, '', 0, '24', '', -7.339303, 107.941611, 2),
(306, 6, 2, 71, 3, 4, 18, 9, 7, '0000-00-00', 0, 'JD-114-306', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tanah hibah dari Ibu Iding dan Pak Sadili. Masjid kelompok Sukawarni. Harus dibuat akta hibah.&nbsp;</p><p><br></p><p>Box : 12</p>', 190, '', 0, '120', '', -7.339303, 107.941611, 2),
(307, 6, 2, 71, 3, 4, 18, 9, 7, '0000-00-00', 0, 'JD-114-307', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Ibu Odah. Harus dibuat akta hibah. </p><p><br></p><p>Box : 12</p>', 190, '', 0, '175', '', -7.339303, 107.941611, 2),
(308, 6, 2, 71, 3, 4, 18, 9, 7, '0000-00-00', 0, 'JD-114-308', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Ibu Suti. Masjid kelompok Legok Gonggong.&nbsp;</p><p><br></p><p>Box : 12</p>', 190, '', 0, '62', '', -7.339303, 107.941611, 2),
(309, 6, 2, 71, 3, 4, 18, 9, 7, '0000-00-00', 0, 'JD-114-309', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Pak Juharta, Sumari, Kosi. Surat harus dicari. Ada&nbsp;&nbsp;Ada NO.SPPT : 32.08.110.013.000.1509.7/98-01&nbsp; a/n ADAH luas tanah 1.900.m2.&nbsp;Kwitansi Pembelian tanah Kuburan tgl. 7 Agustus 1998 senilai Rp.300.000</p><p><br></p><p>Box : 12</p>', 190, '', 300000, '300', '', -7.339303, 107.941611, 2),
(310, 6, 2, 71, 3, 4, 18, 9, 7, '0000-00-00', 0, 'JD-114-310', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Sukaraja. Masjid kelompok Cibalong.&nbsp;</p><p><br></p><p>Box : 12</p>', 190, '', 0, '140', '', -7.339303, 107.941611, 2),
(311, 6, 2, 71, 3, 4, 21, 9, 7, '0000-00-00', 0, 'JD-114-311', 'Tanah', 'AKTA HIBAH NO 32 TAHUN 1998', '<p>AKTA HIBAH FC tanggal 7 april 1998, surat pernyataan hibah fc tanggal 6 april 1998</p><div><br></div><div>Box : 12</div>', 190, '', 0, '729', '', -7.339303, 107.941611, 1),
(312, 6, 2, 94, 3, 6, 6, 9, 7, '1993-01-02', 0, 'JD-105-312', 'Tanah', 'SHM WAKAF  NO 31', '<p>Hibah dari Ny. Kamsih. Masjid ranting babakan. SHM Wakaf No. 31 Kutawaringin Blok Babakansari, Tasikmalaya konversi milik adat c. no. 276 ps. no. 203 d/II atas nama Kamsih. Tanggal 2 Januari 1993 luas tanah 365 m2. Masjid. Dokumen fotokopi.</p><p><br></p><p>Box : 12</p>', 191, '', 0, '365', '', -7.336079, 107.951241, 2),
(313, 6, 0, 94, 3, 6, 6, 9, 7, '1993-01-02', 0, 'JD-105-313', 'Tanah', 'SHM WAKAF NO 93', '<p>Hibah dari Pak Sanuji. SHM Wakaf No. 93 atas nama Iya Satriya C. No. 1282 Ps. No. 154 D/I Blok Citeguh Tasikmalaya. Ada kwitansi bermaterau yang ditandatangani oleh Endang Deni permana dari IIp Syarifudin untuk pembelian tanah darat di Citeguh tanggal 10 Mei 2008 senilai Rp. 35,000,000. (Dokumen kwitansi tidak ada). Dokumen shm wakaf fotokopi. Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 12</p>', 191, '', 0, '551', '', -7.336079, 107.951241, 2),
(314, 6, 2, 94, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-105-314', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Pak Hendarsah. Dokumen hibah tidak ada. Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 12</p>', 191, '', 0, '720', '', -7.336079, 107.951241, 2),
(315, 6, 2, 94, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-105-315', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Pak Damiji. Masjid ranting Bunisari. Harus dibuat akta hibah. Masjid ranting bunisari. Dokumen tidak ada . Harus diverfikasi.&nbsp;</p><p><br></p><p>Box : 12</p>', 191, '', 0, '70', '', -7.323583, 108.231641, 2),
(316, 6, 2, 94, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-105-316', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Pak Madwi. Masjid Ranting Kurjati. Dokumen tidak ada. Harus dibuat akta hibah.&nbsp;</p><p><br></p><p>Box : 12</p>', 191, '', 0, '64', '', -7.323583, 108.231641, 2),
(317, 6, 2, 94, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-105-317', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Pak Rokai. Masjid ranting nagrak. Dokumen tidak ada. Harus dibuat akta hibah. </p><p><br></p><p>Box : 12</p>', 191, '', 0, '112', '', -7.323583, 108.231641, 2),
(318, 6, 2, 94, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-105-318', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari ... ?. Dokumen tidak ada . Harus dibuatkan akta hibah.&nbsp;</p><p><br></p><p>Box : 12</p>', 191, '', 0, '84', '', -7.323583, 108.231641, 2),
(319, 6, 2, 94, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-105-319', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hissa jaidad dari Adang Suhendar. Dokumen tidak ada. Harus dibuat akta hibah.&nbsp;</p><p><br></p><p>Box : 12</p>', 191, '', 0, '5600', '', -7.336079, 107.951241, 2),
(320, 6, 2, 94, 3, 2, 18, 9, 11, '0000-00-00', 0, 'JD-105-320', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Jual beli . Dokumen tidak ada. Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 12</p>', 191, '', 0, '70', '', -7.336079, 107.951241, 2),
(321, 6, 2, 94, 3, 2, 15, 9, 7, '2008-05-03', 0, 'JD-105-321', 'Tanah', 'KWITANSI JUAl BELI 175', '<p>Kwitansi pembelian tanah seluas 12,5 bata = 175 bata sebesar Rp. 20,000,000 di Kp. Citeguh. Atas nama Iip Syarifudin atas nama Ketua Jemaat Lokal Citeguh. Harus dibuat sertifikat atas nama JAI.&nbsp;</p><p><br></p><p>Box : 12</p>', 191, '', 0, '175', '', -7.336079, 107.951241, 1),
(322, 6, 2, 94, 3, 2, 15, 9, 7, '2008-05-10', 0, 'JD-105-322', 'Tanah', 'KWITANSI JUAl BELI 280', '<p>Kwitansi atas nama Iip Syarifudin atas nama Jemaat Citeguh sebesar Rp. 30,000,000 untuk pemeblian tanah di Kampung Nagrak seluas 20 bata = 280 m2. Harus dibuat sertifikat atas nama JAI.&nbsp;</p><p><br></p><p>Box : 12</p>', 191, '', 0, '280', '', -7.336079, 107.951241, 1),
(405, 6, 2, 353, 0, 2, 18, 9, 7, '2009-04-24', 0, 'JD-19-405', 'Tanah Beli', 'SURAT PERNYATAAn 410', '<p>Surat pernyataan dari JAI Wanasigra bahwa tanah yang dibeli tahun 1989 dari Hafid oleh Saleh Ahmad adalah milik JAI. Tanah sekolah alwahid. Pernyataan oleh Lili Suwarli, Amar dan Muslih Nasih Ahmad, Dokumen fotokopi. Harus dibuat sertifikatnya.&nbsp;</p><p><br></p><p>Box : 12</p>', 215, '', 0, '410', '', -7.331216, 107.939832, 2),
(324, 6, 2, 117, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-176-324', 'Tanah', 'DAFTAR INVENTARIS', '<p>Hibah dari Pak Momo. Surat harus diselesaikan. Masjid sudah dirusak massa dan tidak bisa dipakai kembali di tahun 2004. Masjid ukuran 18 x 8 m2. Surat pernyataan dari Encang Jarkasih bahwa tanah seluas 282 adalah milik JAI (DOKUMEN TIDAK ADA).&nbsp;</p><p><br></p><p>Box : 12</p>', 192, '', 0, '282', '', -7.291103, 108.200798, 2),
(325, 6, 2, 117, 3, 2, 18, 9, 11, '1997-08-27', 0, 'JD-176-325', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Jual beli oleh PB. Sertifikat tidak ada di PB. DI tanah ini ditinggali oleh 7 kepala keluarga. Pemukiman akibat Gunung Galunggung. Surat pernyataan tanggal 27 agustus 1997 (Dokumen tidak ada).&nbsp;</p><p><br></p><p>Box : 12</p>', 192, '', 0, '252', '', -7.291103, 108.200798, 2),
(326, 6, 2, 142, 3, 4, 21, 9, 11, '2000-02-05', 0, 'JD-119-326', 'Tanah', 'AKTA HIBAH 1415', '<p>Hibah dari Euis P. Sumantri kepada Rd. Moch. Jafar tanggal 5 Februari 200. Luas tanah didalam sertifikat adalah 1415 m2 SHM No. 486 (belum dipecah). Surat hibah tanggal 25 Juli 1991. Semua dokumen tidak ada.&nbsp; Kelompok Jojongor Cicariang.&nbsp;</p><p><br></p><p>Box : 12</p>', 193, '', 0, '1415', '', -7.382769, 108.207881, 2),
(327, 6, 2, 142, 3, 2, 16, 9, 9, '2005-05-23', 0, 'JD-119-327', 'Tanah', 'AJB NO. 206/2005', '<p>AJB no.206/2005 tgl.23 Mei 2005 luas tanah594.m2 dari Haji Syahriani kepada Drs.Iyon Sofyan. Dokumen fotokopi. </p><p><br></p><p>Box : 12</p>', 193, '', 0, '594', '', -7.382769, 108.207881, 2),
(328, 6, 2, 142, 3, 4, 6, 9, 11, '1991-07-25', 0, 'JD-119-328', 'Tanah', 'SHM 804', '<p>Hibah dari Maman Lukman bin Yudawinata kepada E. Abdulmaman (JAI) tanggal&nbsp;25 Juli 1991 luas tanah 111 bata(1554)m2 di Jojongor Karsamenak Kawalu Tasikmalaya-Tanah Sertifikat Asal Persil milik adat C.no.804&nbsp; Seb Ps.noD/IV Gunung Tanala. Dokumen tidak.</p><p><br></p><p>Box : 12</p>', 193, '', 0, '1554', '', -7.382704, 108.207904, 2),
(329, 6, 2, 142, 0, 4, 6, 9, 7, '2001-10-31', 0, 'JD-119-329', 'Tanah', 'SHM NO. 099 ', '<p>SHM ASLI tgl 3 Desember 2007, AKTA HIBAH ASLI tgl 31 Oktober 2001,&nbsp; AJB ASLI DAN FC tgl 12 Mei 1982</p><div><br></div><p><br></p><p>Box : 12</p>', 193, '', 0, '1700', '', -7.382704, 108.207904, 2),
(330, 6, 2, 142, 0, 12, 6, 9, 7, '1995-05-01', 0, 'JD-119-330', 'Tanah', 'SHM NO. 678', '<p>SHM.no.678 tgl.1 Mei 1995 a/n Iyon Sopyan luas tanah 1795.m2&nbsp; Asal Persil milik Asdat C.no.112Ps.no.68 D/II. Harus ada surat contra letter. Harus ada dokumen asli.&nbsp;</p><div><br></div><div>Box : 12</div>', 193, '', 0, '1795', '', -7.382704, 108.207904, 2),
(331, 6, 2, 142, 0, 4, 6, 9, 7, '2001-03-29', 0, 'JD-119-331', 'Tanah', 'SHM NO. 001143', '<p>Akta Hibah no.61/2001 tgl.31 Oktober 2001 dari Uun Syarifatunnisa Makih kepada Munasir Sidik luas tanah 370.m2. SHM. No.001143 luas tanah 370.m2 a/n Yanti Dwiarti Mansur tgl 29-3-2001. luas tanah 370.m2 a/n Yanti Dwiarti Mansur tgl 29-3-2001.</p><p><br></p><p>Box : 12</p>', 193, '', 0, '370', '', -7.382704, 108.207904, 1),
(332, 6, 2, 142, 3, 12, 6, 9, 9, '0000-00-00', 0, 'JD-119-332', 'Tanah', 'SHM NO. 486', '<p>SHM.no.486 tgl.12-7-1990 a/n Maman Lukman luas tanah 4475.m2(2105 &amp; 2370.m2).</p><p><br></p><p>Box : 12</p>', 193, '', 0, '4475', '', -7.382704, 108.207904, 2),
(333, 6, 2, 142, 3, 2, 16, 9, 11, '1993-02-15', 0, 'JD-119-333', 'Tanah', 'SURAT JUAL BELI 125', '<p>Pernyataan Jual-Beli dari Momon AHMAD Ma\'mun kepada E.Abdulmanan luas tanah 8.94.bata = 125.16.m2 tgl 15 Februari 1993. Dokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 12</p>', 193, '', 0, '125,16', '', -7.382704, 108.207904, 2),
(334, 6, 2, 142, 3, 4, 19, 9, 11, '0000-00-00', 0, 'JD-119-334', 'Tanah', 'SURAT HIBAH 35', '<p>Jual beli 119 m2 dan Hibah Bapak Momon A dan Ma\'mun luas 35 m2. Total 154 m2. Harus dibuat akta hibah. Dokumen tidak ada. </p><p><br></p><p>Box : 12</p>', 193, '', 0, '154', '', -7.382769, 108.207881, 2),
(335, 6, 2, 142, 3, 4, 19, 9, 11, '0000-00-00', 0, 'JD-119-335', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Pak Mansyur A Khan. Surat sedang diproses. Ada panti asuhan.&nbsp;</p><p><br></p><p>Box : 12</p>', 193, '', 0, '2000', '', -7.382769, 108.207881, 2),
(336, 6, 2, 142, 3, 4, 19, 9, 11, '0000-00-00', 0, 'JD-119-336', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Ibu Siti Rokayah. Rumah dinas ukuran 6x12 m2. Harus dibuat akta hibah. Cicariang Kidul</p><p><br></p><p>Box : 12</p>', 193, '', 0, '72', '', -7.382769, 108.207881, 2),
(337, 6, 2, 142, 3, 13, 18, 9, 11, '0000-00-00', 0, 'JD-119-337', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hissa Jaidad dari Pak Adang Suhendar. Dokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 12</p>', 193, '', 0, '5600', '', -7.382769, 108.207881, 2),
(338, 6, 2, 142, 3, 13, 18, 9, 11, '0000-00-00', 0, 'JD-119-338', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hissa Jaidad dari Ibu SZ Manan. Hak Mmilik adat. Sawah. Dokumen tidak ada .&nbsp;</p><p><br></p><p>Box : 12&nbsp;</p>', 193, '', 0, '420', '', -7.382769, 108.207881, 2),
(339, 6, 2, 142, 3, 2, 18, 9, 11, '0000-00-00', 0, 'JD-119-339', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Jual Beli. Tidak ada riwayat. Dokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 12</p>', 193, '', 0, '2940', '', -7.382769, 108.207881, 2),
(340, 6, 2, 142, 3, 2, 22, 9, 9, '0000-00-00', 0, 'JD-119-340', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Jual beli atas nama Jafar. Surat harus diselesaikan. Dokumen surat keterangan fotokopi.</p><p><br></p><p>Box : 12</p>', 193, '', 0, '252', '', -7.382769, 108.207881, 2),
(341, 6, 2, 142, 3, 2, 18, 9, 11, '0000-00-00', 0, 'JD-119-341', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Beli dari Ibu Yuyu Saryanah. DDokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 12</p>', 193, '', 0, '245', '', -7.382769, 108.207881, 2),
(342, 6, 2, 142, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-119-342', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>hibah dari bp.maman lukman. Dokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 12</p><div><br></div>', 193, '', 0, '350', '', -7.382769, 108.207881, 2),
(343, 6, 2, 142, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-119-343', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>hibah dari ibu edoh. Dokumen tidak ada. </p><p><br></p><p>Box : 12</p><div><br></div>', 193, '', 0, '280', '', -7.382769, 108.207881, 2),
(344, 6, 2, 196, 3, 6, 6, 9, 7, '1993-02-24', 0, 'JD-135-344', 'Tanah', ' SHM WAKAF NO. 68', '<p>Wakaf dari Pak E. Sumawinata. SHM Wakaf No. 68 atas nama Ede Sumawinata persil No. 69 d/II Sinarjaya Tasikmalaya luas 714 m2. Dokumen fotokopi.&nbsp;</p><p><br></p><p>Box : 12</p>', 194, '', 0, '712', '', -7.346594, 108.120866, 2),
(345, 6, 2, 196, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-135-345', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Pak Wisasmita. Harus dibuat akta hibah. Dokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 12</p>', 194, '', 0, '529', '', -7.346594, 108.120866, 2),
(346, 6, 2, 196, 3, 4, 21, 9, 7, '1997-10-18', 0, 'JD-135-346', 'Tanah', 'AKTA HIBAH NO. 142/11/1997', '<p>Hibah. Akta hibah asli. Atas nama Musari</p><p><br></p><p>Box : 12</p>', 194, '', 0, '170', '', -7.346594, 108.120866, 1),
(347, 6, 2, 366, 0, 2, 6, 16, 7, '2017-09-18', 0, 'JD-337-347', 'Tanah', 'SHM NO. 397', '<p>Jual beli dari Mustam kepada Karsono AJB Nomor 286/2017 tanggal 18 September 2017. Perubahan SHM Nomor 397 atas nama Karsono. Dokumen asli. Harus dibuat surat pernyataan contra letter bahwa tanah tersebut milik JAI. </p><p><br></p><p>Box : 18</p>', 195, '', 0, '2500', '', 0.022318, 111.363326, 1),
(348, 6, 2, 366, 3, 2, 6, 9, 7, '2012-11-12', 0, 'JD-337-348', 'Tanah', 'SHM NO. 393', '<p>Jual beli dari Poniran kepada Karsono AJB Nomor 524/2012. Perubahan SHM Nomor 393 atas nama Karsono. Dokumen asli. Harus dibuat surat pernyataan contra letter bahwa tanah tersebut milik JAI.&nbsp;</p><p><br></p><p>Box : 18</p>', 195, '', 0, '2500', '', 0.022318, 111.363326, 1),
(349, 6, 2, 292, 3, 4, 21, 9, 7, '1997-09-08', 0, 'JD-11-349', 'Tanah', 'AKTA HIBAH NO. 1616', '<p>Hibah dari Pak Adang Suhender kepada Udi Sasdtra Suryadi (atas nama JAI). Akta Hibah Nomor 1616/SPA/1997. Dokumen fotokopi. Akta pemisahan dan pembagian fotokopi tanggal 9 Agustus 1997. Surat keterangan Ahli Waris tanggal 29 Agustus 1997.&nbsp;</p><p><br></p><p>Box : 12</p>', 196, '', 0, '654', '', -7.34845, 108.126073, 2),
(350, 6, 2, 292, 3, 4, 19, 9, 7, '1980-12-18', 0, 'JD-11-350', 'Tanah', 'SURAT PERJANJIAN KHUSUS', '<p>Hibah dari Ny. Antra Argadiraksa. Masjid Baiturahim luas 221 m2. IMB Nomor 71/1997 tanggal 18 Desember 1980 dan Surat Perjanjian Khusus tanggal 23 Juni 1992. Surat Perjanjian Hibah tanggal 10 Maret 1982.&nbsp;</p><p><br></p><p>Box : 12</p>', 197, '', 0, '250', '', -7.34845, 108.126073, 2),
(351, 6, 2, 292, 0, 2, 6, 9, 7, '1979-02-10', 0, 'JD-11-351', 'Tanah', 'AKTA PELEPASAN HAK ATAS TANAH', '<p>Jual beli. Copy surat dikirim. Masjid dirusak massa. Surat Pelepasan Hak Atas Tanah dari Encu Komat kepada Atang Suwandana (JAI) tanggal 10 Februari 1979. Harus ada surat contra letter.&nbsp;</p><p><br></p><p>Box : 12</p>', 198, '', 0, '641', '', -7.34845, 108.126073, 2),
(352, 6, 2, 292, 0, 2, 16, 9, 9, '2006-12-15', 0, 'JD-11-352', 'Tanah', 'AJB NO. 261/2006', '<p>Jual beli atas nama Udi Sastra Suryadi. Dokumen AJB fotokopi.&nbsp;</p><p><br></p><p>Box : 12</p>', 198, '', 0, '506', '', -7.34845, 108.126073, 2),
(353, 6, 2, 292, 0, 2, 6, 9, 7, '2007-03-23', 0, 'JD-11-353', 'Tanah', 'SHM NO. 082', '<p>SHM atas nama Udi Sastra Suryadi. Dokumen asli dan fotokopi. </p><p><br></p><p>Box : 12</p>', 196, '', 0, '510', '', -7.353079, 108.126099, 1),
(354, 6, 2, 292, 0, 2, 6, 9, 9, '2006-11-14', 0, 'JD-11-354', 'Tanah', 'SHM NO. 1740', '<p>SHM asli dan fotokopi atas nama Ir. H. Argadiraksa. </p><p><br></p><p>Box : 12</p>', 196, '', 0, '1180', '', -7.353079, 108.126099, 1),
(355, 6, 2, 292, 0, 2, 6, 9, 9, '2006-11-14', 0, 'JD-11-355', 'Tanah', 'SHM NO. 1744', '<p>Dari jual beli. SHM (FC dan Asli) (Pemegang Hak: Ir. H. Argadiraksa) 14 november 2006</p><div><br></div><div>Box : 12</div>', 196, '', 0, '2101', '', -7.353079, 108.126099, 1),
(356, 6, 2, 292, 3, 4, 19, 9, 11, '1993-09-24', 0, 'JD-11-356', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>HIBAH dari Ny.Kiroh Abdul Karim - Tanah Pekuburan(Surat Perjanjian Hibah tgl24-9-1993). Harus dibuat akta hibah. Dokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 12</p>', 196, '', 0, '420', '', -7.34845, 108.126073, 2),
(357, 6, 2, 292, 3, 4, 19, 9, 11, '1992-06-23', 0, 'JD-11-357', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>WAKAF DR NY NINGRUM DURAHMAN.&nbsp;SURAT PERANJIAN KHUSUStgl.23 Juni 1992&nbsp; DARI Ny.Ningrum Durachman dengan Haris Sumiarta sbg tempat parkir mobil Masjid JAI luas tanah 250.m2.&nbsp;Surat Izin Mendirikan Masjid tgl.18 Desember 1980 no.PU.071/157/S.K/1980.</p><p><br></p><p>Box : 12</p>', 196, '', 0, '250', '', -7.34845, 108.126073, 2),
(358, 6, 2, 292, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-11-358', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>HIBAH DARI ENGKON SUPARJA&nbsp; - Tanah Darat. Dokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 12</p>', 199, '', 0, '3500', '', -7.315074, 108.237402, 2),
(359, 6, 2, 292, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-11-359', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>HIBAH DR PAK H OMAN 2800 M2, H BANON DAN&nbsp; H KAJUL 420 M2. Dokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 12</p>', 200, '', 0, '3220', '', -7.340074, 108.146665, 2),
(360, 6, 2, 292, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-11-360', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah Lisan dari Pak Abdul Majid-Masjid 6 x 12.&nbsp;</p><p><br></p><p>Box : 12</p>', 201, '', 0, '90', '', -7.34845, 108.126073, 2),
(361, 6, 2, 292, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-11-361', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>HIBAH DARI PAK ONO DANAWIKARYA&nbsp; - MasJid 35.m2.&nbsp;</p><p><br></p><p>Box : 12</p>', 202, '', 0, '84', '', -7.312483, 108.139954, 2),
(362, 6, 2, 307, 3, 4, 21, 9, 7, '1991-11-27', 0, 'JD-75-362', 'Tanah', 'AKTA HIBAH NO. 30/1991', '<p>Hibah dari Pak Wikatma kepada Udin Holiludin atas nama JAI seluas 370 m2 dan beli dari Pak Taryo 580 m2. Tanah terdahulu 338 m2 dari Pak Wikata dan 214 m2 dari Pak Kartadiredja ditukar dengan tanah ini. Dokumen asli Akta Hibah Nomor 30/SKR/AKTA-HB/1991. Dokumen beli Nomor persil 251 luas tanah 580 m2 Nomor reg sp 921/WPJ.07/KB.1104/1992 untuk pajak.</p><p><br></p><p> Box : 12</p>', 203, '', 0, '950', '', -7.44868, 108.183596, 1),
(363, 6, 2, 307, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-75-363', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah lisan dari Pak Iyos. Dokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 12</p>', 203, '', 0, '2100', '', -7.44868, 108.183596, 2),
(364, 6, 2, 307, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-75-364', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Syarik Ahmad. Dokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 12</p>', 203, '', 0, '91', '', -7.44868, 108.183596, 2),
(365, 6, 2, 307, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-75-365', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Syarif Ahmad. Dalam daftar inventaris bulan agustus 1997. Dokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 12</p>', 203, '', 0, '140', '', -7.44868, 108.183596, 2),
(366, 6, 2, 308, 3, 4, 21, 9, 11, '0000-00-00', 0, 'JD-106-366', 'Tanah', 'AKTA HIBAH N0. 61/ 97', '<p>Hibah dari Pak Suparman. Dokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 12</p>', 205, '', 0, '124', '', -7.338184, 107.930513, 2),
(367, 6, 2, 308, 0, 4, 21, 9, 7, '1997-10-10', 0, 'JD-106-367', 'Tanah', 'AKTA HIBAH NO. 61', '<p>Akta hibah asli tanggal 10 oktober 1997, surat pernyataan hibah fc tanggal 15 september 1997. Atas nama Soleh Abdul Ghopur. Di map Wanasigra</p><p><br></p><p>Box : 12</p>', 205, '', 0, '66', '', -7.338184, 107.930513, 1),
(368, 6, 2, 308, 3, 4, 21, 9, 11, '1998-04-07', 0, 'JD-106-368', 'Tanah', 'AKTA HIBAh NO. 32/SALAWU/1998', '<p>Akta Hibah Nomor 32/Salwu/1998 tgl 7 April 1998 dari Engkom Komarudin kepada Hanip Ahmad (Wkl-JAI). Dokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 12</p>', 205, '', 0, '729', '', -7.338184, 107.930513, 2),
(369, 6, 2, 308, 0, 6, 6, 9, 7, '1993-01-02', 0, 'JD-106-369', 'Tanah', 'SHM WAKAF NO. 89', '<p>Hibah dari Pak Omod. SHM asli dan fc tanggal 2-1-1993 atas nama Omod dan Isah luas tanah 238 .m2 C no.755 Ps.no.42   D/III Tenjowaringin Wanasigra Tasikmalaya (Masjid & Tempat Wudlu).</p><p>Ada Kwitansi bermaterai yang ditandatangaini oleh Kurniasih dan iip Syarifudin untuk pembelian tanah darat di Citeguh tanggal 3 Mei 2008 senilai 20 juta. </p><p><br></p><p>Box : 12</p><div><br></div>', 205, '', 0, '238', '', -7.338184, 107.930513, 1),
(370, 6, 2, 308, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-106-370', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tanah anggota. Tidak ada keterangan lain. Harga 50,000 /m2. Dokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 12</p>', 206, '', 0, '24', '', -7.338184, 107.930513, 2),
(371, 6, 2, 308, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-106-371', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tanah masjid kelompok Cigadog/Citebing. Tanah anggota harga 50,000 /m2. Dokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 12</p>', 207, '', 0, '25', '', -7.338184, 107.930513, 2),
(372, 6, 2, 308, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-106-372', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tanah masjid kelompok Cikabuyutan. Tanah anggota harga 50,000 /m2. Dokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 12</p>', 208, '', 0, '12', '', -7.338184, 107.930513, 2),
(373, 6, 2, 308, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-106-373', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tanah masjid kelompok Sindangsari. Tanah anggota harga 50,000 /m2. Dokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 12</p>', 209, '', 0, '35', '', -7.338184, 107.930513, 2),
(374, 6, 2, 308, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-106-374', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tanah masjid kelompok Cikabuyutan. Tanah anggota harga 50,000 /m2. Dokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 12</p>', 208, '', 0, '24', '', -7.338184, 107.930513, 2),
(375, 6, 2, 308, 3, 4, 18, 9, 11, '0000-00-00', 0, 'JD-106-375', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tanah hibah atas nama Pak Emod. Di dalam daftar isian inventaris asli tanggal 9 agustus 1997.</p><p><br></p><p>Box : 12</p>', 205, '', 0, '362', '', -7.338184, 107.930513, 2),
(376, 6, 2, 331, 3, 2, 16, 9, 9, '1985-10-02', 0, 'JD-4-376', 'Tanah', 'AJB NO. 145', '<p>AJB (FC) Tgl 2 Oktober 1985 atas nama Enjang Sofian.&nbsp;</p><p><br></p><p>Box : 12</p><div><br></div>', 210, '', 0, '321', '', -7.335184, 108.222842, 1),
(377, 6, 2, 331, 3, 2, 16, 9, 9, '2012-07-23', 0, 'JD-4-377', 'Tanah', 'AJB NO. 67/2012', '<p>AJB ASLI dan fc tanggal 23 juli 2012 atas nama Hj. Uun Syarifatunnisa Makih dari Ir. Djani Ahmad Nurjati.&nbsp;</p><p><br></p><p>Box : 12</p><div><br></div>', 211, '', 0, '193', '', -7.335184, 108.222842, 1),
(378, 6, 2, 331, 3, 2, 6, 9, 9, '1997-08-13', 0, 'JD-4-378', 'Tanah', 'SHM NO. 161', '<p>Data tanah fc&nbsp; tanggal 13-8-1997. AJB Tahun 1964 dan 1965. Dokumen tidak ada.&nbsp;</p><p><br></p><p>Box : 12</p><div><br></div>', 210, '', 0, '238', '', -7.33392, 108.215453, 2),
(379, 6, 2, 331, 3, 4, 5, 9, 7, '1955-11-19', 0, 'JD-4-379', 'Tanah', 'SHM. NO. 1086', '<p>SHM Nomor 1086 tanggal 23 Februari 2001 asli. SHGB Nomor 12 tanggal 19 Agusutus 1997. Akta Eigendom tanggal 19 November 1955.&nbsp;</p><p><br></p><p>Box : 12</p>', 210, '', 0, '360', '', -7.33392, 108.215453, 1),
(380, 6, 2, 331, 3, 4, 6, 9, 9, '2005-09-19', 0, 'JD-4-380', 'Tanah', 'SHM NO. 01232', '<p>SHM atas nama Teteng Koswara. Dokumen fotokopi</p><p><br></p><p>Box : 12</p><div><br></div>', 210, '', 0, '195', '', -7.335184, 108.222842, 2),
(410, 6, 2, 24, 0, 4, 18, 17, 11, '0000-00-00', 0, 'JD-61-410', 'Tanah Hibah Yakub', 'TIDAK ADA DOKUMEN', '<p>Hibah lisan dari Alm H. Yakub di kamung pangarengan. SPPT atas nama Alm. Harus dibuat akta hibah. Hanya ada catatan pembangunan masjid tanggal 14 Oktober 2004.&nbsp;</p><p><br></p><p>Box : 13</p>', 226, '', 0, '404', '', -7.627793, 108.73574, 2),
(382, 6, 2, 331, 7, 4, 6, 9, 9, '1979-06-13', 0, 'JD-4-382', 'Tanah', 'SHM NO. 161', '<p>SHM.no.161. tgl.1306-1979 Tasikmalaya a/n Nyi.Haji Hotimah luas tanah 241.m2. shm fc tanggal 13-06-1979, akta perjanjian sewa menyewa fc No.1971, tgl 28 Januari 2013 , AJB FC) No. 45/X/85 Tgl 8 Otber 1985</p><div><br></div><div>Box : 12</div><div><br></div>', 210, '', 0, '241', '', -7.335184, 108.222842, 2),
(383, 6, 2, 378, 0, 4, 6, 21, 7, '2008-01-14', 0, 'JD-356-383', 'Tanah Beli Encang Jarkasih', 'SHM NO.03735', '<p>AJB Nomor 190 tanggal 29 Oktober 2007. Dari Salamun kepada H. Encang Jarkasih (Atas nama JAI). </p><p>SHM atas nama Encang Jarkasih (atas nama JAI). Dokumen asli. Harus ada surat contra letter dari keluarga Encang Jarkasih.&nbsp;</p><p><br></p><p>Box : 14</p>', 232, '', 22784000, '178', '', -7.297278, 108.757694, 1),
(384, 6, 2, 331, 0, 4, 6, 9, 9, '2009-05-22', 0, 'JD-4-384', 'Tanah', 'SHM. NO.02354', '<p>SHM ASLI tanggal 22-05-2009. AJB NO 3 TAHUN 2009 ASLI DAN Fotokopi</p><p><br></p><p>Box : 12</p><div><br></div>', 210, '', 0, '52', '', -7.335184, 108.222842, 2),
(385, 6, 2, 331, 0, 4, 18, 9, 11, '1990-10-13', 0, 'JD-4-385', 'Tanah Kelompok Bunigara', 'SURAT HIBAH 201', '<p>Hibah dari Soleh Mustaga. Tanah ditempati keturunan penghibah. Data-data Tanah di Jemaat Wilayyah Taskmalaya berupa surat keterangan mesjid (fc) tgl 13 Agustus 1997.</p><p><br></p><p>Box : 12</p>', 213, '', 0, '201', '', -7.314926, 108.218833, 2),
(386, 6, 2, 331, 0, 4, 19, 9, 7, '1984-09-12', 0, 'JD-4-386', 'Tanah', 'SURAT KETERANGAN HIBAH 765', '<p>Surat keterangan hibah fc tanggal 12 sep 1984 fsro Ili Rasli kepada Munirul Islam atas nama JAI.</p><p><br></p><p>Box : 12</p>', 210, '', 0, '765', '', -7.335184, 108.222842, 2),
(387, 6, 2, 331, 0, 4, 18, 9, 11, '1984-09-12', 0, 'JD-4-387', 'Tanah Hibah Rasli', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Rasli tahun 1941. Harus dibuat akta hibah. Keterangan waris tanggal 12 September 1984.</p><p><br></p><p>Box : 12</p>', 210, '', 0, '435', '', -7.33392, 108.215453, 2),
(388, 6, 2, 331, 0, 4, 20, 9, 7, '1990-10-13', 0, 'JD-4-388', 'Tanah Buninagara', 'SURAT KETERANGAN HIBAH 304', '<p>Surat keterangan hibah fc tanggal 13 oktober 1990 atas nama NY.Dioh Mardiyah Musthofa. Surat Keterangan HIBAH tgl.13 Oktober 1990 dari Ny.Dioh Mardiyah Musthofa kepada JAI ( Munirul Islam.Sy)</p><div><br></div><div>Box : 12</div><div><br></div><div><br></div>', 213, '', 0, '304', '', -7.314926, 108.218833, 2),
(389, 6, 2, 331, 0, 4, 19, 9, 9, '1979-05-30', 0, 'JD-4-389', 'Tanah Kelompok Saripin', 'SURAT PERJANJIAN JUAL BELI DAN HIBAH 78', '<p>Surat salinan perjanjian jual beli tanah 77,70 m2 pada tSurat salinan perjanjian jual beli tanah 77,70 m2 pada tanggal 30 mai 1979 atas nama Ny, Iti Udin. Hibah dari Pak Udin. &nbsp;Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 12</p>', 214, '', 0, '77,7', '', -7.351355, 108.240974, 2),
(390, 6, 2, 331, 0, 2, 18, 9, 11, '0000-00-00', 0, 'JD-4-390', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Beli dan Hisa Jaidad. Dokumen tidak ada. Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 12</p>', 210, '', 0, '60', '', -7.33392, 108.215453, 2),
(391, 6, 2, 353, 0, 2, 16, 9, 7, '1986-07-19', 0, 'JD-19-391', 'Tanah Beli ', 'AJB NO 31 1986 ', '<p>AJB (Asli dan FC) tgl 19 Juli 1986. Jual beli dari Hafid kepada M. Saleh Ahmadi (Mubaligh JAI) atas nama JAI. Kwitansi pembelian tanggal 12 Juni 1986. </p><div><br></div>', 215, '', 32030000, '552', '', -7.33103, 107.941205, 1),
(392, 6, 0, 353, 0, 4, 21, 9, 7, '1997-09-22', 0, 'JD-19-392', 'Tanah Hibah Onih', 'AKTA HIBAH N0 53/ 97', '<p>Hibah dari Onih kepada Ihin Solihin atas nama JAI tanah 280 m2 persil no.56 a kohir np.1547-Wanasigra-Tenjowaringin Salawu. Surat Pernyataan Hibah tanggal 1 September 1997. Surat Keterangan Hibah tanggal 10 Oktober 1997. Dokumen fotokopi. Harus dibuat surat contra letter dari Ihin Solihin. </p><p><br></p><p>Box : 12</p>', 215, '', 17450000, '280', '', -7.33103, 107.941205, 2),
(393, 6, 2, 353, 0, 4, 21, 9, 7, '1997-09-22', 0, 'JD-19-393', 'Tanah Hibah Uddin Tajuddin', 'AKTA HIBAH NO. 54/SALAWU/1997', '<p>Hibah dari uddin Tajjudin, Cece Sukmana dan masitoh atas nama Ibu (alm) Isah kepada Ihin Solihin atas nama JAI, tanah 200 m2 persil 56-1 letter C tanggal 1 September 1997. Surat Keterangan Hibah tanggal 10 September 1997. Dokumen fotokopi. </p><p><br></p><p>Box : 12</p>', 215, '', 12950000, '200', '', -7.331216, 107.939832, 2),
(394, 6, 2, 353, 0, 2, 15, 9, 7, '2006-09-07', 0, 'JD-19-394', 'Tanah Beli', 'KWINTASI JUAl BELI 267', '<p>Pembelian tanah 267 m2 (19 bata) untuk bangunan gedung asrama Waqfenou. Akta Jual Beli masih dalam proses penyelesaian berhubung harga tanah keseluruhan adalah 19 juta, yang 4 juta dibayari Ir. H. A. Qoyum. Kwitansi tanggal 7 september 2006 dan Surat Pengantar Asli tgl 17-04-2007. Harus segera dibuat sertifikat akta jual beli dan sertifikat tanah. </p><p><br></p><p>Box : 12</p><div><br></div>', 215, '', 19000000, '267', '', -7.33103, 107.941205, 1),
(395, 6, 2, 353, 0, 6, 6, 9, 7, '1993-01-02', 0, 'JD-19-395', 'Tanah Wakaf Masjid', 'SHM WAKAF NO. 98', '<p>Wakaf dari Omod tanah untuk Masjdi, Madrsah berdasarkan akta pengganti akta ikrar wakaf ppa-iw kecamatan salawu tanggal 6 Februari 1990. Penggantian tanggal 2 Januari 1993. Nazir : Yahya, Omod, Ihi, Lulu, Yahya. Dokumen fotokopi. Harus dikirim aslinya. Harus dibuat surat contra letter dari Nazir. </p><p><br></p><p>Box : 12</p>', 215, '', 144830000, '497', '', -7.331216, 107.939832, 2),
(396, 6, 2, 353, 0, 2, 18, 9, 11, '0000-00-00', 0, 'JD-19-396', 'Tanah Beli SMA ', 'DAFTAR INVENTARIS', '<p>Dalam surat keterangan ada tanah 574 m2 dan luas banguan 192 m2 belum proses sertifikat. Harus segera dilakukan sertifikasi tanah. Harus diverifikasi. </p><p><br></p><p>Box : 12</p>', 215, '', 166950000, '574', '', -7.33103, 107.941205, 2),
(397, 6, 2, 353, 0, 4, 18, 9, 11, '0000-00-00', 0, 'JD-19-397', 'Tanah Mushola Pasir Mukti', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Pak Suhada. Masjid Kelompok Pasir Mukti. Harus dibuat akta hibah. </p><p>\\</p><p>Box : 12</p>', 216, '', 20200000, '100', '', -7.331216, 107.939832, 2),
(398, 6, 2, 353, 0, 4, 18, 9, 11, '0000-00-00', 0, 'JD-19-398', 'Tanah Anggota', 'TIDAK ADA DOKUMEN', '<p>Tanah atas nama Iyos. Dokumen tidak ada. Harus diverifikasi.</p><p><br></p><p>Box : 12</p>', 215, '', 0, '2100', '', -7.331216, 107.939832, 2),
(399, 6, 2, 353, 0, 4, 18, 9, 11, '0000-00-00', 0, 'JD-19-399', 'Tanah Kelompok Cikuray', 'TIDAK ADA DOKUMEN', '<p>Tanah kelompok cikuray.&nbsp;</p><p><br></p><p>Box : 12</p>', 217, '', 0, '30 ', '', -7.331216, 107.939832, 2),
(400, 6, 2, 353, 0, 4, 18, 9, 11, '0000-00-00', 0, 'JD-19-400', 'Tanah Kelompok Pangkalan', 'TIDAK ADA DOKUMEN', '<p>Tanah kelompok pangkalan.&nbsp;</p><p><br></p><p>Box : 12</p>', 218, '', 0, '54', '', -7.331216, 107.939832, 2),
(401, 6, 2, 353, 0, 4, 18, 9, 11, '0000-00-00', 0, 'JD-19-401', 'Tanah Kelompok Leles', 'TIDAK ADA DOKUMEN', '<p>Tanah kelompok leles</p>', 219, '', 0, '15', '', -7.331216, 107.939832, 2),
(402, 6, 2, 353, 0, 4, 18, 9, 11, '0000-00-00', 0, 'JD-19-402', 'Tanah Kelompok Babakan Limus', 'TIDAK ADA DOKUMEN', '<p>Tanah kelompok babakan limus.&nbsp;</p><p><br></p><p>Box : 12</p>', 220, '', 0, '20', '', -7.331216, 107.939832, 2),
(403, 6, 2, 353, 0, 4, 18, 9, 11, '0000-00-00', 0, 'JD-19-403', 'Tanah Kelompok Wanasigra 2', 'TIDAK ADA DOKUMEN', '<p>Tanah kelompok wanasigra 2.&nbsp;</p><p><br></p><p>Box : 12</p>', 221, '', 0, '20', '', -7.331216, 107.939832, 2),
(404, 6, 2, 353, 0, 4, 21, 9, 7, '1983-10-10', 0, 'JD-19-404', 'Tanah Hibah', 'AKTA HIBAH NO. 7/PPAT/1983', '<p>Akta Hibah (Asli) tgl 10 oktober 1983. Hibah dari Onih Samuji kepada Moch. Saleh</p><div><br></div><div>Box : 12</div>', 215, '', 0, '586', '', 0, 0, 1),
(406, 6, 2, 353, 0, 6, 6, 9, 7, '1990-09-29', 0, 'JD-19-406', 'Tanah Wakaf', 'SURAT KETERANGAN WAKAF 262', '<p>Tanah wakaf dari Omod kepada Lili Suwarli tanah 262 m2 kepada JAI. Dokumen fotokopi.</p><p><br></p><p>Box : 12</p>', 215, '', 0, '262', '', -7.331216, 107.939832, 2),
(407, 6, 2, 20, 0, 6, 6, 17, 7, '2001-11-23', 0, 'JD-63-407', 'Tanah Hibah Wakaf Sulaiman', 'SHM WAKAF NO. 10.19.26.03.00001', '<p>Hibah dari Alm Paj Sulaiman Muhtar. Sedang proses akta hibah. Tanah wakaf No. 1. Surat Hibah tanggal 26 Juni 1981. Girik/SPPT tahun 1982 atas nama JAI. Dokumen shm wakaf asli. </p><p><br></p><p>Box : 13</p>', 222, '', 0, '619', '', -7.39005, 108.540195, 1),
(409, 6, 2, 379, 0, 2, 22, 9, 7, '1999-07-07', 0, 'JD-357-409', 'Tanah Beli Mualim Basit NA', 'SURAT PERNYATAAN JUAL BELI TANAH PEKARANGAN 958', '<p>Surat Jual beli tanah pekarangan dari Carkin Juandi kepada Mualim Basit NA seluas 958 m2 seharga Rp. 10.000.000.&nbsp;</p><p><br></p><p>Box : 14</p>', 225, '', 10000000, '958', '', -7.209832, 108.745678, 1),
(412, 6, 2, 59, 0, 4, 18, 17, 11, '0000-00-00', 0, 'JD-40-412', 'Tanah Hibah RM Afandi', 'TIDAK ADA DOKUMEN', '<p>Hibah wakaf dari RM Afandi. Tanah dikuasai oleh ahli waris. Menurut Pak Ahmad tanah tersebut telah dikual kepada anak Pak Husen dan dananyaa untuk masjid. Menurut Pak Elan tanah belum jual. Ditanyakan kepada Pak Memet. HARUS DIVERIFIKASI.&nbsp;</p><p><br></p><p>Box : 13</p>', 228, '', 0, '1680', '', -7.333281, 108.352625, 2),
(413, 6, 2, 59, 0, 4, 18, 17, 11, '0000-00-00', 0, 'JD-40-413', 'Tanah Hibah Husen', 'TIDAK ADA DOKUMEN', '<p>Tanah milik Pak Hisen terletak di Jl. Pajagalan. Menurut informasi tanah telah dijual. HARUS DIVERIFIKASI.&nbsp;</p><p><br></p><p>Box : 13</p>', 228, '', 0, '650', '', -7.333281, 108.352625, 2),
(414, 6, 2, 237, 0, 4, 16, 17, 9, '1998-10-14', 0, 'JD-62-414', 'Tanah Beli', 'AJB NO. 01-AJ/CGG/X/1998', '<p>Hibah dari Zaenal Abidin. Jual beli dari U. Zaenal kepada Iskandar. AJB ASLI DAN FC tanggal 14 oktober 1998. </p><p>HARUS DIVERIFIKASI</p><p><br></p><p>Box : 13</p>', 230, '', 0, '1350', '', -7.675491, 108.403492, 1),
(415, 6, 2, 82, 0, 4, 19, 17, 7, '1983-01-31', 0, 'JD-195-415', 'Tanah Hibah Badrudin', 'SURAT KETER HIBAH 350', '<p>Hibah dari Pak Badrudin kepada Oco Warsi (atas nama JAI). Surat hibah fotokopi dan asli, dengan luas 22 bata (luas sebenarnya 308 m2) nomor persil III letter c.115.</p><p><br></p><p>Box : 13</p><div><br></div>', 231, '', 15700000, '350', '', -7.401299, 108.448428, 1),
(416, 6, 2, 134, 0, 4, 19, 17, 7, '1992-06-03', 0, 'JD-157-416', 'Tanah Hibah Oyon Sofyan', 'SURAT HIBAH 700', '<p>Hibah dari Oyon Sofyan kepada JAI tanah seluas 50 bata = 700 m2. Dokumen surat hibah fotokopi. Harus dibuat akta hibah. </p><p><br></p><p>Box : 13</p>', 233, '', 14000000, '700', '', -7.627793, 108.73574, 2),
(417, 6, 2, 134, 0, 4, 18, 17, 11, '0000-00-00', 0, 'JD-157-417', 'Tanah Hibah Mamun', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Ma\'mun. Ada mushola ukuran 3x5 m2 di tanah pribadi. Harus dibuat akta hibah.</p><p><br></p><p>Box : 13</p>', 234, '', 0, '700', '', -7.585022, 108.760822, 2),
(418, 6, 2, 193, 0, 4, 21, 17, 7, '1997-10-18', 0, 'JD-147-418', 'Tanah Hibah Musari', 'AKTA HIBAH NO. 142/II/PL/1997', '<p>Hibah dari Pak Musari. Harus dibuat akta hibah / surat pernyataan bahwa tanah tersebut milik JAI.&nbsp;</p><p><br></p><p>Box : 13</p>', 235, '', 6400000, '170', '', -7.117917, 108.294224, 2),
(419, 6, 2, 222, 0, 6, 20, 17, 7, '1989-11-16', 0, 'JD-121-419', 'Tanah Wakaf R.H. Burhan Afandi', 'SURAT PERNYATAAN WAKAF 280 ', '<p>Wakaf dari RH. Burhan Afandi kepada Mumuh Al-Muhsin tanah seluas 20 tumbak=280 m2 tanggal 16 Nopember 1989. </p><p><br></p><p>Box : 13</p>', 236, '', 9800000, '280', '', -7.117355, 108.380462, 1),
(420, 6, 2, 222, 0, 4, 19, 17, 7, '1992-01-01', 0, 'JD-121-420', 'Tanah Hibah Mumuh Al-Muhsin', 'SURAT PENYERAHAN TANAH 572', '<p>Wakaf dari RH. Burhan Afandi kepada Mumuh Al-Muhsin tanah seluas 20 tumbak=280 m2 tanggal 16 Nopember 1989.<br></p><p>Surat penyerahan tanah dari Mumuh Al-Muhsin kepada Muhammad Kamis (atas nama JAI) tanah persil 401, kelas I/38 luas 572 m2 dengan akta jual beli nomor 12/PPAT/Kec./1991. </p><p>Tanah tersebut seluas 280 m2 berasal dari swadaya anggota JAI dan 292 nya lagi berasal dari hibah RH. Burhan Afandi dan Ining Kartini (ayah dari Mumuh Al-Muhsin).&nbsp;</p><p><br></p><p>Box : 13</p>', 236, '', 10000000, '572', '', -7.117355, 108.380462, 1),
(421, 6, 2, 222, 0, 4, 16, 17, 7, '2004-12-21', 0, 'JD-121-421', 'Tanah Hibah Jaidad', 'AJB NO. 27/V/2005', '<p>Tanah pembayaran Hissa Jaidad Mumuh Al-Muhsin seluas 560 m2. AJB No. 27 dengan luas 320 m2.&nbsp;</p>', 236, '', 5000000, '560', '', -7.117355, 108.380462, 1),
(422, 6, 2, 226, 0, 4, 19, 17, 7, '1992-04-05', 0, 'JD-134-422', 'Tanah Hibah', 'SURAT KETERANGAN HIBAH 350', '<p>Hibah dari Sarwan kepada Mughni Abdul Azis (atas nama JAI) tanah persil 045 letter C 162 Kohir No. 1. Harus ada surat hibah asli. Harus dibuatkan Akta Hibah.&nbsp;</p><p><br></p><p>Box : 13</p>', 237, '', 0, '350', '', -7.117355, 108.380462, 2),
(423, 6, 2, 237, 0, 2, 18, 17, 11, '1984-08-03', 0, 'JD-62-423', 'Tanah Beli dan Hibah', 'TIDAK ADA DOKUMEN', '<p>Jual belli yang dananya diambil dari penjualan tanah hibah pak Jaedi seluas 180 m2. Kwitansi Jual Beli tidak ada. </p><p>Ada Surat Keterangan Hibah tanah Pak Jaedi. Harus dibuatkan akta jual beli.&nbsp;</p><p><br></p><p>Box : 13</p>', 238, '', 10500000, '420', '', -7.654567, 108.611016, 2),
(424, 6, 2, 237, 0, 4, 21, 17, 7, '1998-01-15', 0, 'JD-62-424', 'Tanah Hibah', 'AKTA HIBAH NO. 17/PRG/1998', '<p>Hibah dari Rusid kepada Elan Juhari tanah persil No. 100 b Blok Ciloa Kohir No. 1203. Harus ada pernyataan contra letter dari Elan Juhari bahwa tanah milik JAI.</p><p>Sebelumnya ada surat hibah dari Ocid Rusid kepada Elan Juhari dan Kasdan tanah seluas 254 m2 tanggal 18 Tabuk 1370 HS/18 September 1991. (Apakah sama?)</p><p><br></p><p>Box : 13</p>', 239, '', 122500000, '350', '', -7.685393, 108.49945, 1),
(425, 6, 2, 237, 0, 4, 19, 17, 7, '1991-09-18', 0, 'JD-62-425', 'Tanah Hibah', 'SURAT PERNYATAAN HIBAH 254', '<p>Surat hibah dari Ocid Rusid kepada Elan Juhari dan Kasdan tanah seluas 254 m2 tanggal 18 Tabuk 1370 HS/18 September 1991. (Apakah sama dengan akta hibah nomor 17?)</p><p><br></p><p>Box : 12</p>', 239, '', 88900000, '254', '', -7.654567, 108.611016, 2),
(426, 6, 2, 237, 0, 4, 21, 17, 7, '1998-06-08', 0, 'JD-62-426', 'Tanah Hibah', 'AKTA HIBAH NO. 100/PRG/1998', '<p>Hibah dari Engkin kepada Rusid tanah persil no. 50 a D/V/ Blok Astamaya luas 285 m2. Harus ada surat contra letter dari Rusdi.&nbsp;</p><p><br></p><p>Box : 13</p>', 240, '', 99750000, '285', '', -7.704552, 108.503194, 1),
(427, 6, 2, 237, 0, 4, 19, 17, 7, '1987-01-01', 0, 'JD-62-427', 'Tanah Hibah', 'SURAT PERNYATAAN HIBAH 216', '<p>Hibah dari Abidin Sutarjo kepada JAI tanah seluas 12x18 m2= 216 m2 dan bangunan 5x12 m2. Tahun 1987.&nbsp;</p><p><br></p><p>Box : 13</p>', 240, '', 75600000, '216', '', -7.688331, 108.519104, 2),
(579, 6, 2, 209, 0, 4, 15, 38, 9, '0000-00-00', 0, 'JD-222-579', 'Tanah', 'KWITANSI PENGURUSAN SERTIFIKAT TANAH', '<p>Tanah beli dari anggota atas nama Supriyanto dan hibah sebagian dengan luas tanah total&nbsp; 20 x 25 m2. Setengah tanah rata dan setenahnya lagi tanah jurang. Updated tanggal 02 Juli 2019.</p><p>Jemaat Ngaringan menyampaikan pertanggung jawaban dana untuk pembuatan sertifikat tangah milik JAI sebesar Rp. 7,500,000 tanggal 30 Juli 2019. Dokumen masih diproses.&nbsp;</p><p>Kwitansi asli</p>', 287, '', 0, '500', '', -7.055477, 111.186508, 1),
(429, 6, 2, 91, 0, 4, 19, 32, 7, '1999-04-29', 0, 'JD-229-429', 'Tanah Hibah', 'SURAT HIBAH 340', '<p>Hibah dari Ibu Lambiak bin Rakiin. Masjid 90 m2, toilet 17 m2 dan rumah misi 35 m2. Surat hibah tanggal 24 April 1999.&nbsp;</p><p><br></p><p><br></p>', 241, '', 0, '340', '', -6.415052, 105.913027, 2),
(430, 6, 2, 91, 0, 2, 18, 32, 11, '0000-00-00', 0, 'JD-229-430', 'Tanah Beli', 'TIDAK ADA DOKUMEN', '<p>Tanah jual beli. Tidak ada riwayat. Harus diverifikasi.&nbsp;</p>', 241, '', 0, '800', '', 105.913027, -6.415052, 2),
(431, 6, 2, 224, 0, 4, 21, 32, 7, '2010-12-30', 0, 'JD-279-431', 'Tanah Hibah', 'AKTA HIBAH NO. 18', '<p>Hibah dari Abdul Basith. Harus ada surat contra letter.&nbsp;</p>', 242, '', 0, '764', '', -6.764759, 105.853759, 1),
(432, 6, 2, 224, 0, 12, 18, 32, 11, '1996-03-30', 0, 'JD-279-432', 'Tanah Beli Bahrudin Muchtar', 'SURAT KETERANGAN GARAPAN TANAH ', '<p>Surat Oper Garapan Tanah. Tidak ada riwayat.&nbsp;</p>', 243, '', 0, '20000', '', -6.827993, 105.82859, 2),
(433, 6, 2, 224, 0, 2, 16, 32, 9, '0000-00-00', 0, 'JD-279-433', 'Tanah Beli Sabrawi', 'AJB', '<p>Tanah jual beli atas nama Sabrawi. Harus alih ke JAI. Harus diverifikasi.&nbsp;</p>', 244, '', 0, '240', '', -6.415052, 105.913027, 1),
(434, 6, 2, 224, 0, 4, 19, 32, 7, '0000-00-00', 0, 'JD-279-434', 'Tanah Hibah', 'SURAT KETERANGAN HIBAH  255', '<p>Hibah tanah dari Ny. Hambiak binti Rakim tanah seluas 15 x 17 m2 (255 m2) di Kampung Kadukandel Desa Cisreh RT 01, RW 01 Kecamatan Saketi Kabupaten Pandeglang.</p><p>Surat Keterangan Hibah Tanah 255 m2 pada tanggal 29/04/1999<br></p>', 245, '', 0, '255', '', -6.415052, 105.913027, 2),
(435, 6, 2, 78, 0, 4, 6, 32, 7, '2003-03-05', 0, 'JD-44-435', 'Tanah Hibah', 'SHM NO. 624', '<p>Hibah dari Suhemi kepada Darwin (Atas nama JAI ). Surat Pernyataan Hibah asli. SHM asli.&nbsp;</p><p><br></p><p>Box : 7</p>', 248, '', 0, '116', '', -6.015438, 106.05145, 1),
(436, 6, 2, 78, 0, 4, 18, 32, 11, '2006-01-02', 0, 'JD-44-436', 'Tanah Hibah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Pak Udi. Disampaikan oleh Sukasno anaknya dalam Surat Pernyataan&nbsp; tentang hibah dari Udi (mertuanya) dengan luas tanah 10x7 m2 dua lantai.&nbsp;</p><p>AJB No. 626/1988 atas nama Sukasno. Jual beli dari Mad Arif kepada Sukasno. Hak milik adat girik C. 1208/344 persil no. 23/79dV luas 70 m2. di Kampung Sukasari RT 01 RW 01, Desa Taman Sari, Kecamatan Pulo Merak, Kota CIledgon, Kabupaten Serang. </p><p>Dokumen pernah dikirim ke kantor PB ditunjukkan kepada Pak Cheema. Harus ada penyelesaian masalah. Dokumen tidak ada. Harus dibuat akta hibah.&nbsp;</p><p><br></p><p>Box : 7</p>', 247, '', 0, '70', '', -5.922739, 106.000888, 2),
(437, 6, 2, 91, 0, 12, 18, 32, 11, '0000-00-00', 0, 'JD-229-437', 'Tanah', 'SPPT NO. 1007.7 BLOK 4.1999', 'Tidak ada riwayat. Tanah di Saketi. Pemilik Samisah', 250, '', 0, '10640', '', -6.399257, 105.991087, 2),
(438, 6, 2, 91, 0, 12, 18, 32, 11, '0000-00-00', 0, 'JD-229-438', 'Tanah', 'SPPT NO. 1005.7 BLOK 4.1999', '<p>Tidak ada riwayat. Tanah di Saketi. Pemilik Samisah</p>', 250, '', 0, '1610', '', -6.399257, 105.991087, 2),
(439, 6, 2, 267, 0, 4, 6, 32, 9, '1998-09-17', 0, 'JD-20-439', 'Tanah Hibah Tohari', 'SHM NO. 2112', '<p>Hibah dari Tohari kepada JAI. Akta Hibah No. 147/Rangkasbitung/1998 tanggal 17 September 1998. SHM atas nama Tohari. Harus ada surat contra letter dari Tohari. Harus sertifikasi atas nama JAI. Harus dibuat akta pelepasan hak. Proses pajak hibah. Proses balik nama di sertifikat dari Tohari ke JAI. </p><p>Didalamnya ada tanah hibah dari Dade R. Sulaeman seluas 55 m. AJB No. 78/Rangkasbitung/1998 tanggal 7 Septembe 1998. Tidak ada pernyataan hibah. </p><p><br></p><p>Box : 7</p>', 251, '', 0, '309', '', -6.345264, 106.26542, 1),
(440, 6, 2, 267, 0, 4, 6, 32, 7, '1998-09-11', 0, 'JD-20-440', 'Tanah Hibah Tohari', 'SHM NO 2153', '<p>Hibah dari Tohari disetujui istri yaitu Iyom Samsiah kepada JAI. Akta Hibah No. 146/Rangkasbitung/1998. SHM atas nama Tohari. Harus ada surat contra letter dari Tohari. Harus sertifikasi atas nama JAU. Harus dibuat akta pelepasan hak. Proses pajak hibah. Proses balik nama di sertifikat dari Tohari ke JAI. </p><p><br></p><p>Box : 7</p>', 251, '', 0, '300', '', -6.345264, 106.26542, 1),
(441, 6, 2, 267, 0, 12, 18, 32, 11, '0000-00-00', 0, 'JD-20-441', 'Tanah Wakaf', 'TIDAK ADA DOKUMEN', '<p>Didapat dari Wakaf/Hibah keluar besa Dade. R. Sulaeman </p><p><br></p><p>Box : 7</p>', 251, '', 0, '175', '', -6.345264, 106.26542, 2),
(442, 6, 2, 267, 0, 12, 6, 32, 9, '0000-00-00', 0, 'JD-20-442', 'Tanah', 'SHM NO. 2196', '<p>Tanah atas nama Nuryanto. Tidak ada riwayat.&nbsp;</p><p><br></p><p>Box : 7</p>', 251, '', 0, '275', '', -6.345264, 106.26542, 2),
(443, 6, 2, 267, 0, 12, 18, 32, 11, '0000-00-00', 0, 'JD-20-443', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tanah darat. baru balik nama dari Girik. Hibah dari Dade Sulaiman 220 m2 akan dibangun masjid 13x11 m2. Girik dan Akta Jual Beli. Asal tanah negara. Semua tanah dalam satu lokasi. Luas semuanya 3039 m2. Harus segera sertifikasi. Harus dibuat akta pelepasan hak. Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 7</p>', 251, '', 0, '2200', '', -6.345264, 106.26542, 2),
(444, 6, 2, 267, 0, 12, 18, 32, 11, '0000-00-00', 0, 'JD-20-444', 'Tanah Oper Garapan', 'TIDAK ADA DOKUMEN', '<p>Tanah negara, alih garpan belum diusulkan sertifikat. Tanah keluarga besar R. Sulaeman (alm)</p><p><br></p><p>Box : 7</p>', 252, '', 0, '1094', '', -6.799757, 106.01243, 2);
INSERT INTO `assets` (`id`, `categoryid`, `adminid`, `clientid`, `userid`, `manufacturerid`, `modelid`, `supplierid`, `statusid`, `purchase_date`, `warranty_months`, `tag`, `name`, `serial`, `notes`, `locationid`, `purchase_order`, `value`, `condition`, `removal_date`, `lat`, `lng`, `originalid`) VALUES
(445, 6, 2, 267, 0, 4, 18, 32, 11, '0000-00-00', 0, 'JD-20-445', 'Tanah Hibah Tantang Muhtar', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Tatang Muhtar bin Abidin. Tidak ada dokumen di pusat. </p><p>(Dokumen dikirim ke pusat/Pak Cheema?) (Tanah dijual dan janji akan diganti?)</p><p><br></p><p>Box : 7</p>', 252, '', 0, '600', '', -6.799757, 106.01243, 2),
(446, 6, 2, 267, 0, 12, 18, 32, 11, '0000-00-00', 0, 'JD-20-446', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tanah di Banten Lama Pandek. Tidak ada riwayat. </p><p><br></p><p>Box : 7</p>', 253, '', 0, '70', '', -6.345264, 106.26542, 2),
(447, 6, 2, 267, 0, 12, 6, 32, 9, '0000-00-00', 0, 'JD-20-447', 'Tanah', 'SHM NO. 452', '<p>Tidak ada riwayat. SHM fotokopi atas nama Junaedi. Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 7</p>', 254, '', 0, '2550', '', -6.348849, 106.235713, 2),
(448, 6, 2, 267, 0, 12, 18, 32, 11, '1993-01-05', 0, 'JD-20-448', 'Tanah', 'SURAT KETERANGAN OPER GARAPAN TANAH DARAT', '<p>Oper garapan dari E. Suhendi kepada Ir. Abdul Shamad Mahmud tanah seluar 330 m2 dengan ganti rugi sebesar 1 juta rupiah. Harus diverifikasi. </p><p><br></p><p>Box : 7</p>', 255, '', 0, '330', '', -6.800124, 105.929575, 2),
(449, 6, 2, 283, 0, 12, 18, 32, 11, '0000-00-00', 0, 'JD-282-449', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Harus diverifikasi</p>', 12, '', 0, '700', '', -6.14814, 106.169346, 2),
(450, 6, 2, 110, 0, 4, 6, 33, 9, '1997-12-29', 0, 'JD-9-450', 'Tanah', 'SHM NO. 739', '<p>Hibah dari Sidik kepada Amsir. Akta Hibah No. 85/Cipondok/1991 tanggal 15 Januari 1991. SHM atas nama Amsir fotokopi. Harus ada aslinya.&nbsp;</p><p>Dalam tanah ini termasuk. Hibah Pak Umar 100 m2, Pak M. Nur 220 m2. Jual beli 350 m2.&nbsp;</p><p><br></p><p>Box : 7</p>', 256, '', 0, '2030', '', -6.191276, 106.690854, 2),
(451, 6, 2, 110, 0, 1, 16, 33, 9, '1991-01-15', 0, 'JD-9-451', 'Tanah', 'AJB No. 90/Cipondoh/1990', '<p>Jual beli dari Namun Maran kepada Amsir. </p><p><br></p><p>Box : 7</p>', 256, '', 0, '740', '', -6.191276, 106.690854, 2),
(452, 6, 2, 110, 0, 2, 16, 33, 9, '1990-01-15', 0, 'JD-9-452', 'Tanah', 'AJB NO. 91/Cipondoh/1991', '<p>Jual beli dari Samin Munir kepada Amsir</p><p><br></p><p>Box : 7</p>', 256, '', 0, '460', '', -6.191276, 106.690854, 2),
(453, 6, 2, 110, 0, 4, 21, 33, 9, '1991-01-15', 0, 'JD-9-453', 'Tanah', 'AKTA HIBAH NO. 84/CIPONDOH/1991', '<p>Hibah dari Sidik kepada Amsir. </p><p><br></p><p>Box : 7</p>', 256, '', 0, '350', '', -6.191276, 106.690854, 2),
(454, 6, 2, 110, 0, 12, 6, 33, 9, '1997-12-29', 0, 'JD-9-454', 'Tanah', 'SHM NO. 738', '<p>Jual beli atas nama Amsir. AJB No. 899/ags/1986 fotokopi</p><p><br></p><p>Box : 7</p>', 256, '', 0, '190', '', -6.190106, 106.690641, 2),
(455, 6, 2, 110, 0, 2, 15, 33, 9, '2008-07-30', 0, 'JD-9-455', 'Tanah Beli', 'KWITANSI PEMBELIAN TANAH 1750', '<p>Jemaat Gondrong meminta permohonan dana bantuan pembebasan lahan seluas 1750 m2. Tanah sudah dibeli seluas 1750 m2 terdiri dari 1034 m2 atas nama Jemaat dan 716 m2 atas nama Anggota.</p><p>Dokumen masih berupa kwitansi. Harus dibuatkan sertifikatnya.</p><p>Box : 7</p>', 256, '', 0, '1750', '', -6.190106, 106.690641, 1),
(456, 6, 2, 110, 0, 4, 18, 33, 11, '0000-00-00', 0, 'JD-9-456', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Dalam laporan Jaidad Jemaat Gondrong tertulis ada aset hibah dari Awad, Masjid Nusrat ukuran 10x10 m.</p><p><br></p><p>Box : 7</p>', 256, '', 0, '207', '', -6.197248, 106.681641, 2),
(457, 6, 2, 110, 0, 4, 18, 33, 9, '0000-00-00', 0, 'JD-9-457', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Ada surat proposal penjualan tanah hibah berupa Girik atas nama H. Nesah Nemah bin H. Kurus luas 2825 m2 dari luas total 8178 m2. Belum ada akta pemecahan.</p><p><br></p><p>Box : 7</p>', 256, '', 0, '2825', '', -6.191096, 106.692658, 2),
(458, 6, 2, 136, 0, 2, 6, 33, 11, '0000-00-00', 0, 'JD-322-458', 'Tanah Beli', 'SHM NO. 624', '<p>Jual beli. Tidak ada dokumen. Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 7</p>', 257, '', 0, '100', '', -6.038991, 106.603473, 2),
(459, 6, 2, 406, 0, 2, 18, 33, 11, '2018-04-16', 0, 'JD-384-459', 'Tanah Rumah Dinas Mubaligh', 'TIDAK ADA DOKUMEN', '<p>Pembelian rumah untuk rumah misi. UMK 70,000,000 tanggal 16 April 2018. Belum ada pertanggungjawaban</p><p><br></p><p>Box : 7</p>', 258, '', 0, '100', '', -6.291412, 106.624445, 2),
(460, 6, 2, 231, 0, 4, 19, 33, 9, '2004-01-02', 0, 'JD-138-460', 'Tanah Hibah Resan Ahmadi', 'SURAT PERNYATAAN HIBAH 410', '<p>Surat Penyataan Hibah fotokopi dari Resan Ahmadi bahwa tanah persil No. 71 II No. Girik 988 di Kampung Kosong Desa Panunggangan, Kecmatan Pinang, Kota Tangerang dihibahkan seluas 410 m2 kepada JAI yang dikuasakan kepada Syamsudin Mursid atas nama Ketua JAI PanPus. </p><p>Tanah terdiri dari Wakaf dari Pak Jalaludin 270/260 m2 berupa Masjid ukuran 14x14 m2. Sertifikat atas nama aparat kelurahan. Dan jual beli 140 m2. Kampung Kelapa RT 03/07 Panunggangan, Kecamatan Cipondok, Tangerang</p><p>Dalam catantan lain. Wakaf dari Resan Ahmadi. Sertifikat atas nama aparat kelurahan. Masjd ukuran 14x10 m2 (Masjd Ar-Rahmat). </p><p>Harus ada akta hibah asli.</p><p><br></p><p>Box : 7</p>', 285, '', 0, '410', '', -6.224771, 106.647137, 2),
(461, 6, 2, 230, 0, 2, 16, 33, 7, '2011-08-16', 0, 'JD-274-461', 'Tanah Beli', 'AJB NO. 1248/2011', '<p>Jual beli dari Nuroh kepada Ahmad Irfan (atas nama JAI). Surat pernyataan contra letter bahwa JAI meminjam nama Ahmad Irfan untuk pembelian tanah 200 m2 dan menjelaskan tanah tersebut adalah milik JAI (fotokopi).</p><p><br></p><p>Box : 7</p>', 259, '', 0, '200', '', -6.223409, 106.646558, 1),
(462, 6, 2, 230, 0, 6, 18, 33, 11, '0000-00-00', 0, 'JD-274-462', 'Tanah Wakaf Resan Ahmadi', 'TIDAK ADA DOKUMEN', '<p>Dalam catantan lain. Wakaf dari Resan Ahmadi. Sertifikat atas nama aparat kelurahan. Masjd ukuran 14x10 m2 (Masjd Ar-Rahmat).&nbsp;</p><p><br></p><p>Box : 7</p>', 259, '', 0, '600', '', -6.223351, 106.646935, 2),
(463, 6, 2, 231, 0, 2, 15, 33, 9, '2005-06-07', 0, 'JD-138-463', 'Tanah Beli', 'KWITANSI 250', '<p>Pembelian tanah dari Maulana kepada Sadikin atas nama JAI, pembelian tanah 250 m2 seharga 25,000,000. Harus ada sertifikatnya. Segera proses. </p><p><br></p><p>Box : 7</p>', 260, '', 0, '250', '', -6.214883, 106.655186, 1),
(464, 6, 2, 231, 0, 2, 15, 33, 9, '2006-07-29', 0, 'JD-138-464', 'Tanah Beli', 'KWITANSI JUAl BELI 100', '<p>Pembelian tanah 100 m2 di Kampung Kelapada RT 01 RW 05 Panunggangan Timur, Pinang, Tangerang. Dari Milik bin Gomar kepada Sadikin (ketua JAI) untuk masjid.&nbsp; Harus ada sertifikat. Segera proses.</p><p><br></p><p>Box : 7</p>', 260, '', 0, '100', '', -6.214803, 106.65532, 2),
(465, 6, 2, 239, 0, 2, 18, 33, 11, '2008-09-19', 0, 'JD-122-465', 'Tanah', 'Surat Rencana Pembelian No.008/psrsmt/19 September 2008 ', '<p>Rencana Pembelian Tanah kosong Sawah luas 3000.m2 unt Masjid dan Rumah Dinas. Surat no.008/psrsmt/19 September 2008 (Ketua Jai Ainudin) dan Mblg Tanggerang Muhammad Sa\'id.</p><p><br></p><p>Box : 7</p><div><br></div>', 261, '', 0, '3000', '', -6.14614, 106.400051, 2),
(466, 6, 2, 245, 0, 6, 6, 33, 9, '1985-09-27', 0, 'JD-37-466', 'Tanah Wakaf Masjid', 'SHM WAKAF NO. 460', '<p>Akta Ikraf Wakaf tanggal 27 September 1985. SHM Wakaf tanggal 23 Juni 1993 atas nama nadzir : Abdullah, Abdul Gani, mahmud. M,. Ayub dan N. Sapari. Harus ada Akta Ikraf Wakaf asli. </p><p>History : Akta Jual Beli No. 936/Kec.Clg/1995 tanggal 5 April 1995 dari Abdullah bin H, Gedad kepada Abdul Gani seluas 200 m2</p><p><br></p><p>Box : 7</p>', 262, '', 633040000, '2030', '', -6.241152, 106.709357, 1),
(467, 6, 2, 245, 0, 4, 21, 33, 9, '1997-04-07', 0, 'JD-37-467', 'Tanah Hibah M. Ayub', 'AKTA HIBAH NO. 609/Kec.Clg/1997', '<p>Hibah dari M. Ayub kepada H. Abdul Gani. Luas 200 m2 dari 2650 m2. Harus ada Surat Pernyataan Hibah kepada JAI. Harus ada surat contra letter. Harus diverifikasi. </p><p><br></p><p>Box : 7</p>', 262, '', 92500000, '200', '', -6.241153, 106.709366, 1),
(468, 6, 2, 245, 0, 4, 18, 33, 11, '0000-00-00', 0, 'JD-37-468', 'Tanah Hibah Lisan', 'TIDAK ADA DOKUMEN', '<p>Wakaf lisan dari Alm. H. Teun. Masjid Baitu Sana ukuran 10x7,5 m2</p><p><br></p><p>Box : 7</p>', 262, '', 54000000, '120', '', -6.241153, 106.709366, 2),
(469, 6, 2, 248, 0, 4, 21, 33, 9, '0000-00-00', 0, 'JD-86-469', 'Tanah Hibah Saimah', 'AKTA HIBAH 1762/Pondokaren/1996', '<p>Hibah dari Saimah kepada Khusna AR atas nama JAI. Seluas 660 m2. Dan dari jual beli seluas 512. AJB No. 246. Dokumen fotokopi. Harus sertifikat atas nama JAI. Harus ada contra letter.&nbsp;</p><p><br></p><p>Box : 7</p>', 263, '', 163600000, '1172', '', -6.271246, 106.695523, 2),
(470, 6, 2, 248, 0, 4, 21, 33, 9, '1996-10-23', 0, 'JD-86-470', 'Tanah Hibah', 'AKTA HIBAH NO. 1762/Pondokaren/1996', '<p>Hibah dari Ibu Saimah peda Khusna AR (JAI). Ada rencana dipindahkan ke lokasi baru dengan luas total 1500 m2.&nbsp;</p><p><br></p><p>Box : 7</p>', 263, '', 80000000, '1000', '', -6.271246, 106.695523, 2),
(471, 6, 2, 248, 0, 4, 18, 33, 11, '0000-00-00', 0, 'JD-86-471', 'Tanah Hibah H. Boa', 'TIDAK ADA DOKUMEN', '<p>Hibah dari H. Boan untuk pemakaman. Ada rencana dipindahkan ke lokasi baru dengan luas total tanah 1500 m2.&nbsp;</p><p><br></p><p>Box : 7</p>', 263, '', 40000000, '500', '', -6.270704, 106.695523, 2),
(472, 6, 2, 284, 0, 2, 6, 33, 9, '0000-00-00', 0, 'JD-273-472', 'Tanah Beli', 'SHM NO. 3841', '<p>Jual beli tanah atas nama Asep Ahmad Husaeni seluas 1000 m2. Renana total 2460 m2. Harus ada surat contra letter. Harus sertifikat atas nama JAI.&nbsp;</p><p><br></p><p>Box : 7</p>', 264, '', 0, '1000', '', -6.314861, 106.722935, 1),
(473, 6, 2, 325, 0, 4, 5, 33, 7, '2003-03-14', 0, 'JD-73-473', 'Tanah', 'SHM NO. 392', '<p>Surat penyerahan ganti rugi tanah garapan/kapling dari Sanaman ke Johan Lestiadarma untuk JAI.&nbsp;SHM atas JAI tanggal 14 Maret 2003. CLEAR</p><p><br></p><p>Box : 7</p>', 265, '', 0, '190', '', -6.187335, 106.634472, 1),
(474, 6, 2, 325, 0, 4, 18, 33, 9, '1998-09-10', 0, 'JD-73-474', 'Tanah', 'AKTA SURAT WASIYAT', '<p>Wasiyat dari Hj. Sri Subasti Palgino seluas 850 m2 berupa rumah induk untuk Masjid Jemaat Ahmadiyah dan 1300 m2 untuk diperjualbelikan guna terwujudnya pembangunan Masjid di Gg. Teladan.&nbsp;Surat dikuasakan kepada Taufik Ahmad untuk melakukan tindakan pengurusan tanah 850 m2.&nbsp;Proses pengurusan dokumen karena keluarga almarhumah minta tanah dikembalikan ke keluarga karena ada hutang dari almarhumah kepada keluarga besar.</p><p>AKTA SURAT WASIYAT NO. 46 TANGGAL 10 SEPTEMBER 1998 DAN SURAT KUASA PENGURUSAN NO. 49 TANGGAL 10 SEPTEMBER 1998</p><p>Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 7</p>', 266, '', 0, '850', '', -6.167181, 106.601375, 1),
(475, 6, 2, 325, 0, 4, 18, 33, 9, '1998-09-10', 0, 'JD-73-475', 'Tanah', 'AKTA SURAT WASIYAT', '<p>Wasiyat dari Hj. Sri Subasti Palgino seluas 850 m2 berupa rumah induk untuk Masjid Jemaat Ahmadiyah dan 1300 m2 untuk diperjualbelikan guna terwujudnya pembangunan Masjid di Gg. Teladan. Surat dikuasakan kepada Taufik Ahmad untuk melakukan tindakan pengurusan tanah 850 m2. Proses pengurusan dokumen karena keluarga almarhumah minta tanah dikembalikan ke keluarga karena ada hutang dari almarhumah kepada keluarga besar.</p><p>AKTA SURAT WASIYAT NO. 46 TANGGAL 10 SEPTEMBER 1998 DAN SURAT KUASA PENGURUSAN NO. 49 TANGGAL 10 SEPTEMBER 1998<br></p><p>Harus diverifikasi.&nbsp;<br></p><p><br></p><p>Box : 7</p>', 267, '', 0, '1300', '', -6.156724, 106.566349, 1),
(476, 6, 2, 325, 0, 4, 6, 33, 9, '2000-12-18', 0, 'JD-73-476', 'Tanah', 'SHM NO. 02538', '<p>SHM No. 02538/12.05.200. SHGB No. 02538 berakhir tanggal 5 Oktober 2029 atas nama PT. Jaya Real Property tanggal 18 Desember 2000.&nbsp;Luas tanah 106 m2 di Blok A 08 No. 19 berdasarkan AJB No. 564 tanggal 27 Juli 2004.&nbsp;Dikuasakan kepada Hamid Ahmad Kohongia untuk mengurus penjualan rumah / tanah kavling ini. Harus ada surat contra letter. Harus sertifikat atas nama JAI.&nbsp;</p><p><br></p><p>Box : 7</p>', 268, '', 0, '106', '', -6.285064, 106.739519, 1),
(477, 6, 2, 325, 0, 4, 6, 33, 9, '2000-12-18', 0, 'JD-73-477', 'Tanah', 'SHM NO. 2539', '<p>SHM No. 2539 tanggal 18 Desember 2000 luas tanah 112 m2 berakhir tanggal 5 Oktober 2029 di Blok A 08 No. 21 berdasarkan AJB No. 565/2004 tanggal 27 Juli 2004.&nbsp;&nbsp;Dikuasakan kepada Hamid Ahmad Kohongia untuk mengurus penjualan rumah / tanah kavling ini.</p><p><br></p><p>Box : 7</p>', 268, '', 0, '112', '', -6.285064, 106.739519, 1),
(478, 6, 2, 356, 0, 12, 18, 33, 11, '0000-00-00', 0, 'JD-297-478', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>&nbsp;Ada proposal pembangunan masjid terdiri dari pembelian tanah 50 m2, hibah masjid/tanah 167 m2, dan hibah dari keluarga Harun Al-Rasyid 100 m2.&nbsp;Informasi lainnya : aPembayaran Jaidad Alm Pak Jian 80 m2.&nbsp;b. Hibah dari Alm Ibu Jian 20 m2.&nbsp;c. Jual beli 50 m2.&nbsp;d. Asal masjid dari keluarga Pak Jian.&nbsp;e. Masjid Bait An-Nur 69 m2, luas tanah 150 m2.</p><p><br></p><p>Box : 7</p>', 269, '', 0, '150', '', -6.225006, 106.633612, 2),
(479, 6, 2, 398, 0, 2, 6, 25, 9, '2017-09-15', 0, 'JD-376-479', 'Tanah Rumah Dinas Mubaligh', 'SHM NO. 1334', '<p>Jual beli AJB No. 285/2017 tanggal 15 September 2017 seharga 45,000,000. SHM atas nama Muhammad Ali. Harus ada surat contra letter.</p><p><br></p><p>Box : 7</p>', 270, '', 45000000, '127', '', 0.894921, 100.287124, 1),
(480, 6, 2, 398, 0, 2, 16, 25, 9, '2017-09-15', 0, 'JD-376-480', 'Tanah', 'AJB NO. 282/2017', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(245, 245, 245);\">Jual beli AJB No. 282/2017 tanggal 15 September 2017 seharga 45,000,000.</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(245, 245, 245);\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(245, 245, 245);\">Box : 7<br></span><br></p>', 270, '', 45000000, '119', '', 0.894921, 100.287124, 1),
(481, 6, 2, 93, 0, 6, 6, 12, 7, '2019-03-25', 0, 'JD-66-481', 'Tanah Wakaf Masjid', 'SHm WAKAF NO. 11', '<p>Tanah Wakaf. nazhir : Muhammad Karnoto, Ujang Sopyan Syarif dan Ade Ruhiyat.&nbsp;</p><p><br></p><p>Box : 9</p>', 82, '', 0, '836', '', -7.056496, 106.74919, 1),
(482, 6, 2, 98, 0, 4, 17, 34, 9, '1983-10-31', 0, 'JD-150-482', 'Tanah ', 'SPPT NO. 32.78.006.006.013-0015.0', '<p>Jual beli dari Dul Saarip kepada Badrunisa Sri Dharti tanggal 20 Januari 1978 tanah seluas 2200 m2. (Dokumen fotokopi)</p><p>Jual beli dari dari H. Ayar Usen kepada Badrunisa Sri Dharti tanggal 31 Oktober 1983 tanah seluas 1126 m2. Semua dokumen AJB Fotokopi. </p><p>Harus dibuatkan sertifikat asli. (Dokumen fotokopi)</p><p>Jual beli AJB No. 129/Sawangan/1997 tanah seluas 910 m2. (Dokumen tidak ada)</p><p>Hibah jaidad tanah seluas 1360 m2. (Dokumen tidak ada)</p><p>SPPT terakhir tanggal 26 Juni 2008 luas 3071 m2</p><p>Box : 8</p>', 100, '', 0, '3071', '', -6.408689, 106.767133, 2),
(483, 6, 2, 120, 0, 6, 6, 34, 9, '1991-05-01', 0, 'JD-1-483', 'Tanah Wakaf Masjid', 'SHM WAKAF NO. 241', '<p>Hibah dari Kel. Kartaatmaja - Mesjid Al-Hidayah - Surat Pernyataan Wakaf tgl.1 - 5 - 1991 no.W.3./K.3/018 thn 1991 luas tanah 616.m2( 41.35 x 18.22.m2).</p><p>SHM Wakaf no.241 tgl.30-7-1992 a/n Nazhir : Ir. Ahmad Qoyum Wendi, zainal Arifin Ahmad Syah, Dr. iding Kusnadi dan Chalid Ahmad Azis luas tanah 576.m2.(Dokumen fotokopi)</p><p>Dokumen tidak ada. Harus diverifikasi.</p><p><br></p><p>Box : 8</p>', 272, '', 0, '576', '', -6.169389, 106.812407, 1),
(484, 6, 2, 120, 0, 2, 6, 34, 9, '2015-05-20', 0, 'JD-1-484', 'Tanah', 'SHGB NO. 4325', '<p>Jual beli dalam perjanjian jual beli tanggal 20 mei 2015 dari Keluarga Lulu Ilil Maknun kepada Yayasan Wisma Damai tanah seluas 460. SHGB NO. 4325.&nbsp;</p><p><br></p><p>Box : 8</p>', 272, '', 0, '460', '', -6.169389, 106.812407, 1),
(485, 6, 2, 120, 0, 2, 12, 34, 9, '2007-08-29', 0, 'JD-1-485', 'Tanah Gedung Serbaguna', 'SHGB NO. 3994', '<p>Jual beli dari Keluarga Lulu Ilmaknun kepada Yayasan Wisma Damai.&nbsp;</p><p><br></p><p>Box : 8</p>', 272, '', 0, '484', '', -6.169389, 106.812407, 1),
(486, 6, 2, 120, 0, 2, 16, 34, 9, '1979-04-30', 0, 'JD-1-486', 'Tanah', 'SHM NO. 307', '<p>SHGB- no.307 tgl. 14 Oktober 1976 berakhir 30-9-1996 a/n Budi Kirana. Lalu dibeli dengan&nbsp;AJB tgl 30 April 1979 luas tanah 113.m2 dari Budi kirana kepada Adril Adenan (atas nama JAI).&nbsp;</p><p>Harus ada surat contra letter dari keluarga Adril Adenan. Harus sertifikat atas nama JAI.&nbsp; Harus perpanjang SHGB</p><p><br></p><p>Box : 8</p>', 272, '', 0, '113', '', -6.169389, 106.812407, 1),
(487, 6, 2, 120, 0, 2, 6, 34, 7, '1999-07-16', 0, 'JD-1-487', 'Tanah Beli', 'SHM NO. 3262', '<p>JUAL-BELI, AJB no.164/GAMBIR/1999 tgl. 16 Juli 1999 dari Tuan Dodi Kiswanti kepada Faisal Saleh (kuasa dari Mohammad Lius Maala - JAI). SHM NO. 3262 atas nama JAI. (Dokumen fotokopi).&nbsp;</p><p>Harus ada sertifikat asli.&nbsp;</p><p><br></p><p>Box : 8</p>', 272, '', 0, '124', '', -6.169389, 106.812407, 2),
(488, 6, 2, 119, 0, 4, 12, 34, 7, '1990-06-11', 0, 'JD-200-488', 'Tanah', 'SHM NO. 1762', '<p>Hibah dalam Surat Pernyataan Hibah tanggal 10 Agustus 1975 dari Muhammad Ali gelar St. Mangkuto kepada JAI. SHGB atas nama JAI berlaku sampai 21 September 2006. Harus diperpanjang. </p><p><br></p><p>Box : 8</p>', 273, '', 0, '140', '', -6.171154, 106.792652, 1),
(489, 6, 2, 119, 0, 4, 18, 34, 9, '1999-04-23', 0, 'JD-200-489', 'Tanah Hibah', 'AKTA PERJANJIAN PEMBERIAN HIBAH NO. 82', '<p>Hibah dari Nasir Mahmud Bynewai. Dalam surat pernjanjian pemberian hibah tanggal 23 April 1999 dari Ny, Mansurah Begum dan ahli warisnya kepada Abdul Munim. Sedang sertifikasi di notaris Ny. Bra. mahyastoeti. Harus segera sertifikasi. </p><p><br></p><p>Box : 8</p>', 274, '', 0, '200', '', -6.154164, 106.785325, 1),
(490, 6, 2, 119, 0, 4, 19, 34, 9, '1972-11-27', 0, 'JD-200-490', 'Tanah Hibah', 'SURAT PENYERAHAN TANAH 400', '<p>Hibah dari Nasir Mahmud Bynewai kepada PP Ansharullah JAU tanah seluas 400 m2 di Kavlng Ex Veteran No. 3 dan 4 Blok C. (Dokumen fotokopi).&nbsp;</p><p>Harus segera sertifikasi atas nama JAI.&nbsp;</p><p><br></p><p>Box : 8</p>', 274, '', 0, '400', '', -6.154164, 106.785325, 2),
(491, 6, 2, 119, 0, 12, 6, 34, 9, '1999-03-31', 0, 'JD-200-491', 'Tanah', 'SHM NO. 1899', '<p>SHM No.1899 tg.Duren Utara VII Rt.004/03 blok.K.Persil no.371 a/n Syamsudin. Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 8</p>', 275, '', 0, '60', '', -6.171005, 106.782474, 2),
(492, 6, 2, 119, 0, 4, 12, 34, 11, '2003-05-25', 0, 'JD-200-492', 'Tanah', 'SHGB NO. 4027', '<p>Tidak ada dokumen. Atas nama Mansyurah Begum. Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 8</p>', 274, '', 0, '101', '', -6.148459, 106.787547, 2),
(493, 6, 2, 98, 0, 3, 21, 34, 9, '1999-07-16', 0, 'JD-150-493', 'Tanah Hibah Argadiraksa', 'AKTA PERJANJIAN PEMBERIAN HIBAH', '<p>Jual beli dalam AJB No. 129/50/Sawangan/1997 tanggal 20 Desember 1997 dari Drs. H. Bunyamin Firdaus kepada Badrunisa Sri Dharti tanah persil No. 67 S.II Blok 10 Kohir No. C.2008 seluas 910. </p><p>Tanah dihibahkan dalam Akta Perjanjian Pemberian Hibah No. 64 tanggal 16 Juli 1999 dari Ny, Badrunnisa Sri Dharti kepada Mohammad Lius Ma\'ala (atas nama JAI). </p><p>Dalam Akta Pernyataan No. 63 bahwa yang menhibahkan tanah tersebut sebenarnya adalah Haji II Argadiraksa yang tujuannya adalah untuk membayar jaidad kepada JAI.&nbsp;</p><p>Harus ada Akta Hibah asli. Harus ada sertifikasi.&nbsp;</p><p><br></p><p>Box : 8</p>', 100, '', 0, '910', '', -6.397958, 106.771923, 1),
(494, 6, 2, 98, 0, 2, 16, 34, 9, '1978-01-20', 0, 'JD-150-494', 'Tanah', 'AKTA JUAl BELI 1000', '<p>Jual beli dalam AJB No. 65/12/I/1978 tanggal 20 Januari 1978 dari Dul Sarip kepada Badrunisa Sri Dharti tanah persul 67 S.II Kohir 822 seluas 2200. </p><p>Jual beli dalam Surat Jual Beli Tanah tanggal 1 Januari 1979 dari Badrunisa Sri Dharti kepada Ir. Ii. Argadiraksa persil 67 S.II Kohir 822 tanah seluas 1000. </p><p>Harus diverifikasi. </p><p><br></p><p>Box : 8</p>', 276, '', 0, '1000', '', -6.397958, 106.771923, 1),
(495, 6, 2, 98, 0, 2, 16, 34, 9, '1983-10-31', 0, 'JD-150-495', 'Tanah', 'AJB NO. 595.3/1213/1983', '<p>Jual beli dalam AJB No. 595.3/1213/1983 tanggal 31 Oktober 1983 dari H. Ayar Usen kepada Badrunisa Sri Dharti tanah seluas 1126 m2 persil 67S/II Kohir 252/688.&nbsp;</p><p>Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 8</p>', 100, '', 0, '1126', '', -6.397958, 106.771923, 2),
(496, 6, 2, 98, 0, 2, 22, 34, 9, '1974-09-03', 0, 'JD-150-496', 'Tanah Beli', 'SURAT JUAL BELI MUTLAK TANAH DARAT', '<p>Jual beli dalam Surat Jual Beli Mutlak Tanah Darat tanggal 3 September 1978 dari Siti Jomil kepada H. Chalid Achmad Azis Bea tanah seluas 490. (Dokumen fotokopi).&nbsp;</p><p>Harus ada dokumen asli. Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 8</p>', 277, '', 0, '490', '', -6.405355, 106.809438, 2),
(497, 6, 2, 98, 0, 2, 22, 34, 9, '1974-07-17', 0, 'JD-150-497', 'Tanah', 'SURAT JUAL BELI MUTLAK TANAH DARAT', '<p>Jual beli dalam Surat Jual Beli Mutlak Tanah Darat tanggal 17 Juli 1974 dri Malik St. Pangeran kepada H. Chalid Achmad Azis Bea tanah seluas 240 m2.&nbsp;</p><p>Harus dokumen asli. Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 8</p>', 277, '', 0, '240', '', -6.405355, 106.809438, 2),
(498, 6, 2, 169, 0, 4, 5, 34, 7, '2000-05-31', 0, 'JD-45-498', 'Tanah', 'SHM NO. 9465', '<div>Tanah seluas 925 m2 yang didapatkan dari :&nbsp;</div><div><br></div><ol><li>Penyerahan tanah dalam Surat Tanda Penyerahan tanggal 4 April 1968 dari Saban bin Sakam kepada JAI tanah girik nomor 200 seluas 300 m2.(Dokumen fotokopi)</li><li>Hibah dalam Surat Keterangan Hibah tanggal 2 April 1976 dari Saban bin Sakam kepada JAI tanah seluas 300 m2. (Dokumen fotokopi)</li><li>Surat Penyerahan Hak Milik Tanah tanggal 3 Maret 1980 dari Haji Syaban kepada A. Sarim (atas nama JAI) tanah persil No. 792 seluas 100 m2. (Dokumen fotokopi).&nbsp;</li><li>Surat Jual Beli Mutlak tanggal 29 Januari 1984 dari Zainudin kepada JAI tanah Girik No. 792 seluas 150 m2 seharga Rp. 1,500,000. (Dokumen fotokopi).</li><li>Surat Serah Terima/Jual Beli tanggal 11 Agustus 1989 dari Basuki W.S kepada JAI tanah seluas 175 m2 seharga Rp. 11,000,000. AJB No. 4104113 tanggal 3 Desember 1981 (Dok tidak ada). (Dokumen fotokopi)</li><li>Surat Pernyataan tanggal 12 Juli 1996 dari Basirudin yang menghibahkan tanah total seluas 725 m2 kepada JAI. (Dokumen fotokopi)</li><li>Tanah 200 m2 tidak ada dokumennya.&nbsp;</li></ol><p><br></p><p><br></p><p>Box : 8</p>', 278, '', 0, '925', '', -6.336044, 106.830475, 1),
(499, 6, 2, 169, 0, 12, 18, 34, 11, '0000-00-00', 0, 'JD-45-499', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tidak ada riwayat</p>', 278, '', 0, '8200', '', 0, 0, 2),
(500, 6, 2, 169, 0, 12, 18, 34, 11, '0000-00-00', 0, 'JD-45-500', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tidak ada riwayat</p>', 278, '', 0, '6000', '', 0, 0, 2),
(501, 6, 2, 257, 0, 2, 18, 34, 11, '0000-00-00', 0, 'JD-306-501', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Dalam Proposal Pembangunan Masjid di Pulau Tidung disebutkan telah membeli tanah bersertifikat seluas 121 m2 yang danaya sebagian besar dari donatur anggota JAI Kebayoran. Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 8</p>', 279, '', 0, '121', '', -5.796492, 106.492572, 2),
(502, 6, 2, 143, 0, 4, 19, 34, 9, '1989-11-14', 0, 'JD-10-502', 'Tanah Hibah', 'SHM ATAS NAMA YWD', '<p>Tanah yang didapatkan dari : </p><ol><li>Hibah dalam Surat Pernyataan Hibah tanggal 14 Nopember 1989 dari ahli waris keluarga D. Sutisna (Alm) kepada Lius Maala (atas nama JAI) tanah seluas 435 m2 dan bangunan 169 m2. </li><li>Dalam surat lain dijelaskan luas 400 m2 hibah dari Ibu Sukmi Basuni tahun 1972.</li><li>Beli dari Ny. Elly Syamsiah tahun 1974 luasnya 200 m2. </li></ol><p>IMB atas nama Yayasan Wisma Damai tanah seluas 500 m2. Peruntukan Tanggal 12 Desember 1996 No. 1601/Gsb/s/KL/IX/1996. Tanah negara bekas E.9246 seb. </p>', 280, '', 0, '583', '', -6.248084, 106.778781, 2),
(503, 6, 2, 143, 0, 2, 18, 34, 11, '1984-01-01', 0, 'JD-10-503', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Tanah dibeli tahun 1984 letak dan surat-suratnya masih menjadi satu dengan tanah 100 m2 Bapak Abdul Manan.&nbsp;</p><p>Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 8</p>', 280, '', 0, '100', '', -6.28252, 106.791951, 2),
(504, 6, 2, 122, 0, 2, 22, 34, 9, '1987-09-20', 0, 'JD-201-504', 'Tanah', 'SURAT PERJANJIAn JUAL BELI RUMAH', '<p>Surat perjanjian jual beli tanggal 20 September 1987 antara Siti Rumimah dan Amsar (atas nama JAI) luas tanah 121 m2 (Dokumen fotokopi).</p><p>Formulir pendaftaran tanah tanggal 8 April 1996.&nbsp;</p><p>Sedang dibangunan masjid dua lantai dengan luas 304 m2.&nbsp;</p><p>Harus segera di sertifikasi.&nbsp;</p><p><br></p><p>Box : 8</p>', 281, '', 0, '121', '', -6.11477, 106.886446, 2),
(505, 6, 2, 121, 0, 4, 5, 34, 7, '1994-06-07', 0, 'JD-199-505', 'Tanah Hibah', 'SHM NO. 1396', '<p>HAK PAKAI no.1355(SHM.no.1396 ) a/n RADEN ADANG HAMID tgl.8 okt 1991 jln.Bukit Duri Tanjakan Utar no.13 Rt.002/08 Tanah negara Bekas.Eig.6996 seb berlaku sd tgl.7-10-2001. </p><p>SURAT PERNYATAAN BAHWA Bapak R.Adang Hamid TIDAK MEMPUNYAI KETRUNAN ATAU ANAK KANDUNG tgl. 4 Juni 1994.</p><p>Hibah dalam Akta Perjanjian Pemberiah Hibah tanggal 7 Juni 1994 dari Raden Adang Hamid kepada Syarif Ahmad Lubis (atas nama JAI) tanah seluas 138 m2. </p><p>SHM atas nama JAI tanggal 4 Oktober 2001. </p>', 282, '', 0, '138', '', -6.224231, 106.859136, 1),
(506, 6, 2, 121, 0, 4, 21, 34, 9, '1991-04-12', 0, 'JD-199-506', 'Tanah', 'AKTA PENERIMAAN DAN PEMBERIAN HIBAH', '<p>Hibah dalam Akta Pemberian Hibah No. 15 tanggal 12 April 1991 dari Abdul Shamad kepada Ahmad Qoyum Wendy (atas nama JAI) tanah seluas 146 m2. (Dokumen fotokopi).&nbsp;</p><p>IMB taahun 1988. Penggunaan Perpetetakan tanggal 28 April 1979, Surat Kuasa tanggal 18 September 1987, Surat Kuasa tanggal 10 Januari 1987. Surat Pengoperan Hak Tanah tanggal 10 Januari 1978.&nbsp;</p><p>Harus disertifikasi.&nbsp;</p><p><br></p><p>Box : 8</p>', 283, '', 0, '146', '', -6.225811, 106.918572, 2),
(507, 6, 2, 200, 0, 2, 16, 34, 9, '1988-10-15', 0, 'JD-137-507', 'Tanah', 'AJB NO. 626/1988', '<p>AJB no 626/1988   6/10/1905 AJB no 626 a/n Sukasno (AJB. No.626/Mrk/1988 dari Mad Arif kepada Sukasno). </p><p>Hak.Milik Adat Girik.C.1208/344 Persil no.23/79dV (70.M2) Serang.Kota Cilegon Kec.Pulo Merak Ds.Taman sari Kmp.Sukasari Rt.01/Rk.01</p><p><br></p><p>Box : 8</p>', 14, '', 0, '70', '', -5.930438, 106.00893, 1),
(508, 6, 2, 200, 0, 4, 18, 32, 11, '2006-01-02', 0, 'JD-137-508', 'Tanah', 'SURAT PERNYATAAN 80', '<p>Surat Pernyataan dari Bpk.Sukasno&nbsp; Hibah dr Bpk H.Udi(Mertua) utk JAI tgl.02 Januari 2006 dgn Luas Tanah&nbsp; 10 x 7.m2 2.lantai.&nbsp;</p><p>Hibah dari Pak Udi dokumen pernah dikirim ke Pusat (Pak Cheema (alm)). Dokumen tidak ada. Harus diverifikasi.&nbsp;</p><p><br></p><p>Box : 8</p>', 13, '', 0, '80', '', -5.922739, 106.000888, 1),
(509, 6, 2, 283, 0, 4, 8, 32, 11, '0000-00-00', 0, 'JD-282-509', 'Tanah Hibah', 'HAK MULIK ADAT GIRIK C.1208/344 ', '<p>Daerah mubayin baru. Hibah dari Tantang Muchtar. Dokumen sudah dikirim ke Pusat (Pak Cheema??). Hak mulik adat girik C.1208/344 persil no. 23/79dV (70 m2)</p><p><br></p><p>Box : 8</p>', 284, '', 0, '670', '', -6.125604, 106.065036, 2),
(510, 6, 2, 231, 0, 6, 20, 33, 9, '1991-12-28', 0, 'JD-138-510', 'Tanah', 'SALINAN AKTA IKRAR WAKAF NO. W2/048/XII', '<p>Wakaf dalam Akta Ikrar Wakaf Nomor W2/048/XII dari Jalaludin kepadaH. Hasan (Ketua Nazhir) tokoh setempat tanah seluas 260 m2 di Desa Panunggangan, Kecamatan Cipondoh, Kota Tangerang. Saksi Sadikin dan Ati.&nbsp;</p><p><br></p><p>Box : 8</p>', 260, '', 0, '260', '', 0, 0, 2),
(511, 6, 2, 148, 0, 2, 5, 65, 7, '0000-00-00', 0, 'JD-139-511', 'Tanah', 'SHM NO. 551', '<p>Tanah komplek markaz. </p><p>Map No. 1</p>', 286, '', 0, '30000', '', -6.4898, 106.739835, 1),
(512, 6, 2, 148, 0, 2, 6, 65, 9, '1989-04-29', 0, 'JD-139-512', 'Tanah', 'SHM NO. 175', '<p>Jual beli.</p><ol><li> AJB No. 119/IV/89 tanggal 29 April 1989 atas nama Ir. Syarif Ahmad Lubis </li><li>SHM No. 175 atas nama Ir. Syarif Ahmad Lubis. (dipinjam PPLI tanggal 2 Matet 2017 belum kembali)</li><li>IMB No. 648.11/334/PR/1991</li><li>IMB No. 648.11/333/PR/1991</li><li>Pernyataan No. 138 tanggal 31 Juli 1999</li><li>Surat Kuasa No. 139 tanggal 31 Juli 1999</li><li>Kuasa Untuk Menjual NO. 140 tanggal 31 Juli 1999</li></ol><p>Map No. 2</p>', 1, '', 0, '1265', '', -6.487891, 106.739261, 2),
(513, 6, 2, 148, 0, 2, 6, 65, 9, '1990-05-18', 0, 'JD-139-513', 'Tanah', 'SHM NO. 54', '<p>Jual beli. </p><p>Dokumen : </p><ol><li>Ada surat segel aslu.&nbsp;</li><li> SHM No. 54 atas Lili Sukari dijual kepada Ir. Syarif Ahmad Lubis seharga Rp. 4,000,000. (SHM tidak ada)</li><li>AJB No. 33 tanggal 18 Mei 1990. (AJB tidak ada)</li><li>Surat Perjanjian Pmeberian Hibah No. 39 tanggal 6 Mei 1994.</li></ol><p>Map No. 3</p>', 1, '', 0, '805', '', -6.489165, 106.739041, 2),
(514, 6, 2, 148, 0, 2, 16, 65, 12, '1988-09-19', 0, 'JD-139-514', 'Tanah', 'SHM NO. 31', '<p>Jual beli. Rumah/tanah Pak Ajum. Map No. 4.&nbsp;</p><p>Dokumen : </p><ol><li>SHM NO. 31 (tidak ada). </li><li>AJB No. 228/18/Parung/1991 jual dari Nisin kepada Ir. Syarif Ahmad Lubis tanggal 13 Nopember 1991. (asli)</li></ol><p>Surat pernyataan pelepasa tanah dan bangunan tanggal 12 Juni 2012 menyatakan bahwa :&nbsp;</p><p>H. Abdul Basit melepas tanah luas 245 m2 SHM No. 21 persil no. 107 D dengan pembagian dan syarat :&nbsp;</p><ol><li>Memberikan kepada Ahmad Jumadi seluas 135 m2</li><li>Melepaskan tanah untuk dibayar oleh dan untuk Sopiyan Ahmad seluas 110&nbsp; dan bangunan 45 m2.&nbsp;</li></ol>', 1, '', 0, '245', '', -6.4898, 106.739835, 2),
(515, 6, 2, 148, 0, 2, 6, 65, 9, '1998-09-19', 0, 'JD-139-515', 'Tanah', 'SHM NO. 39', '<p>Jual beli. Lokasi di depan gedung LI.</p><p>Dokumen : </p><ol><li>Ada segel jual beli tanggal 6 September 1988.&nbsp;</li><li>SHM No. 39 (tidak ada)</li><li>AJB NO. 174/JB/XI/88 tanggal 2 November 1988. TGT 591.1/R-2237/KAD-88. (tidak ada)</li><li>Ada surat pernyataan pelepasan hak keluarga.&nbsp;</li><li>Pernyataan No. 123 tanggal 31 Juli 1999</li><li>Surat Kuasa No. 124 tanggal 31 Juli 1999</li><li>Kuasa Untuk Menjual No. 125 tanggal 31 Juali 1999</li></ol><p>Map No. 5</p>', 1, '', 0, '1670', '', -6.4898, 106.739835, 2),
(516, 6, 2, 148, 0, 2, 6, 65, 9, '1990-08-09', 0, 'JD-139-516', 'Tanah', 'SHM NO. 582', '<p>Jual beli. Tanah di BLK.</p><p>Dokumen : </p><ol><li>SHM No. 112. bekas tanah Pak Aceng.&nbsp;</li><li>SHM NO. 582 atas nama Ir. Pipi Sumantri. (asli)</li><li>AJB No. 59/21/PA/90 tanggal 9 Agusutus 1990. (asli)</li><li>Prinsip 594/2367/KW/XX/90, Tanggal 10 Oktober 1990.&nbsp;</li><li>Pernyataan No. 111 tanggal 20 September 1999</li><li>Surat Kuasa No. 112 tanggal 20 September 1999</li><li>Kuasa Untuk Menjual No. 113 tanggal 20 September 1999</li></ol><p>Map No. 6</p>', 1, '', 0, '1286', '', -6.4898, 106.739835, 1),
(517, 6, 0, 148, 0, 2, 6, 65, 9, '1990-08-09', 0, 'JD-139-517', 'Tanah', 'SHM NO. 122 ', '<p>Tanah BLK</p><p>Dokumen : </p><ol><li>SHM No. 122 atas nama Ir. Pipi Sumantri. (asli)</li><li>AJB No. 57/19/PRG/1990 tanggal 9 Agusutus 1990.(asli)</li><li>Prinsip 594/3174/KWD/XII/90 tanggal 1 Desember 1990.&nbsp;</li><li>Pernyataan No. 114 tanggal 20 Septermber 1999</li><li>Surat Kuasa No. 115 tanggal 20 September 1999</li><li>Kuasa Untuk Menjual No. 116 tanggal 20 September 1999</li></ol><p>Map No. 7</p>', 1, '', 0, '1948', '', -6.491008, 106.741602, 2),
(518, 6, 2, 148, 0, 2, 6, 65, 9, '1990-08-09', 0, 'JD-139-518', 'Tanah', 'SHM NO. 113', '<p>Jual beli. Tanah di BLK. </p><p>Dokumen : </p><ol><li>SHM No. 113 tanggal 27 April 1977 atas nama Ir. Pipi Sumantri</li><li>AJB No. 56/18/PG tanggal 9 Agusutus 1990. </li><li>Prinsip 594/2368/KWD/X/90 tanggal 10 Oktober 1990.&nbsp;</li><li>Pernyataan No. 117 tanggal 20 September 1999</li><li>Surat Kuasa No. 118 tanggal 20 September 1999</li><li>Kuasa Untuk Menjual No. 119 tanggal 20 September 1999</li></ol><p>Map No. 8</p>', 1, '', 0, '1600', '', -6.491008, 106.741602, 1),
(519, 6, 2, 148, 0, 2, 6, 65, 9, '1990-08-09', 0, 'JD-139-519', 'Tanah', 'SHM NO. 110', '<p>Jual beli. Tanah di BLK. </p><p>Dokumen : </p><ol><li>SHM No. 110 atas nama Ir. Pipip Sumantri. AJB No. 55/17/PRG/1990 tanggal 9 Agusutus 1990.</li><li>Prinsip 594/2719/KWD/XI/90 tanggal 20 Oktober 1990.</li><li>Akta Pernyataan No. 120 tanggal 20 September 1999</li><li>Surat Kuasa No. 121 tanggal 20 September 1999</li><li>Surat Kuasa Untuk Menjual No. 122 tanggal 20 September 1999</li></ol><p>Map No. 9</p>', 1, '', 0, '2133', '', -6.491008, 106.741602, 1),
(520, 6, 2, 148, 0, 2, 6, 65, 9, '1990-08-09', 0, 'JD-139-520', 'Tanah', 'SHM NO. 111', '<p>Jual beli . Tanah di BLK.</p><p>Dokumen : </p><ol><li>SHM No. 111 atas nama Ir. Pipi Sumantri.</li><li>AJB No. 58/20/PRG/90 tanggal 9 Agustus 1990.</li><li>Prinsip 594/2482/KWD/X/90 tanggal 20 Oktober 1990.</li><li>Peryataan No. 123 tanggal 20 September 1999</li><li>Surat Kuasa No. 124 tangal 20 September 1999</li><li>Kuasa Untuk Menjual No. 125 tanggal 20 September 1999</li></ol><p>Map. No. 10</p>', 1, '', 0, '2052', '', -6.491008, 106.741602, 1),
(521, 6, 2, 148, 0, 2, 22, 65, 9, '1990-08-09', 0, 'JD-139-521', 'Tanah', 'SURAT SEGEl JUAl BELI TANAh HAK MILIK', '<p>Jual beli. </p><p>Dokumen : </p><ol><li>SPPT atas nama Ir. Syarifi Ahmad Lubis. (tidak ada)</li><li>Berkas ada di PPAT Lindasari Bachroem di Bogor sedang diproses.</li><li>Segel jual beli tanggal 1 Agusutus 1988. AJB No. 147/JB/IC/99 atas nama Ir. Syarif Ahmad Lubis. . (asli)</li><li>Pernyataan No. 126 tanggal 31 Juli 1999</li><li>Surat Kuasa No. 127 tanggal 31 Juli 1999</li><li>Kuasa Untuk Menjual No. 128 tanggal 31 Juli 1999</li></ol><p>Map No. 11</p>', 1, '', 0, '700', '', -6.489099, 106.739479, 2),
(522, 6, 2, 148, 0, 2, 16, 65, 12, '1990-09-19', 0, 'JD-139-522', 'Tanah', 'AJB NO. 593.3/388/JB/IX/90', '<p style=\"color: rgb(51, 51, 51); background-color: rgb(245, 245, 245);\">Jual beli. SPPT atas nama Ir. Syarifi Ahmad Lubis.</p><p style=\"color: rgb(51, 51, 51); background-color: rgb(245, 245, 245);\">Berkas ada di PPAT Lindasari Bachroem di Bogor sedang diproses.</p><p style=\"color: rgb(51, 51, 51); background-color: rgb(245, 245, 245);\">Tanah disebelah Medika Farma diseberang Gg. Amal samping bengkel. </p><p style=\"color: rgb(51, 51, 51); background-color: rgb(245, 245, 245);\">Girik asli No. 1392. </p><p style=\"color: rgb(51, 51, 51); background-color: rgb(245, 245, 245);\">Segel jual beli tanggal 1 Agusutus 1988. AJB No. 147/JB/IC/99 atas nama Ir. Syarif Ahmad Lubis. . </p><p style=\"color: rgb(51, 51, 51); background-color: rgb(245, 245, 245);\">Sudah terjual? Kesepakatan Pembelian Tanah tanggal 10 April 2019 dari Kandali Ahmad Lubis kepada Nelly Mintarso atas nama PT FNF Trans Niaga. Sudah Terjual Kwitansi Fee Penjualan tanah tanggal 30 Mei 2019 sebesar 118,100,000 dan 58,000,000</p><p style=\"color: rgb(51, 51, 51); background-color: rgb(245, 245, 245);\"><br></p><p style=\"color: rgb(51, 51, 51); background-color: rgb(245, 245, 245);\">Map No. 12</p>', 1, '', 0, '1170', '', -6.489099, 106.739479, 2),
(523, 6, 2, 148, 0, 2, 6, 65, 9, '1990-07-05', 0, 'JD-139-523', 'Tanah', 'SHM NO. 30', '<p>Jual beli. Tanah disebelah barat P. Ajum bekas milik Pak Darjo. </p><p>Dokumen : </p><ol><li>SHM No. 30 atas nama Ir. Syarik Ahmad Lubus. </li><li>AJB No. 45/13/PAR/90 tanggal 5 Juli 1990. </li><li>Prinsip 594/2370/KWD/X/90 tanggal 10 Oktober 1990. </li><li>Pernyataan No. 117 tanggal 31 Juli 1999</li><li>Surat Kuasa No. 118 tanggal 31 Juli 1999</li><li>Kuasa Untuk Menjual No. 119 tanggal 31 Juli 1999</li></ol><p>Map No. 13</p>', 1, '', 0, '1420', '', -6.489099, 106.739479, 1),
(524, 6, 2, 148, 0, 2, 6, 65, 9, '1990-05-18', 0, 'JD-139-524', 'Tanah', 'SHM NO. 33', '<p>Jual beli. Tanah di sebelah barat P. Sanin selatan bekas tanah Pak Dargo.&nbsp;</p><ol><li>SHM No. 33 atas nama Ir. Syarif Ahmad Lubis. </li><li>AJB No. 34/12/PAR/90 tanggal 18 mei 1990.&nbsp;</li><li>Prinsip 594/2369/KWD/X/90 tanggal 10 Oktober 1990.&nbsp;</li></ol><p>Map No. 14</p>', 1, '', 0, '705', '', -6.489099, 106.739479, 1),
(525, 6, 2, 148, 0, 2, 6, 65, 9, '1991-03-06', 0, 'JD-139-525', 'Tanah', 'SHM NO. 34 ', '<p>Jual beli. Tanah sebelah selatan eks tanah Pak Dargo/Pak Samin.&nbsp;</p><ol><li>SHM No. 34 atas nama Ir. Syarif Ahmad Lubis. AJB No. 10/1/PARUNG/91 tanggal 6 maret 1991.&nbsp;</li><li>Prinsip 594/259/KWD/XII/92 tanggal 28 Desember 1992. </li><li>TGT No. 591.1/P-844/KAD/89 tanggal 21 Maret 1989</li><li>Pernyataan No. 135 tanggal 31 Juli 1999</li><li>Surat Kuasa No. 136 tanggal 31 Juli 1999</li><li>Kuasa Untuk Menjual No. 137 tanggal 31 Juli 1999</li></ol><p>Map No. 15</p>', 1, '', 0, '532', '', -6.489099, 106.739479, 1),
(526, 6, 2, 148, 0, 2, 18, 65, 9, '1990-08-09', 0, 'JD-139-526', 'Tanah', 'SURAT PERNYATAAN NO. 138', '<p>Jual beli. SPPT atas nama Ir. Syarif Ahmad Lubis. Tanah di depan perumahan dinas arah gedung LI dekat tanah Pak Saun SIntong.&nbsp;</p><ol><li>Berkas sedang diproses di PPAT Lindasari. Luas 1420 m2.&nbsp;<br></li><li>SHM No. 30 atas nama Ir. Syarif Ahmad Lubis. (tidak ada)</li><li>AJB No. 19/JB/I/88 atas nama Ir. Syarif Ahmad Lubis. (tidak ada)</li><li>Pernyataan No. 111 tanggal 31 Juli 1999</li><li>Sura tKUasa No. 112 tanggal 31 Jul i1999</li><li>Kuasa Untuk Menjual No. 113 tanggal 31 Juli 1999</li></ol><p>Box : 2</p><p><br></p>', 1, '', 0, '1425', '', -6.489099, 106.739479, 1),
(527, 6, 2, 148, 0, 2, 22, 65, 9, '1988-10-15', 0, 'JD-139-527', 'Tanah', 'SEGEL JUAL BELI TANAH', '<p>Jual beli tanah dui jalan umum ke arah gedung LI depan Pak Gepeng.&nbsp;</p><p>Tidak perlu pengurusan dokumen&nbsp;</p><p>Surat pernyataan jual beli tanah oleh Bapak Timin Mailin kepada Ir. Syarif Ahmad Lubis</p><p><br></p><p>Box : 2</p>', 1, '', 0, '145.5', '', -6.489099, 106.739479, 1),
(528, 6, 2, 148, 0, 2, 22, 65, 9, '1988-10-15', 0, 'JD-139-528', 'Tanah', 'SEGEL JUAL BELI TANAH', '<p>Jual beli tanah jalan umum ke arah gedung LI. Depan Pak Gepeng. </p><p>Surat pernyatan jual beli tanah oleh Kiman Kalin kepada Ir. Syarif Ahmad Lubis. </p><p>Box : 2</p>', 1, '', 0, '41.04', '', -6.489099, 106.739479, 1),
(529, 6, 2, 148, 0, 2, 18, 65, 11, '2009-01-01', 0, 'JD-139-529', 'Tanah', 'KWITANSI', '<p>Hanya ada kwitansi jual beli. Harus ada AJB. Tanah disebelah nomor urut 11.&nbsp;</p><p><br></p><p>Box : 2</p>', 1, '', 0, '100', '', -6.489099, 106.739479, 1),
(530, 6, 2, 148, 0, 4, 21, 65, 11, '1992-05-20', 0, 'JD-139-530', 'Tanah', 'AKTA HIBAH NO. 334', '<p>Jual beli tapi pengurusan surat berupa tanah hibah. Wajib pajak atas nama Ir. Syarif Ahmad Lubis.&nbsp;</p><p>Berkas ada di PPAT Lindasari Bachroem di Bogor.&nbsp;</p><p><br></p>', 1, '', 0, '4030', '', -6.489099, 106.739479, 2),
(531, 6, 2, 148, 0, 2, 6, 65, 9, '1995-06-01', 0, 'JD-139-531', 'Tanah', 'SHM NO. 190', '<p>Tanah pembayaran dana seabad dari Pak Chalil.&nbsp;</p><p>Surat ada di PPA Lindasari Bachroem untuk diproses?</p><ol><li>Dari AJB tanggal 24 Februari 1992 No. 593.3/74/JB/II/1992 atas nama Ir. Syarif Ahmad Lubis (tidak ada)</li><li>SHM No. 190 tanggal 1 Juni 1995 atas nama Ir. Syarif Ahmad Lubis (ada fotokopi)</li><li>Pernyataan No. 141 tanggal 31 Juli 1999</li><li>Surat Kuasa No. 142 tanggal 31 Juli 1999</li><li>Kuasa Untuk Menjual No. 143 tanggal 31 Juli 1999</li></ol><p>Box : 2</p>', 1, '', 0, '800', '', -6.489099, 106.739479, 2),
(532, 6, 2, 148, 0, 12, 18, 65, 11, '0000-00-00', 0, 'JD-139-532', 'Tanah', 'TANAH 560 M2', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(245, 245, 245);\">Tanah dari Mandor Narman. Surat ada di PPA Lindasari Bachroem untuk diproses?</span><br></p>', 1, '', 0, '560', '', -6.489099, 106.739479, 2),
(533, 6, 2, 148, 0, 13, 6, 65, 9, '1996-06-24', 0, 'JD-139-533', 'Tanah', 'SHM NO. 201', '<p>Pembayaran hissa jaidad keluarga Pak Qoyum. Lapangan bola. Pinggir jalan barat lapangan bola.&nbsp;</p><ol><li>SHM No. 190 atas nama Ir. Syarif Ahmad Lubis (asli)</li><li>Pernyataan No. 132 tanggal 31 Juli 1999</li><li>Surat Kuasa No. 133 tanggal 31 Juli 1999</li><li>Kuasa Untuk Menjual No. 134 tanggal 31 Juli 1999</li></ol><p><br></p><p>Box : 2</p>', 1, '', 0, '5000', '', -6.489099, 106.739479, 1),
(534, 6, 2, 148, 0, 2, 6, 65, 9, '1996-06-24', 0, 'JD-139-534', 'Tanah', 'SHM NO. 202', '<p>Jual beli PB JAI. Lapangan bola. SPPT harus dicari.</p><ol><li> SHM No. 200 atas nama Ir. Syarif Ahmad Lubis (fotokopi)</li><li>AJB No. 3.263/2012 dari Ir. Syarif Ahmad Lubis kepada Ontin Martinah (asli)</li><li>SHM No. 202 atas nama Ontin Martinah (fotokopi)</li><li>Pernyataan No. 129 tanggal31 Juli 1999</li><li>Surat Kuas No. 130 tanggal 31 Juli 1999</li><li>Kuasa Untuk Menjual No. 131 tanggal 31 Juli 1999</li></ol><p><br></p><p>Box : 2</p>', 1, '', 0, '2500', '', -6.489099, 106.739479, 2),
(535, 6, 2, 148, 0, 4, 18, 65, 11, '0000-00-00', 0, 'JD-139-535', 'Tanah', 'TANAH KOMPLEK PEKUBURAN MUSI MUSIAH', '<p>Dokumen tidak ada. Tanyakan ke Pak Mumu</p>', 1, '', 0, '1500', '', -6.489099, 106.739479, 2),
(536, 6, 2, 148, 0, 4, 18, 65, 11, '0000-00-00', 0, 'JD-139-536', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Hibah dari Ibu Ontin. Tanah SHM No. 151 atas nama Ontin seluas 2235 m2 belum dipecah. (tidak ada)</p><p>Harus dibuat akta hibah. Rumah dinas No. 10</p>', 1, '', 0, '178', '', -6.487891, 106.739261, 2),
(537, 6, 2, 148, 0, 2, 16, 65, 11, '0000-00-00', 0, 'JD-139-537', 'Tanah', 'TIDAK ADA DOKUMEN', '<p>Jual beli. Di 7 lokasi belakang BLK. Atas nama Ir. Abdul Kafi.</p><p>Dokumen tidak ada</p>', 1, '', 0, '11390', '', -6.489979, 106.744084, 2),
(538, 6, 2, 148, 0, 2, 18, 65, 11, '0000-00-00', 0, 'JD-139-538', 'Tanah', 'TANAH HIBAH', '<p>Hibah/Beli? di 3 lokasi.</p>', 1, '', 0, '2693', '', -6.489099, 106.739479, 2),
(539, 6, 2, 148, 0, 13, 18, 65, 11, '0000-00-00', 0, 'JD-139-539', 'Tanah', 'TANAH HISSA JAIDAD', '<p>Tanah hissa jaidad.&nbsp;</p>', 1, '', 0, '2060', '', -6.489099, 106.739479, 2),
(540, 6, 2, 148, 0, 2, 18, 65, 11, '0000-00-00', 0, 'JD-139-540', 'Tanah', 'TANAH KUBURAN NON MUSI', '<p>Jual beli atas nama Hamid Kohongi. Tanah lokasi di belakang BLK untuk kuburan non musi.&nbsp;</p><p><br></p>', 1, '', 0, '942', '', -6.489979, 106.744084, 2),
(541, 6, 2, 148, 0, 13, 18, 65, 11, '0000-00-00', 0, 'JD-139-541', 'Tanah', 'TANAH HISSA JAIDAD', 'Tanah Hissa Jaidad. Rumah Dinas Mubaligh', 1, '', 0, '300', '', -6.489165, 106.739041, 2),
(542, 6, 2, 148, 0, 2, 18, 65, 10, '1990-05-18', 0, 'JD-139-542', 'Tanah', 'AKTA PEMBATALAN JUAL BELI NO. 30', '<p>Jual beli AJB No. 146 tanggal 30 September 1988 atas nama Ir. Syarif Ahmad Lubis.&nbsp;</p><p>Dibatalkan dengan Akta Pembatalan No. 30 tanggal 18 mei 1990.&nbsp;</p><p><br></p><p>Box : 2</p>', 1, '', 0, '400', '', -6.489099, 106.739479, 1),
(543, 6, 2, 148, 0, 2, 16, 65, 9, '2000-01-05', 0, 'JD-139-543', 'Tanah', 'AJB NO. 07', '<p>Jual beli AJB No. 07/PDU/2000 dari Ani bin Saian kepada IR. Abdul Kafi. tanggal 5 Januari 2000</p><p><br></p><p>Box : 2</p>', 1, '', 0, '840', '', -6.489099, 106.739479, 1),
(544, 6, 2, 148, 0, 2, 16, 65, 9, '2000-01-05', 0, 'JD-139-544', 'Tanah', 'AJB NO. 06', '<p>AJB dari Nenih bin H. Iding kepada Ir. Abdul Kafi. </p><p><br></p><p>Box : 2</p>', 1, '', 0, '743', '', -6.489099, 106.739479, 1),
(545, 6, 2, 148, 0, 2, 16, 65, 9, '2000-01-05', 0, 'JD-139-545', 'Tanah', 'AJB NO. 004/PDU/2000', '<p>Jual beli dari Enas binti Misin kepada Ir. Abdul Kafi seluas 2073 m2</p><p><br></p><p>Box : 2</p>', 1, '', 0, '2073', '', -6.489099, 106.739479, 1),
(546, 6, 2, 148, 0, 2, 16, 65, 9, '2000-01-05', 0, 'JD-139-546', 'Tanah', 'AJB NO. 08', '<p>Jual beli tanggal 5 Januari 200 dari Sani binti Sadi kepada Ir. Abdul Kafi seluas 2994 m2.&nbsp;</p><p>Izin Pemanfaatan Ruang Untuk Pertanian tanggal 7 Januari 2000 Nomor 593.2/380/I/PB/2000.</p><p><br></p><p>Box : 2</p>', 1, '', 0, '2994', '', -6.489099, 106.739479, 1),
(547, 6, 2, 148, 0, 2, 16, 65, 9, '2000-01-05', 0, 'JD-139-547', 'Tanah', 'AJB NO. 03', '<p>Jual beli tanggal 5 Januari 2000 dari Misnan kepada Ir. Abdul Kafi.&nbsp;</p><p>Izin Pemanfaat Ruang Untuk Pertanian No. 593.2/374/I/PB/2000 tanggal 3 Januari 2000</p><p><br></p><p>Box : 2</p>', 1, '', 0, '1740', '', -6.489099, 106.739479, 1),
(548, 6, 2, 148, 0, 2, 16, 65, 9, '2000-01-05', 0, 'JD-139-548', 'Tanah', 'AJB NO. 05/PDU/2000', '<p>Jual beli AJB No. 05/PDU/2000 dari Namat Rahmat bin Salim kepada Ir. Abdul Kafi.&nbsp;</p><p>Izin Pemanfaatan Ruang untuk Pertanian No. 593.2/375/I/PB/2000 tanggal 4 Januari 2000</p><p><br></p><p>Box : 2</p>', 1, '', 0, '2400', '', -6.489099, 106.739479, 1),
(549, 6, 2, 148, 0, 2, 16, 65, 9, '2001-06-26', 0, 'JD-139-549', 'Tanah', 'AJB NO. 2193/2001', '<p>Jual beli dari Murti bin Sahali kepada Sayidul Kohar.&nbsp;</p><p>Lokasi di belakang rumah dinas mubaligh atas.&nbsp;</p><p><br></p><p>Box : 2</p>', 1, '', 0, '675', '', -6.489099, 106.739479, 1),
(550, 6, 2, 148, 0, 2, 16, 65, 9, '1992-08-26', 0, 'JD-139-550', 'Tanah', 'AJB NO. 593.3/375/JB/VIII/1992', '<p>Jual beli dari Iling Nimang kepada Murti bin H. Sahali.&nbsp;</p><p><br></p><p>Box : 2</p>', 1, '', 0, '75', '', -6.489099, 106.739479, 1),
(551, 6, 2, 148, 0, 2, 16, 65, 9, '1992-08-26', 0, 'JD-139-551', 'Tanah', 'AJB NO. 593.3/374/JB/VIII/1992', '<p>Jual beli AJB No. 593.3/374/JB/VIII/1992 tanggal 26 Agustus 1992 dari Hertoro Wibowo kepada Murti bin H. Sahali</p><p><br></p><p>Box : 2</p>', 1, '', 0, '600', '', -6.489099, 106.739479, 1),
(552, 6, 2, 148, 0, 2, 16, 65, 9, '2005-02-15', 0, 'JD-139-552', 'Tanah', 'AJB NO. 642/2005', '<p>Jual beli dari Nahiri alias Nahir Milah kepada Hamid Ahmad Kohongia.&nbsp;</p><p>Surat Pernyataan Ijin Tetangga tanah untuk pemakaman JAI tanggal 8 Februari 2005.&nbsp;</p><p><br></p><p>Box : 2</p>', 1, '', 0, '1175', '', -6.489099, 106.739479, 1),
(553, 6, 2, 148, 0, 9, 6, 65, 9, '1986-01-05', 0, 'JD-139-553', 'Tanah', 'SHM NO. 2899/1985', '<p>Atas nama Itja b. Iran</p><p><br></p><p>Box : 2</p>', 1, '', 0, '726', '', -6.489099, 106.739479, 1),
(554, 6, 2, 148, 0, 2, 6, 65, 9, '1996-10-03', 0, 'JD-139-554', 'Tanah', 'SHM NO. 205', '<p>Jual beli AJB tanggal 28 Desember 1994 Nomor 317/17/Parung/1994 atas nama Qoyum Tjandranegara.&nbsp;</p><p><br></p><p>Box : 2</p>', 1, '', 0, '2335', '', -6.489099, 106.739479, 1),
(555, 6, 2, 148, 0, 12, 6, 65, 9, '2004-05-10', 0, 'JD-139-555', 'Tanah', 'SHM NO. 275', '<p>SHM Nomor 275 tanggal 10 Mei 2004 atas nama Ir. Abdul Kafi&nbsp;</p><p>Pemecahan dari M.223</p><p>Tanah di komplek perumahan anggota disebelah timur.&nbsp; Pinggir kali</p><p><br></p><p>Box : 2</p>', 1, '', 0, '889', '', -6.489099, 106.739479, 1),
(556, 6, 2, 148, 0, 12, 6, 65, 9, '2004-05-10', 0, 'JD-139-556', 'Tanah', 'SHM NO. 276', '<p>SHM No. 276 tanggal 10 Mei 2004 atas nama Ir. Abdul Kafi seluas 26 m2.</p><p>Tanah di perumahan anggota sebelah timur</p><p><br></p><p>Box : 2</p>', 1, '', 0, '26', '', -6.489099, 106.739479, 1),
(557, 6, 2, 148, 0, 2, 6, 65, 9, '2004-05-10', 0, 'JD-139-557', 'Tanah', 'SHM NO. 271', '<p>SHM No. 271 tanggal 10 Mei 2004 atas nama Ir. Anis Ahmad. </p><p>AJB No 298/2001 tanggal 5 Juni 2001 dari Ir. Abdul Kafi kepada Ir. Anis Ahmad</p><p>Tanah di perumahan anggota sebelah timur. </p><p><br></p><p>Box : 2</p>', 1, '', 0, '320', '', -6.489099, 106.739479, 1),
(558, 6, 2, 148, 0, 2, 6, 65, 9, '1999-03-17', 0, 'JD-139-558', 'Tanah', 'SHM NO. 228', '<p>SHM No. 228 tanggal 17 maret 1999 atas nama Mahmuda Begum</p><p>AJB No. 303/KMG/1998 tanggal 29 Juni 1998</p><p>Tanah perumahan anggota di timur. </p><p><br></p><p>Box : 2</p>', 1, '', 0, '195', '', -6.489099, 106.739479, 1),
(559, 6, 2, 148, 0, 2, 16, 65, 9, '2001-09-11', 0, 'JD-139-559', 'Tanah', 'AJB NO. 3223/2001', '<p>Jual beli AJB No. 3223/2011 tanggal 11 September 2001 dari Ruha Sahali kepada Ir. Abdul Kafi.&nbsp;</p><p><br></p><p>Box : 2</p>', 1, '', 0, '764', '', -6.489099, 106.739479, 1),
(560, 6, 2, 148, 0, 2, 16, 65, 12, '0000-00-00', 0, 'JD-139-560', 'Tanah', 'AJB NO. 593.3/388/JB/IX/90', '<p>Tanah di AJB NO. 593.3/JB/IX/90</p><p>Apa sudah terjual?&nbsp;</p><p><br></p>', 1, '', 0, '700', '', -6.489099, 106.739479, 2),
(561, 6, 2, 148, 0, 2, 16, 65, 11, '1988-10-06', 0, 'JD-139-561', 'Tanah', 'AJB NO. 155', '<p>AJB- 155/JB/X/1988 tgl.6 Oktober 1988 dari Misar kepada Ir.Rahmat Jakasantosa luas tanah 2020.m2 dgn harga Rp.6.150.000 milik adat no.C.550/2065 di Kp.dan desa Pondok Udik Parung Bogor (Bundel Surat ini ada di Bundel Tanah Depok)</p><div>Dokumen tidak ditermukan&nbsp;</div><div><br></div><div>Box : 2</div>', 1, '', 0, '2020', '', -6.489099, 106.739479, 2),
(562, 6, 2, 148, 0, 2, 16, 65, 9, '0000-00-00', 0, 'JD-139-562', 'Tanah', 'AJB NO. 207/12/J.B/Agraria/1976', '<p>Tanah BLK</p><p><br></p><p>Box : 2</p>', 1, '', 0, '2092', '', -6.489099, 106.739479, 2),
(563, 6, 2, 148, 0, 2, 16, 65, 11, '1998-06-29', 0, 'JD-139-563', 'Tanah', 'AJB NO. 247', '<p>Atas nama Ir. Abdul Kafi</p>', 1, '', 0, '1990', '', -6.489099, 106.739479, 2),
(564, 6, 2, 148, 0, 2, 16, 65, 11, '1998-06-30', 0, 'JD-139-564', 'Tanah', 'AJB NO. 253', '<p>Atas nama Ir. Abdul Kafi</p>', 1, '', 0, '2480', '', -6.489099, 106.739479, 2),
(565, 6, 2, 148, 0, 2, 16, 65, 11, '1989-11-30', 0, 'JD-139-565', 'Tanah', 'AJB NO. 357', '<p>Tanah atas nama Erwin Buditobias.</p>', 1, '', 0, '1200', '', -6.489099, 106.739479, 2),
(566, 6, 2, 148, 0, 2, 16, 65, 11, '1976-12-29', 0, 'JD-139-566', 'Tanah', 'AJB NO. 365', 'Atas nama Aceng Samsujadi', 1, '', 0, '2093', '', -6.489099, 106.739479, 2),
(567, 6, 2, 148, 0, 2, 16, 65, 11, '1995-07-03', 0, 'JD-139-567', 'Tanah', 'AJB NO. 391', '<p>Atas nama Ir. Susanto Maskawan</p>', 1, '', 0, '892', '', -6.489099, 106.739479, 2),
(568, 6, 2, 148, 0, 2, 16, 65, 9, '2004-10-24', 0, 'JD-139-568', 'Tanah', 'AJB NO. 449/2013', '<p>Jual beli tanggal 24 Oktober 2004 dari Hasan Kotong kepada Erwin Buditobias tanah persil 114 S.III Blok 010 Kohir Nomor 910/956</p><p><br></p><p>Box : 2</p>', 1, '', 0, '2232', '', -6.489099, 106.739479, 1),
(569, 6, 2, 148, 0, 2, 16, 65, 11, '1989-12-28', 0, 'JD-139-569', 'Tanah', 'SHM NO. 151', 'Atas nama Ontin Martina G', 1, '', 0, '2235', '', -6.489099, 106.739479, 2);
INSERT INTO `assets` (`id`, `categoryid`, `adminid`, `clientid`, `userid`, `manufacturerid`, `modelid`, `supplierid`, `statusid`, `purchase_date`, `warranty_months`, `tag`, `name`, `serial`, `notes`, `locationid`, `purchase_order`, `value`, `condition`, `removal_date`, `lat`, `lng`, `originalid`) VALUES
(570, 6, 2, 148, 0, 12, 18, 65, 11, '1999-04-26', 0, 'JD-139-570', 'Tanah', 'SURAT PERNYATAAN ', '<p>Surat pernyataan dari Soesanto Maskawan bahwa pemilik tanah SPPT 5591 C-1098 seluas 44 m2 tanggal 26 April 1999</p><p>Surat pernyataan dari Adan Suhendar pemilik tanah sppt no. 5591 c-1098 seluas 744 m2</p><p><br></p>', 1, '', 0, '744', '', -6.489099, 106.739479, 2),
(571, 6, 2, 148, 0, 2, 22, 65, 9, '1989-06-21', 0, 'JD-139-571', 'Tanah', 'SURAT PERJANJIAN JUAl BELI', '<p>Surat jual beli dari Mirsad Dargo kepada Hurhilal Anwar selaku kuasa Ir. Syarif Ahmad Lubis tanggal 21 Juni 1990 menjual tanah 1020 m2 SHM No. 30 tahun 1985 atas nama Minot bin Mitan</p><p><br></p><p>Box : 2</p>', 1, '', 0, '1020', '', -6.489099, 106.739479, 1),
(572, 6, 2, 148, 0, 12, 18, 65, 11, '1990-06-08', 0, 'JD-139-572', 'Tanah', 'TIDAK ADA DOKUMEN', '', 1, '', 0, '1062', '', -6.489099, 106.739479, 2),
(573, 6, 2, 148, 0, 2, 16, 65, 11, '1997-03-07', 0, 'JD-139-573', 'Tanah', 'AJB NO. 66', '<p>Atas nama Ir. A. Soesanto</p>', 1, '', 0, '1880', '', -6.489099, 106.739479, 2),
(574, 6, 2, 148, 0, 2, 16, 65, 9, '1995-06-26', 0, 'JD-139-574', 'Tanah', 'AJB NO. 594', '<p>Jual beli AJB No. 594.4/461/VII/1995 dari Ny. Asanah kepada Ir. Susanto Maskawan</p><p><br></p><p>Box : 2</p>', 1, '', 0, '850', '', -6.489099, 106.739479, 1),
(575, 6, 2, 148, 0, 2, 16, 65, 9, '2012-04-20', 0, 'JD-139-575', 'Tanah', 'AJB NO. 142/2012', '<p>Jual beli AJB No. 142/2012 dari Sukindar kepada Iwan Munawar tanggal 20 April 2012.</p><p><br></p><p>Box : 2</p>', 1, '', 0, '100', '', -6.512631, 106.75517, 1),
(576, 6, 2, 148, 0, 4, 19, 65, 1, '2004-11-01', 0, 'JD-139-576', 'Tanah', 'SURAT PERNYATAAN HIBAH', '<p>Surat pernyataan hibah tanggal 1 November 2004 dari Abdullah kepada Abdul Basit Shd tanah 500 m2.&nbsp;</p><p>AJB No. 1696/2012 tanggal 3 Desember 2002 jual beli dari Enin Efendi kepada Abdullah. (asli)</p><p>Box : 2</p>', 1, '', 0, '500', '', -6.512631, 106.75517, 1),
(577, 6, 2, 148, 0, 2, 6, 65, 9, '1989-12-28', 0, 'JD-139-577', 'Tanah', 'SHM NO. 149', '<p>Jual beli AJB No. 30 tanggal 1 maret 1988. SHM atas nama Ontin Martinah G. (asli)</p><p><br></p><p>Box : 2</p>', 1, '', 0, '720', '', -6.512631, 106.75517, 1),
(578, 6, 2, 148, 0, 2, 16, 65, 9, '2012-10-20', 0, 'JD-139-578', 'Tanah', 'AJB NO. 523/2012', '<p>Jual beli AJB No. 523/2012 tanggal 20 Oktober 2012 dari Ir. Abdul Kafi kepada Sudhanto Yodho tanah seluas 200 m2. (fotokopi)</p><p><br></p><p>Box : 2</p>', 1, '', 0, '200', '', -6.512631, 106.75517, 2),
(580, 6, 2, 237, 0, 4, 6, 17, 9, '2018-09-11', 0, 'JD-62-580', 'Tanah', 'SHM NO. 2556', '<p>SHM NO. 2556 atas nama Sardi Mahmud Ahmad.&nbsp;</p><p>Surat Pernyataan tanggal 15 Agustus 2019 menyatakan bahwa Sardi Mahmud Ahmad, Ketua Jemaat Parigi periode 2019-2022 menyatakan bahwa tanah sertifikat SHM No. 2556 adalah tanah Jemaat Parigi. (asli)</p><p><br></p>', 239, '', 0, '468', '', -7.685393, 108.49945, 2),
(581, 6, 2, 373, 0, 2, 6, 7, 9, '2010-04-20', 0, 'JD-351-581', 'Tanah', 'SHM NO. 373', '<p>Atas nama Heru Wibisono.&nbsp;</p><p>Jual beli AJB tanggal 20 April 2010</p><p>IMB No. 211/IMB/KPPT/2010 kepada Jasman Hamzah atas nama CV Satrioa, bangunan rumah tinggal satu lantai di Perumahan Ratu Keyla Indah 4 Blok A.1 s/d A.18. Type 36. Luas 648 m2. (fotokopi)</p><p>Kuasa No. 196 tanggal 6 April 2007 dari Herus Wibisono kepada Ali Rahmat untuk mengurus yang berhubungan dengan administrasi pada Bank BTN, menjual kepada siapapun atas tanah SHM No. 373. (fotokopi)</p><p>Kwitansi terima dari Sekr. Mal sebesar Rp. 8,800,173 untuk pelunasan KPR Rumah Misi JAI Muara Bungo dan Pengambilan Sertifikat SHM dari Bank BTN, tanggal 30 Juli 2019 (fotokopi) atas nama Ali Rahmat. (fotokopi)</p>', 288, '', 0, '168', '', 0, 0, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `asset_tag_prefix` varchar(255) NOT NULL,
  `license_tag_prefix` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `clients`
--

INSERT INTO `clients` (`id`, `name`, `asset_tag_prefix`, `license_tag_prefix`) VALUES
(4, 'Abung Selatan', 'JD-262-', 'JDL-262-'),
(5, 'Agrabinta/Sukamulya', 'JD-149-', 'JDL-149-'),
(6, 'Alor', 'JD-187-', 'JDL-187-'),
(7, 'Ambon', 'JD-325-', 'JDL-325-'),
(8, 'Andoolo/Tinanggea', 'JD-230-', 'JDL-230-'),
(9, 'Arjasari', 'JD-260-', 'JDL-260-'),
(10, 'Bagan Sinembah', 'JD-236-', 'JDL-236-'),
(11, 'Bah Damar/Kandangan', 'JD-307-', 'JDL-307-'),
(12, 'Bakauheni', 'JD-209-', 'JDL-209-'),
(13, 'Balikpapan', 'JD-154-', 'JDL-154-'),
(14, 'Banda Aceh', 'JD-163-', 'JDL-163-'),
(15, 'Bandung Kulon', 'JD-2-', 'JDL-2-'),
(16, 'Bandung Tengah', 'JD-277-', 'JDL-277-'),
(17, 'Bandung Wetan', 'JD-278-', 'JDL-278-'),
(18, 'Bangka/Sungai Liat', 'JD-156-', 'JDL-156-'),
(19, 'Bangun Baru', 'JD-191-', 'JDL-191-'),
(20, 'Banjar ', 'JD-63-', 'JDL-63-'),
(21, 'Banjaran', 'JD-90-', 'JDL-90-'),
(22, 'Banjarmasin', 'JD-127-', 'JDL-127-'),
(23, 'Banjarnegara/Sukonandi', 'JD-25-', 'JDL-25-'),
(24, 'Banjarsari', 'JD-61-', 'JDL-61-'),
(25, 'Baros/Cibodas Girang', 'JD-129-', 'JDL-129-'),
(26, 'Batam', 'JD-220-', 'JDL-220-'),
(27, 'Batang', 'JD-99-', 'JDL-99-'),
(28, 'Batujajar', 'JD-109-', 'JDL-109-'),
(29, 'Baturaja', 'JD-33-', 'JDL-33-'),
(30, 'Batusangkar', 'JD-50-', 'JDL-50-'),
(31, 'Bau-Bau/Buton', 'JD-171-', 'JDL-171-'),
(32, 'Bawang/Krucil', 'JD-101-', 'JDL-101-'),
(33, 'Bawang Utara/Wanatangi', 'JD-338-', 'JDL-338-'),
(34, 'Bayan/Sambi Elen', 'JD-219-', 'JDL-219-'),
(35, 'Bayung Lincir', 'JD-334-', 'JDL-334-'),
(36, 'Bekasi', 'JD-183-', 'JDL-183-'),
(37, 'Belawan/Medan', 'JD-319-', 'JDL-319-'),
(38, 'Belitung', 'JD-343-', 'JDL-343-'),
(39, 'Bendungan/Wonosobo', 'JD-317-', 'JDL-317-'),
(40, 'Bengkayang', 'JD-324-', 'JDL-324-'),
(41, 'Bengkulu', 'JD-152-', 'JDL-152-'),
(42, 'Berastagi', 'JD-146-', 'JDL-146-'),
(43, 'Bogor', 'JD-3-', 'JDL-3-'),
(44, 'Bojong', 'JD-84-', 'JDL-84-'),
(45, 'Bojong Picung', 'JD-178-', 'JDL-178-'),
(46, 'Bojongsirna', 'JD-251-', 'JDL-251-'),
(47, 'Bone Sompe/Poso', 'JD-208-', 'JDL-208-'),
(48, 'Bontang', 'JD-153-', 'JDL-153-'),
(49, 'Brebes', 'JD-197-', 'JDL-197-'),
(50, 'Budijaya', 'JD-184-', 'JDL-184-'),
(51, 'Bukit Tinggi', 'JD-78-', 'JDL-78-'),
(52, 'Bulaktemu', 'JD-295-', 'JDL-295-'),
(53, 'Bulukumba/Luwu Utara', 'JD-211-', 'JDL-211-'),
(54, 'Bunijaya', 'JD-57-', 'JDL-57-'),
(55, 'Bunikasih', 'JD-284-', 'JDL-284-'),
(56, 'Buntu Pane', 'JD-205-', 'JDL-205-'),
(57, 'Burnai Mulya', 'JD-185-', 'JDL-185-'),
(59, 'Ciamis', 'JD-40-', 'JDL-40-'),
(60, 'Ciandam', 'JD-8-', 'JDL-8-'),
(61, 'Cianjur', 'JD-7-', 'JDL-7-'),
(62, 'Ciaruteun', 'JD-91-', 'JDL-91-'),
(63, 'Cibadak', 'JD-263-', 'JDL-263-'),
(64, 'Cibalong', 'JD-239-', 'JDL-239-'),
(65, 'Cibatu (Garut)', 'JD-115-', 'JDL-115-'),
(66, 'Cibeureum/Cibungbulang', 'JD-332-', 'JDL-332-'),
(67, 'Cibinong', 'JD-267-', 'JDL-267-'),
(68, 'Cibitung Wetan', 'JD-46-', 'JDL-46-'),
(69, 'Cicakra', 'JD-130-', 'JDL-130-'),
(70, 'Cicalengka', 'JD-280-', 'JDL-280-'),
(71, 'Cigunungtilu', 'JD-114-', 'JDL-114-'),
(72, 'Ciherang', 'JD-87-', 'JDL-87-'),
(73, 'Cikalong Kulon', 'JD-12-', 'JDL-12-'),
(74, 'Cikampek', 'JD-276-', 'JDL-276-'),
(75, 'Cikedung/Loyang/Trisi', 'JD-246-', 'JDL-246-'),
(76, 'Cikembar', 'JD-265-', 'JDL-265-'),
(77, 'Ciledug', 'JD-60-', 'JDL-60-'),
(78, 'Cilegon', 'JD-44-', 'JDL-44-'),
(79, 'Cileungsi', 'JD-300-', 'JDL-300-'),
(80, 'Cilimus', 'JD-116-', 'JDL-116-'),
(81, 'Cimahi', 'JD-42-', 'JDL-42-'),
(82, 'Cimaragas', 'JD-195-', 'JDL-195-'),
(83, 'Cimayang', 'JD-92-', 'JDL-92-'),
(84, 'Cimulek', 'JD-148-', 'JDL-148-'),
(85, 'Ciparay', 'JD-15-', 'JDL-15-'),
(86, 'Cipeuyeum', 'JD-296-', 'JDL-296-'),
(87, 'Cirebon', 'JD-14-', 'JDL-14-'),
(88, 'Cisaat', 'JD-264-', 'JDL-264-'),
(89, 'Cisalada', 'JD-18-', 'JDL-18-'),
(90, 'Cisarua', 'JD-113-', 'JDL-113-'),
(91, 'Cisereh', 'JD-229-', 'JDL-229-'),
(92, 'Cisurupan/Pangauban', 'JD-118-', 'JDL-118-'),
(93, 'Citalahab', 'JD-66-', 'JDL-66-'),
(94, 'Citeguh', 'JD-105-', 'JDL-105-'),
(95, 'Citeureup', 'JD-186-', 'JDL-186-'),
(96, 'Curup', 'JD-56-', 'JDL-56-'),
(97, 'Denpasar', 'JD-71-', 'JDL-71-'),
(98, 'Depok', 'JD-150-', 'JDL-150-'),
(99, 'Dili', 'JD-158-', 'JDL-158-'),
(100, 'Dolok Kahean', 'JD-167-', 'JDL-167-'),
(101, 'Ds.Wonokampir/Dsn.Wonosari/Wonosobo', 'JD-318-', 'JDL-318-'),
(102, 'Duku', 'JD-82-', 'JDL-82-'),
(103, 'Gabus/Pati', 'JD-145-', 'JDL-145-'),
(104, 'Garut', 'JD-5-', 'JDL-5-'),
(105, 'Gedangan', 'JD-218-', 'JDL-218-'),
(106, 'Gegerung/Lombok Barat', 'JD-310-', 'JDL-310-'),
(107, 'Gemuh', 'JD-242-', 'JDL-242-'),
(108, 'Getasan/Tegal Waton', 'JD-293-', 'JDL-293-'),
(109, 'Gombong', 'JD-74-', 'JDL-74-'),
(110, 'Gondrong', 'JD-9-', 'JDL-9-'),
(111, 'Gorontalo', 'JD-298-', 'JDL-298-'),
(112, 'Gresik', 'JD-102-', 'JDL-102-'),
(113, 'Gunung Kerinci', 'JD-141-', 'JDL-141-'),
(114, 'Gunung Kidul', 'JD-292-', 'JDL-292-'),
(115, 'Hinai', 'JD-228-', 'JDL-228-'),
(116, 'Ikatan Saudara', 'JD-69-', 'JDL-69-'),
(117, 'Indihiang', 'JD-176-', 'JDL-176-'),
(118, 'Indramayu/Indramayu Kota', 'JD-213-', 'JDL-213-'),
(119, 'Jakarta Barat', 'JD-200-', 'JDL-200-'),
(120, 'Jakarta Pusat', 'JD-1-', 'JDL-1-'),
(121, 'Jakarta Timur', 'JD-199-', 'JDL-199-'),
(122, 'Jakarta Utara', 'JD-201-', 'JDL-201-'),
(123, 'Jalur Delapan', 'JD-136-', 'JDL-136-'),
(124, 'Jambi', 'JD-294-', 'JDL-294-'),
(125, 'Jampang Kulon', 'JD-250-', 'JDL-250-'),
(126, 'Jati', 'JD-32-', 'JDL-32-'),
(127, 'Jawaran/Wonosobo', 'JD-316-', 'JDL-316-'),
(128, 'Jayapura', 'JD-155-', 'JDL-155-'),
(129, 'Jember', 'JD-126-', 'JDL-126-'),
(130, 'Jeneponto', 'JD-283-', 'JDL-283-'),
(131, 'Jengkol/Banjarnegara', 'JD-328-', 'JDL-328-'),
(132, 'Kabanjahe', 'JD-323-', 'JDL-323-'),
(133, 'Kadipaten', 'JD-275-', 'JDL-275-'),
(134, 'Kalipucang', 'JD-157-', 'JDL-157-'),
(135, 'Kampung Anam', 'JD-266-', 'JDL-266-'),
(136, 'Kampung Kramat ', 'JD-322-', 'JDL-322-'),
(137, 'Karang Tengah', 'JD-96-', 'JDL-96-'),
(138, 'Karangpawitan', 'JD-94-', 'JDL-94-'),
(139, 'Karawang', 'JD-80-', 'JDL-80-'),
(140, 'Karyasari', 'JD-188-', 'JDL-188-'),
(141, 'Kateman', 'JD-194-', 'JDL-194-'),
(142, 'Kawalu', 'JD-119-', 'JDL-119-'),
(143, 'Kebayoran', 'JD-10-', 'JDL-10-'),
(144, 'Kebumen', 'JD-22-', 'JDL-22-'),
(145, 'Kediri', 'JD-143-', 'JDL-143-'),
(146, 'Kedung Banteng', 'JD-180-', 'JDL-180-'),
(147, 'Sintang/Sambas', 'JD-0-', 'JDL-0-'),
(148, 'Kemang', 'JD-139-', 'JDL-139-'),
(149, 'Kendari', 'JD-161-', 'JDL-161-'),
(150, 'Konarom/Dumoga', 'JD-76-', 'JDL-76-'),
(151, 'Konda', 'JD-224-', 'JDL-224-'),
(152, 'Kondoano', 'JD-313-', 'JDL-313-'),
(153, 'Koroonua', 'JD-314-', 'JDL-314-'),
(154, 'Kota Bangun', 'JD-140-', 'JDL-140-'),
(155, 'Kota Pinang', 'JD-190-', 'JDL-190-'),
(156, 'Kotamobagu', 'JD-28-', 'JDL-28-'),
(157, 'Kruak', 'JD-179-', 'JDL-179-'),
(158, 'Kualuh Hilir', 'JD-192-', 'JDL-192-'),
(159, 'Kuningan', 'JD-123-', 'JDL-123-'),
(160, 'Kupang', 'JD-170-', 'JDL-170-'),
(161, 'Ladongi', 'JD-128-', 'JDL-128-'),
(162, 'Lahat', 'JD-31-', 'JDL-31-'),
(163, 'Bandar Lampung', 'JD-39-', 'JDL-39-'),
(164, 'Lamunti/Kuala Kapuas', 'JD-237-', 'JDL-237-'),
(165, 'Landono', 'JD-241-', 'JDL-241-'),
(166, 'Lebaksari', 'JD-93-', 'JDL-93-'),
(167, 'Cikarang Utara', 'JD-83-', 'JDL-83-'),
(168, 'Lembang', 'JD-108-', 'JDL-108-'),
(169, 'Lenteng Agung', 'JD-45-', 'JDL-45-'),
(170, 'Leuwimangu', 'JD-16-', 'JDL-16-'),
(171, 'Leuwisadeng', 'JD-88-', 'JDL-88-'),
(172, 'Lhokseumawe', 'JD-133-', 'JDL-133-'),
(173, 'Lima Puluh', 'JD-206-', 'JDL-206-'),
(174, 'Lolak', 'JD-175-', 'JDL-175-'),
(175, 'Lubuk Linggau', 'JD-43-', 'JDL-43-'),
(176, 'Lurah Ingu', 'JD-67-', 'JDL-67-'),
(177, 'Luwu Utara', 'JD-333-', 'JDL-333-'),
(178, 'Madiun', 'JD-65-', 'JDL-65-'),
(179, 'Madukara', 'JD-100-', 'JDL-100-'),
(180, 'Magelang', 'JD-55-', 'JDL-55-'),
(181, 'Tanjung Medan/Tanah Putih', 'JD-207-', 'JDL-207-'),
(182, 'Majalaya', 'JD-111-', 'JDL-111-'),
(183, 'Majalengka', 'JD-203-', 'JDL-203-'),
(184, 'Makasar', 'JD-53-', 'JDL-53-'),
(185, 'Malang ', 'JD-132-', 'JDL-132-'),
(186, 'Malangbong', 'JD-252-', 'JDL-252-'),
(187, 'Mamuju', 'JD-999-', 'JDL-999-'),
(188, 'Manado', 'JD-77-', 'JDL-77-'),
(189, 'Mandau Kulin', 'JD-162-', 'JDL-162-'),
(190, 'Maniis/Plered', 'JD-79-', 'JDL-79-'),
(191, 'Manislor', 'JD-13-', 'JDL-13-'),
(192, 'Manokwari', 'JD-336-', 'JDL-336-'),
(193, 'Maparah', 'JD-147-', 'JDL-147-'),
(194, 'Masagena', 'JD-299-', 'JDL-299-'),
(195, 'Mataram', 'JD-54-', 'JDL-54-'),
(196, 'Mayangcinde', 'JD-135-', 'JDL-135-'),
(197, 'Medan', 'JD-36-', 'JDL-36-'),
(198, 'Medas Sambelia', 'JD-271-', 'JDL-271-'),
(199, 'Menggala', 'JD-177-', 'JDL-177-'),
(200, 'Merak', 'JD-137-', 'JDL-137-'),
(201, 'Merauke/Kurik', 'JD-193-', 'JDL-193-'),
(202, 'Mersam/Batanghari', 'JD-235-', 'JDL-235-'),
(203, 'Morosi/Konawe', 'JD-321-', 'JDL-321-'),
(204, 'Mowila', 'JD-241-', 'JDL-241-'),
(205, 'Muara Timpeh', 'JD-196-', 'JDL-196-'),
(206, 'Muria/Gunung Muria', 'JD-288-', 'JDL-288-'),
(207, 'Namorambe', 'JD-166-', 'JDL-166-'),
(208, 'Neglasari', 'JD-144-', 'JDL-144-'),
(209, 'Ngaringan', 'JD-222-', 'JDL-222-'),
(210, 'Numbing', 'JD-243-', 'JDL-243-'),
(211, 'Nunukan', 'JD-0-', 'JDL-0-'),
(212, 'Nyalindung', 'JD-97-', 'JDL-97-'),
(213, 'Padalarang', 'JD-231-', 'JDL-231-'),
(214, 'Padang', 'JD-29-', 'JDL-29-'),
(215, 'Pagelaran/Tenggamus', 'JD-204-', 'JDL-204-'),
(216, 'Pagentan', 'JD-249-', 'JDL-249-'),
(217, 'Palangkaraya', 'JD-52-', 'JDL-52-'),
(218, 'Palembang', 'JD-41-', 'JDL-41-'),
(219, 'Palu', 'JD-174-', 'JDL-174-'),
(220, 'Pameungpeuk', 'JD-151-', 'JDL-151-'),
(221, 'Pampangan', 'JD-51-', 'JDL-51-'),
(222, 'Panawangan', 'JD-121-', 'JDL-121-'),
(223, 'Pancor', 'JD-59-', 'JDL-59-'),
(224, 'Pandeglang', 'JD-279-', 'JDL-279-'),
(225, 'Pangalengan', 'JD-268-', 'JDL-268-'),
(226, 'Pangandaran', 'JD-134-', 'JDL-134-'),
(227, 'Pangkalan Bun', 'JD-397-', 'JDL-397-'),
(228, 'Pangkoh', 'JD-312-', 'JDL-312-'),
(229, 'Panjalu', 'JD-72-', 'JDL-72-'),
(230, 'Panunggangan Pusat', 'JD-274-', 'JDL-274-'),
(231, 'Panunggangan Timur', 'JD-138-', 'JDL-138-'),
(232, 'Panyabangan', 'JD-272-', 'JDL-272-'),
(233, 'Panyairan', 'JD-27-', 'JDL-27-'),
(234, 'Paradorato/Bima', 'JD-198-', 'JDL-198-'),
(235, 'Parakansalak', 'JD-64-', 'JDL-64-'),
(236, 'Pare-Pare/Penrang', 'JD-335-', 'JDL-335-'),
(237, 'Parigi/Ciamis', 'JD-62-', 'JDL-62-'),
(238, 'Pasar Wajo', 'JD-286-', 'JDL-286-'),
(239, 'Pasir Semut', 'JD-122-', 'JDL-122-'),
(240, 'Patean/Kendal', 'JD-270-', 'JDL-270-'),
(241, 'Pekanbaru', 'JD-38-', 'JDL-38-'),
(242, 'Pematang Bandar', 'JD-159-', 'JDL-159-'),
(243, 'Pematang Jaya', 'JD-290-', 'JDL-290-'),
(244, 'Penawangan', 'JD-303-', 'JDL-303-'),
(245, 'Peninggilan', 'JD-37-', 'JDL-37-'),
(246, 'Penyelimau Jaya', 'JD-215-', 'JDL-215-'),
(247, 'Penyabangan', 'JD-272-', 'JDL-272-'),
(248, 'Perigi/Pondok Aren', 'JD-86-', 'JDL-86-'),
(249, 'Pinggirsari', 'JD-261-', 'JDL-261-'),
(250, 'Piyungan', 'JD-245-', 'JDL-245-'),
(251, 'Plosoklaten', 'JD-258-', 'JDL-258-'),
(252, 'Pontianak ', 'JD-125-', 'JDL-125-'),
(253, 'Praya', 'JD-210-', 'JDL-210-'),
(254, 'Pring Sewu', 'JD-339-', 'JDL-339-'),
(255, 'Pulau Buru', 'JD-182-', 'JDL-182-'),
(256, 'Pulau Burung', 'JD-202-', 'JDL-202-'),
(257, 'Pulau Tidung', 'JD-306-', 'JDL-306-'),
(258, 'Puncu', 'JD-259-', 'JDL-259-'),
(259, 'Purwakarta', 'JD-225-', 'JDL-225-'),
(260, 'Purwokerto', 'JD-21-', 'JDL-21-'),
(261, 'Purwokerto Utara', 'JD-216-', 'JDL-216-'),
(262, 'Purworejo/Purworejo Klampok', 'JD-248-', 'JDL-248-'),
(263, 'Rajamandala', 'JD-112-', 'JDL-112-'),
(264, 'Rampah', 'JD-226-', 'JDL-226-'),
(265, 'Rampah Baru', 'JD-166-', 'JDL-166-'),
(266, 'Ranca Umbul', 'JD-253-', 'JDL-253-'),
(267, 'Rangkasbitung', 'JD-20-', 'JDL-20-'),
(268, 'Ranto Prapat', 'JD-304-', 'JDL-304-'),
(269, 'Rawapitu', 'JD-301-', 'JDL-301-'),
(270, 'Rembuah', 'JD-244-', 'JDL-244-'),
(271, 'Rimau Sungsang/Palembang', 'JD-308-', 'JDL-308-'),
(272, 'Sadasari/Majalengka', 'JD-47-', 'JDL-47-'),
(273, 'Salatiga', 'JD-48-', 'JDL-48-'),
(274, 'Samarang', 'JD-117-', 'JDL-117-'),
(275, 'Samarinda', 'JD-281-', 'JDL-281-'),
(276, 'Sambahule', 'JD-289-', 'JDL-289-'),
(277, 'Sampit', 'JD-212-', 'JDL-212-'),
(278, 'Sanding/Garut Kota', 'JD-327-', 'JDL-327-'),
(279, 'Sebamban', 'JD-172-', 'JDL-172-'),
(280, 'Sekarmulya/Indramayu', 'JD-233-', 'JDL-233-'),
(281, 'Semarang', 'JD-26-', 'JDL-26-'),
(282, 'Sembalun/Sembalun Lawang', 'JD-238-', 'JDL-238-'),
(283, 'Serang', 'JD-282-', 'JDL-282-'),
(284, 'Serua', 'JD-273-', 'JDL-273-'),
(285, 'Siak Hulu/Kotabangun', 'JD-140-', 'JDL-140-'),
(286, 'Sidamulih', 'JD-287-', 'JDL-287-'),
(287, 'Sidomulyo', 'JD-142-', 'JDL-142-'),
(288, 'Sidorahayu', 'JD-234-', 'JDL-234-'),
(289, 'Simpang Kanan', 'JD-236-', 'JDL-236-'),
(290, 'Sindangbarang', 'JD-89-', 'JDL-89-'),
(291, 'Sindangkerta', 'JD-17-', 'JDL-17-'),
(292, 'Singaparna', 'JD-11-', 'JDL-11-'),
(293, 'Singaraja', 'JD-120-', 'JDL-120-'),
(294, 'Singingi', 'JD-173-', 'JDL-173-'),
(295, 'Singkut ', 'JD-124-', 'JDL-124-'),
(296, 'Sintang', 'JD-309-', 'JDL-309-'),
(297, 'Solo', 'JD-189-', 'JDL-189-'),
(298, 'Solok/Guguk Sarai', 'JD-49-', 'JDL-49-'),
(299, 'Solok Selatan', 'JD-326-', 'JDL-326-'),
(300, 'Soreang', 'JD-226-', 'JDL-226-'),
(301, 'Sorolangun', 'JD-330-', 'JDL-330-'),
(302, 'Sosa', 'JD-164-', 'JDL-164-'),
(303, 'Subang', 'JD-81-', 'JDL-81-'),
(304, 'Sukabumi', 'JD-6-', 'JDL-6-'),
(305, 'Sukamaju', 'JD-107-', 'JDL-107-'),
(306, 'Sukamulya', 'JD-169-', 'JDL-169-'),
(307, 'Sukapura/Sukaraja', 'JD-75-', 'JDL-75-'),
(308, 'Sukasari', 'JD-106-', 'JDL-106-'),
(309, 'Sukatali', 'JD-110-', 'JDL-110-'),
(310, 'Sukawening', 'JD-98-', 'JDL-98-'),
(311, 'Sumbang', 'JD-217-', 'JDL-217-'),
(312, 'Sumbawa', 'JD-240-', 'JDL-240-'),
(313, 'Sie Merah /Sungai Merah', 'JD-329-', 'JDL-329-'),
(314, 'Sungai Rangau', 'JD-223-', 'JDL-223-'),
(315, 'Sungsang', 'JD-68-', 'JDL-68-'),
(316, 'Surabaya', 'JD-24-', 'JDL-24-'),
(317, 'Susukan', 'JD-221-', 'JDL-221-'),
(318, 'Takalar', 'JD-305-', 'JDL-305-'),
(319, 'Talaga', 'JD-58-', 'JDL-58-'),
(320, 'Talang', 'JD-30-', 'JDL-30-'),
(321, 'Talang Padang', 'JD-285-', 'JDL-285-'),
(322, 'Tambun', 'JD-85-', 'JDL-85-'),
(323, 'Tanah Grogot', 'JD-311-', 'JDL-311-'),
(324, 'Tanah Putih', 'JD-207-', 'JDL-207-'),
(325, 'Tangerang', 'JD-73-', 'JDL-73-'),
(326, 'Tanjung Balai', 'JD-34-', 'JDL-34-'),
(327, 'Tanjung Morawa', 'JD-320-', 'JDL-320-'),
(328, 'Tanjung Pinang/Toapaya', 'JD-232-', 'JDL-232-'),
(329, 'Tanjungpura', 'JD-165-', 'JDL-165-'),
(330, 'Tarans Tiloan', 'JD-341-', 'JDL-341-'),
(331, 'Tasikmalaya', 'JD-4-', 'JDL-4-'),
(332, 'Tawangmangu', 'JD-103-', 'JDL-103-'),
(333, 'Tebet', 'JD-336-', 'JDL-336-'),
(334, 'Tebing Tinggi', 'JD-35-', 'JDL-35-'),
(335, 'Tegal', 'JD-104-', 'JDL-104-'),
(336, 'Tegal Lumbu/Lebak', 'JD-254-', 'JDL-254-'),
(337, 'Tejakula', 'JD-247-', 'JDL-247-'),
(338, 'Teluk Betung', 'JD-70-', 'JDL-70-'),
(339, 'Temanggung', 'JD-256-', 'JDL-256-'),
(340, 'Ternate/Halmahera', 'JD-302-', 'JDL-302-'),
(341, 'Andoolo - Tinanggea ', 'JD-230-', 'JDL-230-'),
(342, 'Tonra (Bone)', 'JD-168-', 'JDL-168-'),
(343, 'Trijaya Cecar', 'JD-131-', 'JDL-131-'),
(344, 'Tuah Karya', 'JD-331-', 'JDL-331-'),
(345, 'Tugu Selatan', 'JD-255-', 'JDL-255-'),
(346, 'Tulung Agung', 'JD-257-', 'JDL-257-'),
(347, 'Ujung Gading', 'JD-227-', 'JDL-227-'),
(348, 'Wadas Lintang', 'JD-315-', 'JDL-315-'),
(349, 'Waisili', 'JD-291-', 'JDL-291-'),
(350, 'Wajo', 'JD-214-', 'JDL-214-'),
(351, 'Wanaraja', 'JD-160-', 'JDL-160-'),
(352, 'Waluran/Ciracap', 'JD-148-', 'JDL-148-'),
(353, 'Wanasigra', 'JD-19-', 'JDL-19-'),
(354, 'Wanasigra Wetan', 'JD-342-', 'JDL-342-'),
(355, 'Warungkiara', 'JD-95-', 'JDL-95-'),
(356, 'Warungmangga', 'JD-297-', 'JDL-297-'),
(357, 'Wolasi-Konda', 'JD-224-', 'JDL-224-'),
(358, 'Wonosari', 'JD-318-', 'JDL-318-'),
(359, 'Wonosobo', 'JD-181-', 'JDL-181-'),
(360, 'Yogyakarta', 'JD-23-', 'JDL-23-'),
(361, 'Sigi Sidomaru', 'JD-346-', 'JDL-346-'),
(362, 'Bolangitang', 'JD-347-', 'JDL-347-'),
(363, 'Datar Kupa', 'JD-348-', 'JDL-348-'),
(364, 'Malangsari', 'JD-344-', 'JDL-344-'),
(365, 'Warga Asih', 'JD-340-', 'JDL-340-'),
(366, 'Balaigana', 'JD-337-', 'JDL-337-'),
(367, 'Melak', 'JD-345-', 'JDL-345-'),
(368, 'Sigi Sidomaru', 'JD-346-', 'JDL-346-'),
(369, 'Bolangitang', 'JD-347-', 'JDL-347-'),
(370, 'Datar Kupa', 'JD-348-', 'JDL-348-'),
(371, 'Kebon Kopi', 'JD-349-', 'JDL-349-'),
(372, 'Payakumbuh', 'JD-350-', 'JDL-350-'),
(373, 'Muara Bungo', 'JD-351-', 'JDL-351-'),
(374, 'Wonoroto', 'JD-352-', 'JDL-352-'),
(375, 'Rengat', 'JD-353-', 'JDL-353-'),
(376, 'Lengkong', 'JD-354-', 'JDL-354-'),
(377, 'Tetesingi', 'JD-355-', 'JDL-355-'),
(378, 'Cilacap', 'JD-356-', 'JDL-356-'),
(379, 'Cigintung', 'JD-357-', 'JDL-357-'),
(380, 'Tanggul Harapan Seruyan', 'JD-358-', 'JDL-358-'),
(381, 'Kersamaju', 'JD-359-', 'JDL-359-'),
(382, 'Pelaihari', 'JD-360-', 'JDL-360-'),
(383, 'Gowa', 'JD-361-', 'JDL-361-'),
(384, 'Pangkalan Kerinci', 'JD-362-', 'JDL-362-'),
(385, 'Teluk Kuantan', 'JD-363-', 'JDL-363-'),
(386, 'Batu Langkah', 'JD-364-', 'JDL-364-'),
(387, 'Kunto Darussalam', 'JD-365-', 'JDL-365-'),
(388, 'Sea Minahasa', 'JD-366-', 'JDL-366-'),
(389, 'Benowo', 'JD-367-', 'JDL-367-'),
(390, 'Andeng', 'JD-368-', 'JDL-368-'),
(391, 'Cisitu', 'JD-369-', 'JDL-369-'),
(392, 'Perawang', 'JD-370-', 'JDL-370-'),
(393, 'Siak Sri Indrapura', 'JD-371-', 'JDL-371-'),
(394, 'Poasia', 'JD-372-', 'JDL-372-'),
(395, 'Polewali Mandar', 'JD-373-', 'JDL-373-'),
(396, 'Patimuan', 'JD-374-', 'JDL-374-'),
(397, 'Muna', 'JD-375-', 'JDL-375-'),
(398, 'Pasir Pangaraian', 'JD-376-', 'JDL-376-'),
(399, 'Sleman', 'JD-377-', 'JDL-377-'),
(400, 'Purworejo', 'JD-378-', 'JDL-378-'),
(401, 'Pasar Minggu Kerinci', 'JD-379-', 'JDL-379-'),
(402, 'Kosinggolan', 'JD-380-', 'JDL-380-'),
(403, 'Paju Empat/Talang Siong', 'JD-381-', 'JDL-381-'),
(404, 'Purbalingga', 'JD-382-', 'JDL-382-'),
(405, 'Nagrak', 'JD-383-', 'JDL-383-'),
(406, 'Pagedangan', 'JD-384-', 'JDL-384-'),
(407, 'Rajeg', 'JD-385-', 'JDL-385-'),
(408, 'Kutai Timur', 'JD-386-', 'JDL-386-'),
(409, 'Kota Merauke ', 'JD-387-', 'JDL-387-'),
(410, 'Bangil', 'JD-388-', 'JDL-388-'),
(411, 'Taman', 'JD-389-', 'JDL-389-'),
(412, 'Bandung Kidul', 'JD-390-', 'JDL-390-'),
(413, 'Paya Pasir', 'JD-391-', 'JDL-391-'),
(414, 'Kersamanah', 'JD-392-', 'JDL-392-'),
(415, 'Cigedug', 'JD-393-', 'JDL-393-'),
(416, 'Mook Manaar Bulatn', 'JD-394-', 'JDL-394-'),
(417, 'Tarakan', 'JD-395-', 'JDL-395-'),
(418, 'Kota Sorong', 'JD-396-', 'JDL-396-'),
(419, 'Pangkalan Bun', 'JD-397-', 'JDL-397-'),
(420, 'Magetan', 'JD-398-', 'JDL-398-'),
(421, 'Ahuaolano - Konda', 'JD-410-', 'JDL-410-'),
(422, 'Pasang Kayu ', 'JD-411-', 'JDL-411-'),
(423, 'Nganjuk', 'JD-412-', 'JDL-412-'),
(424, 'Kubu ', 'JD-413-', 'JDL-413-'),
(425, 'Bagik Manis', 'JD-414-', 'JDL-414-'),
(426, 'Jagebob', 'JD-415-', 'JDL-415-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `clients_admins`
--

CREATE TABLE `clients_admins` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `clients_admins`
--

INSERT INTO `clients_admins` (`id`, `adminid`, `clientid`) VALUES
(1, 1, 1),
(2, 4, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `peopleid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `comment` text NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `peopleid`, `clientid`, `projectid`, `ticketid`, `comment`, `timestamp`) VALUES
(1, 2, 347, 4, 0, '<p>komentar</p>', '2019-08-28 05:07:26'),
(2, 3, 347, 4, 0, '<p>komentar Taufik</p>', '2019-08-28 05:07:44'),
(3, 4, 347, 4, 0, '<p>komentar Sadik</p>', '2019-08-28 05:07:55'),
(4, 5, 347, 4, 0, '<p>komentar Ewik</p>', '2019-08-28 05:08:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `config`
--

CREATE TABLE `config` (
  `name` varchar(128) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `config`
--

INSERT INTO `config` (`name`, `value`) VALUES
('email_from_address', 'admin@example.com'),
('email_from_name', 'admin'),
('email_smtp_enable', 'false'),
('email_smtp_host', ''),
('email_smtp_port', ''),
('email_smtp_username', ''),
('email_smtp_password', ''),
('email_smtp_security', ''),
('email_smtp_domain', ''),
('email_smtp_auth', 'false'),
('week_start', '1'),
('log_retention', '365'),
('tickets_encrypton', ''),
('tickets_password', ''),
('tickets_username', ''),
('tickets_server', ''),
('license_tag_prefix', 'JDL-'),
('asset_tag_prefix', 'JD-'),
('company_details', 'Jaidad'),
('company_name', 'Jaidad'),
('tickets_notification', 'false'),
('sms_provider', 'clickatell'),
('sms_user', ''),
('sms_password', ''),
('sms_api_id', ''),
('sms_from', ''),
('app_name', 'Jaidad Asset Inventory Management System'),
('app_url', '#'),
('table_records', '50'),
('db_version', '1.7'),
('project_tag_prefix', 'P-'),
('password_generator_length', '8'),
('default_lang', 'en'),
('auto_close_tickets', '0'),
('timezone', 'UTC'),
('auto_close_tickets_notify', 'false'),
('tickets_defaultdepartment', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `credentials`
--

CREATE TABLE `credentials` (
  `id` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `assetid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `emaillog`
--

CREATE TABLE `emaillog` (
  `id` int(11) NOT NULL,
  `peopleid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `to` varchar(128) NOT NULL,
  `subject` varchar(256) NOT NULL,
  `message` text NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `emaillog`
--

INSERT INTO `emaillog` (`id`, `peopleid`, `clientid`, `to`, `subject`, `message`, `timestamp`) VALUES
(1, 3, 1, 'tafalah@gmail.com', 'New User', 'Could not instantiate mail function.', '2019-07-11 03:18:27'),
(2, 3, 1, 'tafalah@gmail.com', 'Ticket #320904 created', 'Could not instantiate mail function.', '2019-07-11 03:19:11'),
(3, 2, 0, 'admin@example.com', 'New Support Ticket #320904', 'Could not instantiate mail function.', '2019-07-11 03:19:12'),
(4, 3, 97, 'tafalah@gmail.com', 'Ticket #129115 created', 'Could not instantiate mail function.', '2019-07-13 04:52:09'),
(5, 2, 0, 'admin@example.com', 'New Support Ticket #129115', 'Could not instantiate mail function.', '2019-07-13 04:52:10'),
(6, 3, 97, 'tafalah@gmail.com', '#129115 New Reply', 'Could not instantiate mail function.', '2019-07-13 04:55:57'),
(7, 4, 0, 'sadik.pb@ahmadiyya.or.id', 'New User', 'Could not instantiate mail function.', '2019-07-13 05:44:21'),
(8, 5, 0, 'ewi.pb@ahmadiyya.or.id', 'New User', 'Could not instantiate mail function.', '2019-07-13 06:16:20'),
(9, 3, 77, 'tafalah@gmail.com', 'Ticket #168625 created', 'Could not instantiate mail function.', '2019-07-13 06:24:31'),
(10, 2, 0, 'admin@example.com', 'New Support Ticket #168625', 'Could not instantiate mail function.', '2019-07-13 06:24:32'),
(11, 4, 0, 'sadik.pb@ahmadiyya.or.id', 'New Support Ticket #168625', 'Could not instantiate mail function.', '2019-07-13 06:24:33'),
(12, 5, 0, 'ewi.pb@ahmadiyya.or.id', 'New Support Ticket #168625', 'Could not instantiate mail function.', '2019-07-13 06:24:34'),
(13, 3, 77, 'tafalah@gmail.com', '#168625 New Reply', 'Could not instantiate mail function.', '2019-07-13 06:26:42'),
(14, 6, 0, 'taufik.pb@ahmadiyya.or.id', 'New User', 'Could not instantiate mail function.', '2019-07-13 06:29:08'),
(15, 3, 347, 'tafalah@gmail.com', 'Ticket #719626 created', 'Could not instantiate mail function.', '2019-08-28 04:59:04'),
(16, 2, 0, 'admin@example.com', 'New Support Ticket #719626', 'Could not instantiate mail function.', '2019-08-28 04:59:05'),
(17, 4, 0, 'sadik.pb@ahmadiyya.or.id', 'New Support Ticket #719626', 'Could not instantiate mail function.', '2019-08-28 04:59:06'),
(18, 5, 0, 'ewi.pb@ahmadiyya.or.id', 'New Support Ticket #719626', 'Could not instantiate mail function.', '2019-08-28 04:59:07'),
(19, 6, 0, 'taufik.pb@ahmadiyya.or.id', 'New Support Ticket #719626', 'Could not instantiate mail function.', '2019-08-28 04:59:08'),
(20, 3, 347, 'tafalah@gmail.com', 'Ticket #374667 created', 'Could not instantiate mail function.', '2019-08-28 04:59:09'),
(21, 2, 0, 'admin@example.com', 'New Support Ticket #374667', 'Could not instantiate mail function.', '2019-08-28 04:59:10'),
(22, 4, 0, 'sadik.pb@ahmadiyya.or.id', 'New Support Ticket #374667', 'Could not instantiate mail function.', '2019-08-28 04:59:11'),
(23, 5, 0, 'ewi.pb@ahmadiyya.or.id', 'New Support Ticket #374667', 'Could not instantiate mail function.', '2019-08-28 04:59:12'),
(24, 6, 0, 'taufik.pb@ahmadiyya.or.id', 'New Support Ticket #374667', 'Could not instantiate mail function.', '2019-08-28 04:59:13'),
(25, 7, 14, 'edijuari@gmail.com', 'New User', 'Could not instantiate mail function.', '2019-09-07 01:58:22'),
(26, 8, 14, '', 'New User', 'You must provide at least one recipient email address.', '2019-09-07 02:16:58'),
(27, 9, 42, 'dadan@example.com', 'New User', 'Could not instantiate mail function.', '2019-09-07 02:28:23'),
(28, 10, 37, 'muslihuddin@example.com', 'New User', 'Could not instantiate mail function.', '2019-09-07 02:47:57'),
(29, 11, 3, 'taufik@example.com', 'New User', 'Could not instantiate mail function.', '2019-09-07 03:16:25'),
(30, 12, 3, '', 'New User', 'You must provide at least one recipient email address.', '2019-09-10 04:54:44'),
(31, 13, 3, '', 'New User', 'You must provide at least one recipient email address.', '2019-09-10 06:21:30'),
(32, 7, 3, 'edijuari@gmail.com', 'Ticket #716520 created', 'Could not instantiate mail function.', '2019-09-26 06:07:38'),
(33, 2, 0, 'admin@example.com', 'New Support Ticket #716520', 'Could not instantiate mail function.', '2019-09-26 06:07:40'),
(34, 4, 0, 'sadik.pb@ahmadiyya.or.id', 'New Support Ticket #716520', 'Could not instantiate mail function.', '2019-09-26 06:07:41'),
(35, 5, 0, 'ewi.pb@ahmadiyya.or.id', 'New Support Ticket #716520', 'Could not instantiate mail function.', '2019-09-26 06:07:42'),
(36, 6, 0, 'taufik.pb@ahmadiyya.or.id', 'New Support Ticket #716520', 'Could not instantiate mail function.', '2019-09-26 06:07:43'),
(37, 8, 3, 'khalid@example.com', 'Ticket #459610 created', 'Could not instantiate mail function.', '2019-09-26 06:08:27'),
(38, 2, 0, 'admin@example.com', 'New Support Ticket #459610', 'Could not instantiate mail function.', '2019-09-26 06:08:28'),
(39, 4, 0, 'sadik.pb@ahmadiyya.or.id', 'New Support Ticket #459610', 'Could not instantiate mail function.', '2019-09-26 06:08:29'),
(40, 5, 0, 'ewi.pb@ahmadiyya.or.id', 'New Support Ticket #459610', 'Could not instantiate mail function.', '2019-09-26 06:08:30'),
(41, 6, 0, 'taufik.pb@ahmadiyya.or.id', 'New Support Ticket #459610', 'Could not instantiate mail function.', '2019-09-26 06:08:31'),
(42, 9, 3, 'dadan@example.com', 'Ticket #485943 created', 'Could not instantiate mail function.', '2019-09-26 06:09:02'),
(43, 2, 0, 'admin@example.com', 'New Support Ticket #485943', 'Could not instantiate mail function.', '2019-09-26 06:09:03'),
(44, 4, 0, 'sadik.pb@ahmadiyya.or.id', 'New Support Ticket #485943', 'Could not instantiate mail function.', '2019-09-26 06:09:04'),
(45, 5, 0, 'ewi.pb@ahmadiyya.or.id', 'New Support Ticket #485943', 'Could not instantiate mail function.', '2019-09-26 06:09:05'),
(46, 6, 0, 'taufik.pb@ahmadiyya.or.id', 'New Support Ticket #485943', 'Could not instantiate mail function.', '2019-09-26 06:09:06'),
(47, 7, 3, 'edijuari@gmail.com', '#716520 New Reply', 'Could not instantiate mail function.', '2019-09-26 06:14:08'),
(48, 7, 3, 'edijuari@gmail.com', '#716520 New Reply', 'Could not instantiate mail function.', '2019-09-26 06:14:29'),
(49, 7, 3, 'edijuari@gmail.com', '#716520 New Reply', 'Could not instantiate mail function.', '2019-09-26 06:19:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `assetid` int(11) NOT NULL,
  `ticketreplyid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `files`
--

INSERT INTO `files` (`id`, `clientid`, `projectid`, `assetid`, `ticketreplyid`, `name`, `file`) VALUES
(1, 97, 0, 0, 0, 'Buleleng Document', '1-Buleleng_Page1_Image1.jpg'),
(2, 97, 2, 0, 0, 'Buleleng Document', '2-Buleleng_Page1_Image1.jpg'),
(3, 293, 0, 6, 0, 'Scan Surat Pernyataan Hibah', '3-Singaraja.pdf'),
(4, 293, 0, 6, 0, 'SHM NO. 883', '4-Buleleng-resize.pdf'),
(5, 18, 0, 11, 0, 'AKTA PENGOPERAN HAK NO. 593.83/16/SPHAT/MRG/94', '5-Merawang 2-resize.pdf'),
(6, 18, 0, 12, 0, 'AKTA PENGOPERAN HAK NO. 593.83/15/SPHAT/MRG/94', '6-Merawang-resize.pdf'),
(7, 18, 0, 13, 0, 'AKTA PENGOPERAN HAK NO. 593.83/17/SPHAT/MRG/94', '7-Merawang 3-resize.pdf'),
(8, 18, 0, 14, 0, 'Surat Pelepasan Hak No. 593.83/270/01/X/2004', '8-Sungai Liat-resize.pdf'),
(9, 97, 0, 5, 0, 'SHM Tanah Denpasar 625 m2', '9-Kesiman-resize.pdf'),
(10, 97, 0, 5, 0, 'Surat Pernyataan Tanah Denpasar 625 m2', '10-Kesiman 2-resize.pdf'),
(12, 202, 0, 29, 0, 'Masjid Mersam', '11-Mersam.jpg'),
(13, 202, 0, 29, 0, 'Proposal masjid mesram', '13-Proposal masjid mesram.pdf'),
(14, 41, 0, 16, 0, 'SHM Bengkulu 1480 m2', '14-Bengkulu 1480 m2.pdf'),
(15, 41, 0, 17, 0, 'surat hibah 420 m2', '15-surat hibah 420 m2.pdf'),
(16, 295, 0, 30, 0, 'Singkut 920 m2', '16-Singkut 920 m2.pdf'),
(17, 295, 0, 31, 0, 'Singkut 210 m2', '17-Singkut 210 m2.pdf'),
(18, 113, 0, 26, 0, 'Hibah Kerinci 1100 m2', '18-Hibah Kerinci 1100 m2.pdf'),
(19, 113, 0, 27, 0, 'Hibah Kerinci 935 m2', '19-Hibah Kerinci 935 m2.pdf'),
(20, 124, 0, 28, 0, 'Contra Letter Jambi 2440 m2', '20-Contra Letter Jambi 2440 m2.pdf'),
(21, 124, 0, 28, 0, 'SHM Jambi 2440 m2', '21-SHM Jambi 2440 m2.pdf'),
(22, 96, 0, 18, 0, 'Tanah Curup 360 m2', '22-Tanah Curup 360 m2.pdf'),
(23, 96, 0, 18, 0, 'Tanah Wakaf Curup 180 m2', '23-Tanah Wakaf Curup 180 m2.pdf'),
(24, 96, 0, 19, 0, 'Tanah Curup 400 m2', '24-Tanah Curup 400 m2.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hosts`
--

CREATE TABLE `hosts` (
  `id` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hosts_checks`
--

CREATE TABLE `hosts_checks` (
  `id` int(11) NOT NULL,
  `hostid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(60) NOT NULL,
  `port` varchar(60) NOT NULL,
  `monitoring` int(1) NOT NULL,
  `email` int(1) NOT NULL,
  `sms` int(1) NOT NULL,
  `status` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hosts_history`
--

CREATE TABLE `hosts_history` (
  `id` int(11) NOT NULL,
  `checkid` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `latency` varchar(10) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hosts_people`
--

CREATE TABLE `hosts_people` (
  `id` int(11) NOT NULL,
  `hostid` int(11) NOT NULL,
  `peopleid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `issues`
--

CREATE TABLE `issues` (
  `id` int(11) NOT NULL,
  `issue` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `assetid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `issuetype` varchar(15) NOT NULL,
  `priority` varchar(60) NOT NULL,
  `status` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `duedate` varchar(20) NOT NULL,
  `timespent` int(10) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `issues`
--

INSERT INTO `issues` (`id`, `issue`, `clientid`, `assetid`, `projectid`, `adminid`, `issuetype`, `priority`, `status`, `name`, `description`, `duedate`, `timespent`, `dateadded`) VALUES
(5, 0, 3, 8, 3, 4, 'Task', 'Normal', 'Done', 'Analisa project', 'Pak Harun menganalisa spesifikasi bangunan renovasi masjid di jemaat A', '', 30, '2019-07-15 09:09:21'),
(4, 0, 97, 0, 2, 2, 'Task', 'Normal', 'Done', 'Create Region Asset List', 'Create an asset list filter by region in Bali', '2019-07-13', 120, '2019-07-13 06:31:02'),
(6, 0, 3, 0, 3, 4, 'Task', 'Normal', 'Done', 'Pengawasaan Project', 'Mengawaasi project', '2019-07-22', 120, '2019-07-15 09:11:37'),
(7, 0, 3, 0, 3, 4, 'Task', 'Normal', 'Done', 'Laporan  Hasil Bangunan', 'Membuat laporan hasil progess bangunan', '', 120, '2019-07-15 09:12:32'),
(8, 0, 3, 0, 3, 6, 'Task', 'Normal', 'Done', 'Persetujuan Anggaran', 'meminta persetujuan anggaran dari Sekr. Jaidad, lalu dirapatkan di rapat anggaran ', '2019-08-14', 43200, '2019-07-15 09:16:22'),
(9, 0, 3, 0, 3, 6, 'Task', 'Normal', 'Done', 'Pencatataan ', 'catat hasil renovasi seperti luasan banguanan, model bangunan, konstruksi dan desain ', '', 120, '2019-07-15 09:22:08'),
(10, 0, 3, 0, 3, 4, 'Task', 'Normal', 'Done', 'Progress Renovasi', 'mencatat progres renovasi yang sedang berjalan, Termasuk biaya yang dikeluarkan selama renovasi tersebut', '2019-07-22', 120, '2019-07-15 09:25:31'),
(11, 0, 3, 0, 3, 4, 'Task', 'Normal', 'Done', 'Mengecek laporan pertanggung jawaban ', 'cek laporan pertanggung jawaban', '2019-07-22', 120, '2019-07-15 09:27:52'),
(12, 0, 347, 0, 4, 2, 'Task', 'Normal', 'In Progress', 'Pengajuan Sewa Rumah Dinas Mubaligh Cabang Ujung Gading', 'segera proses persetujuan pengajuan sewa rumah di ujung gading. ', '2019-09-15', 10, '2019-08-28 04:56:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kb_articles`
--

CREATE TABLE `kb_articles` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `clients` text NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `content` text CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kb_articles`
--

INSERT INTO `kb_articles` (`id`, `categoryid`, `clients`, `name`, `content`) VALUES
(1, 1, 'a:1:{i:0;s:1:\"0\";}', 'Test Article', '<p>Article body.<br></p>'),
(2, 1, 'a:1:{i:0;s:1:\"0\";}', 'Artikel', '<p>Ini artikel</p>'),
(3, 1, 'a:1:{i:0;s:1:\"0\";}', 'Artikel', '<p>isi artikel</p>'),
(4, 2, '', 'Tanah BLK', '<p>Jual beli AJB No. 207/12/J.B/Agraria/1976</p><p>Jual beli dari Suratarman kepada Syamsudin tanah milik Adat nomor persil 117 C.1767 luas 2092</p><p><br></p><p>Jual beli AJB No. 365/12/JB/Agraria/1976</p><p>Jual beli tanggal 29 Desember 1976 dari Suratrman kepaa Arheng SSyamsoejadi tanah milik ada nomor persil 117 C.1767 luas 2093 m2</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kb_categories`
--

CREATE TABLE `kb_categories` (
  `id` int(11) NOT NULL,
  `clients` text NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kb_categories`
--

INSERT INTO `kb_categories` (`id`, `clients`, `name`) VALUES
(1, 'a:1:{i:0;s:1:\"0\";}', 'Test Category'),
(2, 'a:1:{i:0;s:1:\"0\";}', 'Sejarah Tanah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `labels`
--

CREATE TABLE `labels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `labels`
--

INSERT INTO `labels` (`id`, `name`, `color`) VALUES
(1, 'Requested', '#1ecbbd'),
(2, 'Pending', '#1ccd2b'),
(3, 'Deployed', '#3479da'),
(4, 'Archived', '#959d1c'),
(5, 'In Repair', '#da2727'),
(6, 'Broken', '#776e6e'),
(7, 'Owned', '#008cf4'),
(8, 'Rented', '#e21515'),
(9, 'On Behalf of Individuals', '#1534e2'),
(10, 'Lost', '#a02525'),
(11, 'Not Verified', '#ed2038'),
(12, 'Sold', '#a0a326');

-- --------------------------------------------------------

--
-- Struktur dari tabel `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `code` varchar(4) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`) VALUES
(1, 'en', 'English (System)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `licensecategories`
--

CREATE TABLE `licensecategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `licensecategories`
--

INSERT INTO `licensecategories` (`id`, `name`, `color`) VALUES
(6, 'Rented Property', '#36c971'),
(5, 'Owned Property', '#2e1082');

-- --------------------------------------------------------

--
-- Struktur dari tabel `licenses`
--

CREATE TABLE `licenses` (
  `id` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `statusid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `supplierid` int(11) NOT NULL,
  `assetcatid` int(11) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `serial` text NOT NULL,
  `notes` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `licenses`
--

INSERT INTO `licenses` (`id`, `clientid`, `statusid`, `categoryid`, `supplierid`, `assetcatid`, `tag`, `name`, `serial`, `notes`) VALUES
(6, 38, 7, 5, 5, 6, 'JDL-343-6', 'Tanah Buluh Tumbah', '', '<p>Sudah bayar pajak BPHTP Rp. 8,795,400. Sertifikasi sedang berjalan<br></p>'),
(7, 97, 7, 5, 4, 8, 'JDL-71-7', 'Masjid', '', '<p>Luas 113 m2</p>'),
(8, 97, 7, 5, 4, 0, 'JDL-71-8', 'Kantor', '', '<p>Luas 67,5</p>'),
(9, 97, 7, 5, 4, 7, 'JDL-71-9', 'Rumah Dinas Mubaligh', '', '<p>88 m2</p>'),
(10, 232, 7, 5, 4, 8, 'JDL-272-10', 'Masjid', '', '<p>49 m2</p>'),
(13, 293, 7, 5, 4, 8, 'JDL-120-11', 'Masjid', '', '<p>36 m2</p>'),
(14, 337, 7, 5, 4, 8, 'JDL-247-14', 'Masjid', '', '<p>100 m2</p>'),
(15, 337, 7, 5, 4, 7, 'JDL-247-15', 'Rumah Dinas Mubaligh', '', '<p>18 m2</p>'),
(16, 18, 7, 5, 5, 8, 'JDL-156-16', 'Masjid', '', '<p>36 m2</p>'),
(17, 18, 7, 5, 4, 7, 'JDL-156-17', 'Rumah Dinas Mubaligh', '', '<p>36 m2</p>'),
(18, 41, 7, 5, 6, 8, 'JDL-152-18', 'Masjid', '', '<p>72 m2</p>'),
(19, 41, 7, 5, 6, 7, 'JDL-152-19', 'Rumah Dinas Mubaligh', '', '<p>42 m2</p>'),
(20, 41, 7, 5, 6, 10, 'JDL-152-20', 'Gedung Serbaguna', '', '<p>56 m2</p>'),
(21, 96, 7, 5, 6, 8, 'JDL-56-21', 'Masjid', '', '<p>72 m2</p>'),
(22, 96, 9, 5, 6, 7, 'JDL-56-22', 'Rumah Dinas Mubaligh', '', '<p>36 m2</p>'),
(23, 113, 7, 5, 7, 8, 'JDL-141-23', 'Masjid', '', '<p>144 m2</p>'),
(24, 113, 7, 5, 7, 7, 'JDL-141-24', 'Rumah Dinas Mubaligh', '', '<p>45 m2</p>'),
(25, 124, 7, 5, 7, 8, 'JDL-294-25', 'Masjid', '', '<p>90 m2</p>'),
(26, 124, 7, 5, 7, 7, 'JDL-294-26', 'Rumah Dinas Mubaligh', '', '<p>105 m2</p>'),
(27, 202, 7, 5, 7, 8, 'JDL-235-27', 'Masjid', '', '<p>36 m2</p>'),
(28, 373, 7, 5, 7, 7, 'JDL-351-28', 'Rumah Dinas Mubaligh', '', '<p>Rumah kpr cicilan.&nbsp;</p>'),
(29, 295, 7, 5, 7, 0, 'JDL-124-29', 'Masjid', '', '<p>78,75 m2</p>'),
(30, 295, 7, 5, 7, 0, 'JDL-124-30', 'Rumah Dinas Mubaligh', '', '<p>36 m2</p>'),
(31, 295, 7, 5, 7, 0, 'JDL-124-31', 'Madrasah', '', '<p>98 m2</p>'),
(32, 295, 7, 5, 7, 0, 'JDL-124-32', 'Rumah Dinas Mubaligh', '', '<p>98 m2</p>'),
(33, 295, 7, 5, 7, 0, 'JDL-124-33', 'Masjid', '', '<p>144 m2</p>'),
(34, 36, 7, 5, 8, 0, 'JDL-183-34', 'Masjid', '', ''),
(35, 36, 7, 5, 8, 0, 'JDL-183-35', 'Rumah Dinas Mubaligh', '', ''),
(36, 44, 7, 5, 8, 0, 'JDL-84-36', 'Masjid', '', '<p>36 m2</p>'),
(37, 44, 7, 5, 8, 0, 'JDL-84-37', 'Masjid', '', '<p>78,75</p>'),
(38, 44, 7, 5, 8, 0, 'JDL-84-38', 'Makam', '', '<p>450 m2</p>'),
(39, 52, 7, 5, 8, 0, 'JDL-295-39', 'Masjid', '', '<p>48 m2</p>'),
(40, 74, 7, 5, 0, 0, 'JDL-276-40', 'Masjid', '', ''),
(41, 139, 7, 5, 8, 0, 'JDL-80-41', 'Masjid', '', '<p>68,25</p>'),
(42, 139, 7, 5, 8, 0, 'JDL-80-42', 'Rumah Dinas Mubaligh', '', '<p>65 m2</p>'),
(43, 139, 7, 5, 8, 0, 'JDL-80-43', 'Bangunan Multifungsi', '', '<p>30 m2</p>'),
(44, 139, 7, 5, 8, 0, 'JDL-80-44', 'Masjid', '', '<p>48 m2</p>'),
(45, 139, 7, 5, 8, 0, 'JDL-80-45', 'Masjid', '', '<p>40 m2</p>'),
(46, 139, 7, 5, 8, 0, 'JDL-80-46', 'Rumah Dinas Mubaligh', '', '<p>68 m2</p>'),
(47, 167, 7, 5, 8, 0, 'JDL-83-47', 'Masjid Cikarang Utara', '', '<p>130 m2</p>'),
(48, 167, 7, 5, 8, 0, 'JDL-83-48', 'Rumah Dinas Mubaligh Cikarang Utara', '', '<p>60 m2</p>'),
(49, 167, 7, 5, 8, 0, 'JDL-83-49', 'Mushola Cikarang Utama', '', '<p>48 m2</p>'),
(50, 322, 7, 5, 8, 0, 'JDL-85-50', 'Masjid Tambun', '', '<p>99 m2</p>'),
(51, 322, 7, 5, 8, 0, 'JDL-85-51', 'Rumah Dinas Mubaligh Tambun', '', '<p>63 m2</p>'),
(52, 322, 7, 5, 8, 0, 'JDL-85-52', 'Guest House', '', '<p>87 m2</p>'),
(53, 43, 7, 5, 10, 0, 'JDL-3-53', 'Masjid Al Fadhl', '', '<p>121 m2</p>'),
(54, 43, 7, 5, 10, 0, 'JDL-3-54', 'Rumah Dinas Mubaligh Bogor', '', '<p>36,6 m2</p>'),
(55, 62, 7, 5, 10, 0, 'JDL-91-55', 'Masjid Ciaruteun', '', '<p>114 m2</p>'),
(56, 68, 7, 5, 10, 0, 'JDL-46-56', 'Masjid Cibitung Wetan', '', '<p>132 m2</p>'),
(57, 68, 7, 5, 10, 0, 'JDL-46-57', 'Rumah Dinas Mubaligh Cibitung Wetan', '', '<p>24 m2</p>'),
(58, 72, 7, 5, 10, 0, 'JDL-87-58', 'Masjid Ciherang', '', '<p>95 m2</p>'),
(59, 72, 7, 5, 10, 0, 'JDL-87-59', 'Rumah Dinas Mubaligh Ciherang', '', '<p>40 m2</p>'),
(60, 83, 7, 5, 10, 0, 'JDL-92-60', 'Masjid Cimayang', '', '276 m2'),
(61, 89, 7, 5, 10, 0, 'JDL-18-61', 'Bangunan Multifungsi', '', ''),
(62, 89, 7, 5, 10, 0, 'JDL-18-62', 'Komplek Pemakaman', '', '500 m2'),
(63, 89, 7, 5, 10, 0, 'JDL-18-63', 'Masjid At Taufik', '', '<p>210 m2</p>'),
(64, 89, 7, 5, 10, 0, 'JDL-18-64', 'Rumah Dinas Mubaligh Cisalada', '', '<p>134,5 m2</p>'),
(65, 89, 7, 5, 10, 0, 'JDL-18-65', 'Madrasah Cisalada', '', '<p>81 m2</p>'),
(66, 171, 7, 5, 10, 0, 'JDL-88-66', 'Komplek Pemakaman', '', '<p>500</p>'),
(67, 290, 7, 5, 10, 0, 'JDL-89-67', 'Masjid Sindangbarang', '', '<p>66 m2</p>'),
(68, 290, 7, 5, 10, 0, 'JDL-89-68', 'Rumah Dinas Mubaligh Sindangbarang', '', '<p>40 m2</p>'),
(69, 114, 7, 5, 11, 0, 'JDL-292-69', 'Masjid', '', '<p>50 m2</p>'),
(70, 114, 7, 5, 11, 0, 'JDL-292-70', 'Rumah Dinas Mubaligh', '', '<p>77 m2</p>'),
(71, 250, 7, 5, 11, 0, 'JDL-245-71', 'Masjid Piyungan', '', '<p>72 m2</p>'),
(72, 250, 7, 5, 11, 0, 'JDL-245-72', 'Rumah Dinas Mubaligh Piyungan', '', '<p>35 m2</p>'),
(73, 360, 7, 5, 11, 0, 'JDL-23-73', 'Masjid Yogyakarta', '', '<p>98 m2</p>'),
(74, 360, 7, 5, 11, 0, 'JDL-23-74', 'Rumah Dinas Mubaligh Yogyakarta', '', '<p>98 m2</p>'),
(75, 360, 7, 5, 11, 0, 'JDL-23-75', 'Perpustakaan', '', '<p>126 m2</p>'),
(76, 93, 7, 5, 12, 12, 'JDL-66-76', 'Gedung PAUD', '', '<p>72 m2</p>'),
(77, 93, 7, 5, 0, 14, 'JDL-66-77', 'Gedung Serbaguna', '', '<p>24 m2</p>'),
(78, 93, 7, 5, 12, 8, 'JDL-66-78', 'Masjid Citalahab', '', '<p>132 m2</p>'),
(79, 93, 7, 5, 12, 11, 'JDL-66-79', 'Komplek Pemakaman Citalahab', '', '<p>5000 m2</p>'),
(80, 93, 7, 5, 12, 7, 'JDL-66-80', 'Rumah Dinas Mubaligh', '', '<p>52 m2</p>'),
(81, 137, 7, 5, 12, 8, 'JDL-96-81', 'Masjid Karang Tengah', '', '<p>80 m2</p>'),
(82, 137, 7, 5, 12, 7, 'JDL-96-82', 'Rumah Dinas Mubaligh', '', '<p>24 m2</p>'),
(83, 137, 7, 5, 12, 8, 'JDL-96-83', 'Masjid Karang Tengah', '', '<p>48 m2</p>'),
(84, 166, 7, 5, 12, 8, 'JDL-93-84', 'Masjid', '', '<p>77 m2</p>'),
(85, 166, 7, 5, 12, 10, 'JDL-93-85', 'Bangunan Tambahan', '', '<p>2 m2</p>'),
(86, 166, 7, 5, 12, 14, 'JDL-93-86', 'Gedung Serbaguna', '', '<p>8 m2</p>'),
(87, 166, 7, 5, 12, 8, 'JDL-93-87', 'Masjid', '', '<p>100 m2</p>'),
(88, 166, 7, 5, 12, 12, 'JDL-93-88', 'Gedung PAUD', '', '<p>119 m2</p>'),
(89, 229, 7, 5, 12, 8, 'JDL-72-89', 'Masjid Panjalu', '', '<p>115 m2</p>'),
(90, 235, 7, 5, 12, 12, 'JDL-64-90', 'Gedung PAUD', '', '<p>63 m2</p>'),
(91, 235, 7, 5, 12, 8, 'JDL-64-91', 'Masjid Parakansalak', '', '<p>154 m2</p>'),
(92, 235, 7, 5, 12, 7, 'JDL-64-92', 'Rumah Dinas Mubaligh Parakansalak', '', '<p>42 m2</p>'),
(93, 304, 7, 5, 12, 13, 'JDL-6-93', 'Gedung Kantor', '', '<p>35 m2</p>'),
(94, 304, 7, 5, 12, 8, 'JDL-6-94', 'Masjid Sukabumi', '', '<p>700 m2</p>'),
(95, 304, 7, 5, 12, 7, 'JDL-6-95', 'Rumah Dinas Mubaligh Sukabumi', '', '<p>82 m2</p>'),
(96, 352, 7, 5, 12, 8, 'JDL-148-96', 'Masjid Waluran', '', '<p>48 m2</p>'),
(97, 352, 7, 5, 12, 7, 'JDL-148-97', 'Rumah Dinas Mubaligh Waluran', '', '<p>24 m2</p>'),
(98, 355, 7, 5, 12, 8, 'JDL-95-98', 'Masjid Warungkiara', '', '<p>77 m2</p>'),
(99, 355, 7, 5, 12, 7, 'JDL-95-99', 'Rumah Dinas Mubaligh Warungkiara', '', '<p>35 m2</p>'),
(100, 355, 7, 5, 12, 8, 'JDL-95-100', 'Masjid Cisolok ', '', '<p>20 m2</p>'),
(101, 5, 7, 5, 13, 8, 'JDL-149-101', 'Masjid Agrabinta Purbaya', '', '35 m2'),
(102, 5, 7, 5, 13, 8, 'JDL-149-102', 'Masjid Agrabinta Purbaya', '', '<p>80 m2</p>'),
(103, 5, 7, 5, 13, 8, 'JDL-149-103', 'Masjid Agrabinta Jalegor', '', '<p>35 m2</p>'),
(104, 266, 7, 5, 13, 8, 'JDL-253-104', 'Masjid Ranca Umbul', '', '<p>32 m2</p>'),
(105, 266, 7, 5, 13, 8, 'JDL-253-105', 'Masjid Ranca Umbul', '', '<p>64 m2</p>'),
(106, 25, 7, 5, 13, 8, 'JDL-129-106', 'Masjid Baros', '', '<p>48 m2</p>'),
(107, 25, 7, 5, 13, 12, 'JDL-129-107', 'Gedung Madrasah', '', '<p>60 m2</p>'),
(108, 45, 7, 5, 13, 8, 'JDL-178-108', 'Masjid Bojong Picung', '', '<p>42 m2</p>'),
(109, 45, 7, 5, 13, 7, 'JDL-178-109', 'Rumah Dinas Mubaligh Bojong Picung', '', '<p>54 m2</p>'),
(110, 45, 7, 5, 13, 10, 'JDL-178-110', 'Asrama', '', '<p>24 m2</p>'),
(111, 45, 7, 5, 13, 8, 'JDL-178-111', 'Masjid Ranjanggirang', '', '<p>15 m2</p>'),
(112, 60, 7, 5, 13, 8, 'JDL-8-112', 'Masjid Ciandam', '', '<p>120 m2</p>'),
(113, 61, 7, 5, 13, 8, 'JDL-7-113', 'Masjid Cianjur', '', '<p>126 m2</p>'),
(114, 61, 7, 5, 13, 7, 'JDL-7-114', 'Rumah Dinas Mubaligh Cianjur', '', '<p>50 m2</p>'),
(115, 61, 7, 5, 13, 8, 'JDL-7-115', 'Masjid Sulaksana', '', '<p>33 m2</p>'),
(116, 61, 7, 5, 13, 8, 'JDL-7-116', 'Masjid Ranting Bojong', '', '<p>22,5 m2</p>'),
(117, 61, 7, 5, 13, 8, 'JDL-7-117', 'Masjid Ranting Cikadu', '', '<p>120 m2</p>'),
(118, 61, 7, 5, 13, 14, 'JDL-7-118', 'Asrama RAnting Pasircangkudu', '', '<p>65 m2</p>'),
(119, 69, 7, 5, 13, 8, 'JDL-130-119', 'Masjid Cicakra', '', '<p>90 m2</p>'),
(120, 69, 7, 5, 13, 12, 'JDL-130-120', 'Gedung PAUD Cicakra', '', '<p>36 m2</p>'),
(121, 69, 7, 5, 13, 7, 'JDL-130-121', 'Rumah Dinas Mubaligh Cicakra', '', '<p>80 m2</p>'),
(122, 73, 7, 5, 13, 8, 'JDL-12-122', 'Masjid Cikalong Kulon', '', '<p>121 m2</p>'),
(123, 73, 7, 5, 13, 7, 'JDL-12-123', 'Rumah Dinas Mubaligh Cikalong Kulon', '', '<p>54 m2</p>'),
(124, 370, 7, 5, 13, 8, 'JDL-348-124', 'Masjid Datar Kupa', '', '56 m2'),
(125, 391, 7, 5, 13, 8, 'JDL-369-125', 'Masjid Cisitu', '', '<h2 jstcache=\"688\" jsinstance=\"*0\" class=\"section-hero-header-title-subtitle\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; border-radius: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: Roboto, Arial, sans-serif; list-style: none; margin: 4px 0px 0px; outline: 0px; overflow: visible; padding: 0px; vertical-align: baseline; color: rgb(0, 0, 0);\"><span jstcache=\"689\">-7.346917, 107.018840</span></h2>'),
(126, 170, 7, 5, 13, 11, 'JDL-16-126', 'Komplek Pemakaman', '', ''),
(127, 170, 7, 5, 13, 7, 'JDL-16-127', 'Rumah Dinas Mubaligh Leuwimangu', '', '<p>29,25 m2</p>'),
(128, 170, 7, 5, 13, 8, 'JDL-16-128', 'Masjid Leuwimangu', '', '<p>64 m2</p>'),
(129, 208, 7, 5, 13, 8, 'JDL-144-129', 'Masjid Neglasari', '', '<p>161 m2</p>'),
(130, 208, 7, 5, 13, 13, 'JDL-144-130', 'Gedung Kantor', '', '<p>18 m2</p>'),
(131, 208, 7, 5, 13, 6, 'JDL-144-131', 'Lapangan', '', '<p>7 m2</p>'),
(132, 208, 7, 5, 13, 12, 'JDL-144-132', 'Gedung Madrasah', '', '<p>98 m2</p>'),
(133, 208, 7, 5, 13, 8, 'JDL-144-133', 'Masjid Kelompok Cilimus', '', '<p>24 m2</p>'),
(134, 291, 7, 5, 13, 8, 'JDL-17-134', 'Masjid Sindangkerta', '', '<p>130 m2</p>'),
(135, 291, 7, 5, 13, 8, 'JDL-17-135', 'Masjid Sindangkerta Ranting Warga Sari', '', '<p>30 m2</p>'),
(136, 319, 7, 5, 13, 7, 'JDL-58-136', 'Rumah Dinas Mubaligh Talaga', '', '<p>32 m2</p>'),
(137, 319, 7, 5, 13, 8, 'JDL-58-137', 'Masjid Talaga', '', ''),
(138, 391, 7, 5, 13, 8, 'JDL-369-138', 'Masjid Cisitu', '', ''),
(139, 9, 7, 5, 14, 8, 'JDL-260-139', 'Masjid Arjasari', '', '<p>60 m2</p>'),
(140, 9, 7, 5, 14, 8, 'JDL-260-140', 'Masjid Arjasari 2', '', '<p>24 m2</p>'),
(141, 9, 7, 5, 14, 6, 'JDL-260-141', 'Jalan Akses Masjid Arjasari', '', '<p>71 m2</p>'),
(142, 15, 7, 5, 14, 8, 'JDL-2-142', 'Masjid Bandung Kulon', '', '<p>400 m2</p>'),
(143, 15, 7, 5, 14, 7, 'JDL-2-143', 'Rumah Dinas Mubaligh Bandung Kulon', '', '<p>34 m2</p>'),
(144, 15, 7, 5, 14, 13, 'JDL-2-144', 'Kantor Bandung Kulon', '', ''),
(145, 15, 7, 5, 14, 15, 'JDL-2-145', 'Asrama Bandung Kulon', '', '<p>140 m2</p>'),
(146, 15, 7, 5, 14, 8, 'JDL-2-146', 'Masjid Kebon Kangkung', '', '<p>90 m2</p>'),
(147, 15, 7, 5, 14, 7, 'JDL-2-147', 'Rumah Dinas Mubaligh Bandung Kulon Kebon Kangkung', '', '<p>36 m2</p>'),
(148, 16, 7, 5, 14, 8, 'JDL-277-148', 'Masjid Mubarak Bandung Tengah', '', '<p>450 m2</p>'),
(149, 16, 7, 5, 14, 7, 'JDL-277-149', 'Rumah Dinas Mubaligh Bandung Tengah', '', '<p>300 m2</p>'),
(150, 21, 7, 5, 14, 8, 'JDL-90-150', 'Masjid Banjaran', '', '<p>145 m2</p>'),
(151, 21, 7, 5, 14, 6, 'JDL-90-151', 'Jalan Desa Banjaran', '', '<p>71 m2</p>'),
(152, 21, 7, 5, 14, 7, 'JDL-90-152', 'Rumah Dinas Mubaligh Banjaran', '', '<p>100 m2</p>'),
(153, 70, 7, 5, 14, 8, 'JDL-280-153', 'Masjid Cicalengka', '', '<p>20 m2</p>'),
(154, 70, 7, 5, 14, 8, 'JDL-280-154', 'Masjid Cicalengka 2', '', '<p>20 m2</p>'),
(155, 182, 7, 5, 14, 8, 'JDL-111-155', 'Masjid Majalaya', '', '<p>95 m2</p>'),
(156, 225, 7, 5, 14, 8, 'JDL-268-156', 'Masjid Pangalengan', '', '<p>43 m2</p>'),
(157, 300, 7, 5, 14, 8, 'JDL-226-157', 'Masjid Soreang', '', '<p>63 m2</p>'),
(158, 309, 7, 5, 14, 8, 'JDL-110-158', 'Masjid Sukatali', '', '<p>96 m2</p>'),
(159, 309, 7, 5, 14, 7, 'JDL-110-159', 'Rumah Dinas Mubaligh Sukatali', '', '<p>54 m2</p>'),
(160, 309, 7, 5, 14, 8, 'JDL-110-160', 'Masjid Sukatali Kelompok Buah Batu', '', '<p>20 m2</p>'),
(161, 309, 7, 5, 14, 7, 'JDL-110-161', 'Rumah Dinas Mubaligh Sukatali 2', '', '<p>80 m2</p>'),
(162, 65, 7, 5, 15, 8, 'JDL-115-162', 'Masjid Cibatu', '', '<p>96 m2</p>'),
(163, 65, 7, 5, 15, 7, 'JDL-115-163', 'Rumah Dinas Mubaligh Cibatu', '', '<p>54 m2</p>'),
(164, 65, 7, 5, 15, 6, 'JDL-115-164', 'Komplek Pemakaman', '', '<p>308 m2</p>'),
(165, 80, 7, 5, 15, 8, 'JDL-116-165', 'Masjid Cilimus', '', '37 m2'),
(166, 92, 7, 5, 15, 8, 'JDL-118-166', 'Masjid Cisurupan', '', '<p>55 m2</p>'),
(167, 104, 7, 5, 15, 14, 'JDL-5-167', 'Gedung Serbaguna Garut', '', '<p>140 m2</p>'),
(168, 104, 7, 5, 15, 8, 'JDL-5-168', 'Masjid Garut', '', '<p>196 m2</p>'),
(169, 104, 7, 5, 15, 7, 'JDL-5-169', 'Rumah Dinas Mubaligh Garut', '', '<p>70 m2</p>'),
(170, 138, 7, 5, 15, 8, 'JDL-94-170', 'Masjid Karangpawitan', '', '<p>37 m2</p>'),
(171, 138, 7, 5, 15, 7, 'JDL-94-171', 'Rumah Dinas Mubaligh Karangpawitan', '', '<p>37 m2</p>'),
(172, 212, 9, 5, 15, 8, 'JDL-97-172', 'Masjid Nyalindung', '', '<p>48 m2</p>'),
(173, 274, 7, 5, 15, 8, 'JDL-117-173', 'Masjid Samarang', '', '<p>77 m2</p>'),
(174, 274, 7, 5, 15, 7, 'JDL-117-174', 'Rumah Dinas Mubaligh Samarang', '', '<p>84 m2</p>'),
(175, 220, 7, 5, 15, 8, 'JDL-151-175', 'Masjid Pemeungpeuk', '', '<p>12 m2</p>'),
(176, 278, 7, 5, 15, 8, 'JDL-327-176', 'Masjid Sanding', '', '<p>360 m2</p>'),
(177, 278, 7, 5, 15, 8, 'JDL-327-177', 'Masjid Sanding Paledang', '', '<p>54 m2</p>'),
(178, 305, 7, 5, 15, 8, 'JDL-107-178', 'Masjid Sukamaju', '', '<p>72 m2</p>'),
(179, 310, 7, 5, 15, 8, 'JDL-98-179', 'Masjid Sukawening', '', '<p>28 m2</p>'),
(180, 310, 7, 5, 15, 7, 'JDL-98-180', 'Rumah Dinas Mubaligh Sukawening', '', '<p>28 m2</p>'),
(181, 46, 7, 5, 9, 8, 'JDL-251-181', 'Masjid Bojongsirna', '', '<p>119,5 m2</p>'),
(182, 46, 7, 5, 9, 8, 'JDL-251-182', 'Masjid Bojongsirna 2', '', '<p>72 m2</p>'),
(183, 46, 7, 5, 9, 8, 'JDL-251-183', 'Masjid Bojongsirna Kelompok Babakan', '', '<p>12 m2</p>'),
(184, 46, 7, 5, 9, 8, 'JDL-251-184', 'Masjid Bojongsirna Kelompok Cihoe', '', '<p>12 m2</p>'),
(185, 46, 7, 5, 9, 8, 'JDL-251-185', 'Masjid Bojongsirna Kelompok Cileutik', '', '<p>12 m2</p>'),
(186, 46, 7, 5, 9, 8, 'JDL-251-186', 'Masjid Bojongsirna Kelompok Cipari', '', '<p>24 m2</p>'),
(187, 46, 7, 5, 9, 8, 'JDL-251-187', 'Masjid Bojongsirna Kelompok Pangbolo', '', '<p>24 m2</p>'),
(188, 71, 7, 5, 9, 6, 'JDL-114-188', 'Komplek Pemakaman', '', '<p>300 m2</p>'),
(189, 71, 7, 5, 9, 8, 'JDL-114-189', 'Masjid Cigunungtilu Kelompok Sukawarni', '', '<p>70 m2</p>'),
(190, 71, 7, 5, 9, 8, 'JDL-114-190', 'Masjid Cigunungtilu Kelompok Jeungjing', '', '<p>12 m2</p>'),
(191, 71, 7, 5, 9, 8, 'JDL-114-191', 'Masjid Cigunungtilu Kelompok Cibunar', '', '<p>24 m2</p>'),
(192, 71, 7, 5, 9, 8, 'JDL-114-192', 'Masjid Cigunungtilu Kelompok Sukawarni 2', '', '<p>41 m2</p>'),
(193, 71, 7, 5, 9, 8, 'JDL-114-193', 'Masjid Cigunungtilu Kelompok Legok Gonggong', '', '<p>24 m2</p>'),
(194, 71, 7, 5, 9, 8, 'JDL-114-194', 'Masjid Cigunungtilu', '', '<p>104 m2</p>'),
(195, 71, 7, 5, 9, 13, 'JDL-114-195', 'Gedung Kantor', '', '<p>14 m2</p>'),
(196, 71, 7, 5, 9, 12, 'JDL-114-196', 'Gedung Madrasah', '', '<p>40 m2</p>'),
(197, 94, 7, 5, 9, 8, 'JDL-105-197', 'Masjid Citeguh', '', '<p>306 m2</p>'),
(198, 94, 7, 5, 9, 12, 'JDL-105-198', 'Gedung Madrasah', '', '<p>162 m2</p>'),
(199, 94, 7, 5, 9, 15, 'JDL-105-199', 'Rumah Tinggal Citeguh', '', '<p>36 m2</p>'),
(200, 94, 7, 5, 9, 7, 'JDL-105-200', 'Rumah Dinas Mubaligh Citeguh', '', '<p>54 m2</p>'),
(201, 94, 7, 5, 9, 14, 'JDL-105-201', 'Bangunan Penelolaan Air Bersih', '', '<p>32 m2</p>'),
(202, 94, 7, 5, 9, 8, 'JDL-105-202', 'Masjid Citeguh Kelompok Babakan', '', '<p>69 m2</p>'),
(203, 94, 7, 5, 9, 8, 'JDL-105-203', 'Masjid Citeguh Kelompok Narak', '', '<p>81 m2</p>'),
(204, 94, 7, 5, 9, 8, 'JDL-105-204', 'Masjid Citeguh Kelompok Nyalindung', '', '<p>55,25 m2</p>'),
(205, 94, 7, 5, 9, 8, 'JDL-105-205', 'Masjid Citeguh Kelompok Bunisari', '', '<p>70 m2</p>'),
(206, 94, 7, 5, 9, 8, 'JDL-105-206', 'Masjid Citeguh Kelompok Kurjati', '', '<p>24 m2</p>'),
(207, 117, 7, 5, 9, 8, 'JDL-176-207', 'Masjid Indihiang', '', '<p>144 m2</p>'),
(208, 117, 7, 5, 9, 8, 'JDL-176-208', 'Masjid Indihiang 2', '', '<p>112 m2</p>'),
(209, 142, 7, 5, 9, 11, 'JDL-119-209', 'Komplek Pemakaman Kawalu', '', '<p>1415 m2</p>'),
(210, 142, 7, 5, 9, 8, 'JDL-119-210', 'Masjid Kawalu', '', '<p>112 m2</p>'),
(211, 142, 7, 5, 9, 15, 'JDL-119-211', 'Panti Asuhan Kawalu', '', '<p>250 m2</p>'),
(212, 142, 7, 5, 9, 7, 'JDL-119-212', 'Rumah Dinas Mubaligh Kawalu', '', '<p>72 m2</p>'),
(213, 196, 7, 5, 9, 8, 'JDL-135-213', 'Masjid Mayangcinde', '', '<p>150 m2</p>'),
(214, 196, 7, 5, 9, 6, 'JDL-135-214', 'Masjid Mayangcinde Kelompok Karamat', '', '<p>49 m2</p>'),
(215, 196, 7, 5, 9, 6, 'JDL-135-215', 'Komplek Pemakaman Mayangcinde', '', ''),
(216, 366, 7, 5, 16, 7, 'JDL-337-216', 'Rumah Dinas Mubaligh Balaigana', '', '<p>49 m2</p>'),
(217, 292, 7, 5, 9, 12, 'JDL-11-217', 'Gedung Madrasah', '', '<p>96 m2</p>'),
(218, 292, 7, 5, 9, 7, 'JDL-11-218', 'Rumah Dinas Mubaligh Singaparna', '', '<p>224 m2</p>'),
(219, 292, 7, 5, 9, 8, 'JDL-11-219', 'Masjid Baiturahim Kelompok Babakan Sindang Cipakat', '', '<p>221 m2</p>'),
(220, 292, 7, 5, 9, 7, 'JDL-11-220', 'Rumah Dinas Mubaligh Singaparna 2', '', '<p>80 m2</p>'),
(221, 292, 7, 5, 9, 6, 'JDL-11-221', 'Komplek Pemakaman', '', '<p>420 m2</p>'),
(222, 292, 7, 5, 9, 6, 'JDL-11-222', 'Tanah Lapangan Parkir', '', '<p>250 m2</p>'),
(223, 292, 7, 5, 9, 8, 'JDL-11-223', 'Masjid Singaparna Kelompok Ciomean', '', '<p>72 m2</p>'),
(224, 292, 7, 5, 9, 8, 'JDL-11-224', 'Masjid Singaparna Kelompok Cariwu', '', '<p>35 m2</p>'),
(225, 307, 7, 5, 9, 8, 'JDL-75-225', 'Masjid Sukapura', '', '<p>150 m2</p>'),
(226, 307, 7, 5, 9, 7, 'JDL-75-226', 'Rumah Dinas Mubaligh Sukapura', '', '<p>48 m2</p>'),
(227, 308, 7, 5, 9, 12, 'JDL-106-227', 'Gedung Madrasah', '', '<p>180 m2</p>'),
(228, 308, 7, 5, 9, 8, 'JDL-106-228', 'Masjid Sukasari ', '', '<p>144 m2</p>'),
(229, 308, 7, 5, 9, 8, 'JDL-106-229', 'Masjid Sukasari Kelompok Parakan Panjang', '', '<p>24 m2</p>'),
(230, 308, 7, 5, 9, 8, 'JDL-106-230', 'Masjid Sukasari Kelompok Cikabuyutan', '', '<p>12 m2</p>'),
(231, 308, 7, 5, 9, 8, 'JDL-106-231', 'Masjid Sukasari Kelompok Cikabuyutan', '', '<p>24 m2</p>'),
(232, 308, 7, 5, 9, 8, 'JDL-106-232', 'Masjid Sukasari Kelompok Sindangsari', '', '<p>35 m2</p>'),
(233, 308, 7, 5, 9, 8, 'JDL-106-233', 'Masjid Sukasari Kelompok Cigadog', '', '<p>25 m2</p>'),
(234, 331, 7, 5, 9, 8, 'JDL-4-234', 'Gedung Serbaguna Tasikmalaya', '', '<p>250 m2</p>'),
(235, 331, 7, 5, 9, 12, 'JDL-4-235', 'Gedung Madrasah Tasikmalaya', '', '<p>238 m2</p>'),
(236, 331, 7, 5, 9, 8, 'JDL-4-236', 'Masjid Tasikmalaya Kelompok Buninagara Nagasari', '', '<p>48 m2</p>'),
(237, 331, 7, 5, 9, 8, 'JDL-4-237', 'Masjid Tasikmalaya 256', '', '<p>256 m2</p>'),
(238, 331, 7, 5, 9, 7, 'JDL-4-238', 'Rumah Dinas Mubaligh Tasikmalaya 48', '', '<p>48,75 m2</p>'),
(239, 331, 7, 5, 9, 6, 'JDL-4-239', 'Lahan Parkir', '', '<p>45 m2</p>'),
(240, 353, 7, 5, 9, 14, 'JDL-19-240', 'Gedung Serbaguna', '', '<p>207 m2</p>'),
(241, 353, 7, 5, 9, 12, 'JDL-19-241', 'Gedung Madrasah', '', '<p>125 m2</p>'),
(242, 353, 7, 5, 9, 15, 'JDL-19-242', 'Asrama Wanasigra', '', '<p>99 m2</p>'),
(243, 353, 7, 5, 9, 15, 'JDL-19-243', 'Asrama Waqfenou Wanasigra', '', '<p>267 m2</p>'),
(244, 353, 7, 5, 9, 8, 'JDL-19-244', 'Masjid Wanasigra', '', '<p>326,5 m2</p>'),
(245, 353, 7, 5, 9, 7, 'JDL-19-245', 'Rumah Dinas Mubaligh Wanasigra', '', '<p>54 m2</p>'),
(246, 353, 7, 5, 9, 12, 'JDL-19-246', 'Gedung Madrasah', '', '<p>192 m2</p>'),
(247, 353, 7, 5, 9, 8, 'JDL-19-247', 'Masjid Sukasari Kelompok Pasir Mukti', '', '<p>54 m2</p>'),
(248, 353, 7, 5, 9, 8, 'JDL-19-248', 'Masjid Kelompok Cikuray', '', '<p>30 m2</p>'),
(249, 353, 7, 5, 9, 8, 'JDL-19-249', 'Masjid Kelompok Pangkalan', '', '<p>54 m2</p>'),
(250, 353, 7, 5, 9, 8, 'JDL-19-250', 'Masjid Kelompok Leles', '', '<p>15 m2</p>'),
(251, 353, 7, 5, 9, 8, 'JDL-19-251', 'Masjid Kelompok Babakan Limus', '', '<p>20 m2</p>'),
(252, 353, 7, 5, 9, 8, 'JDL-19-252', 'Masjid Kelompok Wanasigra 2', '', '<p>20 m2</p>'),
(253, 20, 7, 5, 17, 8, 'JDL-63-253', 'Masjid Banjar', '', '<p>198 m2</p>'),
(254, 20, 7, 5, 17, 14, 'JDL-63-254', 'Gedung Serbaguna', '', '<p>35 m2</p>'),
(255, 20, 7, 5, 17, 7, 'JDL-63-255', 'Rumah Dinas Mubaligh Banjar', '', '<p>35 m2</p>'),
(256, 20, 7, 5, 17, 7, 'JDL-63-256', 'Rumah Dinas Mubaligh Banjar', '', '<p>48 m2</p>'),
(257, 24, 7, 5, 17, 8, 'JDL-61-257', 'Masjid Banjarsari', '', '<p>30 m2</p>'),
(258, 59, 7, 5, 17, 8, 'JDL-40-258', 'Masjid Ciamis', '', '<p>196 m2</p>'),
(259, 59, 7, 5, 17, 7, 'JDL-40-259', 'Rumah Dinas Mubaligh Ciamis', '', '<p>72 m2</p>'),
(260, 82, 7, 5, 0, 8, 'JDL-195-260', 'Masjid Al Istiqomah Cimaragas', '', '<p>50 m2</p>'),
(261, 134, 7, 5, 17, 8, 'JDL-157-261', 'Masjid Kalipucang', '', '<p>54 m2</p>'),
(262, 134, 7, 5, 0, 8, 'JDL-157-262', 'Masjid Kalipucang Kelompok Patimuan', '', '<p>15 m2</p>'),
(263, 193, 7, 5, 17, 8, 'JDL-147-263', 'Masjid Maparah', '', '<p>20 m2</p>'),
(264, 222, 7, 5, 17, 8, 'JDL-121-264', 'Masjid Panawangan', '', '<p>24 m2</p>'),
(265, 226, 7, 5, 17, 8, 'JDL-134-265', 'Masjid Pangandara', '', '<p>48 m2</p>'),
(266, 237, 7, 5, 17, 8, 'JDL-62-266', 'Masjid Parigi', '', '<p>60 m2</p>'),
(267, 237, 7, 5, 17, 8, 'JDL-62-267', 'Masjid Parigi Kelompok Pajaten', '', '<p>54 m2</p>'),
(268, 110, 7, 5, 33, 13, 'JDL-9-268', 'Gedung Kantor', '', '<p>145 m2</p>'),
(269, 110, 7, 5, 33, 12, 'JDL-9-269', 'Gedung Madrasah', '', '<p>210 m2</p>'),
(270, 110, 7, 5, 33, 8, 'JDL-9-270', 'Masjid Gondrong', '', '<p>600 m2</p>'),
(271, 110, 7, 5, 33, 7, 'JDL-9-271', 'Rumah Dinas Mubaligh Gondrong', '', '<p>36 m2</p>'),
(272, 110, 7, 5, 33, 8, 'JDL-9-272', 'Masjid Nusrat Gondrong', '', '<p>100 m2</p>'),
(273, 110, 7, 5, 33, 6, 'JDL-9-273', 'Komplek Pemakaman', '', '<p>460 m2</p>'),
(274, 110, 7, 5, 33, 6, 'JDL-9-274', 'Komplek Pemakaman', '', '<p>190 m2</p>'),
(275, 110, 7, 5, 33, 6, 'JDL-9-275', 'Komplek Pemakaman', '', '<p>350 m2</p>'),
(276, 406, 7, 5, 33, 8, 'JDL-384-276', 'Masjid Pagedangan', '', '<p>36 m2</p>'),
(277, 230, 7, 5, 33, 8, 'JDL-274-277', 'Masjid Ar Rahmat Panunggangan Pusat', '', '<p>196 m2</p>'),
(278, 231, 7, 5, 33, 8, 'JDL-138-278', 'Masjid Panunggangan Timur', '', '<p>289 m2</p>'),
(279, 231, 7, 5, 33, 7, 'JDL-138-279', 'Rumah Dinas Mubaligh Panunggangan Timur', '', '<p>48 m2</p>'),
(280, 239, 7, 5, 33, 8, 'JDL-122-280', 'Masjid Pasir Semut', '', '<p>36 m2</p>'),
(281, 245, 7, 5, 33, 8, 'JDL-37-281', 'Masjid Ar Rahmat Peninggilan', '', '<p>400 m2</p>'),
(282, 245, 7, 5, 33, 7, 'JDL-37-282', 'Rumah Dinas Mubaligh Peninggilan', '', '<p>159 m2</p>'),
(283, 245, 7, 5, 33, 12, 'JDL-37-283', 'Gedung Madrasah', '', '<p>160 m2</p>'),
(284, 245, 7, 5, 33, 8, 'JDL-37-284', 'Masjid Baitu Sana Peninggilan', '', '<p>75 m2</p>'),
(285, 248, 7, 5, 33, 8, 'JDL-86-285', 'Masjid Tarik Muhammad', '', '<p>96 m2</p>'),
(286, 248, 7, 5, 33, 7, 'JDL-86-286', 'Rumah Dinas Mubaligh Perigi', '', '<p>36 m2</p>'),
(287, 248, 7, 5, 33, 10, 'JDL-86-287', 'Gedung Serbaguna', '', '<p>20 m2</p>'),
(288, 325, 7, 5, 33, 8, 'JDL-73-288', 'Masjid An Nur Tangerang', '', '<p>100 m2</p>'),
(289, 356, 7, 5, 33, 8, 'JDL-297-289', 'Masjid An Nur Warungmangga', '', '<p>69 m2</p>'),
(290, 98, 7, 5, 34, 8, 'JDL-150-290', 'Masjid Al Hidayah Depok', '', '<p>152,19 m2</p>'),
(291, 98, 7, 5, 34, 7, 'JDL-150-291', 'Rumah Dinas Mubaligh Depok', '', '<p>76,65 m2</p>'),
(292, 120, 7, 5, 34, 8, 'JDL-1-292', 'Masjid Al Hidayah Jakarta Pusat', '', '<p>300 m2</p>'),
(293, 120, 7, 5, 34, 7, 'JDL-1-293', 'Rumah Dinas Mubaligh Jakarta Pusat', '', '<p>110 m2</p>'),
(294, 257, 7, 5, 34, 8, 'JDL-306-294', 'Masjid Pulau Tidung', '', '30 m2'),
(295, 143, 7, 5, 34, 8, 'JDL-10-295', 'Masjid Al Hidayah Kebayoran', '', '<p>100 m2</p>'),
(296, 169, 7, 5, 34, 8, 'JDL-45-296', 'Masjid Lenteng Agung', '', '<p>225 m2</p>'),
(297, 169, 7, 5, 34, 7, 'JDL-45-297', 'Rumah Dinas Mubaligh Lenteng Agung', '', '<p>70 m2</p>'),
(298, 122, 7, 5, 34, 8, 'JDL-201-298', 'Masjid Nuruddin Jakarta Utara', '', '<p>304 m2</p>'),
(299, 121, 7, 5, 34, 8, 'JDL-199-299', 'Masjid An Nur Bukit Duri Jakarta Timur', '', '<p>315 m2</p>'),
(300, 121, 7, 5, 34, 8, 'JDL-199-300', 'Masjid At Taqwa Duren Sawit Jakarta Timur', '', '<p>190 m2</p>'),
(301, 200, 7, 5, 32, 8, 'JDL-137-301', 'Masjid Merak', '', '<p>34 m2</p>'),
(302, 200, 7, 5, 32, 8, 'JDL-137-302', 'Masjid Merak', '', '<p>42 m2</p>'),
(303, 78, 7, 5, 32, 8, 'JDL-44-303', 'Masjid Cilegon', '', '<p>100 m2</p>'),
(304, 78, 7, 5, 32, 7, 'JDL-44-304', 'Rumah Dinas Mubaligh Cilegon', '', '<p>40 m2</p>'),
(305, 78, 7, 5, 32, 13, 'JDL-44-305', 'Gedung Kantor', '', '<p>35 m2</p>'),
(306, 91, 7, 5, 32, 8, 'JDL-229-306', 'Masjid Cisereh', '', '<p>107 m2</p>'),
(307, 91, 7, 5, 32, 7, 'JDL-229-307', 'Rumah Dinas Mubaligh Cisereh', '', '<p>35 m2</p>'),
(308, 267, 7, 5, 32, 8, 'JDL-20-308', 'Masjid Rangkasbitung', '', '<p>81 m2</p>'),
(309, 267, 7, 5, 32, 13, 'JDL-20-309', 'Gedung Kantor', '', '<p>36 m2</p>'),
(310, 267, 7, 5, 32, 8, 'JDL-20-310', 'Masjid Rangkasbitung', '', '<p>143 m2</p>'),
(311, 267, 7, 5, 32, 7, 'JDL-20-311', 'Rumah Dinas Mubaligh Rangkasbitung', '', '<p>35 m2</p>'),
(312, 267, 7, 5, 32, 8, 'JDL-20-312', 'Masjid Banten Lama Pandek Rangkasbitung', '', '<p>32 m2</p>'),
(313, 267, 7, 5, 32, 8, 'JDL-20-313', 'Masjid Sukatani Malingping', '', '<p>40 m2</p>'),
(314, 283, 7, 5, 32, 8, 'JDL-282-314', 'Masjid Serang', '', '<p>108 m2</p>'),
(315, 283, 7, 5, 32, 7, 'JDL-282-315', 'Rumah Dinas Mubaligh Serang', '', '<p>36 m2</p>'),
(316, 283, 7, 5, 32, 13, 'JDL-282-316', 'Gedung Kantor', '', '<p>36 m2</p>'),
(317, 283, 7, 5, 32, 8, 'JDL-282-317', 'Masjid Waringin Kurung Serang', '', '<p>35 m2</p>'),
(318, 119, 7, 5, 34, 8, 'JDL-200-318', 'Masjid Jakarta Barat', '', '<p>200 m2</p>'),
(319, 119, 7, 5, 34, 13, 'JDL-200-319', 'Gedung Kantor', '', '<p>150 m2</p>'),
(320, 148, 7, 5, 65, 8, 'JDL-139-320', 'Masjid An Nashr Markaz', '', '<p>1844 m2</p>'),
(321, 148, 7, 5, 65, 15, 'JDL-139-321', 'Gedung Asrama Jamiah', '', '<p>603 m2</p>'),
(322, 148, 7, 5, 65, 12, 'JDL-139-322', 'Gedung Sekolah Jamiah', '', '<p>225 m2</p>'),
(323, 148, 7, 5, 65, 14, 'JDL-139-323', 'Bangunan Pengolahan Air Bersih', '', '<p>72 m2</p>'),
(324, 148, 7, 5, 65, 9, 'JDL-139-324', 'Gedung Perpustakaan', '', '<p>96 m2</p>'),
(325, 148, 7, 5, 65, 14, 'JDL-139-325', 'Gedung Rumah Sakit', '', '<p>225 m2</p>'),
(326, 148, 7, 5, 65, 7, 'JDL-139-326', 'Rumah Dinas Mubaligh Kemang', '', '<p>324 m2</p>'),
(327, 148, 7, 5, 65, 15, 'JDL-139-327', 'Gedung Guest House', '', '<p>324 m2</p>'),
(328, 148, 7, 5, 65, 6, 'JDL-139-328', 'Tanah Lapangan Sepak Bola', '', '<p>288 m2</p>'),
(329, 148, 7, 5, 65, 7, 'JDL-139-329', 'Rumah Dinas Mubaligh Kemang', '', '<p>280 m2</p>'),
(330, 148, 7, 5, 65, 14, 'JDL-139-330', 'Gedung Pertemuan', '', '<p>250 m2</p>'),
(331, 148, 7, 5, 65, 14, 'JDL-139-331', 'Bangunan Terbuka', '', '<p>250 m2</p>'),
(332, 148, 7, 5, 65, 15, 'JDL-139-332', 'Gedung Asrama', '', '<p>70 m2</p>'),
(333, 148, 7, 5, 65, 15, 'JDL-139-333', 'Gedung Asrama', '', '<p>70 m2</p>'),
(334, 148, 7, 5, 65, 15, 'JDL-139-334', 'Gedung Asrama', '', '<p>105 m2</p>'),
(335, 148, 7, 5, 65, 7, 'JDL-139-335', 'Rumah Dinas Mubaligh Kemang', '', '<p>140 m2</p>'),
(336, 148, 7, 5, 65, 11, 'JDL-139-336', 'Komplek Pemakaman Musi Musiah Kemang', '', '<p>1500 m2</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `licenses_assets`
--

CREATE TABLE `licenses_assets` (
  `id` int(11) NOT NULL,
  `licenseid` int(11) NOT NULL,
  `assetid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `licenses_assets`
--

INSERT INTO `licenses_assets` (`id`, `licenseid`, `assetid`) VALUES
(1, 3, 1),
(2, 2, 1),
(3, 1, 2),
(4, 5, 6),
(5, 7, 5),
(6, 8, 5),
(7, 9, 5),
(8, 14, 15),
(9, 15, 15),
(10, 13, 6),
(11, 16, 13),
(12, 17, 13),
(13, 6, 10),
(14, 18, 17),
(15, 19, 17),
(16, 20, 17),
(17, 21, 18),
(18, 22, 18),
(19, 23, 27),
(20, 24, 27),
(21, 25, 28),
(22, 26, 28),
(23, 27, 29),
(24, 29, 30),
(25, 30, 30),
(26, 31, 30),
(27, 32, 32),
(28, 33, 32),
(29, 34, 38),
(30, 35, 38),
(31, 36, 42),
(32, 37, 43),
(33, 38, 44),
(34, 39, 46),
(35, 40, 48),
(36, 41, 49),
(37, 42, 49),
(38, 43, 49),
(39, 46, 55),
(40, 45, 56),
(41, 47, 57),
(42, 48, 57),
(43, 49, 58),
(44, 51, 62),
(45, 52, 62),
(46, 53, 66),
(47, 54, 66),
(48, 55, 70),
(49, 56, 73),
(50, 57, 73),
(51, 60, 77),
(52, 61, 79),
(53, 62, 80),
(54, 63, 83),
(55, 64, 84),
(56, 65, 84),
(57, 66, 89),
(58, 70, 105),
(59, 69, 105),
(60, 71, 108),
(61, 72, 108),
(62, 73, 109),
(63, 74, 109),
(64, 75, 109),
(65, 76, 112),
(66, 77, 112),
(67, 78, 112),
(68, 80, 136),
(69, 81, 115),
(70, 82, 115),
(71, 83, 116),
(72, 84, 117),
(73, 85, 117),
(74, 86, 118),
(75, 87, 118),
(76, 88, 119),
(77, 89, 120),
(78, 90, 123),
(79, 91, 123),
(80, 92, 123),
(81, 93, 128),
(82, 94, 128),
(83, 95, 128),
(84, 96, 130),
(85, 97, 130),
(86, 98, 132),
(87, 99, 132),
(88, 100, 133),
(89, 101, 140),
(90, 102, 141),
(91, 103, 142),
(92, 104, 143),
(93, 105, 144),
(94, 108, 149),
(95, 109, 149),
(96, 110, 150),
(97, 111, 150),
(98, 112, 151),
(99, 113, 160),
(100, 114, 160),
(101, 115, 155),
(102, 116, 162),
(103, 117, 164),
(104, 118, 171),
(105, 119, 172),
(106, 120, 172),
(107, 121, 173),
(108, 122, 174),
(109, 123, 174),
(110, 124, 183),
(111, 126, 184),
(112, 127, 184),
(113, 128, 184),
(114, 129, 189),
(115, 130, 189),
(116, 131, 189),
(117, 134, 207),
(118, 135, 208),
(119, 136, 209),
(120, 137, 209),
(121, 138, 210),
(122, 139, 211),
(123, 141, 211),
(124, 140, 212),
(125, 142, 216),
(126, 143, 216),
(127, 144, 216),
(128, 145, 214),
(129, 146, 215),
(130, 147, 215),
(131, 148, 217),
(132, 149, 217),
(133, 150, 220),
(136, 151, 223),
(135, 152, 221),
(137, 153, 226),
(138, 154, 229),
(139, 155, 230),
(140, 156, 234),
(141, 157, 237),
(142, 158, 240),
(143, 159, 240),
(144, 161, 239),
(145, 160, 241),
(146, 162, 242),
(147, 163, 242),
(148, 164, 243),
(149, 165, 244),
(150, 166, 246),
(151, 167, 249),
(152, 168, 250),
(153, 169, 256),
(154, 170, 264),
(155, 171, 266),
(156, 172, 268),
(157, 173, 272),
(158, 174, 273),
(159, 175, 278),
(160, 176, 279),
(161, 177, 282),
(162, 178, 284),
(163, 179, 285),
(164, 180, 285),
(165, 182, 288),
(166, 181, 289),
(167, 183, 290),
(168, 184, 291),
(169, 185, 292),
(170, 186, 293),
(171, 187, 294),
(172, 188, 309),
(173, 189, 300),
(174, 190, 304),
(175, 191, 305),
(176, 192, 306),
(177, 193, 308),
(178, 194, 309),
(179, 195, 309),
(180, 196, 309),
(181, 202, 312),
(182, 198, 313),
(183, 197, 314),
(184, 199, 314),
(185, 200, 314),
(186, 205, 315),
(187, 206, 316),
(188, 203, 317),
(189, 204, 318),
(190, 201, 320),
(191, 207, 324),
(192, 208, 324),
(193, 209, 326),
(194, 210, 334),
(195, 211, 335),
(196, 212, 336),
(197, 213, 344),
(198, 214, 345),
(199, 215, 345),
(200, 10, 7),
(201, 216, 347),
(202, 217, 349),
(203, 218, 349),
(204, 219, 350),
(205, 220, 352),
(208, 222, 357),
(207, 221, 356),
(209, 223, 360),
(210, 224, 361),
(211, 225, 362),
(212, 226, 362),
(213, 227, 369),
(214, 228, 369),
(215, 229, 370),
(216, 230, 372),
(217, 231, 374),
(218, 232, 373),
(219, 233, 373),
(220, 234, 379),
(221, 235, 378),
(222, 236, 385),
(223, 237, 387),
(224, 238, 387),
(225, 239, 387),
(226, 240, 391),
(227, 241, 392),
(228, 242, 393),
(229, 243, 394),
(230, 244, 395),
(231, 245, 395),
(232, 246, 396),
(233, 247, 397),
(234, 248, 399),
(235, 249, 400),
(236, 250, 401),
(237, 251, 402),
(238, 252, 403),
(239, 253, 407),
(240, 254, 407),
(241, 255, 407),
(242, 256, 408),
(243, 257, 410),
(244, 258, 411),
(245, 259, 411),
(246, 260, 415),
(247, 261, 416),
(248, 262, 417),
(249, 263, 418),
(250, 264, 419),
(251, 265, 422),
(252, 266, 427),
(253, 267, 425),
(254, 268, 450),
(255, 269, 450),
(256, 270, 450),
(257, 271, 450),
(258, 272, 456),
(259, 273, 452),
(260, 274, 454),
(261, 275, 453),
(262, 276, 459),
(263, 277, 460),
(264, 278, 463),
(266, 279, 464),
(267, 280, 465),
(268, 281, 466),
(269, 282, 466),
(270, 283, 466),
(271, 284, 468),
(272, 285, 469),
(273, 286, 469),
(274, 287, 469),
(275, 288, 473),
(276, 289, 478),
(277, 290, 482),
(278, 291, 482),
(279, 292, 483),
(280, 293, 483),
(281, 294, 501),
(282, 295, 502),
(283, 296, 498),
(284, 297, 498),
(285, 298, 504),
(286, 299, 505),
(287, 300, 506),
(288, 301, 507),
(289, 302, 508),
(290, 303, 435),
(291, 304, 435),
(292, 305, 435),
(293, 306, 429),
(294, 307, 429),
(295, 308, 439),
(296, 309, 439),
(297, 310, 443),
(298, 311, 443),
(299, 312, 446),
(300, 313, 448),
(301, 314, 449),
(302, 315, 449),
(303, 316, 449),
(304, 317, 509),
(305, 318, 489),
(306, 319, 488),
(307, 320, 511),
(308, 321, 511),
(309, 322, 511),
(310, 323, 511),
(311, 324, 511),
(312, 325, 511),
(313, 326, 511),
(314, 327, 511),
(315, 327, 511),
(316, 328, 511),
(317, 329, 512),
(318, 330, 513),
(319, 331, 513),
(320, 332, 514),
(321, 333, 515),
(322, 334, 516),
(323, 335, 541),
(324, 336, 535);

-- --------------------------------------------------------

--
-- Struktur dari tabel `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `locations`
--

INSERT INTO `locations` (`id`, `clientid`, `name`) VALUES
(1, 148, 'Kampung Babakan RT 11 RW 03, Desa Pondok Udik, Kecamatan Kemang, Kabupaten Bogor'),
(2, 97, 'BR. BIAUNGKESIMAN, KERTALANGU DENPASAR TIMUR'),
(3, 293, 'Baktiseraga Village Buleleng Subdistrict Buleleng Regency'),
(4, 97, 'Melaya Village Melaya Subdistrict Jembrana Regency BJ Pangkung Dedari'),
(5, 337, 'MESJID AINUL YAKIN DUSUN ALASSARI, DESA PACUNG, KEC TEJAKULE BULELENG, BALI 81173'),
(6, 232, 'DESA  PENYEBANGAN KEC GROKGAK, BULELENG PO BOX 1015, SINGARAJA 81155 , BALI'),
(7, 38, 'BULUH TUMBANG, BELITUNG'),
(8, 18, 'BATU SIANG, BATU AMPAR, KEC.MERAWANG BANGKA'),
(9, 18, 'DESA RIDING PANJANG, KECAMATA MERAWANG, KABUPATEN BANGKA, PROPINSi BANGKA BELITUNG'),
(10, 18, 'LINGKUNGAN SRIMENANTI, KELURAHAN SRIMENANTI, KECAMATAN SUNGAILIAT, KABUPATEN BANGKA, PROPINSI BANGKA BELITUNG'),
(11, 337, 'MESJID AINUL YAKIN DUSUN ALASSARI, DESA PACUNG, KEC TEJAKULE BULELENG, BALI 81173'),
(12, 283, 'Serang'),
(13, 200, 'JL. PULORIDA 42  KAMPUNG SUKASARI  BATU  BOLONG'),
(14, 200, 'DS. TAMANSARI KEC. PULO MERAK, SERANG'),
(15, 78, 'JLN SASTRADIKARTA 149 BELAKANG  SMEA 17 JLN GODANG JAYA, 42411 0254-395492 / PAK ANO / DESA MASIGIT'),
(16, 78, 'JL. SASTRADIKARTA NO. 149, CILEGON'),
(17, 283, 'D/A PAK MU\'MIN KP CIJERUK DS COKOP,  KEC WARINGIN KURUNG, SERANG'),
(18, 41, 'Desa Pematang Gebernur, Kecamatan Muara Bangkahulu, Kotamadya Bengkulu, Propinsi Bengkulu'),
(19, 41, 'Desa Pasar Pedati, Kecamatan Pondok Kelapa, Kabupaten Bengkulu Utara, Propinsi Bengkulu'),
(20, 96, 'Desa Karang Anyar, Kecamatan Curup, Kabupaten Rejang lebong, Propinsi Bengkulu'),
(21, 96, 'Desa Air Bening, Kecamatan Curup, Kabupaten Rejang Lebong, Propinsi Bengkulu'),
(22, 41, 'Desa Air Bening, Kecamatan L/S Perwakilan Rimbopengadang'),
(23, 113, 'Desa Hampar Rt 1 Pasar Minggu, Kecamatan Kayu Aro, Kabupaten Kerinci,Propinsi Jambi'),
(24, 113, 'Desa Sungai Lintang, RT 2, Kecamatan Kayu Aro, Kabupaten Kerinci'),
(25, 124, 'Kelurahan Kenali Asam Bawah, Kecamatan Kota Baru, Kota Jambi, Propinsi Jambi'),
(26, 202, 'Ahmad Sunarya No. 360 RT 08 Dusun I UPT Mersam I, Kecamatan Mersam, Kabupaten Batanghari, Jambi'),
(27, 295, 'D/A TRANS UNIT VII-A NO.74, DS BATU PULIH, KEC. PELAWAN, SINGKUT, POS SINGKUT 37382, JAMBI'),
(28, 295, 'Dusun Sidomukto, Desa Batu Putih, Kecamatan Pelawan, Kabupaten Sarolangun'),
(29, 36, 'Jalan kampung kemang rt 1 rw 4, desa Jatibening, Kecamatan PondokGede, Bekasi'),
(30, 36, 'Desa Cibening, Kecamatan Setu, Kota Bekasi'),
(31, 36, 'Desa Jatibening, Kecamatan Pondok Gede, Bekasi'),
(32, 36, 'Desa Jatibening, Kecamatan Pondok Gede, Bekasi'),
(33, 36, 'Kelurahan Jatibening Baru, Kecamatan Pondok Gede, Kota Bekasi'),
(34, 36, 'Desa Jatibening, Kecamatan PondokGede, Kota Bekasi'),
(35, 36, 'Jalan kampung kemang rt 1 rw 4, Kelurahan Jatibening Baru, Kecamatan Pondok Gede, Bekasi'),
(36, 36, 'Desa Sukamakmur, Kecamatan Sukatani, Kota Bekasi'),
(37, 36, 'Rt 2, Rw 15, Kampung dua, Kelurahan Jakasampurna, Kecamatan Bekasi Barat, Bekasi'),
(38, 44, 'Desa Bojongsari, Kecamatan Kedungwaringin, Bekasi'),
(39, 44, 'Kampung Karamat, Rt 20 Rw 06 Desa Kedungwaringin, Kabupaten Dt II Bekasi'),
(40, 52, 'Jl Kedung Desa Sukadana, Kecamatan Tambelang, Kabupaten Bekasi'),
(41, 74, 'Desa Purwasari, Kecamatan Cikampek, Kabupaten Karawang'),
(42, 139, 'Desa Jayanegara, Kecamatan Tempuran, Kabupaten Karawang'),
(43, 139, 'Kelurahan Karawang Kulon, Kecamatan Karawang, Kabupaten Karawang'),
(44, 139, 'Kelurahan Adiarsa, Kecamatan Karawang, Kabupaten Karawang '),
(45, 167, 'Desa Tanjungsari, Kecamatan Lemah Abang, Kabupaten Bekasi'),
(46, 167, 'Kampung bentokan RT 06/03, Desa Suka Makmur, Kecamatan Sukatani, Kabupaten Bekasi'),
(58, 322, 'Tanah Dr. Ir. Munawar'),
(59, 43, 'Desa Panaragan, Kecamatan Bogor Barat'),
(48, 322, 'Kampung Siluman, Desa Mangunjaya, Kecamatan Tambun, Kabupaten Bekasi'),
(60, 43, 'JLN PERINTIS KEMERDEKAAN NO 34, BOGOR 16112'),
(50, 331, 'Blok Cikatubang, Desa Sukagalih, Kecamatan Sukaratu, Kebupaten Tasikmalaya, Provinsi Jawa Barat'),
(51, 331, 'Blok Petir, Desa Sukagalih, Kecamatan Sukaratu, Kebupaten Tasikmalaya, Provinsi Jawa Barat'),
(52, 52, 'Jl. Warung Kebon Sawah, Purwasari, Cikampek, Karawang'),
(53, 74, 'Jl. Warung Kebon Sawah, Purwasari, Cikampek, Karawang'),
(54, 74, 'Desa Jayanegara, Kecamatan Tempuran, Kabupaten Karawang'),
(55, 139, 'Kelompok Babakan Kerees, Kelurahan Nagari'),
(56, 167, 'Ranting Pulo Kecil, Lemah Abang'),
(57, 0, 'Kampung bentokan RT 06/03, Desa Suka Makmur, Kecamatan Sukatani, Kabupaten Bekasi'),
(61, 43, 'Kampung Kebonjae, Kelurahan Kebon Kalapa, Kota Bogor Tengah'),
(62, 43, 'Desa Sawangan, Kabupaten Bogor'),
(63, 43, 'Desa Pondok Udik, Kecamatan Parung Bogor'),
(64, 62, 'Desa Ciaruten Udik, Kecamatan Cibungbulang, Kabupaten Bogor '),
(65, 66, 'Cibeureum'),
(66, 67, 'Kelurahan Sukahati, Kecamatan Cibinong, Kabupaten Bogor'),
(67, 67, 'Kelurahan Nanggawer, Kecamatan Cibinong, Kabupaten Bogor'),
(68, 68, 'Kampung Cibitung Gardu, Desa Cibitung Wetan, Kecamatan Pamzahan, Kabupaten Bogor'),
(69, 72, 'Ciherang Kabupaten DT II Bogor'),
(70, 72, 'Ciherang Gede RT 002/001. Desa Ciherang, Kecamatan Dramaga, Kabupaten Bogor '),
(71, 72, 'Blok Ciherang, Peril I'),
(72, 83, 'Desa Cimayang, Kecamatan Cibungbulang, Kabupaten Bogor'),
(73, 89, 'Kelurahan Ciampea Udik, Kecamatan Ciampea, Kota Bogor'),
(74, 89, 'Kampung Cisalada, Desa Ciampea Udik, Kecamatan Ciampea,Kabupaten Bogor'),
(75, 95, 'Citeureup'),
(76, 140, 'Desa karyasari, kecamatan leuwiliang, kabupaten bogor'),
(77, 171, 'Desa Leuwisadeng, Kecamatan Leuwiliang, Bogor '),
(78, 290, 'Desa Sindangbarang, Kecamatan Ciomas, Kabupaten Bogor, Provinsi Jawa Barat'),
(79, 290, 'Kampung Sirnagalih, Desa Sindangbarang Udik, Kecamatan Ciomas, Kewedanaan dan Kabupaten Bogor'),
(80, 63, 'Desa Cibadak, Kecamatan Cibadak, Kabupaten Sukabumi, Provinsi Jawa Barat'),
(81, 88, 'Cisaat'),
(82, 93, 'Desa Bojong Jengkol, Kecamatan Jampang Tengah, Kabupaten Sukabumi, Provinsi Jawa Barat'),
(83, 93, 'Blok Simpang Samid, Desa Bojong Jengkol, Kecamatan Jampang Tengah, Kabupaten Dt 11 Sukabumi'),
(84, 137, 'Desa Cihelangtonggoh, Kecamatan Cibadak,Kabupaten Sukabumi Jawabarat'),
(85, 137, 'Kampung Cihelang hilip, Kecamatan Cibadak, Kabupaten Sukabumi, Jawabarat'),
(86, 166, 'Kampung Cilutung, Desa Lebaksari, Kecamatan Parakansalak, Kabupaten Sukabumi'),
(87, 166, 'Kampung Kebonmuncang, Desa ParakanSalak, Kabupaten Sukabumi.'),
(88, 166, 'Kampung Lebaksari, Desa Parakansalak, Kecamatan ParakanSalak, Kabupaten Sukabumi'),
(89, 166, 'Kampung Kebonkelapa, Desa Parakansalak, Kecamatan ParakanSalak, Kabupaten Sukabumi'),
(90, 229, 'Kelurahan Warnasari, Kecamatan Sukabumi, Kabupaten Sukabumi, Jawabarat'),
(91, 235, 'Desa Parakansalak, Kecamatan Parakansalak, Kabupaten Sukabumi'),
(92, 304, 'Dea Selabatu, Kecamatan Sukabumi Timur, Kabupaten Sukabumi'),
(93, 304, 'Jalan Swidar No.6 Rt 6/1 Kelurahan Selabatu, Sukabumi'),
(94, 304, 'Jalan Cipelang Leutik rt 6/I, Kelurahan Selabatu, Kecamatan Kota Sukabumi timur Kodya Sukabumi'),
(95, 355, 'Desa Warungkiara, Kecamatan Warungkiara, Sukabumi'),
(96, 114, 'Desa Girisekar, Kecamatan Panggang,Kabupaten Gunung Kidul'),
(97, 114, 'Padukuhan Tejo, Pucanganom Rongkop GunungKidul'),
(98, 250, 'Desa Pucenganom, Kecamatan Rongkop, Kabupaten Gunungkidul'),
(99, 360, 'Kelurahan Kota Baru, Kecamatan Gondokusuman, Kota Yogyakarta'),
(100, 98, 'Jl. Muchtar Sawangan No. 138 RT 015 RW 04, Desa Sawangan Baru, Kecamatan Sawangan, Kota Depok'),
(101, 63, 'Desa Cibadak, Kecamatan Cibadak, Kabupaten Sukabumi, Provinsi Jawa Barat'),
(102, 93, 'Desa Bojong Jengkol, Kecamatan Jampang Tengah, Kabupaten Sukabumi, Provinsi Jawa Barat'),
(103, 137, 'Desa Cihelangtonggoh, Kecamatan Cibadak,Kabupaten Sukabumi Jawabarat'),
(104, 166, 'Kampung Cilutung, Desa Lebaksari, Kecamatan Parakansalak, Kabupaten Sukabumi'),
(105, 229, 'Kelurahan Warnasari, Kecamatan Sukabumi, Kabupaten Sukabumi, Jawabarat'),
(106, 304, 'Dea Selabatu, Kecamatan Sukabumi Timur, Kabupaten Sukabumi'),
(107, 304, 'Jalan Swidar No.6 Rt 6/1 Kelurahan Selabatu, Sukabumi'),
(108, 352, 'Dea Selabatu, Kecamatan Sukabumi Timur, Kabupaten Sukabumi'),
(109, 352, 'D/A AHMAD SANTONI KMP CIMULEK,DS WALURAN, KEC CIRACAP'),
(110, 5, 'Kampung Jalegor, Desa Sukamulya, Kecamatan Agrabinta, Kabupaten Cianjur'),
(111, 25, 'Desa Campakamulya, Kecamatan Campaka, Kabupaten Cianjur, Provinsi Jawa Barat'),
(112, 45, 'Desa Neglasari, Kecamatan Bojongpicung, Kabupaten Cianjur, Provinsi Jawa Barat'),
(113, 45, 'Desa Ranjanggirang, Kecamatan Bojongpicung, Kabupaten Cianjur'),
(114, 60, 'Desa Ciandam, Kecamatan Mande, Kabupaten Cianjur, Provinsi Jawa Barat'),
(115, 61, 'Kecamatan Campakamulya, Kabupaten Cianjur, Jawabarat'),
(116, 61, 'Desa Bojongherang, Kecamatan Cianjur, Jawabarat'),
(117, 61, 'Kampung BojongPilar, Desa Bojong Herang, Kecamatan Cianjur, Jawabarat'),
(118, 61, 'desa sukamulya, Kecamatan Cikadu, Kabupaten Cianjur'),
(119, 69, 'Desa Sukadana, Kecamatan Campaka, Kabupaten Cianjur'),
(120, 73, 'Desa Neglasari, Kecamatan Cikalong Kulon, Kabupaten Cianjur'),
(121, 85, 'Kampung Ciparay, Desa Slagedang, Kecamatan Cibeber, Kabupaten Cianjur, Jawabarat'),
(122, 69, 'Desa Campaka Mulya, Kecamatan Campaka, Kabupaten Cianjur, Jawabarat'),
(123, 86, 'Desa Cipeyeum, Kecamatan Ciranjang, Kabupaten Cianjur, Jawabarat'),
(124, 170, 'Kampung Gelar Anyar, Desa Sukakarya, Kecamatan Sukanagara, Kabupaten Cianjur, Jawabarat'),
(125, 208, 'Desa Sukadana, Kecamatan Campaka, Kabupaten Cianjur, Jawabarat'),
(126, 208, 'jalan Cikondang, Desa Sukadana, Kecamatan Campaka, Kabupaten Cianjur, Jawabarat'),
(127, 208, 'blok datarkupa'),
(128, 208, 'Kampung Neglasari, Rt 02/09, Kecamatan Cempaka, Kabupaten Cianjur'),
(129, 233, 'Kecamatan Cempaka Mulya, Kabupaten Cianjur, Jawabarat'),
(130, 233, 'Jalan Panyairan, Kecamatan Cempaka, Kabupaten Cianjur, Jawabarat'),
(131, 233, 'blok cigintung, desa sadabumi'),
(132, 291, 'Desa Sukasari, Kecamatan Kadupandak, Kabupaten Cianjur'),
(133, 319, 'Kampung Karyabaru, Desa Talagasari, Kecamatan Kadupandak, Kabupaten Cianjur'),
(134, 5, 'Kampung Cisitu, Desa Purabaya, RRT 16 RW 06, Agrabinta, Cianjur'),
(137, 61, 'Desa Gunungsari, Kecamatan Sukanegara, Kabupaten Cianjur,Jawabarat'),
(136, 266, 'Kampung Ranca Umbul, Desa Wanasari, Agrabinta, Cianjur'),
(138, 363, 'Datarkupa'),
(139, 370, 'Datarkupa'),
(140, 363, 'blok datarkupa'),
(141, 80, 'Cilimus'),
(142, 391, 'Cisitu'),
(143, 9, 'Desa Cempaka Mulya, Kecamatan Cempaka,, Kabupaten Cianjur, Provinsi Jawa Barat'),
(144, 9, 'Kebun 14 Arjasari'),
(145, 9, 'Kampung Ciwaru'),
(146, 15, 'Jalan Mahmud No. 24, Bandung'),
(147, 15, 'Jalan H. Sapari No. 47, Kelurahan Cibadak, Kecamatan Astaanyar, Kota Bandung, Wilayah Tegallega, Provinsi Jawa Barat'),
(148, 15, 'Kelurahan Jamika, Kecamatan Bojongloa Kaler, Kota Bandung, Wilayah Tegallega, Provinsi Jawa Barat'),
(149, 16, 'Mesjid Mubarak, Kotamadya Bandung, Jalan Pahlawan'),
(150, 17, 'Cisaranten Kulon, Kecamaatan Arcamanik, Kotamadya Bandung, Wilayah Ujung Berung, Provinsi Jawa Barat'),
(151, 17, 'Ujung Berung'),
(152, 21, 'Jl. Raya Banjaran 413 Banjaran 40377 '),
(153, 249, 'PINGGIRSARI'),
(154, 70, 'Desa Panenjoan, Kecamatan Cicalengka, Kabupaten Bandung, Provinsi Jawa Barat'),
(155, 70, 'Tenjolaya, Cicalengka, Bandung'),
(156, 182, 'Jl. Babakan No. 182 Majaserta, Majalaya, Bandung'),
(157, 225, 'Desa Sukaluyu, Kecamatan Pangalengan, Kabupaten Bandung, Provinsi Jawa Barat'),
(158, 300, 'Jl. Raya Soreang Cipatik KM 5 Belakang Sumur Bor, Leuk-Leukan, Cipadung, Bandung'),
(159, 309, 'Jl. Raya Kartini No. 23 Kampung/Desa Sukatali RT 05/I Kecamatan Situraja, Sumedang 45371'),
(160, 65, 'Desa/Kelurahan Girijaya, Kecamatan Cibatu, Kabupaten/Kotamadya Garut, Provinsi Jawa Barat'),
(161, 80, 'Desa/Kelurahan Sukakarya, Kecamatan Samarang, Kabupaten/Kotamadya Garut'),
(162, 92, 'Desa Pamulihan, Kecamatan Cisurupan, Kabupaten Garut, Provinsi Jawa Barat'),
(163, 104, 'Kelurahan Cigedug, Kecamatan Cigedug, Kabupaten Garut, Jawa Barat'),
(164, 104, 'Kelurahan Sukamentri, Kecamatan Garut Kota, Kabupaten Garut, Jawa Barat'),
(165, 104, 'Jl. Ciledug No.137, Kelurahan Kota Kulon, Kecamatan Garut Kota, Kota Garut, Jawa Barat'),
(181, 274, 'Desa Sukakarya, Kecamatan Samarang, Garut'),
(167, 104, 'Kelurahan Regol, Kecamatan Garut Kota, Kabupaten Garut, Provinsi Jawa Barat'),
(168, 104, 'Kelurahan Ngamplang, Kecamatan Cilawu, Kabupaten Garut, Provinsi Jawa Barat'),
(177, 65, 'Kelurahan Pamulihan, Kecamatan Cisurupan, Kabupaten Garut, Provinsi Jawa Barat'),
(170, 104, 'Kelurahan Jayaraga, Kecamatan Torogong Selatan, Kabupaten Garut, Jawa Barat'),
(171, 104, 'Kelurahan Pamulihan, Kecamatan Cisurupan, Kabupaten Garut, Provinsi Jawa Barat'),
(178, 138, 'Kelurahan Sindanggalih, Kecamatan Karangpawitan, Kabupaten Garut, Jawa Barat'),
(179, 138, 'Blok: Kampung Selarema, Garut'),
(180, 212, 'Kampung Nyalindung, Desa Ngamplang, Kecamatan Cilawu, Kabupaten Garut'),
(175, 104, 'Blok Kampung Sampireun, Garut'),
(182, 274, 'Jl. Raya Kamojang, Kampung Bongkor RT 01 RW 03, Desa Sukakarya, Samarang'),
(183, 220, 'Kampung Wates, Desa Sirnabakti, Kecamatan Pameungpeuk, Kabupaten Garut'),
(184, 278, 'Blok Kampung Sampireun, Garut'),
(185, 305, 'Desa Sukamaju, Kecamatan Cilawu, Kabupaten Garut'),
(186, 310, 'Jl. Cipeucang No. 15, Kecamatan Sukawening, Garut'),
(187, 351, 'Kelurahan Cihuni, Kecamatan Pangatikan, Kabupaten Garut'),
(188, 46, 'Kampung Boojongsirna, Tenjowaringin, Salawu, Tasikmalaya'),
(189, 379, 'Sadabumi'),
(190, 71, 'Kampung Cigunungtilu, Desa Tenjowaringin, Kecamatan Salawu, Kabupaten Tasikmalaya'),
(191, 94, 'Kampung Citeguh, Desa Tenjowaringin, Kecamatan Salawu, Kabupaten Tasikamalaya'),
(192, 117, 'Jl. Singdangpalai No. 1, Kampung Sindangpalay, Desa Sukamajukidul, Kecamatan Indihiang, Kabupaten Tasikmalaya '),
(193, 142, 'Blok Cicariang, Desa Karsamenak.Kecamatan Kawalu, Kabupaten Tasikmalaya'),
(194, 196, 'Kampung Singaparna, Desa Sirnaraja, Kecamatan Cigalontang, Kabupaten Tasikmalaya'),
(195, 366, 'Desa Sukajaya, Kecamatan Tempunak, kabupaten Sintang, Propinsi Kalimantan Barat'),
(196, 292, 'Blok Badak Paeh, Desa/Kelurahan Cipakat, Kecamatan Sngaparna, Kabupaten Tasikmalaya, Propinsi  Jawa Barat'),
(197, 292, 'Jalan Raya Timur No. 1084, Desa Cipakat, Kecamatan Singaparna, Kabupaten Tasikmalaya'),
(198, 292, 'Blok Kudang, Desa Cipakat, Kecamatan Singaparna, Kabuppaten Tasikmalaya, Provinsi Jawa Barat'),
(199, 292, 'Desa Sukamanah, Kecamatan Cipedes, Kabupaten Tasikmalaya'),
(200, 292, 'Desa Cikunir, Kecamatan Singaparna, Kabupaten Tasikmalaya'),
(201, 292, 'Kelompok Ciomean, Kecamatan Singaparna, Kabupaten Tasikmalaya'),
(202, 292, 'Kelompok Cariwu, Kecamatan Singaparna, Kabupaten Tasikmalaya'),
(203, 307, 'Kelurahan Tarunajaya, Kecamatan Sukaraja,Kabupaten Tasikmalaya'),
(204, 308, 'Blok Panenjolan, Desa Tenjowaringin,Kecamatan Salawu, Kabupaten Tasikmalaya'),
(205, 308, 'Kampung Sukasari, Desa Tenjowaringin, Kecamatan Salawu, Kabupaten Tasikmalaya'),
(206, 308, 'Parakan Panjang, Sukasari'),
(207, 308, 'Cigadog, Sukasari'),
(208, 308, 'Cikabuyutan, Sukasari'),
(209, 308, 'Sindangsari, Sukasari'),
(210, 331, 'Kelurahan Nagarawangi, Kecamatan Cihideung, Kabupaten Tasikmalaya, Provinsi Jawa Barat'),
(211, 331, 'Kelurahan Nusawangi, Kecamatan Cisayong, Kabupaten Tasikmalay, Propinsi Jawa Barat'),
(212, 331, 'Desa Jenang, Kecamatan Majenang, Kabupaten/Kotamadya Cilacap. Provinsi Jawa Tengah'),
(213, 331, 'Jalan Buninagara II/53, Rt.16/R. 04, Kelurahan Nagarasari, Kecamatan Cipedes, Kota Taskimalaya'),
(214, 331, 'Kampung Sirnasari Saripin RT 02 RW 10 Sukanagara, Kecamatan Cibeureum, Kabupaten Tasikmalaya'),
(215, 353, 'Kampung Wanasigra, Kelurahan Tenjoaringin, Kecamatan Salawu, Kabupaten Tasikmalaya'),
(216, 353, 'Kelompok Pasir Mukti'),
(217, 353, 'Kelompok Cikuray'),
(218, 353, 'Kelompok Pangkalan'),
(219, 353, 'Kelompok Leles'),
(220, 353, 'Kelompok Baban Limus'),
(221, 353, 'Kelompok Wanasigra 2'),
(222, 20, 'Desa Hegarsari, Kecamatan Pataruman, Kabupaten Ciamis, Provinsi Jawa Barat'),
(223, 379, 'Desa Hegarsari, Kecamatan Pataruman, Kabupaten Ciamis, Provinsi Jawa Barat'),
(224, 379, 'Dusun Cigintung, Desa Sadabumi, Kecamatan Majenang, Kabupaten Cilacap'),
(225, 379, 'Dusun Rambutpala, Desa Sadabumi, Kecamatan Majenang, Kabupaten Cilacap'),
(226, 24, 'Jl. Raya Kalipucang No. 12, Kalipucang, Pangandaran'),
(227, 59, 'Jl. Raya Kalipucang No. 12, Kalipucang, Pangandaran'),
(228, 59, 'Jl. Ciptomangunkusumo 6/255, Ciamis'),
(229, 59, 'Bumisari, Ciamis'),
(230, 237, 'Bumisari, Ciamis'),
(231, 82, 'Dusun Totokan, Desa Bojongmalang, Kecamatan Cimaragas, Kabupaten Ciamis'),
(232, 378, 'Desa Jenang, Kecamatan Majenang, Kabupaten/Kotamadya Cilacap. Provinsi Jawa Tengah'),
(233, 134, 'Kampung Nagrak/Empangsari, Desa Kalipucang, Kecamatan Kalipucang, Kabupaten Ciamis'),
(234, 134, 'Desa Patimua, Kabupaten Cilacap'),
(235, 193, 'Desa Maparah, Kecamatan Panjalu, Kabupaten Ciamis'),
(236, 222, 'Desa Penawangan, Kecamatan Panawangan, Kabupaten Ciamis'),
(237, 226, 'Dusun Situ Desa Purbahayu, Kecamatan Pangandaran, Kabupaten Ciamis '),
(238, 237, 'Pajaten, Sidamulih, Ciamis '),
(239, 237, 'Desa Karangbenda, Kecamatan Parigi, Kabupaten Pangandaran'),
(240, 237, 'Desa Karangjaladri, Kecamatan Parigi, Kabupaten Pangandaran'),
(241, 91, 'Kampung Kadukandel, Desa Cisereh, Kecamatan Saketi, Kabupaten Padeglang'),
(242, 224, 'Desa Umbulan, Kecamatan Cikeusik, Kabupaten Pandeglang'),
(243, 224, 'Desa Tunjungan, Kecamatan Cikeusik, Kabupaten Pandeglang'),
(244, 224, 'Desa Pandeglang, Kecamatan Menes, Kabupaten Pandeglang'),
(245, 224, 'Desa Cisereh, Kecamatan Saketi, Kabupaten Pandeglang'),
(246, 78, 'Jalan Pulorida No. 42 Kampung Sukasari, Baru Bolong'),
(247, 78, 'Desa Tamansari, Kecamatan Pulo Merak, Kabupaten Serang'),
(248, 78, 'Blok Bengkok, Desa Masigit, Kecamatan Jombang, Kota Cilegon'),
(250, 91, 'Kecamatan Saketi, Kabupaten Pandeglang, Banten'),
(251, 267, 'Jl. Beringin No. 6 RT 04 RW 03 Cijoropasir, Rangkasbitung'),
(252, 267, 'Desa Pasir Geleng, Kecamatan Cisemut, Kabupaten Lebak, Banten'),
(253, 267, 'Banten Lama Pandek'),
(254, 267, 'Desa Kaduagung Timur, Kecamatan Cibadak, Kabupaten Lebak, Banten'),
(255, 267, 'Blok Gendulen RT 02 Rw 01, Desa Sukatani, Kecamatan Wanasalam, Kabupaten Pandeglang'),
(256, 110, 'Jl. Rahmat Ali, Kenanga, Kecamatan Cipondoh, Kota Tangerang '),
(257, 136, 'Desa Kramat, Kecamatan Pakuhaji, Kabupaten Tangerang'),
(258, 406, 'Kecamatan Pagedangan, Kabupaten Tangerang'),
(259, 230, 'Jl. Kp. Kosong, RW.004, Panunggangan, Kecamatan Pinang, Kota Tangerang, Banten 15143'),
(260, 231, 'Panunggangan Timur, Kecamatan Pinang, Kota Tangerang '),
(261, 239, 'Kampung Bolang I, Kecamatan Kresek, Talok, Tangerang, Banten 15620'),
(262, 245, 'Jl. H. Gedad RT.002/RW.002, Kecamatan Ciledug, Kota Tangerang , Banten'),
(263, 248, 'Jl. Kp. Pulo RT 003 RW 03, Desa Parigi, Kecamatan Pondok Aren, Tangerang'),
(264, 284, 'Kelurahan Serua Indah, Kecamatan Ciputat, Kota Tangerang Selatan, Banten'),
(265, 325, 'Jl. Perintis Kemerdekaan Gg. Teladan II/12, Kelurahan Babakan, Kecamatan Tangerang Kota, Kota Tangerang'),
(266, 325, 'Jl. Muhammad Toha Raya No. 17, Desa Periuk, Kecamatan Curug, Kabupaten Tangerang'),
(267, 325, 'Kampung Pangodokan RT 05 RW 01, Kelurahan Kota Bumi, Kecamatan Pasar Kamis, Kabupaten Tangerang'),
(268, 325, 'Pondok Kranji, Tangerang'),
(269, 356, 'Jl. Thamrin RT 02/02 Warungmangga, Tangerang'),
(270, 398, 'Perumnas Kubu Manggis, Blok A-7, Blok A-8, Desa RTU, RT 04 RW 01, Kecamatan Rambah Rokan Hulu, Riau'),
(272, 120, 'Jl. Balikpapan I/10 Jakarta Pusat'),
(273, 119, 'Jl. Tawakal Ujung Raya No. 7, Jakarta Barat'),
(274, 119, 'Kavling Veterean No. 26 Blok J. 175/KK/V/74, Jelambar baru, Jakarta Barat'),
(275, 119, 'Jl. Tj. Duren Utara VII, RT.4/RW.3, no260, Kec. Grogol petamburan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11470'),
(276, 119, 'Jl. Tj. Duren Utara VII, RT.4/RW.3, no260, Kec. Grogol petamburan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11470'),
(277, 98, 'Kampung Pancoran Mas RT 9 RT 8 Desa Pancoran Mas, Depok'),
(278, 169, 'Jl. Abdul Kahfi II RT 007 RW 01 No. 44, Jagakarsa, Jagakarsa, Jakarta Selatan'),
(279, 257, 'Pulang Tidung'),
(280, 143, 'Jl. Ciputat RAya Gg. Sekolah No. 18 RT 001 RW 01, Kebayoran Lama, Jakarta Selatan'),
(281, 122, 'Jl. Kebon Bawang 13 No. 4A Jakarta Utara'),
(282, 121, 'Jl. Bukit Duri Utara No. 13 RT 02 RW 08 Bukit Duri, Tebet, Jakarta Selatan'),
(283, 121, 'Jl. Madrasah I/J-28, Duren Sawit, Jakarta Timur'),
(284, 283, 'D/A PAK MU'),
(285, 231, 'Jl. Kp. Kosong, RW.004, Panunggangan, Kecamatan Pinang, Kota Tangerang, Banten 15143'),
(286, 148, 'Kampung Babakan RT 11 RW 03, Desa Pondok Udik, Kecamatan Kemang, Kabupaten Bogor'),
(287, 209, 'Gang Jagalan III RT 03 RW 03, Desa Tanjungharjo, Kecamatan Ngaringan, Kabupaten Grobogan'),
(288, 373, 'Desa Cadika, Kecamatan Rimbo Tengah, Kabupaten Bungo, Provinsi Jambi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `name`) VALUES
(1, 'AJB'),
(2, 'Jual Beli'),
(3, 'Akta Hibah'),
(4, 'Hibah'),
(5, 'Akta Wakaf'),
(6, 'Wakaf'),
(7, 'Laporan Inventaris Aset'),
(8, 'Tukar Guling'),
(9, 'Asal Milik Adat'),
(10, 'Sumbangan'),
(11, 'Swadaya'),
(13, 'Hissa Jaidad'),
(12, 'Tidak Ada Riwayat Perolehan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `models`
--

CREATE TABLE `models` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `models`
--

INSERT INTO `models` (`id`, `name`) VALUES
(7, 'Surat Pelepasan Hak'),
(6, 'SHM a/n Perorangan'),
(5, 'SHM a/n JAI'),
(8, 'Girik'),
(9, 'Verponding Indonesia'),
(10, 'Eigendom'),
(11, 'Sertifikat Hak Pengolahan Lahan (SHPL)'),
(12, 'Sertifikat Hak Guna Bangunan (SHGB)'),
(13, 'BAST'),
(14, 'PBB'),
(15, 'Kwitansi'),
(16, 'AJB'),
(17, 'SPPT'),
(18, 'Dokumen Pendukung Lainnya'),
(19, 'Surat Pernyataan Hibah'),
(20, 'Surat Pernyataan Wakaf'),
(21, 'Akta Hibah'),
(22, 'Surat Jual Beli');

-- --------------------------------------------------------

--
-- Struktur dari tabel `notificationtemplates`
--

CREATE TABLE `notificationtemplates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `info` text NOT NULL,
  `sms` varchar(254) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `notificationtemplates`
--

INSERT INTO `notificationtemplates` (`id`, `name`, `subject`, `message`, `info`, `sms`) VALUES
(1, 'New Ticket', 'Ticket #{ticketid} created', '<p>Hello {contact},<br><br>A new ticket has been created for your request.<br>Ticket ID:<b> #{ticketid}</b><br><br>{message}<br><br>You can reply to this email to add additional information.<br>Please do not remove the ticket number from the subject line.<br><br>Best regards,<br>{company}</p>', '', ''),
(2, 'New Ticket Reply', '#{ticketid} New Reply', '<p>Hello {contact},<br><br>A new reply has been added to your ticket.<br><br>Ticket ID: #{ticketid}<br><br>{message}<br><br>You can reply to this email to add additional information.<br>Please do not remove the ticket number from the subject line.<br><br>Best regards,<br>{company}<br></p>', '', ''),
(3, 'New User', 'New User', '<p>Hello {contact},<br><br>Your account has been successfully created.</p><p><br>Email Address: {email}<br>Password: {password}<br>{appurl}<br><br>Best regards,<br>{company}<br></p>', '', ''),
(5, 'Password Reset', 'Password Reset', '<p>Hello {contact},<br><br>Please follow the link below to reset your password.<br>{resetlink}<br><br>Best regards,<br>{company}<br></p>', '', ''),
(6, 'Monitoring Notification', '{hostinfo} is now {status}', '<p>{hostinfo} status has changed to {status}.<br><br>Best regards,<br>{company}<br></p>', '', '{hostinfo} is now {status}'),
(7, 'New Ticket (Admin)', 'New Support Ticket #{ticketid}', '<p>A new support ticket has been opened.</p>\r\n<p>Ticket ID:<b> #{ticketid}</b><br>Subject: {subject}</p>\r\n<p><br>{message}</p><br>\r\n<p>Best regards,<br>{company}</p>', '', ''),
(8, 'New Ticket Reply (Admin)', 'New Reply to Ticket #{ticketid}', '<p>A new reply has been added to ticket #{ticketid}.<br>Subject: {subject}<br></p><p><br>{message}<br></p><p><br>Best regards,<br>{company}<br></p><p><br></p><p></p>', '', ''),
(9, 'Ticket Escalation (Admin)', 'Escalation Rule Processed #{ticketid}', '<p>Escalation rule processed for ticket #{ticketid}.<br>Subject: {subject}<br></p><p><br>{message}<br></p><p><br>Best regards,<br>{company}<br></p><p><br></p><p></p>', '', ''),
(10, 'Ticket Auto Close (User)', 'Support Ticket #{ticketid} Auto Closed', '<p>This is a notification to let you know that we are changing the status of your ticket #{ticketid}  to Closed as we have not received a response from you lately.<br></p><p><br>Ticket Subject: {subject}<br></p><p><br>Best regards,<br>{company}<br></p><p><br></p><p></p>', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `originals`
--

CREATE TABLE `originals` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `originals`
--

INSERT INTO `originals` (`id`, `name`) VALUES
(1, 'Yes'),
(2, 'No');

-- --------------------------------------------------------

--
-- Struktur dari tabel `people`
--

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `roleid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `password` varchar(128) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `sidebar` varchar(64) NOT NULL,
  `layout` varchar(64) NOT NULL,
  `notes` text NOT NULL,
  `signature` text NOT NULL,
  `sessionid` varchar(255) NOT NULL,
  `resetkey` varchar(255) NOT NULL,
  `autorefresh` int(11) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `ticketsnotification` int(1) NOT NULL,
  `avatar` mediumblob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `people`
--

INSERT INTO `people` (`id`, `type`, `roleid`, `clientid`, `name`, `email`, `title`, `mobile`, `password`, `theme`, `sidebar`, `layout`, `notes`, `signature`, `sessionid`, `resetkey`, `autorefresh`, `lang`, `ticketsnotification`, `avatar`) VALUES
(2, 'admin', 1, 0, 'admin', 'admin@example.com', '', '', 'ecb97aafa3d2b5f076926ac5976fc03f376be7f3', 'skin-blue', 'opened', '', '', '', '84v02s2fm9kcl54n66u1c1dgg1', '', 30000, 'en', 1, ''),
(7, 'user', 5, 14, 'Edi Juari ', 'edijuari@gmail.com', 'Ketua Cabang', '0853-6146-3931', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'skin-blue', 'opened', '', '', '', '', '', 0, 'en', 0, ''),
(4, 'admin', 4, 0, 'Sadik', 'sadik.pb@ahmadiyya.or.id', 'Staff Property', '', '9d1deb645fd5cdaa1a6dc4b2d637c7625f120607', 'skin-blue', 'opened', '', '', '', '', '', 0, 'en', 1, ''),
(5, 'admin', 4, 0, 'Ewik', 'ewi.pb@ahmadiyya.or.id', 'Back Office', '', '28fa27bdd5d3b4d86d2312a8fc78a13dc8d5b1bd', 'skin-blue', 'opened', '', '', '', '', '', 0, 'en', 1, ''),
(6, 'admin', 4, 0, 'Taufik', 'taufik.pb@ahmadiyya.or.id', 'Asset Management', '', 'c19a617f51ca49660f9b2df105a1aee347c3eb99', 'skin-blue', 'opened', '', '', '', '', '', 0, 'en', 1, ''),
(8, 'user', 5, 14, 'Khalid Walid Ahmad Khan', 'khalid@example.com', 'Mubaligh Tapak Tuan', '0821-2292-1067', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'skin-blue', 'opened', '', '', '', '', '', 0, 'en', 0, ''),
(9, 'user', 5, 42, 'Dadan Saefuddin', 'dadan@example.com', 'Ketua', '0813-1009-5544', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'skin-blue', 'opened', '', '', '', '', '', 0, 'en', 0, ''),
(10, 'user', 5, 37, 'Muslihuddin', 'muslihuddin@example.com', 'Ketua Cabang', '0813-7036-5850', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'skin-blue', 'opened', '', '', '', '', '', 0, 'en', 0, ''),
(11, 'user', 2, 3, 'Taufik', 'taufik@example.com', 'User Jaidad', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'skin-blue', 'opened', '', '', '', '', '', 0, 'en', 0, ''),
(12, 'user', 5, 3, 'a', 'email@example.com', 'ketua', '0853-2152-8091', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'skin-blue', 'opened', '', '', '', '', '', 0, 'en', 0, ''),
(13, 'user', 5, 3, 'a', '', 'ketua', '08213', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'skin-blue', 'opened', '', '', '', '', '', 0, 'en', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `description` text NOT NULL,
  `startdate` varchar(20) NOT NULL,
  `deadline` varchar(20) NOT NULL,
  `progress` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `projects`
--

INSERT INTO `projects` (`id`, `clientid`, `tag`, `name`, `notes`, `description`, `startdate`, `deadline`, `progress`) VALUES
(2, 97, 'P-1', 'Create Verification List', '', 'Create verification list for all assets on Denpasar', '2019-07-13', '2019-07-20', -1),
(3, 3, 'P-3', 'Renovasi Masjid Jemaat A', '', '<p>Surat renovasi masjid jemaat A.&nbsp; Nilainya Rp. 1,000,000.&nbsp; Ada ukuran masjid 10 x 10 m2. Seminggu keputusan dari Sek . Jaidad</p>', '2019-07-15', '2019-07-22', -1),
(4, 347, 'P-4', 'UMK Sewa Rumah Ujung Gading', '<p>jangan sampai melewati batas waktu</p>', '<p>Proses perihal pengajuan umk sewa rumah mubaligh Ujung Gading</p>', '2019-08-28', '2019-09-06', -1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `projects_admins`
--

CREATE TABLE `projects_admins` (
  `id` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `adminid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `projects_admins`
--

INSERT INTO `projects_admins` (`id`, `projectid`, `adminid`) VALUES
(1, 1, 1),
(4, 2, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `perms` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `type`, `name`, `perms`) VALUES
(1, 'admin', 'Super Administrator', 'a:90:{i:0;s:9:\"addClient\";i:1;s:10:\"editClient\";i:2;s:12:\"deleteClient\";i:3;s:12:\"manageClient\";i:4;s:12:\"adminsClient\";i:5;s:11:\"viewClients\";i:6;s:8:\"addAsset\";i:7;s:9:\"editAsset\";i:8;s:11:\"deleteAsset\";i:9;s:11:\"manageAsset\";i:10;s:12:\"licenseAsset\";i:11;s:10:\"viewAssets\";i:12;s:10:\"addLicense\";i:13;s:11:\"editLicense\";i:14;s:13:\"deleteLicense\";i:15;s:13:\"manageLicense\";i:16;s:12:\"assetLicense\";i:17;s:12:\"viewLicenses\";i:18;s:10:\"addProject\";i:19;s:11:\"editProject\";i:20;s:13:\"deleteProject\";i:21;s:13:\"manageProject\";i:22;s:18:\"manageProjectNotes\";i:23;s:13:\"adminsProject\";i:24;s:12:\"viewProjects\";i:25;s:9:\"addTicket\";i:26;s:10:\"editTicket\";i:27;s:12:\"deleteTicket\";i:28;s:12:\"manageTicket\";i:29;s:17:\"manageTicketRules\";i:30;s:17:\"manageTicketNotes\";i:31;s:22:\"manageTicketAssignment\";i:32;s:11:\"viewTickets\";i:33;s:8:\"addIssue\";i:34;s:9:\"editIssue\";i:35;s:11:\"deleteIssue\";i:36;s:11:\"manageIssue\";i:37;s:10:\"viewIssues\";i:38;s:10:\"addComment\";i:39;s:11:\"editComment\";i:40;s:13:\"deleteComment\";i:41;s:13:\"assignComment\";i:42;s:12:\"viewComments\";i:43;s:13:\"addCredential\";i:44;s:14:\"editCredential\";i:45;s:16:\"deleteCredential\";i:46;s:14:\"viewCredential\";i:47;s:15:\"viewCredentials\";i:48;s:5:\"addKB\";i:49;s:6:\"editKB\";i:50;s:8:\"deleteKB\";i:51;s:6:\"viewKB\";i:52;s:9:\"addPReply\";i:53;s:10:\"editPReply\";i:54;s:12:\"deletePReply\";i:55;s:12:\"viewPReplies\";i:56;s:10:\"uploadFile\";i:57;s:12:\"downloadFile\";i:58;s:10:\"deleteFile\";i:59;s:9:\"viewFiles\";i:60;s:7:\"addHost\";i:61;s:8:\"editHost\";i:62;s:10:\"deleteHost\";i:63;s:10:\"manageHost\";i:64;s:14:\"viewMonitoring\";i:65;s:7:\"addUser\";i:66;s:8:\"editUser\";i:67;s:10:\"deleteUser\";i:68;s:9:\"viewUsers\";i:69;s:8:\"addStaff\";i:70;s:9:\"editStaff\";i:71;s:11:\"deleteStaff\";i:72;s:9:\"viewStaff\";i:73;s:7:\"addRole\";i:74;s:8:\"editRole\";i:75;s:10:\"deleteRole\";i:76;s:9:\"viewRoles\";i:77;s:10:\"addContact\";i:78;s:11:\"editContact\";i:79;s:13:\"deleteContact\";i:80;s:12:\"viewContacts\";i:81;s:10:\"manageData\";i:82;s:14:\"manageSettings\";i:83;s:8:\"viewLogs\";i:84;s:10:\"viewSystem\";i:85;s:10:\"viewPeople\";i:86;s:11:\"viewReports\";i:87;s:11:\"autorefresh\";i:88;s:6:\"search\";i:89;s:4:\"Null\";}'),
(2, 'user', 'Standard User', 'a:19:{i:0;s:11:\"manageAsset\";i:1;s:10:\"viewAssets\";i:2;s:13:\"manageLicense\";i:3;s:12:\"viewLicenses\";i:4;s:12:\"viewProjects\";i:5;s:9:\"addTicket\";i:6;s:10:\"editTicket\";i:7;s:12:\"manageTicket\";i:8;s:11:\"viewTickets\";i:9;s:8:\"addIssue\";i:10;s:10:\"viewIssues\";i:11;s:10:\"addComment\";i:12;s:12:\"viewComments\";i:13;s:6:\"viewKB\";i:14;s:14:\"viewMonitoring\";i:15;s:9:\"viewUsers\";i:16;s:10:\"viewPeople\";i:17;s:11:\"viewReports\";i:18;s:4:\"Null\";}'),
(3, 'admin', 'Administrator', 'a:70:{i:0;s:9:\"addClient\";i:1;s:10:\"editClient\";i:2;s:12:\"manageClient\";i:3;s:12:\"adminsClient\";i:4;s:11:\"viewClients\";i:5;s:8:\"addAsset\";i:6;s:9:\"editAsset\";i:7;s:11:\"manageAsset\";i:8;s:12:\"licenseAsset\";i:9;s:10:\"viewAssets\";i:10;s:10:\"addLicense\";i:11;s:11:\"editLicense\";i:12;s:13:\"manageLicense\";i:13;s:12:\"assetLicense\";i:14;s:12:\"viewLicenses\";i:15;s:10:\"addProject\";i:16;s:11:\"editProject\";i:17;s:13:\"manageProject\";i:18;s:18:\"manageProjectNotes\";i:19;s:13:\"adminsProject\";i:20;s:12:\"viewProjects\";i:21;s:9:\"addTicket\";i:22;s:10:\"editTicket\";i:23;s:12:\"manageTicket\";i:24;s:17:\"manageTicketRules\";i:25;s:17:\"manageTicketNotes\";i:26;s:11:\"viewTickets\";i:27;s:8:\"addIssue\";i:28;s:9:\"editIssue\";i:29;s:11:\"manageIssue\";i:30;s:10:\"viewIssues\";i:31;s:10:\"addComment\";i:32;s:11:\"editComment\";i:33;s:13:\"assignComment\";i:34;s:12:\"viewComments\";i:35;s:13:\"addCredential\";i:36;s:14:\"editCredential\";i:37;s:14:\"viewCredential\";i:38;s:15:\"viewCredentials\";i:39;s:5:\"addKB\";i:40;s:6:\"viewKB\";i:41;s:9:\"addPReply\";i:42;s:12:\"viewPReplies\";i:43;s:10:\"uploadFile\";i:44;s:12:\"downloadFile\";i:45;s:9:\"viewFiles\";i:46;s:7:\"addHost\";i:47;s:8:\"editHost\";i:48;s:10:\"manageHost\";i:49;s:14:\"viewMonitoring\";i:50;s:7:\"addUser\";i:51;s:8:\"editUser\";i:52;s:9:\"viewUsers\";i:53;s:8:\"addStaff\";i:54;s:9:\"editStaff\";i:55;s:9:\"viewStaff\";i:56;s:7:\"addRole\";i:57;s:8:\"editRole\";i:58;s:9:\"viewRoles\";i:59;s:10:\"addContact\";i:60;s:11:\"editContact\";i:61;s:12:\"viewContacts\";i:62;s:10:\"manageData\";i:63;s:8:\"viewLogs\";i:64;s:10:\"viewSystem\";i:65;s:10:\"viewPeople\";i:66;s:11:\"viewReports\";i:67;s:11:\"autorefresh\";i:68;s:6:\"search\";i:69;s:4:\"Null\";}'),
(4, 'admin', 'Technician', 'a:48:{i:0;s:9:\"addClient\";i:1;s:12:\"manageClient\";i:2;s:11:\"viewClients\";i:3;s:8:\"addAsset\";i:4;s:11:\"manageAsset\";i:5;s:10:\"viewAssets\";i:6;s:10:\"addLicense\";i:7;s:13:\"manageLicense\";i:8;s:12:\"viewLicenses\";i:9;s:10:\"addProject\";i:10;s:13:\"manageProject\";i:11;s:18:\"manageProjectNotes\";i:12;s:12:\"viewProjects\";i:13;s:9:\"addTicket\";i:14;s:12:\"manageTicket\";i:15;s:17:\"manageTicketRules\";i:16;s:17:\"manageTicketNotes\";i:17;s:11:\"viewTickets\";i:18;s:8:\"addIssue\";i:19;s:11:\"manageIssue\";i:20;s:10:\"viewIssues\";i:21;s:10:\"addComment\";i:22;s:12:\"viewComments\";i:23;s:13:\"addCredential\";i:24;s:14:\"viewCredential\";i:25;s:15:\"viewCredentials\";i:26;s:5:\"addKB\";i:27;s:6:\"viewKB\";i:28;s:9:\"addPReply\";i:29;s:12:\"viewPReplies\";i:30;s:10:\"uploadFile\";i:31;s:12:\"downloadFile\";i:32;s:9:\"viewFiles\";i:33;s:7:\"addHost\";i:34;s:10:\"manageHost\";i:35;s:14:\"viewMonitoring\";i:36;s:7:\"addUser\";i:37;s:9:\"viewUsers\";i:38;s:10:\"addContact\";i:39;s:11:\"editContact\";i:40;s:12:\"viewContacts\";i:41;s:10:\"manageData\";i:42;s:10:\"viewSystem\";i:43;s:10:\"viewPeople\";i:44;s:11:\"viewReports\";i:45;s:11:\"autorefresh\";i:46;s:6:\"search\";i:47;s:4:\"Null\";}'),
(5, 'user', 'Branch Officer', 'a:3:{i:0;s:10:\"viewAssets\";i:1;s:12:\"viewLicenses\";i:2;s:4:\"Null\";}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `smslog`
--

CREATE TABLE `smslog` (
  `id` int(11) NOT NULL,
  `peopleid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `mobile` varchar(128) NOT NULL,
  `sms` varchar(256) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `statuscodes`
--

CREATE TABLE `statuscodes` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `statuscodes`
--

INSERT INTO `statuscodes` (`id`, `code`, `type`, `message`) VALUES
(48, 11, 'danger', 'Error! Cannot add item.'),
(49, 21, 'danger', 'Error! Cannot save item.'),
(50, 31, 'danger', 'Error! Cannot delete item.'),
(47, 30, 'success', 'Item has been deleted successfully!'),
(46, 20, 'success', 'Item has been saved successfully!'),
(45, 10, 'success', 'Item has been added successfully!'),
(51, 40, 'success', 'Settings updated successfully!'),
(52, 1200, 'danger', 'Authentication Failed!'),
(53, 1300, 'success', 'Please check your email for a password reset link.'),
(54, 1400, 'danger', 'Email address was not found.'),
(55, 1500, 'danger', 'Invalid reset key!'),
(56, 1600, 'success', 'Success. Please log in with your new password! '),
(57, 1, 'danger', 'Unauthorized Access');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `contactname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `web` varchar(255) NOT NULL,
  `notes` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `address`, `contactname`, `phone`, `email`, `web`, `notes`) VALUES
(4, 'Bali', '', 'Mubaligh Daerah Bali', '', '', '', ''),
(5, 'Bangka Belitung', '', 'Mubaligh Daerah Bangka Belitung', '', '', '', ''),
(6, 'Bengkulu', '', 'Mubaligh Daerah Bengkulu', '', '', '', ''),
(7, 'Jambi', '', 'Mubaligh Daerah Jambi', '', '', '', ''),
(8, 'Jawa Barat-01', '', '', '', '', '', ''),
(9, 'Jawa Barat-07', '', '', '', '', '', ''),
(10, 'Jawa Barat-02', '', '', '', '', '', ''),
(11, 'DIY', '', '', '', '', '', ''),
(12, 'Jawa Barat-03', '', '', '', '', '', ''),
(13, 'Jawa Barat-04', '', '', '', '', '', ''),
(14, 'Jawa Barat-05', '', '', '', '', '', ''),
(15, 'Jawa Barat-06', '', '', '', '', '', ''),
(16, 'Kalimantan Barat-03', '', '', '', '', '', ''),
(17, 'Jawa Barat-08', '', 'Tatang Solihin', '082216308931', 'amirda.jabar8@ahmadiyya.or.id', '', '<p><br></p><div><br></div><div><br></div><div><br></div>'),
(18, 'Jawa Barat-09', '', '', '', '', '', ''),
(19, 'Jawa Barat-10', '', '', '', '', '', ''),
(20, 'Jawa Barat-11', '', '', '', '', '', ''),
(21, 'Jawa Tengah-01', '', '', '', '', '', ''),
(23, 'Sumatera Utara-01', '', '', '', '', '', ''),
(24, 'Sumatera Utara-02', '', '', '', '', '', ''),
(25, 'Riau-01', '', '', '', '', '', ''),
(26, 'Riau-02', '', '', '', '', '', ''),
(27, 'Kep. Riau', '', '', '', '', '', ''),
(28, 'Sumatera Barat-01', '', '', '', '', '', ''),
(29, 'Sumatera Barat-02', '', '', '', '', '', ''),
(30, 'Sumatera Selatan', '', '', '', '', '', ''),
(31, 'Lampung', '', '', '', '', '', ''),
(32, 'Banten-01', '', '', '', '', '', ''),
(33, 'Banten-02', '', '', '', '', '', ''),
(34, 'DKI Jakarta', '', '', '', '', '', ''),
(35, 'Jawa Tengah-02', '', '', '', '', '', ''),
(36, 'Jawa Tengah-03', '', '', '', '', '', ''),
(37, 'Jawa Tengah-04', '', '', '', '', '', ''),
(38, 'Jawa Tengah-05', '', '', '', '', '', ''),
(39, 'Jawa Timur-01', '', '', '', '', '', ''),
(40, 'Jawa Timur-02', '', '', '', '', '', ''),
(41, 'Jawa Timur-03', '', '', '', '', '', ''),
(42, 'Nusa Tenggara Barat', '', '', '', '', '', ''),
(43, 'Nusa Tenggara Timur', '', '', '', '', '', ''),
(44, 'Kalimantan Barat-01', '', '', '', '', '', ''),
(45, 'Kalimantan Barat-02', '', '', '', '', '', ''),
(46, 'Kalimantan Selatan', '', '', '', '', '', ''),
(47, 'Kalimantan Tengah-01', '', '', '', '', '', ''),
(48, 'Kalimantan Tengah-02', '', '', '', '', '', ''),
(49, 'Kalimantan Timur-01', '', '', '', '', '', ''),
(50, 'Kalimantan Timur-02', '', '', '', '', '', ''),
(51, 'Kalimantan Timur-03', '', '', '', '', '', ''),
(52, 'Sulawesi Selatan-01', '', '', '', '', '', ''),
(53, 'Sulawesi Selatan-02', '', '', '', '', '', ''),
(54, 'Sulawesi Selatan-03', '', '', '', '', '', ''),
(55, 'Sulawesi Barat', '', '', '', '', '', ''),
(56, 'Sulawesi Tenggara', '', '', '', '', '', ''),
(57, 'Sulawesi Tengah', '', '', '', '', '', ''),
(58, 'Sulawesi Utara-02', '', '', '', '', '', ''),
(59, 'Sulawesi Utara-01', '', '', '', '', '', ''),
(60, 'Gorontalo', '', '', '', '', '', ''),
(61, 'Maluku', '', '', '', '', '', ''),
(62, 'Maluku Utara', '', '', '', '', '', ''),
(63, 'Papua', '', '', '', '', '', ''),
(64, 'Papua Barat', '', '', '', '', '', ''),
(65, 'Markaz', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `systemlog`
--

CREATE TABLE `systemlog` (
  `id` int(11) NOT NULL,
  `peopleid` int(11) NOT NULL,
  `ipaddress` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `systemlog`
--

INSERT INTO `systemlog` (`id`, `peopleid`, `ipaddress`, `description`, `timestamp`) VALUES
(1, -1, '::1', 'User/Admin Logged In - ID: 2', '2017-07-02 00:06:31'),
(2, -1, '::1', 'User/Admin Login Failure - EMAIL: admin@example.com', '2017-07-02 02:21:54'),
(3, -1, '::1', 'User/Admin Logged In - ID: 2', '2017-07-02 02:22:05'),
(4, 2, '::1', 'Profile Edited - ID: 2', '2017-07-02 02:23:43'),
(5, 2, '::1', 'User/Staff Logged Out - ID: 2', '2017-07-02 02:23:49'),
(6, -1, '::1', 'User/Admin Logged In - ID: 2', '2017-07-02 02:23:57'),
(7, 2, '::1', 'User/Staff Logged Out - ID: 2', '2017-07-02 02:24:01'),
(8, -1, '::1', 'User/Admin Logged In - ID: 2', '2017-07-02 02:24:27'),
(9, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-11 02:49:08'),
(10, 2, '::1', 'AssetCategory Added - ID: 6', '2019-07-11 03:03:10'),
(11, 2, '::1', 'AssetCategory Added - ID: 7', '2019-07-11 03:03:37'),
(12, 2, '::1', 'AssetCategory Added - ID: 8', '2019-07-11 03:04:01'),
(13, 2, '::1', 'AssetCategory Edited - ID: 8', '2019-07-11 03:04:10'),
(14, 2, '::1', 'AssetCategory Edited - ID: 7', '2019-07-11 03:04:18'),
(15, 2, '::1', 'Label Added - ID: 7', '2019-07-11 03:04:57'),
(16, 2, '::1', 'Label Added - ID: 8', '2019-07-11 03:05:20'),
(17, 2, '::1', 'Label Added - ID: 9', '2019-07-11 03:06:07'),
(18, 2, '::1', 'Asset Added - ID: 4', '2019-07-11 03:11:54'),
(19, 2, '::1', 'Asset Edited - ID: 4', '2019-07-11 03:14:43'),
(20, 2, '::1', 'User Added - ID: 3', '2019-07-11 03:18:27'),
(21, 2, '::1', 'Ticket Added - ID: 1', '2019-07-11 03:19:12'),
(22, 2, '::1', 'Host Deleted - ID: 1', '2019-07-11 03:36:28'),
(23, 2, '::1', 'Host Deleted - ID: 2', '2019-07-11 03:36:31'),
(24, 2, '::1', 'Host Deleted - ID: 3', '2019-07-11 03:36:34'),
(25, 2, '::1', 'Client Deleted - ID: 1', '2019-07-11 03:40:12'),
(26, 2, '::1', 'Client Deleted - ID: 2', '2019-07-11 03:40:15'),
(27, 2, '::1', 'Asset Deleted - ID: 1', '2019-07-11 03:40:24'),
(28, 2, '::1', 'Asset Deleted - ID: 2', '2019-07-11 03:40:27'),
(29, 2, '::1', 'Asset Deleted - ID: 3', '2019-07-11 03:40:30'),
(30, 2, '::1', 'Asset Deleted - ID: 4', '2019-07-11 03:40:33'),
(31, 2, '::1', 'License Deleted - ID: 1', '2019-07-11 03:41:20'),
(32, 2, '::1', 'License Deleted - ID: 2', '2019-07-11 03:41:23'),
(33, 2, '::1', 'License Deleted - ID: 3', '2019-07-11 03:41:26'),
(34, 2, '::1', 'License Deleted - ID: 4', '2019-07-11 03:41:28'),
(35, 2, '::1', 'Label Edited - ID: 7', '2019-07-11 03:41:48'),
(36, 2, '::1', 'Label Edited - ID: 8', '2019-07-11 03:41:55'),
(37, 2, '::1', 'Model Deleted - ID: 1', '2019-07-11 03:42:40'),
(38, 2, '::1', 'Model Deleted - ID: 2', '2019-07-11 03:42:42'),
(39, 2, '::1', 'Model Deleted - ID: 3', '2019-07-11 03:42:46'),
(40, 2, '::1', 'Model Deleted - ID: 4', '2019-07-11 03:42:52'),
(41, 2, '::1', 'Supplier Deleted - ID: 1', '2019-07-11 03:42:59'),
(42, 2, '::1', 'Supplier Deleted - ID: 2', '2019-07-11 03:43:02'),
(43, 2, '::1', 'Supplier Deleted - ID: 3', '2019-07-11 03:43:05'),
(44, 2, '::1', 'Project Deleted - ID: 1', '2019-07-11 03:43:26'),
(45, 2, '::1', 'Ticket Deleted - ID: 1', '2019-07-11 03:43:41'),
(46, 2, '::1', 'Issue Deleted - ID: 2', '2019-07-11 03:43:54'),
(47, 2, '::1', 'Issue Deleted - ID: 1', '2019-07-11 03:43:56'),
(48, 2, '::1', 'Issue Deleted - ID: 3', '2019-07-11 03:44:05'),
(49, 2, '::1', 'AssetCategory Edited - ID: 6', '2019-07-11 03:44:43'),
(50, 2, '::1', 'AssetCategory Edited - ID: 7', '2019-07-11 03:44:56'),
(51, 2, '::1', 'AssetCategory Edited - ID: 8', '2019-07-11 03:45:03'),
(52, 2, '::1', 'AssetCategory Added - ID: 9', '2019-07-11 03:45:23'),
(53, 2, '::1', 'AssetCategory Added - ID: 10', '2019-07-11 03:45:49'),
(54, 2, '::1', 'AssetCategory Edited - ID: 10', '2019-07-11 03:45:57'),
(55, 2, '::1', 'AssetCategory Added - ID: 11', '2019-07-11 03:46:52'),
(56, 2, '::1', 'AssetCategory Edited - ID: 11', '2019-07-11 03:47:06'),
(57, 2, '::1', 'LicenseCategory Deleted - ID: 1', '2019-07-11 03:47:58'),
(58, 2, '::1', 'LicenseCategory Deleted - ID: 2', '2019-07-11 03:48:01'),
(59, 2, '::1', 'LicenseCategory Deleted - ID: 3', '2019-07-11 03:48:04'),
(60, 2, '::1', 'LicenseCategory Deleted - ID: 4', '2019-07-11 03:48:08'),
(61, 2, '::1', 'LicenseCategory Added - ID: 5', '2019-07-11 03:48:24'),
(62, 2, '::1', 'LicenseCategory Added - ID: 6', '2019-07-11 03:49:51'),
(63, 2, '::1', 'LicenseCategory Added - ID: 7', '2019-07-11 03:50:09'),
(64, 2, '::1', 'LicenseCategory Edited - ID: 7', '2019-07-11 03:50:19'),
(65, 2, '::1', 'LicenseCategory Edited - ID: 6', '2019-07-11 03:50:29'),
(66, 2, '::1', 'LicenseCategory Edited - ID: 6', '2019-07-11 03:50:37'),
(67, 2, '::1', 'LicenseCategory Added - ID: 8', '2019-07-11 03:51:06'),
(68, 2, '::1', 'LicenseCategory Added - ID: 9', '2019-07-11 03:51:25'),
(69, 2, '::1', 'LicenseCategory Added - ID: 10', '2019-07-11 03:51:40'),
(70, 2, '::1', 'LicenseCategory Added - ID: 11', '2019-07-11 03:51:51'),
(71, 2, '::1', 'Client Added - ID: 3', '2019-07-11 03:54:04'),
(72, 2, '::1', 'Client Edited - ID: 3', '2019-07-11 03:58:23'),
(73, 2, '::1', 'Client Edited - ID: 3', '2019-07-11 03:59:25'),
(74, 2, '::1', 'Location Edited - ID: 1', '2019-07-11 04:01:09'),
(75, 2, '::1', 'Location Edited - ID: 1', '2019-07-11 04:01:55'),
(76, 2, '::1', 'User/Staff Logged Out - ID: 2', '2019-07-11 04:18:58'),
(77, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-11 04:20:17'),
(78, 2, '::1', 'Manufacturer Edited - ID: 1', '2019-07-11 04:41:05'),
(79, 2, '::1', 'Manufacturer Edited - ID: 2', '2019-07-11 04:41:22'),
(80, 2, '::1', 'Manufacturer Edited - ID: 3', '2019-07-11 04:41:35'),
(81, 2, '::1', 'Manufacturer Edited - ID: 4', '2019-07-11 04:41:43'),
(82, 2, '::1', 'Manufacturer Edited - ID: 5', '2019-07-11 04:41:56'),
(83, 2, '::1', 'Manufacturer Edited - ID: 6', '2019-07-11 04:42:23'),
(84, 2, '::1', 'Manufacturer Edited - ID: 2', '2019-07-11 04:42:51'),
(85, 2, '::1', 'Manufacturer Edited - ID: 4', '2019-07-11 04:43:14'),
(86, 2, '::1', 'Manufacturer Edited - ID: 6', '2019-07-11 04:43:28'),
(87, 2, '::1', 'Manufacturer Edited - ID: 7', '2019-07-11 04:43:41'),
(88, 2, '::1', 'Manufacturer Edited - ID: 8', '2019-07-11 04:45:59'),
(89, 2, '::1', 'Manufacturer Edited - ID: 9', '2019-07-11 04:46:12'),
(90, 2, '::1', 'Manufacturer Edited - ID: 10', '2019-07-11 04:46:20'),
(91, 2, '::1', 'Manufacturer Edited - ID: 11', '2019-07-11 04:46:34'),
(92, 2, '::1', 'Model Added - ID: 5', '2019-07-11 04:46:56'),
(93, 2, '::1', 'Model Added - ID: 6', '2019-07-11 04:47:12'),
(94, 2, '::1', 'Model Added - ID: 7', '2019-07-11 04:47:31'),
(95, 2, '::1', 'Model Added - ID: 8', '2019-07-11 04:47:40'),
(96, 2, '::1', 'Model Added - ID: 9', '2019-07-11 04:47:52'),
(97, 2, '::1', 'Model Added - ID: 10', '2019-07-11 04:48:00'),
(98, 2, '::1', 'Model Added - ID: 11', '2019-07-11 04:48:24'),
(99, 2, '::1', 'Model Added - ID: 12', '2019-07-11 04:48:51'),
(100, 2, '::1', 'Model Added - ID: 13', '2019-07-11 04:49:09'),
(101, 2, '::1', 'Model Added - ID: 14', '2019-07-11 04:49:16'),
(102, 2, '::1', 'Model Added - ID: 15', '2019-07-11 04:49:24'),
(103, 2, '::1', 'Model Added - ID: 16', '2019-07-11 04:49:45'),
(104, 2, '::1', 'Model Added - ID: 17', '2019-07-11 04:49:53'),
(105, 2, '::1', 'Model Added - ID: 18', '2019-07-11 04:50:04'),
(106, 2, '::1', 'Label Added - ID: 10', '2019-07-11 04:50:46'),
(107, 2, '::1', 'Label Added - ID: 11', '2019-07-11 04:51:10'),
(108, 2, '::1', 'Label Added - ID: 12', '2019-07-11 04:51:33'),
(109, 2, '::1', 'Manufacturer Added - ID: 12', '2019-07-11 04:54:18'),
(110, 2, '::1', 'LicenseCategory Edited - ID: 5', '2019-07-11 05:00:50'),
(111, 2, '::1', 'LicenseCategory Edited - ID: 6', '2019-07-11 05:01:02'),
(112, 2, '::1', 'Location Added - ID: 2', '2019-07-11 06:42:27'),
(113, 2, '::1', 'Model Added - ID: 19', '2019-07-11 06:47:27'),
(114, 2, '::1', 'Model Added - ID: 20', '2019-07-11 06:47:39'),
(115, 2, '::1', 'Asset Added - ID: 5', '2019-07-11 06:49:28'),
(116, 2, '::1', 'Manufacturer Edited - ID: 2', '2019-07-11 06:49:57'),
(117, 2, '::1', 'Manufacturer Edited - ID: 4', '2019-07-11 06:50:03'),
(118, 2, '::1', 'Manufacturer Edited - ID: 6', '2019-07-11 06:50:10'),
(119, 2, '::1', 'Asset Edited - ID: 5', '2019-07-11 06:51:14'),
(120, 2, '::1', 'Location Added - ID: 3', '2019-07-11 06:53:17'),
(121, 2, '::1', 'Asset Added - ID: 6', '2019-07-11 06:55:20'),
(122, 2, '::1', 'Label Edited - ID: 9', '2019-07-11 06:58:20'),
(123, 2, '::1', 'Asset Edited - ID: 6', '2019-07-11 08:15:42'),
(124, 2, '::1', 'Location Added - ID: 4', '2019-07-11 08:16:52'),
(125, 2, '::1', 'Location Added - ID: 5', '2019-07-11 08:17:25'),
(126, 2, '::1', 'Location Added - ID: 6', '2019-07-11 08:19:09'),
(127, 2, '::1', 'Location Edited - ID: 6', '2019-07-11 08:20:41'),
(128, 2, '::1', 'Asset Added - ID: 7', '2019-07-11 08:25:35'),
(129, -1, '::1', 'User/Admin Login Failure - EMAIL: admin@example.com', '2019-07-13 04:31:39'),
(130, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-13 04:32:05'),
(131, 2, '::1', 'Asset Added - ID: 8', '2019-07-13 04:43:15'),
(132, 2, '::1', 'Ticket Added - ID: 2', '2019-07-13 04:52:10'),
(133, 2, '::1', 'Ticket Status Update - ID: 2', '2019-07-13 04:55:56'),
(134, 2, '::1', 'Ticket Reply Added - ID: 3', '2019-07-13 04:55:57'),
(135, 2, '::1', 'Project Added - ID: 2', '2019-07-13 04:57:54'),
(136, 2, '::1', 'Staff Account Added - ID: 4', '2019-07-13 05:44:21'),
(137, 2, '::1', 'Staff Account Edited - ID: 4', '2019-07-13 06:15:24'),
(138, 2, '::1', 'Staff Account Added - ID: 5', '2019-07-13 06:16:20'),
(139, 2, '::1', 'Project Edited - ID: 2', '2019-07-13 06:17:05'),
(140, 2, '::1', 'User/Staff Logged Out - ID: 2', '2019-07-13 06:18:26'),
(141, -1, '::1', 'User/Admin Login Failure - EMAIL: ewi.pb@ahmadiyya.or.id', '2019-07-13 06:18:40'),
(142, -1, '::1', 'User/Admin Login Failure - EMAIL: ewi.pb@ahmadiyya.or.id', '2019-07-13 06:18:52'),
(143, -1, '::1', 'User/Admin Login Failure - EMAIL: admin@example.com', '2019-07-13 06:18:59'),
(144, -1, '::1', 'User/Admin Login Failure - EMAIL: admin@example.com', '2019-07-13 06:19:12'),
(145, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-13 06:19:28'),
(146, 2, '::1', 'Staff Account Edited - ID: 5', '2019-07-13 06:20:03'),
(147, 2, '::1', 'User/Staff Logged Out - ID: 2', '2019-07-13 06:20:08'),
(148, -1, '::1', 'User/Admin Logged In - ID: 5', '2019-07-13 06:20:15'),
(149, 5, '::1', 'Staff Account Edited - ID: 5', '2019-07-13 06:20:49'),
(150, 5, '::1', 'Ticket Assigned - ID: 2', '2019-07-13 06:21:08'),
(151, 5, '::1', 'User/Staff Logged Out - ID: 5', '2019-07-13 06:22:23'),
(152, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-13 06:22:31'),
(153, 2, '::1', 'Ticket Edited - ID: 2', '2019-07-13 06:22:51'),
(154, 2, '::1', 'Staff Account Edited - ID: 4', '2019-07-13 06:23:15'),
(155, 2, '::1', 'Ticket Added - ID: 3', '2019-07-13 06:24:34'),
(156, 2, '::1', 'User/Staff Logged Out - ID: 2', '2019-07-13 06:24:50'),
(157, -1, '::1', 'User/Admin Login Failure - EMAIL: sadik.pb@ahmadiyya.or.id', '2019-07-13 06:25:04'),
(158, -1, '::1', 'User/Admin Login Failure - EMAIL: sadik.pb@ahmadiyya.or.id', '2019-07-13 06:25:19'),
(159, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-13 06:25:26'),
(160, 2, '::1', 'Staff Account Edited - ID: 4', '2019-07-13 06:25:43'),
(161, 2, '::1', 'User/Staff Logged Out - ID: 2', '2019-07-13 06:25:45'),
(162, -1, '::1', 'User/Admin Logged In - ID: 4', '2019-07-13 06:25:53'),
(163, 4, '::1', 'Ticket Status Update - ID: 3', '2019-07-13 06:26:41'),
(164, 4, '::1', 'Ticket Reply Added - ID: 5', '2019-07-13 06:26:42'),
(165, 4, '::1', 'User/Staff Logged Out - ID: 4', '2019-07-13 06:27:32'),
(166, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-13 06:27:39'),
(167, 2, '::1', 'Staff Account Added - ID: 6', '2019-07-13 06:29:08'),
(168, 2, '::1', 'Issue Added - ID: 4', '2019-07-13 06:31:02'),
(169, 2, '::1', 'Issue Edited - ID: 4', '2019-07-13 06:31:14'),
(170, 2, '::1', 'Issue Edited - ID: 4', '2019-07-13 06:31:21'),
(171, 2, '::1', 'Asset Edited - ID: 5', '2019-07-13 06:39:01'),
(172, 2, '::1', 'Issue Edited - ID: 4', '2019-07-13 06:43:37'),
(173, 2, '::1', 'Supplier Added - ID: 4', '2019-07-13 06:46:15'),
(174, 2, '::1', 'Asset Edited - ID: 6', '2019-07-13 06:46:32'),
(175, 2, '::1', 'Asset Edited - ID: 7', '2019-07-13 06:46:55'),
(176, 2, '::1', 'Asset Edited - ID: 5', '2019-07-13 06:47:05'),
(177, 2, '::1', 'Asset Edited - ID: 6', '2019-07-13 06:54:02'),
(178, 2, '::1', 'Asset Edited - ID: 6', '2019-07-13 06:54:59'),
(179, 2, '::1', 'Asset Edited - ID: 6', '2019-07-13 06:57:02'),
(180, 2, '::1', 'Asset Edited - ID: 6', '2019-07-13 06:57:51'),
(181, 2, '::1', 'Asset Edited - ID: 6', '2019-07-13 06:58:09'),
(182, 2, '::1', 'Asset Edited - ID: 7', '2019-07-13 06:58:55'),
(183, 2, '::1', 'Asset Edited - ID: 5', '2019-07-13 07:07:57'),
(184, 2, '::1', 'Asset Added - ID: 9', '2019-07-13 07:25:05'),
(185, 2, '::1', 'License Added - ID: 5', '2019-07-13 07:48:46'),
(186, 2, '::1', 'Asset Edited - ID: 6', '2019-07-13 08:04:41'),
(187, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-14 04:05:14'),
(188, 2, '::1', 'Location Added - ID: 7', '2019-07-14 04:13:55'),
(189, 2, '::1', 'Location Added - ID: 8', '2019-07-14 04:14:53'),
(190, 2, '::1', 'Asset Added - ID: 10', '2019-07-14 04:17:05'),
(191, 2, '::1', 'Asset Added - ID: 11', '2019-07-14 04:22:56'),
(192, 2, '::1', 'Asset Added - ID: 12', '2019-07-14 04:25:06'),
(193, 2, '::1', 'Location Added - ID: 9', '2019-07-14 04:42:56'),
(194, 2, '::1', 'Location Added - ID: 10', '2019-07-14 04:45:48'),
(195, 2, '::1', 'Asset Added - ID: 13', '2019-07-14 04:54:52'),
(196, 2, '::1', 'Supplier Added - ID: 5', '2019-07-14 04:55:24'),
(197, 2, '::1', 'Asset Added - ID: 14', '2019-07-14 05:01:26'),
(198, 2, '::1', 'Asset Edited - ID: 11', '2019-07-14 05:02:28'),
(199, 2, '::1', 'Asset Edited - ID: 12', '2019-07-14 05:03:00'),
(200, 2, '::1', 'Asset Edited - ID: 13', '2019-07-14 05:03:35'),
(201, 2, '::1', 'Asset Edited - ID: 10', '2019-07-15 02:14:20'),
(202, 2, '::1', 'License Added - ID: 6', '2019-07-15 02:29:37'),
(203, 2, '::1', 'Project Added - ID: 3', '2019-07-15 09:04:03'),
(204, 2, '::1', 'Issue Added - ID: 5', '2019-07-15 09:09:21'),
(205, 2, '::1', 'Issue Added - ID: 6', '2019-07-15 09:11:37'),
(206, 2, '::1', 'Issue Added - ID: 7', '2019-07-15 09:12:32'),
(207, 2, '::1', 'Issue Added - ID: 8', '2019-07-15 09:16:22'),
(208, 2, '::1', 'Issue Added - ID: 9', '2019-07-15 09:22:08'),
(209, 2, '::1', 'Issue Added - ID: 10', '2019-07-15 09:25:31'),
(210, 2, '::1', 'Issue Added - ID: 11', '2019-07-15 09:27:52'),
(211, 2, '::1', 'Asset Edited - ID: 8', '2019-07-15 09:28:26'),
(212, 2, '::1', 'User/Staff Logged Out - ID: 2', '2019-07-15 09:31:00'),
(213, -1, '::1', 'User/Admin Logged In - ID: 4', '2019-07-15 09:31:08'),
(214, 4, '::1', 'User/Staff Logged Out - ID: 4', '2019-07-17 01:59:44'),
(215, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-17 01:59:51'),
(216, 2, '::1', 'License Deleted - ID: 5', '2019-07-17 03:29:44'),
(217, 2, '::1', 'License Added - ID: 7', '2019-07-17 03:31:01'),
(218, 2, '::1', 'License Added - ID: 8', '2019-07-17 03:32:05'),
(219, 2, '::1', 'License Added - ID: 9', '2019-07-17 03:33:14'),
(220, 2, '::1', 'License Added - ID: 10', '2019-07-17 03:36:18'),
(221, 2, '::1', 'License Added - ID: 11', '2019-07-17 03:40:18'),
(222, 2, '::1', 'License Added - ID: 12', '2019-07-17 04:29:50'),
(223, 2, '::1', 'License Deleted - ID: 11', '2019-07-17 04:34:18'),
(224, 2, '::1', 'License Deleted - ID: 12', '2019-07-17 04:34:22'),
(225, 2, '::1', 'License Added - ID: 13', '2019-07-17 04:34:58'),
(226, 2, '::1', 'Location Added - ID: 11', '2019-07-17 05:02:03'),
(227, 2, '::1', 'Asset Added - ID: 15', '2019-07-17 06:06:38'),
(228, 2, '::1', 'License Added - ID: 14', '2019-07-17 06:07:33'),
(229, 2, '::1', 'License Added - ID: 15', '2019-07-17 06:08:00'),
(230, 2, '::1', 'License Added - ID: 16', '2019-07-17 06:26:13'),
(231, 2, '::1', 'License Added - ID: 17', '2019-07-17 06:26:41'),
(232, 2, '::1', 'Location Added - ID: 12', '2019-07-17 06:50:02'),
(233, 2, '::1', 'Location Added - ID: 13', '2019-07-17 06:50:35'),
(234, 2, '::1', 'Location Added - ID: 14', '2019-07-17 06:50:56'),
(235, 2, '::1', 'Location Added - ID: 15', '2019-07-17 06:51:22'),
(236, 2, '::1', 'Location Added - ID: 16', '2019-07-17 06:51:49'),
(237, 2, '::1', 'Location Added - ID: 17', '2019-07-17 06:52:17'),
(238, 2, '::1', 'Location Added - ID: 18', '2019-07-17 07:22:30'),
(239, 2, '::1', 'Location Added - ID: 19', '2019-07-17 07:22:41'),
(240, 2, '::1', 'Location Added - ID: 20', '2019-07-17 07:22:55'),
(241, 2, '::1', 'Location Added - ID: 21', '2019-07-17 07:23:04'),
(242, 2, '::1', 'Location Added - ID: 22', '2019-07-17 07:23:19'),
(243, 2, '::1', 'Supplier Added - ID: 6', '2019-07-17 07:28:29'),
(244, 2, '::1', 'Asset Added - ID: 16', '2019-07-17 07:30:16'),
(245, 2, '::1', 'Asset Edited - ID: 16', '2019-07-17 07:30:59'),
(246, 2, '::1', 'Asset Edited - ID: 16', '2019-07-17 07:50:30'),
(247, 2, '::1', 'Asset Added - ID: 17', '2019-07-17 07:55:13'),
(248, 2, '::1', 'License Added - ID: 18', '2019-07-17 07:56:22'),
(249, 2, '::1', 'License Added - ID: 19', '2019-07-17 07:56:48'),
(250, 2, '::1', 'License Added - ID: 20', '2019-07-17 07:58:04'),
(251, 2, '::1', 'Asset Edited - ID: 17', '2019-07-17 08:01:08'),
(252, 2, '::1', 'Location Edited - ID: 21', '2019-07-17 08:07:57'),
(253, 2, '::1', 'Asset Added - ID: 18', '2019-07-17 08:11:23'),
(254, 2, '::1', 'License Added - ID: 21', '2019-07-17 08:12:06'),
(255, 2, '::1', 'License Added - ID: 22', '2019-07-17 08:12:32'),
(256, 2, '::1', 'Location Edited - ID: 20', '2019-07-17 08:18:45'),
(257, 2, '::1', 'Asset Added - ID: 19', '2019-07-17 08:20:06'),
(258, 2, '::1', 'Asset Edited - ID: 18', '2019-07-17 08:20:46'),
(259, 2, '::1', 'Asset Edited - ID: 18', '2019-07-17 08:34:52'),
(260, 2, '::1', 'Knowledge Base Article Added - ID: 2', '2019-07-18 01:48:53'),
(261, 2, '::1', 'Asset Added - ID: 20', '2019-07-18 02:01:41'),
(262, 2, '::1', 'Asset Added - ID: 21', '2019-07-18 02:22:12'),
(263, 2, '::1', 'Asset Added - ID: 22', '2019-07-18 02:22:19'),
(264, 2, '::1', 'Asset Added - ID: 23', '2019-07-18 02:24:07'),
(265, 2, '::1', 'Asset Added - ID: 24', '2019-07-18 02:25:25'),
(266, 2, '::1', 'Asset Added - ID: 25', '2019-07-18 02:38:43'),
(267, 2, '::1', 'Asset Deleted - ID: 20', '2019-07-18 02:49:55'),
(268, 2, '::1', 'Asset Deleted - ID: 21', '2019-07-18 02:49:57'),
(269, 2, '::1', 'Asset Deleted - ID: 22', '2019-07-18 02:50:01'),
(270, 2, '::1', 'Asset Deleted - ID: 23', '2019-07-18 02:50:03'),
(271, 2, '::1', 'Asset Deleted - ID: 24', '2019-07-18 02:50:06'),
(272, 2, '::1', 'Asset Deleted - ID: 25', '2019-07-18 02:50:11'),
(273, 2, '::1', 'Asset Deleted - ID: 8', '2019-07-18 02:50:18'),
(274, 2, '::1', 'Supplier Added - ID: 7', '2019-07-18 02:56:25'),
(275, 2, '::1', 'Location Added - ID: 23', '2019-07-18 03:03:54'),
(276, 2, '::1', 'Location Added - ID: 24', '2019-07-18 03:04:06'),
(277, 2, '::1', 'Location Added - ID: 25', '2019-07-18 03:04:19'),
(278, 2, '::1', 'Asset Added - ID: 26', '2019-07-18 03:19:26'),
(279, 2, '::1', 'Asset Added - ID: 27', '2019-07-18 03:25:33'),
(280, 2, '::1', 'Asset Edited - ID: 26', '2019-07-18 03:26:03'),
(281, 2, '::1', 'License Added - ID: 23', '2019-07-18 03:27:09'),
(282, 2, '::1', 'License Added - ID: 24', '2019-07-18 03:27:59'),
(283, 2, '::1', 'Asset Added - ID: 28', '2019-07-18 03:39:37'),
(284, 2, '::1', 'License Added - ID: 25', '2019-07-18 03:40:13'),
(285, 2, '::1', 'License Added - ID: 26', '2019-07-18 03:40:47'),
(286, 2, '::1', 'Asset Edited - ID: 28', '2019-07-18 03:49:05'),
(287, 2, '::1', 'Asset Edited - ID: 28', '2019-07-18 03:49:26'),
(288, 2, '::1', 'Asset Edited - ID: 28', '2019-07-18 03:49:34'),
(289, 2, '::1', 'Location Added - ID: 26', '2019-07-18 03:55:54'),
(290, 2, '::1', 'Asset Added - ID: 29', '2019-07-18 03:58:51'),
(291, 2, '::1', 'License Added - ID: 27', '2019-07-18 04:00:11'),
(292, 2, '::1', 'License Added - ID: 28', '2019-07-18 04:30:04'),
(293, 2, '::1', 'Location Added - ID: 27', '2019-07-18 04:40:34'),
(294, 2, '::1', 'Asset Added - ID: 30', '2019-07-18 04:44:41'),
(295, 2, '::1', 'Asset Added - ID: 31', '2019-07-18 04:47:27'),
(296, 2, '::1', 'License Added - ID: 29', '2019-07-18 04:48:00'),
(297, 2, '::1', 'License Added - ID: 30', '2019-07-18 04:48:24'),
(298, 2, '::1', 'License Added - ID: 31', '2019-07-18 04:49:17'),
(299, 2, '::1', 'Asset Added - ID: 32', '2019-07-18 06:18:20'),
(300, 2, '::1', 'License Added - ID: 32', '2019-07-18 06:26:26'),
(301, 2, '::1', 'License Added - ID: 33', '2019-07-18 06:52:57'),
(302, 2, '::1', 'Asset Edited - ID: 32', '2019-07-18 06:53:49'),
(303, 2, '::1', 'Location Added - ID: 28', '2019-07-18 06:58:37'),
(304, 2, '::1', 'Asset Added - ID: 33', '2019-07-18 07:01:57'),
(305, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-18 07:17:47'),
(306, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-18 07:29:31'),
(307, 2, '::1', 'User/Staff Logged Out - ID: 2', '2019-07-18 07:30:46'),
(308, -1, '::1', 'User/Admin Login Failure - EMAIL: admin@example.com', '2019-07-18 07:31:44'),
(309, -1, '::1', 'User/Admin Login Failure - EMAIL: admin@example.com', '2019-07-18 07:31:53'),
(310, -1, '::1', 'User/Admin Login Failure - EMAIL: admin@example.com', '2019-07-18 07:33:47'),
(311, -1, '::1', 'User/Admin Login Failure - EMAIL: admin@example.com', '2019-07-18 07:34:12'),
(312, -1, '::1', 'User/Admin Login Failure - EMAIL: sadik.pb@ahmadiyya.or.id', '2019-07-18 07:34:42'),
(313, -1, '::1', 'User/Admin Login Failure - EMAIL: ewi.pb@ahmadiyya.or.id', '2019-07-18 07:35:02'),
(314, -1, '::1', 'User/Admin Logged In - ID: 4', '2019-07-18 07:35:11'),
(315, 4, '::1', 'User/Staff Logged Out - ID: 4', '2019-07-18 07:35:27'),
(316, -1, '::1', 'User/Admin Login Failure - EMAIL: admin@example.com', '2019-07-18 07:35:37'),
(317, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-18 07:36:08'),
(318, 2, '::1', 'User/Staff Logged Out - ID: 2', '2019-07-18 07:38:53'),
(319, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-18 07:39:00'),
(320, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-19 02:01:34'),
(321, 2, '::1', 'Asset Edited - ID: 27', '2019-07-19 02:20:09'),
(322, 2, '::1', 'Asset Edited - ID: 26', '2019-07-19 02:24:42'),
(323, 2, '::1', 'Asset Edited - ID: 28', '2019-07-19 02:26:52'),
(324, 2, '::1', 'Asset Edited - ID: 29', '2019-07-19 02:31:26'),
(325, 2, '::1', 'Asset Edited - ID: 29', '2019-07-19 02:31:51'),
(326, 2, '::1', 'Asset Edited - ID: 29', '2019-07-19 02:32:02'),
(327, 2, '::1', 'Asset Edited - ID: 6', '2019-07-19 02:33:04'),
(328, 2, '::1', 'Asset Edited - ID: 30', '2019-07-19 02:34:13'),
(329, 2, '::1', 'Asset Edited - ID: 31', '2019-07-19 02:34:32'),
(330, 2, '::1', 'Asset Edited - ID: 32', '2019-07-19 02:34:50'),
(331, 2, '::1', 'Asset Edited - ID: 33', '2019-07-19 02:35:18'),
(332, 2, '::1', 'Asset Edited - ID: 26', '2019-07-19 02:35:58'),
(333, 2, '::1', 'Asset Edited - ID: 27', '2019-07-19 02:36:37'),
(334, 2, '::1', 'Asset Edited - ID: 16', '2019-07-19 02:38:06'),
(335, 2, '::1', 'Asset Edited - ID: 17', '2019-07-19 02:39:50'),
(336, 2, '::1', 'Asset Edited - ID: 11', '2019-07-19 02:40:29'),
(337, 2, '::1', 'Asset Edited - ID: 12', '2019-07-19 02:40:50'),
(338, 2, '::1', 'Asset Edited - ID: 13', '2019-07-19 02:41:21'),
(339, 2, '::1', 'Asset Edited - ID: 14', '2019-07-19 02:41:44'),
(340, 2, '::1', 'Asset Edited - ID: 15', '2019-07-19 02:42:40'),
(341, 2, '::1', 'Asset Edited - ID: 7', '2019-07-19 02:43:20'),
(342, 2, '::1', 'Asset Edited - ID: 28', '2019-07-19 02:43:47'),
(343, 2, '::1', 'Asset Edited - ID: 10', '2019-07-19 02:44:33'),
(344, 2, '::1', 'Asset Edited - ID: 18', '2019-07-19 02:45:12'),
(345, 2, '::1', 'Asset Edited - ID: 19', '2019-07-19 02:45:41'),
(346, 2, '::1', 'Asset Edited - ID: 5', '2019-07-19 02:51:32'),
(347, 2, '::1', 'Asset Edited - ID: 9', '2019-07-19 02:52:04'),
(348, 2, '::1', 'Asset Edited - ID: 18', '2019-07-19 03:07:26'),
(349, 2, '::1', 'Asset Edited - ID: 19', '2019-07-19 03:10:44'),
(350, -1, '::1', 'User/Admin Login Failure - EMAIL: admin@example.com', '2019-07-20 02:25:44'),
(351, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-20 02:25:52'),
(352, 2, '::1', 'Supplier Added - ID: 8', '2019-07-20 02:46:03'),
(353, 2, '::1', 'Location Added - ID: 29', '2019-07-20 02:46:48'),
(354, 2, '::1', 'Asset Added - ID: 34', '2019-07-20 03:13:41'),
(355, 2, '::1', 'Location Added - ID: 30', '2019-07-20 03:14:17'),
(356, 2, '::1', 'Location Added - ID: 31', '2019-07-20 03:14:25'),
(357, 2, '::1', 'Location Added - ID: 32', '2019-07-20 03:14:37'),
(358, 2, '::1', 'Location Added - ID: 33', '2019-07-20 03:14:46'),
(359, 2, '::1', 'Location Added - ID: 34', '2019-07-20 03:14:54'),
(360, 2, '::1', 'Location Added - ID: 35', '2019-07-20 03:15:25'),
(361, 2, '::1', 'Location Added - ID: 36', '2019-07-20 03:15:33'),
(362, 2, '::1', 'Location Added - ID: 37', '2019-07-20 03:15:41'),
(363, 2, '::1', 'Location Added - ID: 38', '2019-07-20 03:15:51'),
(364, 2, '::1', 'Location Added - ID: 39', '2019-07-20 03:16:03'),
(365, 2, '::1', 'Location Added - ID: 40', '2019-07-20 03:16:31'),
(366, 2, '::1', 'Location Added - ID: 41', '2019-07-20 03:16:42'),
(367, 2, '::1', 'Location Added - ID: 42', '2019-07-20 03:16:54'),
(368, 2, '::1', 'Location Added - ID: 43', '2019-07-20 03:17:03'),
(369, 2, '::1', 'Location Added - ID: 44', '2019-07-20 03:17:12'),
(370, 2, '::1', 'Location Edited - ID: 41', '2019-07-20 03:17:45'),
(371, 2, '::1', 'Location Edited - ID: 40', '2019-07-20 03:18:09'),
(372, 2, '::1', 'Location Edited - ID: 39', '2019-07-20 03:18:39'),
(373, 2, '::1', 'Location Edited - ID: 42', '2019-07-20 03:19:02'),
(374, 2, '::1', 'Location Edited - ID: 43', '2019-07-20 03:19:15'),
(375, 2, '::1', 'Location Edited - ID: 44', '2019-07-20 03:19:25'),
(376, 2, '::1', 'Location Added - ID: 45', '2019-07-20 03:19:54'),
(377, 2, '::1', 'Location Added - ID: 46', '2019-07-20 03:20:17'),
(378, 2, '::1', 'Location Added - ID: 47', '2019-07-20 03:22:49'),
(379, 2, '::1', 'Location Added - ID: 48', '2019-07-20 03:24:30'),
(380, 2, '::1', 'Location Added - ID: 49', '2019-07-20 03:24:50'),
(381, 2, '::1', 'Asset Added - ID: 35', '2019-07-20 03:57:31'),
(382, 2, '::1', 'Asset Edited - ID: 34', '2019-07-20 04:00:18'),
(383, 2, '::1', 'Supplier Added - ID: 9', '2019-07-20 04:36:08'),
(384, 2, '::1', 'Location Added - ID: 50', '2019-07-20 04:37:09'),
(385, 2, '::1', 'Location Added - ID: 51', '2019-07-20 04:37:43'),
(386, 2, '::1', 'Asset Added - ID: 36', '2019-07-20 04:39:39'),
(387, 2, '::1', 'Asset Added - ID: 37', '2019-07-20 04:40:38'),
(388, 2, '::1', 'Asset Added - ID: 38', '2019-07-20 04:52:31'),
(389, 2, '::1', 'Asset Added - ID: 39', '2019-07-20 05:02:03'),
(390, 2, '::1', 'Asset Edited - ID: 34', '2019-07-20 05:06:45'),
(391, 2, '::1', 'Asset Edited - ID: 38', '2019-07-20 05:07:36'),
(392, 2, '::1', 'Asset Added - ID: 40', '2019-07-20 06:28:44'),
(393, 2, '::1', 'Asset Edited - ID: 35', '2019-07-20 06:29:35'),
(394, 2, '::1', 'Asset Added - ID: 41', '2019-07-20 06:52:43'),
(395, 2, '::1', 'License Added - ID: 34', '2019-07-20 07:04:04'),
(396, 2, '::1', 'License Added - ID: 35', '2019-07-20 07:04:23'),
(397, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-22 02:39:04'),
(398, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-22 06:06:21'),
(399, 2, '::1', 'Location Edited - ID: 38', '2019-07-22 06:37:21'),
(400, 2, '::1', 'Asset Added - ID: 42', '2019-07-22 06:51:51'),
(401, 2, '::1', 'License Added - ID: 36', '2019-07-22 06:52:25'),
(402, 2, '::1', 'Asset Added - ID: 43', '2019-07-22 06:58:58'),
(403, 2, '::1', 'License Added - ID: 37', '2019-07-22 06:59:34'),
(404, 2, '::1', 'Asset Added - ID: 44', '2019-07-22 07:05:22'),
(405, 2, '::1', 'License Added - ID: 38', '2019-07-22 07:12:19'),
(406, 2, '::1', 'Asset Added - ID: 45', '2019-07-22 07:20:55'),
(407, 2, '::1', 'Asset Added - ID: 46', '2019-07-22 07:24:32'),
(408, 2, '::1', 'License Added - ID: 39', '2019-07-22 07:25:09'),
(409, 2, '::1', 'Asset Added - ID: 47', '2019-07-22 07:39:45'),
(410, 2, '::1', 'Asset Edited - ID: 47', '2019-07-22 07:44:51'),
(411, 2, '::1', 'Location Added - ID: 52', '2019-07-22 07:46:04'),
(412, 2, '::1', 'Asset Added - ID: 48', '2019-07-22 08:02:03'),
(413, 2, '::1', 'Asset Edited - ID: 48', '2019-07-22 08:03:03'),
(414, 2, '::1', 'License Added - ID: 40', '2019-07-22 08:07:09'),
(415, 2, '::1', 'Asset Added - ID: 49', '2019-07-22 08:16:29'),
(416, 2, '::1', 'Asset Added - ID: 50', '2019-07-22 08:34:42'),
(417, 2, '::1', 'License Added - ID: 41', '2019-07-22 09:00:58'),
(418, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-23 02:29:59'),
(419, 2, '::1', 'Asset Added - ID: 51', '2019-07-23 02:52:00'),
(420, 2, '::1', 'Asset Added - ID: 52', '2019-07-23 02:53:50'),
(421, 2, '::1', 'Asset Edited - ID: 49', '2019-07-23 02:55:48'),
(422, 2, '::1', 'License Added - ID: 42', '2019-07-23 02:56:23'),
(423, 2, '::1', 'License Added - ID: 43', '2019-07-23 02:58:29'),
(424, 2, '::1', 'Asset Added - ID: 53', '2019-07-23 03:20:03'),
(425, 2, '::1', 'Location Added - ID: 55', '2019-07-23 03:21:39'),
(426, 2, '::1', 'Asset Edited - ID: 53', '2019-07-23 03:22:23'),
(427, 2, '::1', 'Asset Added - ID: 54', '2019-07-23 03:27:31'),
(428, 2, '::1', 'Asset Edited - ID: 52', '2019-07-23 03:35:02'),
(429, 2, '::1', 'Asset Added - ID: 55', '2019-07-23 03:40:13'),
(430, 2, '::1', 'Asset Added - ID: 56', '2019-07-23 03:44:25'),
(431, 2, '::1', 'License Added - ID: 44', '2019-07-23 03:45:01'),
(432, 2, '::1', 'License Added - ID: 45', '2019-07-23 03:45:48'),
(433, 2, '::1', 'License Added - ID: 46', '2019-07-23 03:46:11'),
(434, 2, '::1', 'Asset Added - ID: 57', '2019-07-23 04:07:04'),
(435, 2, '::1', 'Asset Added - ID: 58', '2019-07-23 04:26:50'),
(436, 2, '::1', 'Asset Edited - ID: 57', '2019-07-23 04:44:53'),
(437, 2, '::1', 'Asset Added - ID: 59', '2019-07-23 04:50:33'),
(438, 2, '::1', 'Location Added - ID: 56', '2019-07-23 04:53:06'),
(439, 2, '::1', 'Asset Added - ID: 60', '2019-07-23 04:57:05'),
(440, 2, '::1', 'Asset Added - ID: 61', '2019-07-23 05:00:49'),
(441, 2, '::1', 'License Added - ID: 47', '2019-07-23 06:26:42'),
(442, 2, '::1', 'License Added - ID: 48', '2019-07-23 06:27:12'),
(443, 2, '::1', 'License Added - ID: 49', '2019-07-23 06:28:19'),
(444, 2, '::1', 'Location Edited - ID: 48', '2019-07-23 06:50:23'),
(445, 2, '::1', 'Location Deleted - ID: 49', '2019-07-23 06:50:31'),
(446, 2, '::1', 'Asset Added - ID: 62', '2019-07-23 06:57:20'),
(447, 2, '::1', 'Asset Added - ID: 63', '2019-07-23 06:59:17'),
(448, 2, '::1', 'Asset Edited - ID: 62', '2019-07-23 07:00:58'),
(449, 2, '::1', 'Asset Added - ID: 64', '2019-07-23 07:04:03'),
(450, 2, '::1', 'Location Deleted - ID: 47', '2019-07-23 07:08:01'),
(451, 2, '::1', 'Location Added - ID: 58', '2019-07-23 07:08:46'),
(452, 2, '::1', 'Asset Added - ID: 65', '2019-07-23 07:10:29'),
(453, 2, '::1', 'License Added - ID: 50', '2019-07-23 07:12:55'),
(454, 2, '::1', 'License Added - ID: 51', '2019-07-23 07:18:37'),
(455, 2, '::1', 'License Added - ID: 52', '2019-07-23 07:20:41'),
(456, 2, '::1', 'Asset Edited - ID: 61', '2019-07-23 07:38:42'),
(457, 2, '::1', 'Asset Edited - ID: 61', '2019-07-23 07:43:58'),
(458, 2, '::1', 'Location Added - ID: 59', '2019-07-23 07:52:05'),
(459, 2, '::1', 'Location Added - ID: 60', '2019-07-24 03:24:50'),
(460, 2, '::1', 'Location Added - ID: 61', '2019-07-24 03:25:32'),
(461, 2, '::1', 'Location Added - ID: 62', '2019-07-24 03:25:44'),
(462, 2, '::1', 'Location Added - ID: 63', '2019-07-24 03:26:05'),
(463, 2, '::1', 'Asset Added - ID: 66', '2019-07-24 03:43:51'),
(464, 2, '::1', 'Asset Added - ID: 67', '2019-07-24 03:52:56'),
(465, 2, '::1', 'Supplier Added - ID: 10', '2019-07-24 03:53:09'),
(466, 2, '::1', 'Asset Added - ID: 68', '2019-07-24 04:12:21'),
(467, 2, '::1', 'Asset Edited - ID: 66', '2019-07-24 04:12:49'),
(468, 2, '::1', 'Asset Edited - ID: 67', '2019-07-24 04:13:11'),
(469, 2, '::1', 'Asset Added - ID: 69', '2019-07-24 04:25:21'),
(470, 2, '::1', 'Asset Edited - ID: 67', '2019-07-24 04:25:45'),
(471, 2, '::1', 'License Added - ID: 53', '2019-07-24 04:28:03'),
(472, 2, '::1', 'License Added - ID: 54', '2019-07-24 04:28:26'),
(473, 2, '::1', 'Location Added - ID: 64', '2019-07-24 04:29:36'),
(474, 2, '::1', 'Asset Added - ID: 70', '2019-07-24 04:36:41'),
(475, 2, '::1', 'License Added - ID: 55', '2019-07-24 04:40:08'),
(476, 2, '::1', 'Asset Edited - ID: 67', '2019-07-24 06:17:44'),
(477, 2, '::1', 'Location Added - ID: 65', '2019-07-24 06:40:46'),
(478, 2, '::1', 'Location Added - ID: 66', '2019-07-24 06:43:37'),
(479, 2, '::1', 'Location Added - ID: 67', '2019-07-24 06:43:48'),
(480, 2, '::1', 'Asset Added - ID: 71', '2019-07-24 06:47:31'),
(481, 2, '::1', 'Asset Added - ID: 72', '2019-07-24 06:49:08'),
(482, 2, '::1', 'Asset Edited - ID: 71', '2019-07-24 06:49:54'),
(483, 2, '::1', 'Asset Edited - ID: 72', '2019-07-24 06:50:14'),
(484, 2, '::1', 'Location Added - ID: 68', '2019-07-24 06:50:40'),
(485, 2, '::1', 'Asset Edited - ID: 71', '2019-07-24 06:59:04'),
(486, 2, '::1', 'Asset Added - ID: 73', '2019-07-24 07:55:35'),
(487, -1, '::1', 'User/Admin Login Failure - EMAIL: admin@example.com', '2019-07-25 03:29:42'),
(488, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-25 03:29:51'),
(489, 2, '::1', 'License Added - ID: 56', '2019-07-25 03:32:31'),
(490, 2, '::1', 'License Added - ID: 57', '2019-07-25 03:33:06'),
(491, 2, '::1', 'Location Added - ID: 69', '2019-07-25 03:34:31'),
(492, 2, '::1', 'Location Added - ID: 70', '2019-07-25 03:34:50'),
(493, 2, '::1', 'Asset Added - ID: 74', '2019-07-25 03:38:53'),
(494, 2, '::1', 'Location Added - ID: 71', '2019-07-25 03:57:30'),
(495, 2, '::1', 'Asset Added - ID: 75', '2019-07-25 04:06:51'),
(496, 2, '::1', 'Asset Added - ID: 76', '2019-07-25 04:13:44'),
(497, 2, '::1', 'License Added - ID: 58', '2019-07-25 04:16:24'),
(498, 2, '::1', 'License Added - ID: 59', '2019-07-25 04:16:53'),
(499, 2, '::1', 'Location Added - ID: 72', '2019-07-25 06:45:24'),
(500, 2, '::1', 'Asset Added - ID: 77', '2019-07-25 06:48:58'),
(501, 2, '::1', 'Asset Edited - ID: 77', '2019-07-25 06:49:35'),
(502, 2, '::1', 'License Added - ID: 60', '2019-07-25 06:50:06'),
(503, 2, '::1', 'Location Added - ID: 73', '2019-07-25 06:50:51'),
(504, 2, '::1', 'Location Added - ID: 74', '2019-07-25 06:51:08'),
(505, 2, '::1', 'Asset Added - ID: 78', '2019-07-25 06:53:44'),
(506, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-27 02:20:50'),
(507, 2, '::1', 'Asset Added - ID: 79', '2019-07-27 02:30:53'),
(508, 2, '::1', 'License Added - ID: 61', '2019-07-27 02:31:57'),
(509, 2, '::1', 'Asset Added - ID: 80', '2019-07-27 02:36:14'),
(510, 2, '::1', 'License Added - ID: 62', '2019-07-27 03:09:42'),
(511, 2, '::1', 'Asset Added - ID: 81', '2019-07-27 03:25:17'),
(512, 2, '::1', 'Asset Edited - ID: 81', '2019-07-27 04:42:03'),
(513, 2, '::1', 'Asset Edited - ID: 81', '2019-07-27 04:43:39'),
(514, 2, '::1', 'Asset Added - ID: 82', '2019-07-27 04:45:26'),
(515, 2, '::1', 'Asset Added - ID: 83', '2019-07-27 04:48:10'),
(516, 2, '::1', 'License Added - ID: 63', '2019-07-27 04:49:00'),
(517, 2, '::1', 'Asset Added - ID: 84', '2019-07-27 04:55:45'),
(518, 2, '::1', 'License Added - ID: 64', '2019-07-27 04:56:20'),
(519, 2, '::1', 'License Added - ID: 65', '2019-07-27 04:56:59'),
(520, 2, '::1', 'Asset Added - ID: 85', '2019-07-27 05:00:21'),
(521, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-27 08:23:36'),
(522, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-07-31 02:02:47'),
(523, 2, '::1', 'Ticket Edited - ID: 3', '2019-07-31 02:03:43'),
(524, 2, '::1', 'Ticket Edited - ID: 2', '2019-07-31 02:03:52'),
(525, 2, '::1', 'Location Added - ID: 75', '2019-07-31 02:06:24'),
(526, 2, '::1', 'Asset Added - ID: 86', '2019-07-31 02:09:02'),
(527, 2, '::1', 'Location Added - ID: 76', '2019-07-31 02:09:27'),
(528, 2, '::1', 'Asset Added - ID: 87', '2019-07-31 02:13:50'),
(529, 2, '::1', 'Asset Edited - ID: 87', '2019-07-31 02:14:22'),
(530, 2, '::1', 'Asset Added - ID: 88', '2019-07-31 02:17:36'),
(531, 2, '::1', 'Location Added - ID: 77', '2019-07-31 02:22:46'),
(532, 2, '::1', 'Asset Added - ID: 89', '2019-07-31 02:30:23'),
(533, 2, '::1', 'License Added - ID: 66', '2019-07-31 02:30:46'),
(534, 2, '::1', 'Asset Edited - ID: 89', '2019-07-31 02:57:09'),
(535, 2, '::1', 'Asset Edited - ID: 89', '2019-07-31 02:57:35'),
(536, 2, '::1', 'Asset Added - ID: 90', '2019-07-31 03:02:23'),
(537, 2, '::1', 'Asset Edited - ID: 90', '2019-07-31 03:03:48'),
(538, 2, '::1', 'Asset Added - ID: 91', '2019-07-31 03:11:50'),
(539, 2, '::1', 'Asset Edited - ID: 89', '2019-07-31 03:13:46'),
(540, 2, '::1', 'Asset Edited - ID: 90', '2019-07-31 03:14:04'),
(541, 2, '::1', 'Asset Edited - ID: 91', '2019-07-31 03:14:23'),
(542, 2, '::1', 'Location Added - ID: 78', '2019-07-31 03:23:30'),
(543, 2, '::1', 'Asset Added - ID: 92', '2019-07-31 03:26:01'),
(544, 2, '::1', 'Asset Added - ID: 93', '2019-07-31 03:33:13'),
(545, 2, '::1', 'Asset Added - ID: 94', '2019-07-31 03:38:32'),
(546, 2, '::1', 'Asset Added - ID: 95', '2019-07-31 03:40:52'),
(547, 2, '::1', 'Asset Added - ID: 96', '2019-07-31 03:44:43'),
(548, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-01 03:00:24'),
(549, 2, '::1', 'Asset Added - ID: 97', '2019-08-01 03:04:59'),
(550, 2, '::1', 'Asset Added - ID: 98', '2019-08-01 03:08:32'),
(551, 2, '::1', 'Asset Added - ID: 99', '2019-08-01 03:17:12'),
(552, 2, '::1', 'Asset Added - ID: 100', '2019-08-01 03:19:45'),
(553, 2, '::1', 'Location Added - ID: 79', '2019-08-01 03:38:24'),
(554, 2, '::1', 'Asset Added - ID: 101', '2019-08-01 03:43:25'),
(555, 2, '::1', 'Asset Added - ID: 102', '2019-08-01 03:45:22'),
(556, 2, '::1', 'Asset Added - ID: 103', '2019-08-01 03:48:29'),
(557, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-01 07:38:03'),
(558, 2, '::1', 'License Added - ID: 67', '2019-08-01 07:39:11'),
(559, 2, '::1', 'License Added - ID: 68', '2019-08-01 07:39:45'),
(560, 2, '::1', 'Location Added - ID: 80', '2019-08-01 07:40:36'),
(561, 2, '::1', 'Location Added - ID: 81', '2019-08-01 07:40:52'),
(562, 2, '::1', 'Location Added - ID: 82', '2019-08-01 07:41:07'),
(563, 2, '::1', 'Location Added - ID: 83', '2019-08-01 07:41:27'),
(564, 2, '::1', 'Location Added - ID: 84', '2019-08-01 07:41:48'),
(565, 2, '::1', 'Location Added - ID: 85', '2019-08-01 07:42:06'),
(566, 2, '::1', 'Location Added - ID: 86', '2019-08-01 07:42:47'),
(567, 2, '::1', 'Location Added - ID: 87', '2019-08-01 07:42:58'),
(568, 2, '::1', 'Location Added - ID: 88', '2019-08-01 07:43:23'),
(569, 2, '::1', 'Location Added - ID: 89', '2019-08-01 07:43:37'),
(570, 2, '::1', 'Location Added - ID: 90', '2019-08-01 07:43:50'),
(571, 2, '::1', 'Location Added - ID: 91', '2019-08-01 07:44:07'),
(572, 2, '::1', 'Location Added - ID: 92', '2019-08-01 07:44:18'),
(573, 2, '::1', 'Location Added - ID: 93', '2019-08-01 07:44:27'),
(574, 2, '::1', 'Location Added - ID: 94', '2019-08-01 07:44:37'),
(575, 2, '::1', 'Location Added - ID: 95', '2019-08-01 07:44:54'),
(576, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-03 02:36:21'),
(577, 2, '::1', 'Location Added - ID: 96', '2019-08-03 02:38:57'),
(578, 2, '::1', 'Location Added - ID: 97', '2019-08-03 02:39:25'),
(579, 2, '::1', 'Location Added - ID: 98', '2019-08-03 02:39:42'),
(580, 2, '::1', 'Location Added - ID: 99', '2019-08-03 02:39:56'),
(581, 2, '::1', 'Asset Added - ID: 104', '2019-08-03 02:44:50'),
(582, 2, '::1', 'Asset Added - ID: 105', '2019-08-03 02:47:52'),
(583, 2, '::1', 'Supplier Added - ID: 11', '2019-08-03 03:01:03'),
(584, 2, '::1', 'Asset Edited - ID: 104', '2019-08-03 03:01:35'),
(585, 2, '::1', 'Asset Edited - ID: 105', '2019-08-03 03:01:49'),
(586, 2, '::1', 'Asset Added - ID: 106', '2019-08-03 03:03:40'),
(587, 2, '::1', 'Asset Added - ID: 107', '2019-08-03 03:05:50'),
(588, 2, '::1', 'Asset Added - ID: 108', '2019-08-03 03:07:34'),
(589, 2, '::1', 'Asset Edited - ID: 105', '2019-08-03 03:16:31'),
(590, 2, '::1', 'Asset Added - ID: 109', '2019-08-03 03:19:01'),
(591, 2, '::1', 'Location Added - ID: 100', '2019-08-03 03:40:25'),
(592, 2, '::1', 'License Added - ID: 69', '2019-08-03 03:43:19'),
(593, 2, '::1', 'License Added - ID: 70', '2019-08-03 03:43:40'),
(594, 2, '::1', 'License Added - ID: 71', '2019-08-03 03:44:10'),
(595, 2, '::1', 'License Added - ID: 72', '2019-08-03 03:44:33'),
(596, 2, '::1', 'License Added - ID: 73', '2019-08-03 03:45:02'),
(597, 2, '::1', 'License Added - ID: 74', '2019-08-03 03:45:33'),
(598, 2, '::1', 'License Added - ID: 75', '2019-08-03 03:45:55'),
(599, 2, '::1', 'Location Added - ID: 101', '2019-08-03 03:48:42'),
(600, 2, '::1', 'Asset Added - ID: 110', '2019-08-03 03:51:46'),
(601, 2, '::1', 'Supplier Added - ID: 12', '2019-08-03 03:52:02'),
(602, 2, '::1', 'Asset Added - ID: 111', '2019-08-03 03:54:01'),
(603, 2, '::1', 'Location Added - ID: 102', '2019-08-03 03:54:15'),
(604, 2, '::1', 'Asset Added - ID: 112', '2019-08-03 03:56:26'),
(605, 2, '::1', 'Asset Added - ID: 113', '2019-08-03 03:59:03'),
(606, 2, '::1', 'Asset Added - ID: 114', '2019-08-03 04:01:09'),
(607, 2, '::1', 'Location Added - ID: 103', '2019-08-03 05:35:32'),
(608, 2, '::1', 'Asset Added - ID: 115', '2019-08-03 05:37:59'),
(609, 2, '::1', 'Asset Added - ID: 116', '2019-08-03 05:40:21'),
(610, 2, '::1', 'Location Added - ID: 104', '2019-08-03 05:40:36'),
(611, 2, '::1', 'Asset Added - ID: 117', '2019-08-03 05:43:28'),
(612, 2, '::1', 'Asset Added - ID: 118', '2019-08-03 06:21:11'),
(613, 2, '::1', 'Asset Added - ID: 119', '2019-08-03 06:23:23'),
(614, 2, '::1', 'Location Added - ID: 105', '2019-08-03 06:23:38'),
(615, 2, '::1', 'Asset Added - ID: 120', '2019-08-03 06:25:37'),
(616, 2, '::1', 'Asset Added - ID: 121', '2019-08-03 06:28:31'),
(617, 2, '::1', 'Asset Added - ID: 122', '2019-08-03 06:31:22'),
(618, 2, '::1', 'Asset Added - ID: 123', '2019-08-03 06:32:43'),
(619, 2, '::1', 'Asset Added - ID: 124', '2019-08-03 06:34:50'),
(620, 2, '::1', 'Asset Added - ID: 125', '2019-08-03 06:37:04'),
(621, 2, '::1', 'Asset Added - ID: 126', '2019-08-03 06:38:55'),
(622, 2, '::1', 'Asset Added - ID: 127', '2019-08-03 06:40:51'),
(623, 2, '::1', 'Location Added - ID: 106', '2019-08-03 06:41:34'),
(624, 2, '::1', 'Location Added - ID: 107', '2019-08-03 06:41:45'),
(625, 2, '::1', 'Asset Added - ID: 128', '2019-08-03 06:46:18'),
(626, 2, '::1', 'Asset Added - ID: 129', '2019-08-03 06:58:24'),
(627, 2, '::1', 'Asset Added - ID: 130', '2019-08-03 07:02:06'),
(628, 2, '::1', 'Location Added - ID: 109', '2019-08-03 07:02:22'),
(629, 2, '::1', 'Asset Edited - ID: 130', '2019-08-03 07:03:22'),
(630, 2, '::1', 'Asset Added - ID: 131', '2019-08-03 07:05:11'),
(631, 2, '::1', 'Asset Added - ID: 132', '2019-08-03 07:07:20'),
(632, 2, '::1', 'Asset Added - ID: 133', '2019-08-03 07:08:34'),
(633, 2, '::1', 'Asset Edited - ID: 133', '2019-08-03 07:10:28'),
(634, 2, '::1', 'Asset Added - ID: 134', '2019-08-03 07:13:53'),
(635, 2, '::1', 'Asset Added - ID: 135', '2019-08-03 07:15:28'),
(636, 2, '::1', 'Location Added - ID: 110', '2019-08-03 07:15:57'),
(637, 2, '::1', 'Location Added - ID: 111', '2019-08-03 07:16:10'),
(638, 2, '::1', 'Location Added - ID: 112', '2019-08-03 07:16:23'),
(639, 2, '::1', 'Location Added - ID: 113', '2019-08-03 07:16:37'),
(640, 2, '::1', 'Location Added - ID: 114', '2019-08-03 07:16:48'),
(641, 2, '::1', 'Location Added - ID: 115', '2019-08-03 07:17:12'),
(642, 2, '::1', 'Location Added - ID: 116', '2019-08-03 07:17:28'),
(643, 2, '::1', 'Location Added - ID: 117', '2019-08-03 07:17:39'),
(644, 2, '::1', 'Location Added - ID: 118', '2019-08-03 07:17:57'),
(645, 2, '::1', 'Location Added - ID: 119', '2019-08-03 07:18:13'),
(646, 2, '::1', 'Location Added - ID: 120', '2019-08-03 07:18:24'),
(647, 2, '::1', 'Location Added - ID: 121', '2019-08-03 07:18:35'),
(648, 2, '::1', 'Location Added - ID: 122', '2019-08-03 07:19:06'),
(649, 2, '::1', 'Location Added - ID: 123', '2019-08-03 07:19:19'),
(650, 2, '::1', 'Location Added - ID: 124', '2019-08-03 07:19:30'),
(651, 2, '::1', 'Location Added - ID: 125', '2019-08-03 07:19:40'),
(652, 2, '::1', 'Location Added - ID: 126', '2019-08-03 07:20:15'),
(653, 2, '::1', 'Location Added - ID: 127', '2019-08-03 07:31:21'),
(654, 2, '::1', 'Location Added - ID: 128', '2019-08-03 07:31:38'),
(655, 2, '::1', 'Location Added - ID: 129', '2019-08-03 07:31:53'),
(656, 2, '::1', 'Location Added - ID: 130', '2019-08-03 07:32:07'),
(657, 2, '::1', 'Location Added - ID: 131', '2019-08-03 07:32:21'),
(658, 2, '::1', 'Location Added - ID: 132', '2019-08-03 07:32:41'),
(659, 2, '::1', 'Location Added - ID: 133', '2019-08-03 07:32:50'),
(660, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-06 02:31:33'),
(661, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-07 02:35:46'),
(662, 2, '::1', 'AssetCategory Added - ID: 12', '2019-08-07 07:20:54'),
(663, 2, '::1', 'AssetCategory Edited - ID: 12', '2019-08-07 07:21:05'),
(664, 2, '::1', 'AssetCategory Added - ID: 13', '2019-08-07 07:21:25'),
(665, 2, '::1', 'License Added - ID: 76', '2019-08-07 07:22:09'),
(666, 2, '::1', 'AssetCategory Added - ID: 14', '2019-08-07 07:24:22'),
(667, 2, '::1', 'License Added - ID: 77', '2019-08-07 07:25:12'),
(668, 2, '::1', 'License Added - ID: 78', '2019-08-07 07:25:44'),
(669, 2, '::1', 'License Added - ID: 79', '2019-08-07 07:27:58'),
(670, 2, '::1', 'Asset Added - ID: 136', '2019-08-07 07:36:04'),
(671, 2, '::1', 'License Added - ID: 80', '2019-08-07 07:36:31'),
(672, 2, '::1', 'License Added - ID: 81', '2019-08-07 07:37:39'),
(673, 2, '::1', 'License Added - ID: 82', '2019-08-07 07:38:06'),
(674, 2, '::1', 'License Added - ID: 83', '2019-08-07 07:39:27'),
(675, 2, '::1', 'Asset Added - ID: 137', '2019-08-07 07:41:29'),
(676, 2, '::1', 'License Added - ID: 84', '2019-08-07 07:45:29'),
(677, 2, '::1', 'License Added - ID: 85', '2019-08-07 07:46:08'),
(678, 2, '::1', 'License Added - ID: 86', '2019-08-07 07:48:19'),
(679, 2, '::1', 'License Added - ID: 87', '2019-08-07 07:48:40'),
(680, 2, '::1', 'License Added - ID: 88', '2019-08-07 07:50:21'),
(681, 2, '::1', 'Asset Added - ID: 138', '2019-08-07 07:57:00'),
(682, 2, '::1', 'Asset Added - ID: 139', '2019-08-07 07:59:35'),
(683, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-09 01:33:14'),
(684, 2, '::1', 'License Added - ID: 89', '2019-08-09 01:45:18'),
(685, 2, '::1', 'License Added - ID: 90', '2019-08-09 01:47:08'),
(686, 2, '::1', 'License Added - ID: 91', '2019-08-09 01:48:07'),
(687, 2, '::1', 'License Added - ID: 92', '2019-08-09 01:48:44'),
(688, 2, '::1', 'Asset Edited - ID: 127', '2019-08-09 01:51:31'),
(689, 2, '::1', 'Asset Edited - ID: 127', '2019-08-09 01:52:46'),
(690, 2, '::1', 'License Added - ID: 93', '2019-08-09 01:56:34'),
(691, 2, '::1', 'License Added - ID: 94', '2019-08-09 01:57:20'),
(692, 2, '::1', 'License Added - ID: 95', '2019-08-09 01:57:55'),
(693, 2, '::1', 'License Added - ID: 96', '2019-08-09 02:10:08'),
(694, 2, '::1', 'License Added - ID: 97', '2019-08-09 02:10:36'),
(695, 2, '::1', 'License Added - ID: 98', '2019-08-09 02:13:24'),
(696, 2, '::1', 'License Added - ID: 99', '2019-08-09 02:13:55'),
(697, 2, '::1', 'License Added - ID: 100', '2019-08-09 02:15:28'),
(698, 2, '::1', 'Supplier Added - ID: 13', '2019-08-09 03:04:28'),
(699, 2, '::1', 'Asset Added - ID: 140', '2019-08-09 03:06:36'),
(700, 2, '::1', 'Asset Added - ID: 141', '2019-08-09 03:11:18'),
(701, 2, '::1', 'Asset Added - ID: 142', '2019-08-09 03:14:26'),
(702, 2, '::1', 'Location Edited - ID: 110', '2019-08-09 03:18:21'),
(703, 2, '::1', 'Location Added - ID: 134', '2019-08-09 03:19:08'),
(704, 2, '::1', 'Location Added - ID: 135', '2019-08-09 03:19:32'),
(705, 2, '::1', 'Asset Edited - ID: 140', '2019-08-09 03:19:54'),
(706, 2, '::1', 'Asset Edited - ID: 141', '2019-08-09 03:20:20'),
(707, 2, '::1', 'Asset Added - ID: 143', '2019-08-09 03:23:03'),
(708, 2, '::1', 'Location Edited - ID: 136', '2019-08-09 03:23:18'),
(709, 2, '::1', 'Location Deleted - ID: 135', '2019-08-09 03:24:03'),
(710, 2, '::1', 'Asset Edited - ID: 143', '2019-08-09 03:24:38'),
(711, 2, '::1', 'Asset Added - ID: 144', '2019-08-09 03:26:49'),
(712, 2, '::1', 'License Added - ID: 101', '2019-08-09 03:29:02'),
(713, 2, '::1', 'License Added - ID: 102', '2019-08-09 03:29:52'),
(714, 2, '::1', 'License Added - ID: 103', '2019-08-09 03:30:18'),
(715, 2, '::1', 'License Added - ID: 104', '2019-08-09 03:30:46'),
(716, 2, '::1', 'License Added - ID: 105', '2019-08-09 03:31:10'),
(717, 2, '::1', 'Asset Added - ID: 145', '2019-08-09 03:37:10'),
(718, 2, '::1', 'Asset Added - ID: 146', '2019-08-09 04:05:52'),
(719, 2, '::1', 'License Added - ID: 106', '2019-08-09 04:06:31'),
(720, 2, '::1', 'License Added - ID: 107', '2019-08-09 04:07:09'),
(721, 2, '::1', 'Asset Added - ID: 147', '2019-08-09 04:10:27'),
(722, 2, '::1', 'Asset Added - ID: 148', '2019-08-09 04:12:06'),
(723, 2, '::1', 'Asset Added - ID: 149', '2019-08-09 04:20:13'),
(724, 2, '::1', 'Asset Added - ID: 150', '2019-08-09 04:28:12'),
(725, 2, '::1', 'License Added - ID: 108', '2019-08-09 04:41:57'),
(726, 2, '::1', 'License Added - ID: 109', '2019-08-09 04:42:20'),
(727, 2, '::1', 'License Added - ID: 110', '2019-08-09 04:43:24'),
(728, 2, '::1', 'License Added - ID: 111', '2019-08-09 04:43:59'),
(729, 2, '::1', 'Asset Added - ID: 151', '2019-08-09 04:47:11'),
(730, 2, '::1', 'Asset Edited - ID: 151', '2019-08-09 04:50:16'),
(731, 2, '::1', 'Asset Edited - ID: 151', '2019-08-09 04:51:41'),
(732, 2, '::1', 'Asset Added - ID: 152', '2019-08-09 04:53:50'),
(733, 2, '::1', 'Asset Edited - ID: 152', '2019-08-09 04:55:10'),
(734, 2, '::1', 'Asset Added - ID: 153', '2019-08-09 04:57:14'),
(735, 2, '::1', 'Asset Added - ID: 154', '2019-08-09 05:00:42'),
(736, 2, '::1', 'License Added - ID: 112', '2019-08-09 05:01:30'),
(737, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-12 02:13:58'),
(738, 2, '::1', 'Asset Edited - ID: 151', '2019-08-12 02:19:18'),
(739, 2, '::1', 'Asset Added - ID: 155', '2019-08-12 02:27:13'),
(740, 2, '::1', 'Asset Added - ID: 156', '2019-08-12 02:29:51'),
(741, 2, '::1', 'Asset Added - ID: 157', '2019-08-12 02:39:21'),
(742, 2, '::1', 'Asset Added - ID: 158', '2019-08-12 02:41:09'),
(743, 2, '::1', 'Asset Added - ID: 159', '2019-08-12 02:43:51'),
(744, 2, '::1', 'Asset Added - ID: 160', '2019-08-12 02:48:23'),
(745, 2, '::1', 'Asset Added - ID: 161', '2019-08-12 03:04:20'),
(746, 2, '::1', 'Asset Added - ID: 162', '2019-08-12 03:07:40'),
(747, 2, '::1', 'Asset Edited - ID: 162', '2019-08-12 03:09:13'),
(748, 2, '::1', 'Asset Added - ID: 163', '2019-08-12 03:12:28'),
(749, 2, '::1', 'Asset Added - ID: 164', '2019-08-12 03:15:12'),
(750, 2, '::1', 'Asset Added - ID: 165', '2019-08-12 03:17:16'),
(751, 2, '::1', 'Location Added - ID: 137', '2019-08-12 03:18:17'),
(752, 2, '::1', 'Asset Added - ID: 166', '2019-08-12 03:21:53'),
(753, 2, '::1', 'Asset Added - ID: 167', '2019-08-12 04:01:57'),
(754, 2, '::1', 'Asset Added - ID: 168', '2019-08-12 04:04:14'),
(755, 2, '::1', 'Asset Added - ID: 169', '2019-08-12 04:05:54'),
(756, 2, '::1', 'Asset Added - ID: 170', '2019-08-12 04:06:58'),
(757, 2, '::1', 'Asset Edited - ID: 169', '2019-08-12 04:07:46'),
(758, 2, '::1', 'Asset Edited - ID: 160', '2019-08-12 04:08:53'),
(759, 2, '::1', 'Asset Edited - ID: 161', '2019-08-12 04:10:09'),
(760, 2, '::1', 'Asset Edited - ID: 155', '2019-08-12 04:10:45'),
(761, 2, '::1', 'Asset Added - ID: 171', '2019-08-12 04:14:43'),
(762, 2, '::1', 'Asset Edited - ID: 171', '2019-08-12 04:15:17'),
(763, 2, '::1', 'Asset Edited - ID: 158', '2019-08-12 04:15:58'),
(764, 2, '::1', 'Asset Edited - ID: 156', '2019-08-12 04:16:27'),
(765, 2, '::1', 'Asset Edited - ID: 159', '2019-08-12 04:16:47');
INSERT INTO `systemlog` (`id`, `peopleid`, `ipaddress`, `description`, `timestamp`) VALUES
(766, 2, '::1', 'License Added - ID: 113', '2019-08-12 04:27:17'),
(767, 2, '::1', 'License Added - ID: 114', '2019-08-12 04:27:43'),
(768, 2, '::1', 'License Added - ID: 115', '2019-08-12 04:29:45'),
(769, 2, '::1', 'License Added - ID: 116', '2019-08-12 04:32:10'),
(770, 2, '::1', 'License Added - ID: 117', '2019-08-12 04:32:49'),
(771, 2, '::1', 'License Added - ID: 118', '2019-08-12 04:33:40'),
(772, 2, '::1', 'Asset Added - ID: 172', '2019-08-12 04:46:49'),
(773, 2, '::1', 'Asset Added - ID: 173', '2019-08-12 04:48:31'),
(774, 2, '::1', 'License Added - ID: 119', '2019-08-12 04:49:23'),
(775, 2, '::1', 'License Added - ID: 120', '2019-08-12 04:49:53'),
(776, 2, '::1', 'License Added - ID: 121', '2019-08-12 04:50:22'),
(777, 2, '::1', 'Location Edited - ID: 121', '2019-08-12 06:12:50'),
(778, 2, '::1', 'Asset Added - ID: 174', '2019-08-12 06:24:04'),
(779, 2, '::1', 'License Added - ID: 122', '2019-08-12 06:24:49'),
(780, 2, '::1', 'License Added - ID: 123', '2019-08-12 06:25:22'),
(781, 2, '::1', 'Asset Added - ID: 175', '2019-08-12 06:29:33'),
(782, 2, '::1', 'Asset Edited - ID: 174', '2019-08-12 06:43:16'),
(783, 2, '::1', 'Asset Edited - ID: 175', '2019-08-12 06:44:28'),
(784, 2, '::1', 'Asset Added - ID: 176', '2019-08-12 07:02:27'),
(785, 2, '::1', 'Asset Added - ID: 177', '2019-08-12 07:06:44'),
(786, 2, '::1', 'Asset Added - ID: 178', '2019-08-12 07:08:59'),
(787, 2, '::1', 'Asset Added - ID: 179', '2019-08-12 07:11:05'),
(788, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-13 02:08:10'),
(789, 2, '::1', 'Asset Added - ID: 180', '2019-08-13 02:21:11'),
(790, 2, '::1', 'Asset Added - ID: 181', '2019-08-13 02:24:29'),
(791, 2, '::1', 'Asset Added - ID: 182', '2019-08-13 02:28:00'),
(792, 2, '::1', 'Location Added - ID: 138', '2019-08-13 02:35:30'),
(793, 2, '::1', 'Asset Added - ID: 183', '2019-08-13 02:41:46'),
(794, 2, '::1', 'License Added - ID: 124', '2019-08-13 02:42:15'),
(795, 2, '::1', 'Asset Edited - ID: 183', '2019-08-13 02:55:08'),
(796, 2, '::1', 'License Added - ID: 125', '2019-08-13 03:00:02'),
(797, 2, '::1', 'Asset Added - ID: 184', '2019-08-13 03:05:31'),
(798, 2, '::1', 'License Added - ID: 126', '2019-08-13 03:08:37'),
(799, 2, '::1', 'License Added - ID: 127', '2019-08-13 03:09:13'),
(800, 2, '::1', 'License Added - ID: 128', '2019-08-13 03:09:49'),
(801, 2, '::1', 'Asset Added - ID: 185', '2019-08-13 03:13:25'),
(802, 2, '::1', 'Asset Added - ID: 186', '2019-08-13 03:16:23'),
(803, 2, '::1', 'Asset Edited - ID: 185', '2019-08-13 03:16:50'),
(804, 2, '::1', 'Asset Added - ID: 187', '2019-08-13 03:28:19'),
(805, 2, '::1', 'Asset Added - ID: 188', '2019-08-13 03:30:08'),
(806, 2, '::1', 'Asset Added - ID: 189', '2019-08-13 03:35:08'),
(807, 2, '::1', 'Asset Added - ID: 190', '2019-08-13 03:36:54'),
(808, 2, '::1', 'Asset Added - ID: 191', '2019-08-13 03:38:44'),
(809, 2, '::1', 'Asset Added - ID: 192', '2019-08-13 03:40:19'),
(810, 2, '::1', 'Asset Added - ID: 193', '2019-08-13 03:42:26'),
(811, 2, '::1', 'Asset Added - ID: 194', '2019-08-13 03:49:33'),
(812, 2, '::1', 'Asset Added - ID: 195', '2019-08-13 03:52:23'),
(813, 2, '::1', 'Asset Edited - ID: 189', '2019-08-13 03:57:35'),
(814, 2, '::1', 'Asset Added - ID: 196', '2019-08-13 04:07:17'),
(815, 2, '::1', 'Asset Added - ID: 197', '2019-08-13 04:09:51'),
(816, 2, '::1', 'Asset Added - ID: 198', '2019-08-13 04:12:42'),
(817, 2, '::1', 'Asset Added - ID: 199', '2019-08-13 04:14:46'),
(818, 2, '::1', 'Asset Added - ID: 200', '2019-08-13 04:17:23'),
(819, 2, '::1', 'License Added - ID: 129', '2019-08-13 06:10:36'),
(820, 2, '::1', 'License Added - ID: 130', '2019-08-13 06:11:22'),
(821, 2, '::1', 'License Added - ID: 131', '2019-08-13 06:12:20'),
(822, 2, '::1', 'License Added - ID: 132', '2019-08-13 06:25:40'),
(823, 2, '::1', 'Asset Edited - ID: 190', '2019-08-13 06:36:02'),
(824, 2, '::1', 'Asset Edited - ID: 190', '2019-08-13 06:36:40'),
(825, 2, '::1', 'Location Added - ID: 141', '2019-08-13 06:40:49'),
(826, 2, '::1', 'Asset Added - ID: 201', '2019-08-13 06:45:12'),
(827, 2, '::1', 'Asset Edited - ID: 201', '2019-08-13 06:45:44'),
(828, 2, '::1', 'License Added - ID: 133', '2019-08-13 06:46:12'),
(829, 2, '::1', 'Asset Added - ID: 202', '2019-08-13 06:59:37'),
(830, 2, '::1', 'Asset Added - ID: 203', '2019-08-13 07:01:33'),
(831, 2, '::1', 'Asset Edited - ID: 202', '2019-08-13 07:03:46'),
(832, 2, '::1', 'Asset Added - ID: 204', '2019-08-13 07:06:39'),
(833, 2, '::1', 'Asset Added - ID: 205', '2019-08-13 07:09:29'),
(834, 2, '::1', 'Asset Added - ID: 206', '2019-08-13 07:11:00'),
(835, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-14 02:09:39'),
(836, 2, '::1', 'Asset Added - ID: 207', '2019-08-14 02:13:59'),
(837, 2, '::1', 'Asset Added - ID: 208', '2019-08-14 02:15:58'),
(838, 2, '::1', 'License Added - ID: 134', '2019-08-14 02:16:45'),
(839, 2, '::1', 'License Added - ID: 135', '2019-08-14 02:17:22'),
(840, 2, '::1', 'Asset Added - ID: 209', '2019-08-14 02:20:51'),
(841, 2, '::1', 'License Added - ID: 136', '2019-08-14 02:21:27'),
(842, 2, '::1', 'License Added - ID: 137', '2019-08-14 02:22:57'),
(843, 2, '::1', 'Location Added - ID: 142', '2019-08-14 02:24:47'),
(844, 2, '::1', 'Asset Added - ID: 210', '2019-08-14 02:26:11'),
(845, 2, '::1', 'License Added - ID: 138', '2019-08-14 02:26:49'),
(846, 2, '::1', 'Location Added - ID: 143', '2019-08-14 02:38:04'),
(847, 2, '::1', 'Location Added - ID: 144', '2019-08-14 02:39:31'),
(848, 2, '::1', 'Location Added - ID: 145', '2019-08-14 02:39:51'),
(849, 2, '::1', 'Supplier Added - ID: 14', '2019-08-14 02:40:11'),
(850, 2, '::1', 'Asset Added - ID: 211', '2019-08-14 02:58:22'),
(851, 2, '::1', 'Asset Added - ID: 212', '2019-08-14 03:01:44'),
(852, 2, '::1', 'Asset Added - ID: 213', '2019-08-14 03:04:30'),
(853, 2, '::1', 'License Added - ID: 139', '2019-08-14 03:08:22'),
(854, 2, '::1', 'License Added - ID: 140', '2019-08-14 03:09:02'),
(855, 2, '::1', 'License Added - ID: 141', '2019-08-14 03:09:47'),
(856, 2, '::1', 'Location Added - ID: 146', '2019-08-14 03:17:49'),
(857, 2, '::1', 'Location Added - ID: 147', '2019-08-14 03:18:28'),
(858, 2, '::1', 'Location Added - ID: 148', '2019-08-14 03:18:36'),
(859, 2, '::1', 'Asset Added - ID: 214', '2019-08-14 03:25:55'),
(860, 2, '::1', 'Asset Added - ID: 215', '2019-08-14 03:29:32'),
(861, 2, '::1', 'Asset Added - ID: 216', '2019-08-14 03:31:33'),
(862, 2, '::1', 'License Added - ID: 142', '2019-08-14 03:41:16'),
(863, 2, '::1', 'License Added - ID: 143', '2019-08-14 03:42:24'),
(864, 2, '::1', 'License Added - ID: 144', '2019-08-14 03:43:20'),
(865, 2, '::1', 'AssetCategory Added - ID: 15', '2019-08-14 03:45:02'),
(866, 2, '::1', 'AssetCategory Edited - ID: 15', '2019-08-14 03:45:08'),
(867, 2, '::1', 'AssetCategory Edited - ID: 15', '2019-08-14 03:45:16'),
(868, 2, '::1', 'License Added - ID: 145', '2019-08-14 03:45:50'),
(869, 2, '::1', 'License Added - ID: 146', '2019-08-14 03:46:51'),
(870, 2, '::1', 'Asset Edited - ID: 216', '2019-08-14 03:49:27'),
(871, 2, '::1', 'Asset Edited - ID: 214', '2019-08-14 03:50:28'),
(872, 2, '::1', 'Asset Edited - ID: 214', '2019-08-14 03:53:12'),
(873, 2, '::1', 'Asset Edited - ID: 215', '2019-08-14 04:00:56'),
(874, 2, '::1', 'License Added - ID: 147', '2019-08-14 04:02:34'),
(875, 2, '::1', 'Location Added - ID: 149', '2019-08-14 04:34:37'),
(876, 2, '::1', 'Asset Added - ID: 217', '2019-08-14 04:42:03'),
(877, 2, '::1', 'License Added - ID: 148', '2019-08-14 04:46:10'),
(878, 2, '::1', 'License Added - ID: 149', '2019-08-14 04:46:46'),
(879, 2, '::1', 'Asset Edited - ID: 217', '2019-08-14 04:47:32'),
(880, 2, '::1', 'Location Added - ID: 150', '2019-08-14 07:56:19'),
(881, 2, '::1', 'Asset Added - ID: 218', '2019-08-14 07:59:16'),
(882, 2, '::1', 'Location Added - ID: 151', '2019-08-14 08:00:24'),
(883, 2, '::1', 'Asset Added - ID: 219', '2019-08-14 08:01:40'),
(884, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-15 02:43:54'),
(885, 2, '::1', 'Location Added - ID: 152', '2019-08-15 02:45:09'),
(886, 2, '::1', 'Asset Added - ID: 220', '2019-08-15 03:04:09'),
(887, 2, '::1', 'Asset Added - ID: 221', '2019-08-15 03:07:35'),
(888, 2, '::1', 'Asset Added - ID: 222', '2019-08-15 03:38:11'),
(889, 2, '::1', 'Asset Added - ID: 223', '2019-08-15 03:41:17'),
(890, 2, '::1', 'License Added - ID: 150', '2019-08-15 03:42:37'),
(891, 2, '::1', 'License Added - ID: 151', '2019-08-15 03:45:28'),
(892, 2, '::1', 'Location Added - ID: 153', '2019-08-15 04:28:02'),
(893, 2, '::1', 'Asset Added - ID: 224', '2019-08-15 04:31:19'),
(894, 2, '::1', 'Asset Edited - ID: 213', '2019-08-15 04:33:16'),
(895, 2, '::1', 'License Added - ID: 152', '2019-08-15 04:35:32'),
(896, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-15 06:19:51'),
(897, 2, '::1', 'Location Added - ID: 154', '2019-08-15 06:20:20'),
(898, 2, '::1', 'Asset Added - ID: 225', '2019-08-15 07:36:20'),
(899, 2, '::1', 'Asset Edited - ID: 225', '2019-08-15 07:48:26'),
(900, 2, '::1', 'Asset Added - ID: 226', '2019-08-15 07:50:58'),
(901, 2, '::1', 'Asset Added - ID: 227', '2019-08-15 07:53:28'),
(902, 2, '::1', 'Asset Added - ID: 228', '2019-08-15 07:55:23'),
(903, 2, '::1', 'Location Added - ID: 155', '2019-08-15 07:55:55'),
(904, 2, '::1', 'Asset Edited - ID: 228', '2019-08-15 07:56:31'),
(905, 2, '::1', 'Asset Edited - ID: 227', '2019-08-15 07:57:26'),
(906, 2, '::1', 'Asset Edited - ID: 228', '2019-08-15 07:57:47'),
(907, 2, '::1', 'Asset Added - ID: 229', '2019-08-15 08:06:19'),
(908, 2, '::1', 'License Added - ID: 153', '2019-08-15 08:10:57'),
(909, 2, '::1', 'License Added - ID: 154', '2019-08-15 08:11:55'),
(910, 2, '::1', 'Location Added - ID: 156', '2019-08-15 08:14:12'),
(911, 2, '::1', 'Asset Added - ID: 230', '2019-08-15 08:16:15'),
(912, 2, '::1', 'Asset Added - ID: 231', '2019-08-15 08:18:20'),
(913, 2, '::1', 'Asset Edited - ID: 230', '2019-08-15 08:19:01'),
(914, 2, '::1', 'License Added - ID: 155', '2019-08-15 08:19:30'),
(915, 2, '::1', 'Location Added - ID: 157', '2019-08-15 08:22:20'),
(916, 2, '::1', 'Asset Added - ID: 232', '2019-08-15 08:24:27'),
(917, 2, '::1', 'Asset Added - ID: 233', '2019-08-15 08:25:58'),
(918, 2, '::1', 'Asset Added - ID: 234', '2019-08-15 08:27:28'),
(919, 2, '::1', 'Asset Added - ID: 235', '2019-08-15 08:29:04'),
(920, 2, '::1', 'License Added - ID: 156', '2019-08-15 08:29:48'),
(921, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-19 02:14:08'),
(922, 2, '::1', 'Asset Edited - ID: 224', '2019-08-19 02:18:16'),
(923, 2, '::1', 'Asset Added - ID: 236', '2019-08-19 02:21:51'),
(924, 2, '::1', 'Location Added - ID: 158', '2019-08-19 02:24:02'),
(925, 2, '::1', 'Asset Added - ID: 237', '2019-08-19 02:26:02'),
(926, 2, '::1', 'Asset Added - ID: 238', '2019-08-19 02:27:14'),
(927, 2, '::1', 'License Added - ID: 157', '2019-08-19 02:29:15'),
(928, 2, '::1', 'Location Added - ID: 159', '2019-08-19 02:30:58'),
(929, 2, '::1', 'Asset Added - ID: 239', '2019-08-19 02:36:32'),
(930, 2, '::1', 'Asset Added - ID: 240', '2019-08-19 02:38:22'),
(931, 2, '::1', 'Asset Added - ID: 241', '2019-08-19 02:39:53'),
(932, 2, '::1', 'License Added - ID: 158', '2019-08-19 02:43:10'),
(933, 2, '::1', 'License Added - ID: 159', '2019-08-19 02:43:42'),
(934, 2, '::1', 'License Added - ID: 160', '2019-08-19 02:44:21'),
(935, 2, '::1', 'License Added - ID: 161', '2019-08-19 02:46:45'),
(936, 2, '::1', 'Location Added - ID: 160', '2019-08-19 03:27:04'),
(937, 2, '::1', 'Asset Added - ID: 242', '2019-08-19 05:01:41'),
(938, 2, '::1', 'Supplier Added - ID: 15', '2019-08-19 05:04:02'),
(939, 2, '::1', 'Asset Edited - ID: 242', '2019-08-19 05:04:33'),
(940, 2, '::1', 'Asset Added - ID: 243', '2019-08-19 05:06:26'),
(941, 2, '::1', 'License Added - ID: 162', '2019-08-19 05:08:18'),
(942, 2, '::1', 'License Added - ID: 163', '2019-08-19 05:08:40'),
(943, 2, '::1', 'License Added - ID: 164', '2019-08-19 05:09:10'),
(944, 2, '::1', 'Asset Edited - ID: 242', '2019-08-19 06:41:30'),
(945, 2, '::1', 'Label Edited - ID: 11', '2019-08-19 06:42:35'),
(946, 2, '::1', 'Asset Edited - ID: 239', '2019-08-19 06:50:51'),
(947, 2, '::1', 'Location Added - ID: 161', '2019-08-19 06:59:28'),
(948, 2, '::1', 'Asset Added - ID: 244', '2019-08-19 07:17:32'),
(949, 2, '::1', 'License Added - ID: 165', '2019-08-19 07:18:05'),
(950, 2, '::1', 'Location Added - ID: 162', '2019-08-19 07:19:25'),
(951, 2, '::1', 'Asset Added - ID: 245', '2019-08-19 07:22:16'),
(952, 2, '::1', 'Asset Added - ID: 246', '2019-08-19 07:37:05'),
(953, 2, '::1', 'License Added - ID: 166', '2019-08-19 07:37:46'),
(954, 2, '::1', 'Location Added - ID: 163', '2019-08-19 08:00:56'),
(955, 2, '::1', 'Location Added - ID: 164', '2019-08-19 08:01:13'),
(956, 2, '::1', 'Location Added - ID: 165', '2019-08-19 08:03:54'),
(957, 2, '::1', 'Location Added - ID: 166', '2019-08-19 08:04:39'),
(958, 2, '::1', 'Location Added - ID: 167', '2019-08-19 08:07:09'),
(959, 2, '::1', 'Location Added - ID: 168', '2019-08-19 08:07:37'),
(960, 2, '::1', 'Location Added - ID: 169', '2019-08-19 08:07:45'),
(961, 2, '::1', 'Location Added - ID: 170', '2019-08-19 08:07:54'),
(962, 2, '::1', 'Location Added - ID: 171', '2019-08-19 08:08:03'),
(963, 2, '::1', 'Location Added - ID: 172', '2019-08-19 08:08:12'),
(964, 2, '::1', 'Location Added - ID: 173', '2019-08-19 08:08:24'),
(965, 2, '::1', 'Location Added - ID: 174', '2019-08-19 08:08:34'),
(966, 2, '::1', 'Location Added - ID: 175', '2019-08-19 08:09:56'),
(967, 2, '::1', 'User/Staff Logged Out - ID: 2', '2019-08-19 09:00:52'),
(968, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-20 02:22:54'),
(969, 2, '::1', 'Location Added - ID: 176', '2019-08-20 02:23:19'),
(970, 2, '::1', 'Location Deleted - ID: 176', '2019-08-20 02:23:58'),
(971, 2, '::1', 'Asset Added - ID: 247', '2019-08-20 02:28:33'),
(972, 2, '::1', 'Asset Added - ID: 248', '2019-08-20 02:32:39'),
(973, 2, '::1', 'Asset Edited - ID: 247', '2019-08-20 02:33:02'),
(974, 2, '::1', 'Asset Added - ID: 249', '2019-08-20 02:36:40'),
(975, 2, '::1', 'Asset Added - ID: 250', '2019-08-20 03:15:56'),
(976, 2, '::1', 'Asset Added - ID: 251', '2019-08-20 03:26:40'),
(977, 2, '::1', 'Location Edited - ID: 165', '2019-08-20 03:32:04'),
(978, 2, '::1', 'Location Deleted - ID: 166', '2019-08-20 03:32:31'),
(979, 2, '::1', 'Asset Edited - ID: 250', '2019-08-20 03:33:23'),
(980, 2, '::1', 'Location Deleted - ID: 169', '2019-08-20 03:38:11'),
(981, 2, '::1', 'Location Edited - ID: 170', '2019-08-20 03:39:12'),
(982, 2, '::1', 'Location Edited - ID: 168', '2019-08-20 03:40:20'),
(983, 2, '::1', 'Location Edited - ID: 171', '2019-08-20 03:40:34'),
(984, 2, '::1', 'Location Edited - ID: 172', '2019-08-20 03:40:49'),
(985, 2, '::1', 'Location Deleted - ID: 173', '2019-08-20 03:41:00'),
(986, 2, '::1', 'Location Deleted - ID: 174', '2019-08-20 03:41:10'),
(987, 2, '::1', 'Location Deleted - ID: 172', '2019-08-20 03:41:41'),
(988, 2, '::1', 'Location Edited - ID: 163', '2019-08-20 03:42:27'),
(989, 2, '::1', 'Location Edited - ID: 164', '2019-08-20 03:42:50'),
(990, 2, '::1', 'Asset Added - ID: 252', '2019-08-20 03:48:43'),
(991, 2, '::1', 'Asset Added - ID: 253', '2019-08-20 03:58:59'),
(992, 2, '::1', 'Asset Added - ID: 254', '2019-08-20 04:06:44'),
(993, 2, '::1', 'Asset Edited - ID: 254', '2019-08-20 04:34:26'),
(994, 2, '::1', 'Asset Edited - ID: 248', '2019-08-20 04:42:19'),
(995, 2, '::1', 'Asset Edited - ID: 248', '2019-08-20 04:44:22'),
(996, 2, '::1', 'Asset Edited - ID: 247', '2019-08-20 05:11:00'),
(997, 2, '::1', 'Asset Added - ID: 255', '2019-08-20 06:12:15'),
(998, 2, '::1', 'Asset Added - ID: 256', '2019-08-20 06:17:32'),
(999, 2, '::1', 'Asset Added - ID: 257', '2019-08-20 06:26:32'),
(1000, 2, '::1', 'License Added - ID: 167', '2019-08-20 06:34:46'),
(1001, 2, '::1', 'License Added - ID: 168', '2019-08-20 06:35:29'),
(1002, 2, '::1', 'License Added - ID: 169', '2019-08-20 06:36:21'),
(1003, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-20 08:26:58'),
(1004, 2, '::1', 'Asset Edited - ID: 166', '2019-08-20 08:44:54'),
(1005, 2, '::1', 'Asset Edited - ID: 166', '2019-08-20 09:08:48'),
(1006, 2, '::1', 'Asset Added - ID: 258', '2019-08-20 09:15:07'),
(1007, 2, '::1', 'Asset Added - ID: 259', '2019-08-20 09:15:59'),
(1008, 2, '::1', 'Asset Added - ID: 260', '2019-08-20 09:17:54'),
(1009, 2, '::1', 'Asset Added - ID: 261', '2019-08-20 09:18:49'),
(1010, 2, '::1', 'Asset Added - ID: 262', '2019-08-20 09:19:57'),
(1011, 2, '::1', 'Asset Added - ID: 263', '2019-08-20 09:20:44'),
(1012, 2, '::1', 'Asset Edited - ID: 261', '2019-08-20 09:21:38'),
(1013, 2, '::1', 'Asset Edited - ID: 260', '2019-08-20 09:22:18'),
(1014, 2, '::1', 'Asset Edited - ID: 259', '2019-08-20 09:22:37'),
(1015, 2, '::1', 'Location Added - ID: 178', '2019-08-20 09:24:24'),
(1016, 2, '::1', 'Location Added - ID: 179', '2019-08-20 09:24:38'),
(1017, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-21 02:17:28'),
(1018, 2, '::1', 'Asset Added - ID: 264', '2019-08-21 02:20:52'),
(1019, 2, '::1', 'Asset Added - ID: 265', '2019-08-21 02:25:53'),
(1020, 2, '::1', 'Asset Added - ID: 266', '2019-08-21 02:39:49'),
(1021, 2, '::1', 'Asset Edited - ID: 266', '2019-08-21 02:40:43'),
(1022, 2, '::1', 'Asset Added - ID: 267', '2019-08-21 02:42:10'),
(1023, 2, '::1', 'License Added - ID: 170', '2019-08-21 02:42:52'),
(1024, 2, '::1', 'License Added - ID: 171', '2019-08-21 02:43:31'),
(1025, 2, '::1', 'Location Added - ID: 180', '2019-08-21 02:45:13'),
(1026, 2, '::1', 'Asset Added - ID: 268', '2019-08-21 02:47:44'),
(1027, 2, '::1', 'Asset Added - ID: 269', '2019-08-21 02:49:46'),
(1028, 2, '::1', 'License Added - ID: 172', '2019-08-21 02:50:27'),
(1029, 2, '::1', 'Asset Edited - ID: 268', '2019-08-21 02:51:15'),
(1030, 2, '::1', 'Location Added - ID: 181', '2019-08-21 02:56:07'),
(1031, 2, '::1', 'Asset Added - ID: 270', '2019-08-21 03:06:00'),
(1032, 2, '::1', 'Asset Edited - ID: 270', '2019-08-21 03:17:54'),
(1033, 2, '::1', 'Asset Edited - ID: 270', '2019-08-21 03:25:52'),
(1034, 2, '::1', 'Asset Added - ID: 271', '2019-08-21 03:28:15'),
(1035, 2, '::1', 'Asset Edited - ID: 271', '2019-08-21 03:45:38'),
(1036, 2, '::1', 'Asset Added - ID: 272', '2019-08-21 03:53:54'),
(1037, 2, '::1', 'Asset Added - ID: 273', '2019-08-21 03:57:08'),
(1038, 2, '::1', 'Asset Added - ID: 274', '2019-08-21 04:05:30'),
(1039, 2, '::1', 'Asset Edited - ID: 274', '2019-08-21 04:06:37'),
(1040, 2, '::1', 'Location Added - ID: 182', '2019-08-21 04:11:00'),
(1041, 2, '::1', 'Asset Added - ID: 275', '2019-08-21 04:14:40'),
(1042, 2, '::1', 'Asset Edited - ID: 275', '2019-08-21 04:16:17'),
(1043, 2, '::1', 'Asset Added - ID: 276', '2019-08-21 04:19:25'),
(1044, 2, '::1', 'Asset Added - ID: 277', '2019-08-21 04:23:12'),
(1045, 2, '::1', 'License Added - ID: 173', '2019-08-21 04:43:03'),
(1046, 2, '::1', 'License Added - ID: 174', '2019-08-21 04:43:36'),
(1047, 2, '::1', 'Asset Edited - ID: 268', '2019-08-21 04:47:29'),
(1048, 2, '::1', 'Location Added - ID: 183', '2019-08-21 06:04:38'),
(1049, 2, '::1', 'Asset Added - ID: 278', '2019-08-21 06:07:49'),
(1050, 2, '::1', 'License Added - ID: 175', '2019-08-21 06:09:49'),
(1051, 2, '::1', 'Asset Edited - ID: 257', '2019-08-21 06:14:35'),
(1052, 2, '::1', 'Asset Added - ID: 279', '2019-08-21 06:18:20'),
(1053, 2, '::1', 'Asset Added - ID: 280', '2019-08-21 06:20:19'),
(1054, 2, '::1', 'Asset Added - ID: 281', '2019-08-21 06:26:42'),
(1055, 2, '::1', 'Asset Edited - ID: 257', '2019-08-21 06:28:00'),
(1056, 2, '::1', 'Asset Edited - ID: 279', '2019-08-21 06:29:21'),
(1057, 2, '::1', 'Asset Edited - ID: 279', '2019-08-21 06:29:38'),
(1058, 2, '::1', 'Asset Added - ID: 282', '2019-08-21 06:32:00'),
(1059, 2, '::1', 'Asset Edited - ID: 281', '2019-08-21 06:33:49'),
(1060, 2, '::1', 'Asset Added - ID: 283', '2019-08-21 06:37:43'),
(1061, 2, '::1', 'License Added - ID: 176', '2019-08-21 06:40:47'),
(1062, 2, '::1', 'License Added - ID: 177', '2019-08-21 06:42:17'),
(1063, 2, '::1', 'Location Added - ID: 185', '2019-08-21 06:43:22'),
(1064, 2, '::1', 'Asset Added - ID: 284', '2019-08-21 06:46:08'),
(1065, 2, '::1', 'License Added - ID: 178', '2019-08-21 06:46:36'),
(1066, 2, '::1', 'Location Added - ID: 186', '2019-08-21 06:47:31'),
(1067, 2, '::1', 'Location Edited - ID: 186', '2019-08-21 06:48:02'),
(1068, 2, '::1', 'Asset Added - ID: 285', '2019-08-21 06:49:57'),
(1069, 2, '::1', 'Asset Added - ID: 286', '2019-08-21 06:51:37'),
(1070, 2, '::1', 'Asset Edited - ID: 285', '2019-08-21 06:52:04'),
(1071, 2, '::1', 'License Added - ID: 179', '2019-08-21 06:53:33'),
(1072, 2, '::1', 'License Added - ID: 180', '2019-08-21 06:54:48'),
(1073, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-22 02:34:22'),
(1074, 2, '::1', 'Location Added - ID: 187', '2019-08-22 03:11:55'),
(1075, 2, '::1', 'Asset Added - ID: 287', '2019-08-22 03:14:21'),
(1076, 2, '::1', 'Location Added - ID: 188', '2019-08-22 03:35:29'),
(1077, 2, '::1', 'Asset Added - ID: 288', '2019-08-22 03:41:40'),
(1078, 2, '::1', 'Asset Added - ID: 289', '2019-08-22 03:44:34'),
(1079, 2, '::1', 'Asset Added - ID: 290', '2019-08-22 03:50:31'),
(1080, 2, '::1', 'Asset Added - ID: 291', '2019-08-22 03:53:35'),
(1081, 2, '::1', 'Asset Added - ID: 292', '2019-08-22 03:54:47'),
(1082, 2, '::1', 'Asset Added - ID: 293', '2019-08-22 03:55:59'),
(1083, 2, '::1', 'Asset Added - ID: 294', '2019-08-22 03:57:18'),
(1084, 2, '::1', 'License Added - ID: 181', '2019-08-22 03:58:18'),
(1085, 2, '::1', 'License Added - ID: 182', '2019-08-22 04:00:08'),
(1086, 2, '::1', 'License Added - ID: 183', '2019-08-22 04:00:48'),
(1087, 2, '::1', 'License Added - ID: 184', '2019-08-22 04:01:20'),
(1088, 2, '::1', 'License Added - ID: 185', '2019-08-22 04:01:52'),
(1089, 2, '::1', 'License Added - ID: 186', '2019-08-22 04:02:32'),
(1090, 2, '::1', 'License Added - ID: 187', '2019-08-22 04:03:05'),
(1091, 2, '::1', 'Asset Edited - ID: 288', '2019-08-22 04:05:15'),
(1092, 2, '::1', 'Asset Edited - ID: 289', '2019-08-22 04:05:25'),
(1093, 2, '::1', 'Asset Edited - ID: 290', '2019-08-22 04:05:36'),
(1094, 2, '::1', 'Asset Edited - ID: 291', '2019-08-22 04:05:50'),
(1095, 2, '::1', 'Asset Edited - ID: 292', '2019-08-22 04:06:03'),
(1096, 2, '::1', 'Asset Edited - ID: 293', '2019-08-22 04:06:14'),
(1097, 2, '::1', 'Asset Edited - ID: 294', '2019-08-22 04:06:26'),
(1098, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-22 07:18:03'),
(1099, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-24 02:49:38'),
(1100, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-27 02:16:31'),
(1101, 2, '::1', 'Location Added - ID: 189', '2019-08-27 02:24:09'),
(1102, 2, '::1', 'Asset Added - ID: 295', '2019-08-27 02:25:41'),
(1103, 2, '::1', 'Location Added - ID: 190', '2019-08-27 02:27:15'),
(1104, 2, '::1', 'Asset Added - ID: 296', '2019-08-27 02:29:48'),
(1105, 2, '::1', 'Asset Added - ID: 297', '2019-08-27 03:11:50'),
(1106, 2, '::1', 'Asset Added - ID: 298', '2019-08-27 03:20:50'),
(1107, 2, '::1', 'Asset Added - ID: 299', '2019-08-27 03:21:20'),
(1108, 2, '::1', 'User/Staff Logged Out - ID: 2', '2019-08-27 03:40:44'),
(1109, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-27 03:40:56'),
(1110, 2, '::1', 'Asset Edited - ID: 211', '2019-08-27 04:10:11'),
(1111, 2, '::1', 'Asset Edited - ID: 211', '2019-08-27 04:12:18'),
(1112, 2, '::1', 'Asset Edited - ID: 298', '2019-08-27 04:13:35'),
(1113, 2, '::1', 'Asset Edited - ID: 284', '2019-08-27 04:16:53'),
(1114, 2, '::1', 'Asset Edited - ID: 284', '2019-08-27 04:17:38'),
(1115, 2, '::1', 'Asset Edited - ID: 284', '2019-08-27 04:17:47'),
(1116, 2, '::1', 'Asset Edited - ID: 284', '2019-08-27 04:21:10'),
(1117, 2, '::1', 'Asset Edited - ID: 299', '2019-08-27 04:26:48'),
(1118, 2, '::1', 'Asset Edited - ID: 299', '2019-08-27 04:26:58'),
(1119, 2, '::1', 'Asset Edited - ID: 298', '2019-08-27 04:27:15'),
(1120, 2, '::1', 'Asset Edited - ID: 297', '2019-08-27 04:27:41'),
(1121, 2, '::1', 'Asset Edited - ID: 66', '2019-08-27 04:28:05'),
(1122, 2, '::1', 'Asset Edited - ID: 284', '2019-08-27 04:28:29'),
(1123, 2, '::1', 'Asset Edited - ID: 284', '2019-08-27 04:29:04'),
(1124, 2, '::1', 'Asset Edited - ID: 288', '2019-08-27 04:34:49'),
(1125, 2, '::1', 'Asset Edited - ID: 289', '2019-08-27 04:34:59'),
(1126, 2, '::1', 'Asset Edited - ID: 290', '2019-08-27 04:35:16'),
(1127, 2, '::1', 'Asset Edited - ID: 291', '2019-08-27 04:35:26'),
(1128, 2, '::1', 'Asset Edited - ID: 293', '2019-08-27 04:35:41'),
(1129, 2, '::1', 'Asset Edited - ID: 294', '2019-08-27 04:35:56'),
(1130, 2, '::1', 'Asset Edited - ID: 295', '2019-08-27 04:36:42'),
(1131, 2, '::1', 'Asset Edited - ID: 296', '2019-08-27 04:37:05'),
(1132, 2, '::1', 'Asset Added - ID: 300', '2019-08-27 04:42:42'),
(1133, 2, '::1', 'Asset Added - ID: 301', '2019-08-27 04:48:19'),
(1134, 2, '::1', 'Asset Added - ID: 302', '2019-08-27 04:53:16'),
(1135, 2, '::1', 'Asset Added - ID: 303', '2019-08-27 04:57:10'),
(1136, 2, '::1', 'Asset Added - ID: 304', '2019-08-27 06:19:09'),
(1137, 2, '::1', 'Asset Edited - ID: 304', '2019-08-27 06:19:49'),
(1138, 2, '::1', 'Asset Edited - ID: 300', '2019-08-27 06:20:43'),
(1139, 2, '::1', 'Asset Added - ID: 305', '2019-08-27 06:22:53'),
(1140, 2, '::1', 'Asset Added - ID: 306', '2019-08-27 06:39:40'),
(1141, 2, '::1', 'Asset Added - ID: 307', '2019-08-27 06:40:57'),
(1142, 2, '::1', 'Asset Added - ID: 308', '2019-08-27 06:42:24'),
(1143, 2, '::1', 'Asset Added - ID: 309', '2019-08-27 06:46:58'),
(1144, 2, '::1', 'Asset Added - ID: 310', '2019-08-27 06:49:36'),
(1145, 2, '::1', 'License Added - ID: 188', '2019-08-27 06:50:11'),
(1146, 2, '::1', 'License Added - ID: 189', '2019-08-27 06:51:54'),
(1147, 2, '::1', 'License Added - ID: 190', '2019-08-27 06:52:41'),
(1148, 2, '::1', 'License Added - ID: 191', '2019-08-27 06:53:20'),
(1149, 2, '::1', 'License Added - ID: 192', '2019-08-27 06:54:17'),
(1150, 2, '::1', 'License Added - ID: 193', '2019-08-27 06:55:35'),
(1151, 2, '::1', 'License Added - ID: 194', '2019-08-27 06:56:57'),
(1152, 2, '::1', 'License Added - ID: 195', '2019-08-27 06:57:30'),
(1153, 2, '::1', 'License Added - ID: 196', '2019-08-27 06:58:07'),
(1154, 2, '::1', 'Asset Added - ID: 311', '2019-08-27 06:59:58'),
(1155, 2, '::1', 'Asset Edited - ID: 307', '2019-08-27 07:21:56'),
(1156, 2, '::1', 'Location Added - ID: 191', '2019-08-27 09:08:55'),
(1157, 2, '::1', 'Asset Added - ID: 312', '2019-08-27 09:14:20'),
(1158, 2, '::1', 'Asset Added - ID: 313', '2019-08-27 09:18:08'),
(1159, 2, '::1', 'Asset Added - ID: 314', '2019-08-27 09:20:05'),
(1160, 2, '::1', 'Asset Added - ID: 315', '2019-08-27 09:23:34'),
(1161, 2, '::1', 'Asset Added - ID: 316', '2019-08-27 09:25:00'),
(1162, 2, '::1', 'Asset Edited - ID: 316', '2019-08-27 09:28:05'),
(1163, 2, '::1', 'Asset Edited - ID: 315', '2019-08-27 09:28:30'),
(1164, 2, '::1', 'Asset Edited - ID: 312', '2019-08-27 09:29:40'),
(1165, 2, '::1', 'Asset Added - ID: 317', '2019-08-27 09:37:27'),
(1166, 2, '::1', 'Asset Edited - ID: 317', '2019-08-27 09:37:46'),
(1167, 2, '::1', 'Asset Added - ID: 318', '2019-08-27 09:39:34'),
(1168, 2, '::1', 'Asset Added - ID: 319', '2019-08-27 09:42:43'),
(1169, 2, '::1', 'Asset Added - ID: 320', '2019-08-27 09:45:26'),
(1170, 2, '::1', 'Asset Added - ID: 321', '2019-08-28 03:51:35'),
(1171, 2, '::1', 'Asset Added - ID: 322', '2019-08-28 03:54:33'),
(1172, 2, '::1', 'Asset Added - ID: 323', '2019-08-28 04:23:51'),
(1173, 2, '::1', 'License Added - ID: 197', '2019-08-28 04:33:37'),
(1174, 2, '::1', 'License Added - ID: 198', '2019-08-28 04:34:34'),
(1175, 2, '::1', 'License Added - ID: 199', '2019-08-28 04:35:38'),
(1176, 2, '::1', 'License Added - ID: 200', '2019-08-28 04:36:01'),
(1177, 2, '::1', 'License Added - ID: 201', '2019-08-28 04:36:49'),
(1178, 2, '::1', 'License Added - ID: 202', '2019-08-28 04:37:43'),
(1179, 2, '::1', 'License Added - ID: 203', '2019-08-28 04:38:30'),
(1180, 2, '::1', 'License Added - ID: 204', '2019-08-28 04:39:17'),
(1181, 2, '::1', 'License Added - ID: 205', '2019-08-28 04:39:58'),
(1182, 2, '::1', 'License Added - ID: 206', '2019-08-28 04:40:36'),
(1183, 2, '::1', 'Issue Added - ID: 12', '2019-08-28 04:56:07'),
(1184, 2, '::1', 'Issue Edited - ID: 12', '2019-08-28 04:57:06'),
(1185, 2, '::1', 'Ticket Added - ID: 4', '2019-08-28 04:59:08'),
(1186, 2, '::1', 'Ticket Added - ID: 5', '2019-08-28 04:59:13'),
(1187, 2, '::1', 'Issue Edited - ID: 12', '2019-08-28 04:59:36'),
(1188, 2, '::1', 'Issue Edited - ID: 11', '2019-08-28 05:01:19'),
(1189, 2, '::1', 'Issue Edited - ID: 10', '2019-08-28 05:01:27'),
(1190, 2, '::1', 'Issue Edited - ID: 9', '2019-08-28 05:01:49'),
(1191, 2, '::1', 'Issue Edited - ID: 8', '2019-08-28 05:01:54'),
(1192, 2, '::1', 'Issue Edited - ID: 7', '2019-08-28 05:02:00'),
(1193, 2, '::1', 'Issue Edited - ID: 6', '2019-08-28 05:02:07'),
(1194, 2, '::1', 'Issue Edited - ID: 4', '2019-08-28 05:02:12'),
(1195, 2, '::1', 'Project Added - ID: 4', '2019-08-28 05:04:38'),
(1196, 2, '::1', 'Issue Edited - ID: 12', '2019-08-28 05:04:49'),
(1197, 2, '::1', 'Ticket Deleted - ID: 5', '2019-08-28 05:06:03'),
(1198, 2, '::1', 'Ticket Edited - ID: 4', '2019-08-28 05:06:14'),
(1199, 2, '::1', 'Comment Added - ID: 1', '2019-08-28 05:07:26'),
(1200, 2, '::1', 'Comment Added - ID: 2', '2019-08-28 05:07:44'),
(1201, 2, '::1', 'Comment Added - ID: 3', '2019-08-28 05:07:55'),
(1202, 2, '::1', 'Comment Added - ID: 4', '2019-08-28 05:08:07'),
(1203, 2, '::1', 'ProjectNotes Update - ID: 4', '2019-08-28 05:08:32'),
(1204, 2, '::1', 'Escalation Rule Added - ID: 1', '2019-08-28 05:11:32'),
(1205, 2, '::1', 'Escalation Rule Edited - ID: 1', '2019-08-28 05:11:49'),
(1206, 2, '::1', 'Escalation Rule Edited - ID: 1', '2019-08-28 05:12:50'),
(1207, 2, '::1', 'Escalation Rule Edited - ID: 1', '2019-08-28 05:13:04'),
(1208, 2, '::1', 'User/Staff Logged Out - ID: 2', '2019-08-28 05:13:21'),
(1209, -1, '::1', 'User/Admin Logged In - ID: 4', '2019-08-28 05:13:28'),
(1210, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-28 07:00:00'),
(1211, 2, '::1', 'Asset Edited - ID: 5', '2019-08-28 07:39:09'),
(1212, 2, '::1', 'Asset Edited - ID: 9', '2019-08-28 07:43:18'),
(1213, 2, '::1', 'Asset Edited - ID: 6', '2019-08-28 07:44:50'),
(1214, 2, '::1', 'Asset Edited - ID: 15', '2019-08-28 07:45:10'),
(1215, 2, '::1', 'Asset Edited - ID: 7', '2019-08-28 07:45:40'),
(1216, 2, '::1', 'Asset Edited - ID: 11', '2019-08-28 08:00:04'),
(1217, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-08-29 04:45:46'),
(1218, 2, '::1', 'Location Added - ID: 192', '2019-08-29 04:47:40'),
(1219, 2, '::1', 'Location Edited - ID: 192', '2019-08-29 04:49:01'),
(1220, 2, '::1', 'Asset Added - ID: 324', '2019-08-29 04:56:44'),
(1221, 2, '::1', 'Asset Added - ID: 325', '2019-08-29 04:59:17'),
(1222, 2, '::1', 'License Added - ID: 207', '2019-08-29 08:15:17'),
(1223, 2, '::1', 'License Added - ID: 208', '2019-08-29 08:15:40'),
(1224, 2, '::1', 'Location Added - ID: 193', '2019-08-29 08:17:38'),
(1225, 2, '::1', 'Asset Added - ID: 326', '2019-08-29 08:21:42'),
(1226, 2, '::1', 'Asset Edited - ID: 326', '2019-08-29 08:22:27'),
(1227, 2, '::1', 'Asset Added - ID: 327', '2019-08-29 08:24:48'),
(1228, 2, '::1', 'Asset Added - ID: 328', '2019-08-29 08:30:11'),
(1229, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-02 02:12:55'),
(1230, 2, '::1', 'Asset Added - ID: 329', '2019-09-02 02:56:36'),
(1231, 2, '::1', 'Asset Edited - ID: 327', '2019-09-02 02:57:38'),
(1232, 2, '::1', 'Asset Edited - ID: 329', '2019-09-02 02:57:52'),
(1233, 2, '::1', 'Asset Added - ID: 330', '2019-09-02 03:00:01'),
(1234, 2, '::1', 'Asset Added - ID: 331', '2019-09-02 03:02:40'),
(1235, 2, '::1', 'Asset Added - ID: 332', '2019-09-02 03:05:47'),
(1236, 2, '::1', 'Asset Added - ID: 333', '2019-09-02 03:12:13'),
(1237, 2, '::1', 'Asset Added - ID: 334', '2019-09-02 03:16:16'),
(1238, 2, '::1', 'Asset Edited - ID: 334', '2019-09-02 03:18:21'),
(1239, 2, '::1', 'Asset Added - ID: 335', '2019-09-02 03:20:55'),
(1240, 2, '::1', 'Asset Added - ID: 336', '2019-09-02 03:23:36'),
(1241, 2, '::1', 'Manufacturer Added - ID: 13', '2019-09-02 03:25:21'),
(1242, 2, '::1', 'Asset Added - ID: 337', '2019-09-02 03:26:26'),
(1243, 2, '::1', 'Asset Added - ID: 338', '2019-09-02 03:29:19'),
(1244, 2, '::1', 'Asset Edited - ID: 109', '2019-09-02 03:34:22'),
(1245, 2, '::1', 'Asset Edited - ID: 107', '2019-09-02 03:38:57'),
(1246, 2, '::1', 'Asset Edited - ID: 108', '2019-09-02 03:39:11'),
(1247, 2, '::1', 'Asset Added - ID: 339', '2019-09-02 03:41:59'),
(1248, 2, '::1', 'Asset Added - ID: 340', '2019-09-02 03:43:55'),
(1249, 2, '::1', 'Asset Added - ID: 341', '2019-09-02 04:08:47'),
(1250, 2, '::1', 'Asset Added - ID: 342', '2019-09-02 04:10:06'),
(1251, 2, '::1', 'Asset Added - ID: 343', '2019-09-02 04:11:00'),
(1252, 2, '::1', 'Asset Edited - ID: 343', '2019-09-02 04:11:19'),
(1253, 2, '::1', 'License Added - ID: 209', '2019-09-02 04:14:43'),
(1254, 2, '::1', 'License Added - ID: 210', '2019-09-02 04:16:05'),
(1255, 2, '::1', 'License Added - ID: 211', '2019-09-02 04:17:15'),
(1256, 2, '::1', 'License Added - ID: 212', '2019-09-02 04:17:57'),
(1257, 2, '::1', 'Asset Edited - ID: 334', '2019-09-02 04:19:34'),
(1258, 2, '::1', 'Location Added - ID: 194', '2019-09-02 06:20:31'),
(1259, 2, '::1', 'Asset Added - ID: 344', '2019-09-02 06:23:50'),
(1260, 2, '::1', 'License Added - ID: 213', '2019-09-02 06:24:25'),
(1261, 2, '::1', 'License Added - ID: 214', '2019-09-02 06:25:41'),
(1262, 2, '::1', 'License Added - ID: 215', '2019-09-02 06:26:11'),
(1263, 2, '::1', 'Asset Added - ID: 345', '2019-09-02 06:27:51'),
(1264, 2, '::1', 'Asset Added - ID: 346', '2019-09-02 06:34:34'),
(1265, 2, '::1', 'Location Added - ID: 195', '2019-09-03 03:05:55'),
(1266, 2, '::1', 'Asset Added - ID: 347', '2019-09-03 03:12:19'),
(1267, 2, '::1', 'Supplier Added - ID: 16', '2019-09-03 03:12:48'),
(1268, 2, '::1', 'Asset Edited - ID: 347', '2019-09-03 03:13:13'),
(1269, 2, '::1', 'License Added - ID: 216', '2019-09-03 03:14:58'),
(1270, 2, '::1', 'Asset Added - ID: 348', '2019-09-03 03:21:42'),
(1271, 2, '::1', 'Location Added - ID: 196', '2019-09-03 03:58:54'),
(1272, 2, '::1', 'Asset Added - ID: 349', '2019-09-03 04:03:54'),
(1273, 2, '::1', 'Location Added - ID: 197', '2019-09-03 04:04:32'),
(1274, 2, '::1', 'Asset Added - ID: 350', '2019-09-03 04:08:46'),
(1275, 2, '::1', 'Location Added - ID: 198', '2019-09-03 04:11:03'),
(1276, 2, '::1', 'Asset Added - ID: 351', '2019-09-03 04:14:54'),
(1277, 2, '::1', 'Asset Edited - ID: 160', '2019-09-03 04:49:34'),
(1278, 2, '::1', 'License Added - ID: 217', '2019-09-03 08:11:39'),
(1279, 2, '::1', 'License Added - ID: 218', '2019-09-03 08:12:14'),
(1280, 2, '::1', 'License Added - ID: 219', '2019-09-03 08:13:54'),
(1281, 2, '::1', 'License Added - ID: 220', '2019-09-03 08:17:09'),
(1282, 2, '::1', 'Asset Added - ID: 352', '2019-09-03 08:20:18'),
(1283, 2, '::1', 'Asset Added - ID: 353', '2019-09-03 08:23:14'),
(1284, 2, '::1', 'Asset Added - ID: 354', '2019-09-03 08:27:44'),
(1285, 2, '::1', 'Asset Added - ID: 355', '2019-09-03 08:29:43'),
(1286, 2, '::1', 'Asset Added - ID: 356', '2019-09-03 08:35:54'),
(1287, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-03 09:01:48'),
(1288, 2, '::1', 'Asset Added - ID: 357', '2019-09-03 09:05:44'),
(1289, 2, '::1', 'License Added - ID: 221', '2019-09-03 09:06:21'),
(1290, 2, '::1', 'Asset Edited - ID: 357', '2019-09-03 09:08:51'),
(1291, 2, '::1', 'License Added - ID: 222', '2019-09-03 09:09:28'),
(1292, 2, '::1', 'Location Added - ID: 199', '2019-09-03 09:12:13'),
(1293, 2, '::1', 'Asset Added - ID: 358', '2019-09-03 09:13:34'),
(1294, 2, '::1', 'Location Added - ID: 200', '2019-09-03 09:15:04'),
(1295, 2, '::1', 'Asset Added - ID: 359', '2019-09-03 09:16:13'),
(1296, 2, '::1', 'Location Added - ID: 201', '2019-09-03 09:17:37'),
(1297, 2, '::1', 'Asset Added - ID: 360', '2019-09-03 09:18:47'),
(1298, 2, '::1', 'License Added - ID: 223', '2019-09-03 09:19:29'),
(1299, 2, '::1', 'Location Added - ID: 202', '2019-09-03 09:20:44'),
(1300, 2, '::1', 'Asset Added - ID: 361', '2019-09-03 09:21:49'),
(1301, 2, '::1', 'License Added - ID: 224', '2019-09-03 09:22:21'),
(1302, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-04 02:10:44'),
(1303, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-04 03:05:37'),
(1304, 2, '::1', 'Asset Edited - ID: 351', '2019-09-04 03:07:23'),
(1305, 2, '::1', 'Location Added - ID: 203', '2019-09-04 03:08:19'),
(1306, 2, '::1', 'Asset Added - ID: 362', '2019-09-04 03:16:06'),
(1307, 2, '::1', 'Asset Edited - ID: 362', '2019-09-04 03:25:10'),
(1308, 2, '::1', 'License Added - ID: 225', '2019-09-04 03:26:09'),
(1309, 2, '::1', 'License Added - ID: 226', '2019-09-04 03:26:35'),
(1310, 2, '::1', 'Asset Added - ID: 363', '2019-09-04 03:29:15'),
(1311, 2, '::1', 'Asset Added - ID: 364', '2019-09-04 03:30:54'),
(1312, 2, '::1', 'Asset Added - ID: 365', '2019-09-04 03:32:11'),
(1313, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-05 08:59:42'),
(1314, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-06 01:46:33'),
(1315, 2, '::1', 'Location Added - ID: 204', '2019-09-06 01:51:56'),
(1316, 2, '::1', 'Location Added - ID: 205', '2019-09-06 01:53:56'),
(1317, 2, '::1', 'Location Edited - ID: 204', '2019-09-06 01:54:12'),
(1318, 2, '::1', 'Asset Added - ID: 366', '2019-09-06 01:55:36'),
(1319, 2, '::1', 'Asset Added - ID: 367', '2019-09-06 01:59:01'),
(1320, 2, '::1', 'Asset Added - ID: 368', '2019-09-06 02:06:13'),
(1321, 2, '::1', 'Asset Added - ID: 369', '2019-09-06 02:09:58'),
(1322, 2, '::1', 'License Added - ID: 227', '2019-09-06 02:10:25'),
(1323, 2, '::1', 'Asset Edited - ID: 369', '2019-09-06 02:13:01'),
(1324, 2, '::1', 'License Added - ID: 228', '2019-09-06 02:14:05'),
(1325, 2, '::1', 'Location Added - ID: 206', '2019-09-06 02:19:25'),
(1326, 2, '::1', 'Location Added - ID: 207', '2019-09-06 02:19:47'),
(1327, 2, '::1', 'Location Added - ID: 208', '2019-09-06 02:20:14'),
(1328, 2, '::1', 'Location Added - ID: 209', '2019-09-06 02:20:31'),
(1329, 2, '::1', 'Asset Added - ID: 370', '2019-09-06 02:29:45'),
(1330, 2, '::1', 'Asset Added - ID: 371', '2019-09-06 02:31:24'),
(1331, 2, '::1', 'Asset Added - ID: 372', '2019-09-06 02:33:42'),
(1332, 2, '::1', 'Asset Added - ID: 373', '2019-09-06 02:35:16'),
(1333, 2, '::1', 'Asset Added - ID: 374', '2019-09-06 02:37:18'),
(1334, 2, '::1', 'License Added - ID: 229', '2019-09-06 02:38:14'),
(1335, 2, '::1', 'License Added - ID: 230', '2019-09-06 02:39:58'),
(1336, 2, '::1', 'License Added - ID: 231', '2019-09-06 02:41:09'),
(1337, 2, '::1', 'License Added - ID: 232', '2019-09-06 02:42:16'),
(1338, 2, '::1', 'License Added - ID: 233', '2019-09-06 02:43:09'),
(1339, 2, '::1', 'Asset Added - ID: 375', '2019-09-06 02:51:49'),
(1340, 2, '::1', 'Location Added - ID: 210', '2019-09-06 04:18:02'),
(1341, 2, '::1', 'Asset Added - ID: 376', '2019-09-06 04:20:19'),
(1342, 2, '::1', 'Location Added - ID: 211', '2019-09-06 04:22:47'),
(1343, 2, '::1', 'Asset Added - ID: 377', '2019-09-06 04:25:57'),
(1344, 2, '::1', 'Asset Added - ID: 378', '2019-09-06 04:29:02'),
(1345, 2, '::1', 'Asset Added - ID: 379', '2019-09-06 06:00:26'),
(1346, 2, '::1', 'License Added - ID: 234', '2019-09-06 06:04:41'),
(1347, 2, '::1', 'License Added - ID: 235', '2019-09-06 06:05:44'),
(1348, 2, '::1', 'Asset Added - ID: 380', '2019-09-06 06:08:10'),
(1349, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-07 01:46:39'),
(1350, 2, '::1', 'User Deleted - ID: 3', '2019-09-07 01:53:35'),
(1351, 2, '::1', 'Role Added - ID: 5', '2019-09-07 01:56:16'),
(1352, 2, '::1', 'User Added - ID: 7', '2019-09-07 01:58:22'),
(1353, 2, '::1', 'User/Staff Logged Out - ID: 2', '2019-09-07 01:58:27'),
(1354, -1, '::1', 'User/Admin Logged In - ID: 7', '2019-09-07 01:58:44'),
(1355, 7, '::1', 'User/Staff Logged Out - ID: 7', '2019-09-07 01:59:07'),
(1356, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-07 01:59:15'),
(1357, 2, '::1', 'Asset Added - ID: 381', '2019-09-07 02:00:21'),
(1358, 2, '::1', 'User/Staff Logged Out - ID: 2', '2019-09-07 02:00:25'),
(1359, -1, '::1', 'User/Admin Logged In - ID: 7', '2019-09-07 02:00:31'),
(1360, 7, '::1', 'User/Staff Logged Out - ID: 7', '2019-09-07 02:03:46'),
(1361, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-07 02:03:52'),
(1362, 2, '::1', 'User Added - ID: 8', '2019-09-07 02:16:58'),
(1363, 2, '::1', 'User Added - ID: 9', '2019-09-07 02:28:23'),
(1364, 2, '::1', 'User Added - ID: 10', '2019-09-07 02:47:57'),
(1365, 2, '::1', 'User Edited - ID: 10', '2019-09-07 02:49:44'),
(1366, 2, '::1', 'Asset Added - ID: 382', '2019-09-07 03:15:42'),
(1367, 2, '::1', 'User Added - ID: 11', '2019-09-07 03:16:25'),
(1368, 2, '::1', 'Location Added - ID: 212', '2019-09-07 03:18:56'),
(1369, 2, '::1', 'Asset Added - ID: 383', '2019-09-07 03:20:47'),
(1370, 2, '::1', 'Asset Added - ID: 384', '2019-09-07 03:46:42'),
(1371, 2, '::1', 'Location Added - ID: 213', '2019-09-07 03:49:10'),
(1372, 2, '::1', 'Asset Added - ID: 385', '2019-09-07 03:51:43'),
(1373, 2, '::1', 'License Added - ID: 236', '2019-09-07 03:52:37'),
(1374, 2, '::1', 'Asset Added - ID: 386', '2019-09-07 03:56:01'),
(1375, 2, '::1', 'Asset Added - ID: 387', '2019-09-07 04:04:06'),
(1376, 2, '::1', 'License Added - ID: 237', '2019-09-07 04:04:51'),
(1377, 2, '::1', 'License Added - ID: 238', '2019-09-07 04:05:48'),
(1378, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-07 07:25:21'),
(1379, 2, '::1', 'License Added - ID: 239', '2019-09-07 07:27:15'),
(1380, 2, '::1', 'Asset Edited - ID: 98', '2019-09-07 07:48:24'),
(1381, 2, '::1', 'Asset Edited - ID: 98', '2019-09-07 07:51:23'),
(1382, 2, '::1', 'Asset Edited - ID: 99', '2019-09-07 07:51:48'),
(1383, 2, '::1', 'Asset Edited - ID: 99', '2019-09-07 07:52:45'),
(1384, 2, '::1', 'Asset Edited - ID: 99', '2019-09-07 08:01:10'),
(1385, 2, '::1', 'Asset Edited - ID: 99', '2019-09-07 08:01:19'),
(1386, -1, '::1', 'User/Admin Login Failure - EMAIL: admin@example.com', '2019-09-09 01:34:18'),
(1387, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-09 01:34:24'),
(1388, 2, '::1', 'Asset Edited - ID: 354', '2019-09-09 01:35:03'),
(1389, 2, '::1', 'Knowledge Base Article Added - ID: 3', '2019-09-09 01:36:02'),
(1390, 2, '::1', 'Location Edited - ID: 213', '2019-09-09 01:48:35'),
(1391, 2, '::1', 'Asset Added - ID: 388', '2019-09-09 01:51:01'),
(1392, 2, '::1', 'Location Added - ID: 214', '2019-09-09 01:55:50'),
(1393, 2, '::1', 'Asset Added - ID: 389', '2019-09-09 01:58:26'),
(1394, 2, '::1', 'Asset Added - ID: 390', '2019-09-09 02:01:42'),
(1395, 2, '::1', 'Asset Edited - ID: 331', '2019-09-09 03:02:24'),
(1396, 2, '::1', 'Asset Edited - ID: 329', '2019-09-09 03:04:48'),
(1397, 2, '::1', 'Asset Edited - ID: 331', '2019-09-09 03:05:41'),
(1398, 2, '::1', 'Asset Edited - ID: 262', '2019-09-09 03:08:55'),
(1399, 2, '::1', 'Asset Edited - ID: 262', '2019-09-09 03:09:11'),
(1400, 2, '::1', 'Asset Edited - ID: 389', '2019-09-09 03:12:47'),
(1401, 2, '::1', 'Asset Edited - ID: 100', '2019-09-09 03:38:03'),
(1402, 2, '::1', 'Asset Edited - ID: 102', '2019-09-09 03:42:13'),
(1403, 2, '::1', 'Asset Edited - ID: 101', '2019-09-09 03:45:12'),
(1404, 2, '::1', 'Asset Edited - ID: 103', '2019-09-09 03:48:15'),
(1405, 2, '::1', 'Asset Edited - ID: 92', '2019-09-09 04:02:02'),
(1406, 2, '::1', 'Asset Edited - ID: 93', '2019-09-09 04:03:14'),
(1407, 2, '::1', 'Asset Edited - ID: 103', '2019-09-09 04:05:06'),
(1408, 2, '::1', 'Asset Edited - ID: 93', '2019-09-09 04:05:31'),
(1409, 2, '::1', 'Asset Edited - ID: 94', '2019-09-09 04:06:11'),
(1410, 2, '::1', 'Asset Edited - ID: 95', '2019-09-09 04:07:36'),
(1411, 2, '::1', 'Asset Edited - ID: 96', '2019-09-09 04:12:28'),
(1412, 2, '::1', 'Asset Edited - ID: 97', '2019-09-09 04:14:15'),
(1413, 2, '::1', 'Asset Edited - ID: 101', '2019-09-09 04:29:10'),
(1414, 2, '::1', 'Asset Edited - ID: 102', '2019-09-09 04:29:23'),
(1415, 2, '::1', 'Asset Edited - ID: 98', '2019-09-09 04:29:44'),
(1416, 2, '::1', 'Asset Edited - ID: 99', '2019-09-09 04:30:15'),
(1417, 2, '::1', 'Asset Edited - ID: 93', '2019-09-09 04:32:29'),
(1418, 2, '::1', 'Asset Edited - ID: 94', '2019-09-09 04:33:26'),
(1419, 2, '::1', 'Asset Edited - ID: 93', '2019-09-09 04:33:45'),
(1420, 2, '::1', 'Asset Edited - ID: 95', '2019-09-09 04:34:36'),
(1421, 2, '::1', 'Asset Edited - ID: 92', '2019-09-09 04:35:45'),
(1422, 2, '::1', 'Asset Edited - ID: 389', '2019-09-09 06:39:49'),
(1423, 2, '::1', 'Location Added - ID: 215', '2019-09-09 06:45:42'),
(1424, 2, '::1', 'Asset Added - ID: 391', '2019-09-09 06:54:48'),
(1425, 2, '::1', 'License Added - ID: 240', '2019-09-09 06:57:23'),
(1426, 2, '::1', 'Asset Added - ID: 392', '2019-09-09 07:03:49'),
(1427, 2, '::1', 'License Added - ID: 241', '2019-09-09 07:05:19'),
(1428, 2, '::1', 'Asset Edited - ID: 392', '2019-09-09 07:08:08'),
(1429, 2, '::1', 'Asset Edited - ID: 392', '2019-09-09 07:09:20'),
(1430, 2, '::1', 'Asset Added - ID: 393', '2019-09-09 07:13:50'),
(1431, 2, '::1', 'License Added - ID: 242', '2019-09-09 07:16:32'),
(1432, 2, '::1', 'Asset Edited - ID: 391', '2019-09-09 07:17:19'),
(1433, 2, '::1', 'Asset Edited - ID: 391', '2019-09-09 07:17:29'),
(1434, 2, '::1', 'Asset Edited - ID: 393', '2019-09-09 07:19:31'),
(1435, 2, '::1', 'Asset Added - ID: 394', '2019-09-09 07:29:17'),
(1436, 2, '::1', 'License Added - ID: 243', '2019-09-09 07:30:13'),
(1437, 2, '::1', 'Asset Edited - ID: 394', '2019-09-09 07:30:43'),
(1438, 2, '::1', 'Asset Edited - ID: 394', '2019-09-09 07:42:36'),
(1439, 2, '::1', 'Asset Added - ID: 395', '2019-09-09 07:47:12'),
(1440, 2, '::1', 'License Added - ID: 244', '2019-09-09 07:53:38'),
(1441, 2, '::1', 'License Added - ID: 245', '2019-09-09 07:54:18'),
(1442, 2, '::1', 'Asset Edited - ID: 395', '2019-09-09 07:54:44'),
(1443, 2, '::1', 'Asset Edited - ID: 391', '2019-09-09 07:55:40'),
(1444, 2, '::1', 'Asset Edited - ID: 394', '2019-09-09 07:55:56'),
(1445, 2, '::1', 'Asset Added - ID: 396', '2019-09-09 08:08:19'),
(1446, 2, '::1', 'License Added - ID: 246', '2019-09-09 08:08:56'),
(1447, 2, '::1', 'Location Added - ID: 216', '2019-09-09 08:10:42'),
(1448, 2, '::1', 'Asset Added - ID: 397', '2019-09-09 08:16:33'),
(1449, 2, '::1', 'Asset Edited - ID: 396', '2019-09-09 08:19:49'),
(1450, 2, '::1', 'Asset Edited - ID: 395', '2019-09-09 08:21:03'),
(1451, 2, '::1', 'Asset Edited - ID: 394', '2019-09-09 08:21:37'),
(1452, 2, '::1', 'Asset Edited - ID: 393', '2019-09-09 08:22:44'),
(1453, 2, '::1', 'Asset Edited - ID: 392', '2019-09-09 08:23:25'),
(1454, 2, '::1', 'Asset Edited - ID: 391', '2019-09-09 08:24:26'),
(1455, 2, '::1', 'Asset Edited - ID: 397', '2019-09-09 08:25:11'),
(1456, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-10 01:58:55'),
(1457, 2, '::1', 'Asset Edited - ID: 367', '2019-09-10 02:05:26'),
(1458, 2, '::1', 'License Added - ID: 247', '2019-09-10 02:07:13'),
(1459, 2, '::1', 'Asset Added - ID: 398', '2019-09-10 02:09:52'),
(1460, 2, '::1', 'Location Added - ID: 217', '2019-09-10 02:10:40'),
(1461, 2, '::1', 'Location Added - ID: 218', '2019-09-10 02:10:52'),
(1462, 2, '::1', 'Location Added - ID: 219', '2019-09-10 02:11:07'),
(1463, 2, '::1', 'Location Added - ID: 220', '2019-09-10 02:11:26'),
(1464, 2, '::1', 'Location Added - ID: 221', '2019-09-10 02:11:47'),
(1465, 2, '::1', 'Asset Added - ID: 399', '2019-09-10 02:20:34'),
(1466, 2, '::1', 'Asset Added - ID: 400', '2019-09-10 02:21:48'),
(1467, 2, '::1', 'Asset Added - ID: 401', '2019-09-10 02:22:53'),
(1468, 2, '::1', 'Asset Added - ID: 402', '2019-09-10 02:24:24'),
(1469, 2, '::1', 'Asset Added - ID: 403', '2019-09-10 02:25:35'),
(1470, 2, '::1', 'License Added - ID: 248', '2019-09-10 02:26:24'),
(1471, 2, '::1', 'License Added - ID: 249', '2019-09-10 02:27:24'),
(1472, 2, '::1', 'License Added - ID: 250', '2019-09-10 02:28:18'),
(1473, 2, '::1', 'License Added - ID: 251', '2019-09-10 02:29:01'),
(1474, 2, '::1', 'License Added - ID: 252', '2019-09-10 02:29:47'),
(1475, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-10 02:46:26'),
(1476, 2, '::1', 'Asset Added - ID: 404', '2019-09-10 02:57:46'),
(1477, 2, '::1', 'Asset Edited - ID: 369', '2019-09-10 02:59:00'),
(1478, 2, '::1', 'Asset Deleted - ID: 323', '2019-09-10 02:59:31'),
(1479, 2, '::1', 'Asset Edited - ID: 404', '2019-09-10 03:03:28'),
(1480, 2, '::1', 'Asset Edited - ID: 367', '2019-09-10 03:08:38'),
(1481, 2, '::1', 'Asset Edited - ID: 404', '2019-09-10 03:08:42'),
(1482, 2, '::1', 'Asset Added - ID: 405', '2019-09-10 03:15:52'),
(1483, 2, '::1', 'Asset Added - ID: 406', '2019-09-10 03:21:50'),
(1484, 2, '::1', 'Asset Edited - ID: 394', '2019-09-10 03:31:42'),
(1485, 2, '::1', 'User Added - ID: 12', '2019-09-10 04:54:44'),
(1486, 2, '::1', 'User Edited - ID: 12', '2019-09-10 05:05:28'),
(1487, 2, '::1', 'User Added - ID: 13', '2019-09-10 06:21:30'),
(1488, 2, '::1', 'User/Staff Logged Out - ID: 2', '2019-09-10 06:49:38'),
(1489, -1, '::1', 'User/Admin Logged In - ID: 12', '2019-09-10 06:49:47'),
(1490, 12, '::1', 'User/Staff Logged Out - ID: 12', '2019-09-10 06:49:56'),
(1491, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-10 06:50:04'),
(1492, 2, '::1', 'User/Staff Logged Out - ID: 2', '2019-09-10 06:51:01'),
(1493, -1, '::1', 'User/Admin Logged In - ID: 12', '2019-09-10 06:51:14'),
(1494, 12, '::1', 'User/Staff Logged Out - ID: 12', '2019-09-10 06:59:14'),
(1495, -1, '::1', 'User/Admin Logged In - ID: 7', '2019-09-10 06:59:18'),
(1496, 7, '::1', 'User/Staff Logged Out - ID: 7', '2019-09-10 07:32:23'),
(1497, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-10 07:32:30'),
(1498, 2, '::1', 'Asset Edited - ID: 36', '2019-09-10 07:34:05'),
(1499, 2, '::1', 'Asset Edited - ID: 37', '2019-09-10 07:34:24'),
(1500, 2, '::1', 'Asset Edited - ID: 5', '2019-09-10 07:36:18'),
(1501, 2, '::1', 'Asset Edited - ID: 9', '2019-09-10 07:38:38'),
(1502, 2, '::1', 'Asset Edited - ID: 5', '2019-09-10 07:38:56'),
(1503, 2, '::1', 'Asset Edited - ID: 5', '2019-09-10 07:43:03'),
(1504, 2, '::1', 'Asset Edited - ID: 9', '2019-09-10 07:45:45'),
(1505, 2, '::1', 'Asset Edited - ID: 5', '2019-09-10 08:03:04'),
(1506, 2, '::1', 'Asset Edited - ID: 5', '2019-09-10 08:24:10'),
(1507, 2, '::1', 'Asset Edited - ID: 9', '2019-09-10 08:24:34'),
(1508, 2, '::1', 'Asset Edited - ID: 9', '2019-09-10 08:25:35'),
(1509, 2, '::1', 'Asset Edited - ID: 5', '2019-09-10 08:25:51'),
(1510, 2, '::1', 'Asset Edited - ID: 5', '2019-09-10 08:26:36'),
(1511, 2, '::1', 'Asset Edited - ID: 5', '2019-09-10 08:26:52'),
(1512, 2, '::1', 'Asset Edited - ID: 5', '2019-09-10 08:27:05'),
(1513, 2, '::1', 'Asset Edited - ID: 5', '2019-09-10 08:28:20'),
(1514, 2, '::1', 'Asset Edited - ID: 5', '2019-09-10 08:29:28'),
(1515, 2, '::1', 'Asset Edited - ID: 5', '2019-09-10 08:30:05'),
(1516, 2, '::1', 'Asset Edited - ID: 9', '2019-09-10 08:32:03'),
(1517, 2, '::1', 'Asset Edited - ID: 9', '2019-09-10 08:32:12'),
(1518, 2, '::1', 'Asset Edited - ID: 9', '2019-09-10 08:32:25'),
(1519, 2, '::1', 'Asset Edited - ID: 9', '2019-09-10 08:32:39'),
(1520, 2, '::1', 'Asset Edited - ID: 9', '2019-09-10 08:32:52'),
(1521, 2, '::1', 'Asset Edited - ID: 9', '2019-09-10 08:33:03'),
(1522, 2, '::1', 'Asset Edited - ID: 9', '2019-09-10 08:33:48'),
(1523, 2, '::1', 'Location Added - ID: 222', '2019-09-11 02:26:31'),
(1524, 2, '::1', 'Supplier Added - ID: 17', '2019-09-11 02:28:30'),
(1525, 2, '::1', 'Asset Added - ID: 407', '2019-09-11 02:32:33'),
(1526, 2, '::1', 'Asset Edited - ID: 407', '2019-09-11 02:33:15'),
(1527, 2, '::1', 'Asset Edited - ID: 407', '2019-09-11 02:41:06'),
(1528, 2, '::1', 'License Added - ID: 253', '2019-09-11 02:41:46'),
(1529, 2, '::1', 'License Added - ID: 254', '2019-09-11 02:42:18');
INSERT INTO `systemlog` (`id`, `peopleid`, `ipaddress`, `description`, `timestamp`) VALUES
(1530, 2, '::1', 'License Added - ID: 255', '2019-09-11 02:42:40'),
(1531, 2, '::1', 'Asset Deleted - ID: 262', '2019-09-11 02:54:12'),
(1532, 2, '::1', 'Asset Added - ID: 408', '2019-09-11 02:59:14'),
(1533, 2, '::1', 'License Added - ID: 256', '2019-09-11 02:59:59'),
(1534, 2, '::1', 'Asset Edited - ID: 408', '2019-09-11 03:21:05'),
(1535, 2, '::1', 'Asset Edited - ID: 408', '2019-09-11 03:21:50'),
(1536, 2, '::1', 'Asset Edited - ID: 408', '2019-09-11 03:22:29'),
(1537, 2, '::1', 'Asset Edited - ID: 408', '2019-09-11 03:23:28'),
(1538, 2, '::1', 'Location Added - ID: 224', '2019-09-11 03:26:23'),
(1539, 2, '::1', 'Location Added - ID: 225', '2019-09-11 03:26:55'),
(1540, 2, '::1', 'Asset Edited - ID: 408', '2019-09-11 03:27:54'),
(1541, 2, '::1', 'Asset Edited - ID: 408', '2019-09-11 03:28:16'),
(1542, 2, '::1', 'Asset Added - ID: 409', '2019-09-11 03:43:47'),
(1543, 2, '::1', 'Asset Edited - ID: 409', '2019-09-11 03:44:12'),
(1544, 2, '::1', 'Asset Edited - ID: 408', '2019-09-11 03:44:31'),
(1545, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-11 03:48:54'),
(1546, 2, '::1', 'Asset Edited - ID: 351', '2019-09-11 04:17:51'),
(1547, 2, '::1', 'Asset Edited - ID: 352', '2019-09-11 04:25:07'),
(1548, 2, '::1', 'Asset Edited - ID: 355', '2019-09-11 04:42:07'),
(1549, 2, '::1', 'Asset Edited - ID: 354', '2019-09-11 04:43:14'),
(1550, 2, '::1', 'Asset Edited - ID: 353', '2019-09-11 06:50:44'),
(1551, 2, '::1', 'Asset Deleted - ID: 300', '2019-09-11 06:53:47'),
(1552, 2, '::1', 'Asset Edited - ID: 301', '2019-09-11 06:54:23'),
(1553, 2, '::1', 'Asset Edited - ID: 302', '2019-09-11 06:55:01'),
(1554, 2, '::1', 'Asset Edited - ID: 305', '2019-09-11 06:55:30'),
(1555, 2, '::1', 'Asset Edited - ID: 296', '2019-09-11 06:56:17'),
(1556, 2, '::1', 'Asset Deleted - ID: 255', '2019-09-11 07:08:38'),
(1557, 2, '::1', 'Asset Edited - ID: 242', '2019-09-11 07:10:23'),
(1558, 2, '::1', 'Asset Edited - ID: 245', '2019-09-11 07:13:27'),
(1559, 2, '::1', 'Asset Edited - ID: 330', '2019-09-11 07:22:52'),
(1560, 2, '::1', 'Asset Deleted - ID: 297', '2019-09-11 08:11:52'),
(1561, 2, '::1', 'Asset Deleted - ID: 298', '2019-09-11 08:12:01'),
(1562, 2, '::1', 'Asset Deleted - ID: 299', '2019-09-11 08:12:08'),
(1563, 2, '::1', 'Asset Edited - ID: 347', '2019-09-11 08:12:31'),
(1564, 2, '::1', 'Asset Edited - ID: 69', '2019-09-11 08:13:22'),
(1565, 2, '::1', 'Asset Edited - ID: 107', '2019-09-11 08:13:58'),
(1566, 2, '::1', 'Asset Edited - ID: 238', '2019-09-11 08:14:29'),
(1567, 2, '::1', 'Asset Edited - ID: 287', '2019-09-11 08:15:05'),
(1568, 2, '::1', 'Asset Edited - ID: 210', '2019-09-11 08:15:25'),
(1569, 2, '::1', 'Asset Deleted - ID: 381', '2019-09-11 08:18:18'),
(1570, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-12 02:06:51'),
(1571, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-16 02:09:16'),
(1572, 2, '::1', 'Location Added - ID: 226', '2019-09-16 02:12:37'),
(1573, 2, '::1', 'Asset Added - ID: 410', '2019-09-16 02:15:22'),
(1574, 2, '::1', 'Asset Added - ID: 411', '2019-09-16 02:17:04'),
(1575, 2, '::1', 'Asset Edited - ID: 411', '2019-09-16 02:18:01'),
(1576, 2, '::1', 'Asset Edited - ID: 411', '2019-09-16 02:31:13'),
(1577, 2, '::1', 'License Added - ID: 257', '2019-09-16 02:31:49'),
(1578, 2, '::1', 'License Added - ID: 258', '2019-09-16 02:32:35'),
(1579, 2, '::1', 'License Added - ID: 259', '2019-09-16 02:33:02'),
(1580, 2, '::1', 'Location Added - ID: 228', '2019-09-16 02:34:10'),
(1581, 2, '::1', 'Asset Edited - ID: 411', '2019-09-16 02:34:26'),
(1582, 2, '::1', 'Asset Added - ID: 412', '2019-09-16 02:37:36'),
(1583, 2, '::1', 'Asset Added - ID: 413', '2019-09-16 02:39:14'),
(1584, 2, '::1', 'Asset Edited - ID: 411', '2019-09-16 03:03:59'),
(1585, 2, '::1', 'Location Added - ID: 229', '2019-09-16 03:13:13'),
(1586, 2, '::1', 'Asset Added - ID: 414', '2019-09-16 03:16:50'),
(1587, 2, '::1', 'Asset Edited - ID: 414', '2019-09-16 03:17:50'),
(1588, 2, '::1', 'Asset Edited - ID: 414', '2019-09-16 03:28:36'),
(1589, 2, '::1', 'Asset Edited - ID: 414', '2019-09-16 03:28:52'),
(1590, 2, '::1', 'Location Added - ID: 231', '2019-09-16 03:33:24'),
(1591, 2, '::1', 'Asset Added - ID: 415', '2019-09-16 03:37:41'),
(1592, 2, '::1', 'Asset Edited - ID: 415', '2019-09-16 03:38:28'),
(1593, 2, '::1', 'License Added - ID: 260', '2019-09-16 03:39:09'),
(1594, 2, '::1', 'Supplier Added - ID: 18', '2019-09-16 03:44:19'),
(1595, 2, '::1', 'Supplier Added - ID: 19', '2019-09-16 03:44:27'),
(1596, 2, '::1', 'Supplier Added - ID: 20', '2019-09-16 03:44:36'),
(1597, 2, '::1', 'Supplier Added - ID: 21', '2019-09-16 03:44:50'),
(1598, 2, '::1', 'Location Added - ID: 232', '2019-09-16 03:45:30'),
(1599, 2, '::1', 'Asset Edited - ID: 383', '2019-09-16 03:50:37'),
(1600, 2, '::1', 'Asset Edited - ID: 383', '2019-09-16 05:59:12'),
(1601, 2, '::1', 'Location Added - ID: 233', '2019-09-16 06:11:06'),
(1602, 2, '::1', 'Asset Added - ID: 416', '2019-09-16 06:13:13'),
(1603, 2, '::1', 'License Added - ID: 261', '2019-09-16 06:14:44'),
(1604, 2, '::1', 'Asset Edited - ID: 416', '2019-09-16 06:16:27'),
(1605, 2, '::1', 'Location Added - ID: 234', '2019-09-16 06:20:40'),
(1606, 2, '::1', 'Asset Added - ID: 417', '2019-09-16 06:23:26'),
(1607, 2, '::1', 'License Added - ID: 262', '2019-09-16 06:24:26'),
(1608, 2, '::1', 'Location Added - ID: 235', '2019-09-16 06:53:21'),
(1609, 2, '::1', 'Asset Added - ID: 418', '2019-09-16 07:01:53'),
(1610, 2, '::1', 'License Added - ID: 263', '2019-09-16 07:02:21'),
(1611, 2, '::1', 'Location Added - ID: 236', '2019-09-17 02:20:06'),
(1612, 2, '::1', 'Asset Added - ID: 419', '2019-09-17 02:35:58'),
(1613, 2, '::1', 'Asset Added - ID: 420', '2019-09-17 02:40:01'),
(1614, 2, '::1', 'Asset Edited - ID: 419', '2019-09-17 02:40:47'),
(1615, 2, '::1', 'Asset Edited - ID: 420', '2019-09-17 02:41:15'),
(1616, 2, '::1', 'Asset Edited - ID: 420', '2019-09-17 02:41:37'),
(1617, 2, '::1', 'Asset Added - ID: 421', '2019-09-17 02:47:47'),
(1618, 2, '::1', 'Asset Edited - ID: 420', '2019-09-17 02:50:13'),
(1619, 2, '::1', 'License Added - ID: 264', '2019-09-17 02:54:37'),
(1620, 2, '::1', 'Location Added - ID: 237', '2019-09-17 03:23:37'),
(1621, 2, '::1', 'Asset Added - ID: 422', '2019-09-17 03:26:56'),
(1622, 2, '::1', 'License Added - ID: 265', '2019-09-17 03:27:31'),
(1623, 2, '::1', 'Location Added - ID: 238', '2019-09-17 03:41:05'),
(1624, 2, '::1', 'Asset Added - ID: 423', '2019-09-17 03:51:39'),
(1625, 2, '::1', 'Location Added - ID: 239', '2019-09-17 04:26:17'),
(1626, 2, '::1', 'Asset Added - ID: 424', '2019-09-17 04:30:35'),
(1627, 2, '::1', 'Asset Edited - ID: 424', '2019-09-17 04:35:06'),
(1628, 2, '::1', 'Asset Added - ID: 425', '2019-09-17 04:40:35'),
(1629, 2, '::1', 'Location Added - ID: 240', '2019-09-17 04:41:11'),
(1630, 2, '::1', 'Asset Added - ID: 426', '2019-09-17 04:49:10'),
(1631, 2, '::1', 'Asset Added - ID: 427', '2019-09-17 04:53:19'),
(1632, 2, '::1', 'License Added - ID: 266', '2019-09-17 04:58:42'),
(1633, 2, '::1', 'License Added - ID: 267', '2019-09-17 04:59:13'),
(1634, 2, '::1', 'Asset Edited - ID: 425', '2019-09-17 05:00:04'),
(1635, 2, '::1', 'Asset Edited - ID: 414', '2019-09-17 06:18:20'),
(1636, 2, '::1', 'Asset Edited - ID: 423', '2019-09-17 06:18:42'),
(1637, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-18 02:57:55'),
(1638, 2, '::1', 'Asset Added - ID: 428', '2019-09-18 04:03:29'),
(1639, 2, '::1', 'Asset Edited - ID: 428', '2019-09-18 04:04:31'),
(1640, 2, '::1', 'Location Added - ID: 241', '2019-09-18 04:16:39'),
(1641, 2, '::1', 'Asset Added - ID: 429', '2019-09-18 04:20:13'),
(1642, 2, '::1', 'Asset Added - ID: 430', '2019-09-18 04:31:16'),
(1643, 2, '::1', 'Location Added - ID: 242', '2019-09-18 04:32:23'),
(1644, 2, '::1', 'Location Added - ID: 243', '2019-09-18 04:32:56'),
(1645, 2, '::1', 'Location Added - ID: 244', '2019-09-18 04:33:26'),
(1646, 2, '::1', 'Location Added - ID: 245', '2019-09-18 04:33:52'),
(1647, 2, '::1', 'Asset Added - ID: 431', '2019-09-18 04:35:57'),
(1648, 2, '::1', 'Asset Added - ID: 432', '2019-09-18 04:57:23'),
(1649, 2, '::1', 'Asset Added - ID: 433', '2019-09-18 04:59:09'),
(1650, 2, '::1', 'Asset Added - ID: 434', '2019-09-18 05:00:35'),
(1651, 2, '::1', 'Location Added - ID: 246', '2019-09-18 06:49:13'),
(1652, 2, '::1', 'Location Added - ID: 247', '2019-09-18 06:49:34'),
(1653, 2, '::1', 'Location Added - ID: 248', '2019-09-18 06:54:19'),
(1654, 2, '::1', 'Asset Added - ID: 435', '2019-09-18 06:56:49'),
(1655, 2, '::1', 'Asset Added - ID: 436', '2019-09-18 07:19:35'),
(1656, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-25 02:06:13'),
(1657, 2, '::1', 'Location Added - ID: 249', '2019-09-25 02:13:22'),
(1658, 2, '::1', 'Location Deleted - ID: 249', '2019-09-25 02:14:24'),
(1659, 2, '::1', 'Location Added - ID: 250', '2019-09-25 02:36:23'),
(1660, 2, '::1', 'Asset Added - ID: 437', '2019-09-25 02:37:29'),
(1661, 2, '::1', 'Asset Added - ID: 438', '2019-09-25 02:38:24'),
(1662, 2, '::1', 'Asset Edited - ID: 437', '2019-09-25 02:38:51'),
(1663, 2, '::1', 'Asset Edited - ID: 438', '2019-09-25 02:39:25'),
(1664, 2, '::1', 'Asset Edited - ID: 437', '2019-09-25 02:39:38'),
(1665, 2, '::1', 'Location Added - ID: 251', '2019-09-25 02:47:39'),
(1666, 2, '::1', 'Location Added - ID: 252', '2019-09-25 02:48:02'),
(1667, 2, '::1', 'Location Added - ID: 253', '2019-09-25 02:48:25'),
(1668, 2, '::1', 'Location Added - ID: 254', '2019-09-25 02:49:47'),
(1669, 2, '::1', 'Location Added - ID: 255', '2019-09-25 02:51:31'),
(1670, 2, '::1', 'Location Edited - ID: 252', '2019-09-25 02:53:52'),
(1671, 2, '::1', 'Asset Added - ID: 439', '2019-09-25 03:03:10'),
(1672, 2, '::1', 'Asset Added - ID: 440', '2019-09-25 03:08:31'),
(1673, 2, '::1', 'Asset Edited - ID: 439', '2019-09-25 03:13:14'),
(1674, 2, '::1', 'Asset Edited - ID: 440', '2019-09-25 03:14:29'),
(1675, 2, '::1', 'Asset Edited - ID: 439', '2019-09-25 03:29:28'),
(1676, 2, '::1', 'Asset Added - ID: 441', '2019-09-25 03:30:50'),
(1677, 2, '::1', 'Asset Edited - ID: 441', '2019-09-25 03:35:25'),
(1678, 2, '::1', 'Asset Added - ID: 442', '2019-09-25 03:53:07'),
(1679, 2, '::1', 'Asset Added - ID: 443', '2019-09-25 03:54:50'),
(1680, 2, '::1', 'Asset Added - ID: 444', '2019-09-25 04:02:39'),
(1681, 2, '::1', 'Asset Added - ID: 445', '2019-09-25 04:05:39'),
(1682, 2, '::1', 'Asset Added - ID: 446', '2019-09-25 04:08:55'),
(1683, 2, '::1', 'Asset Added - ID: 447', '2019-09-25 04:10:31'),
(1684, 2, '::1', 'Asset Added - ID: 448', '2019-09-25 04:12:57'),
(1685, 2, '::1', 'Asset Added - ID: 449', '2019-09-25 06:18:31'),
(1686, 2, '::1', 'Location Added - ID: 256', '2019-09-25 06:25:34'),
(1687, 2, '::1', 'Location Edited - ID: 256', '2019-09-25 06:36:54'),
(1688, 2, '::1', 'Asset Added - ID: 450', '2019-09-25 06:38:53'),
(1689, 2, '::1', 'Asset Added - ID: 451', '2019-09-25 06:42:55'),
(1690, 2, '::1', 'Asset Added - ID: 452', '2019-09-25 06:50:17'),
(1691, 2, '::1', 'Asset Added - ID: 453', '2019-09-25 06:52:02'),
(1692, 2, '::1', 'Asset Added - ID: 454', '2019-09-25 06:54:45'),
(1693, 2, '::1', 'Asset Edited - ID: 454', '2019-09-25 06:55:34'),
(1694, 2, '::1', 'Asset Edited - ID: 454', '2019-09-25 06:56:03'),
(1695, 2, '::1', 'Asset Added - ID: 455', '2019-09-25 06:59:51'),
(1696, 2, '::1', 'Asset Edited - ID: 453', '2019-09-25 07:03:27'),
(1697, 2, '::1', 'Asset Added - ID: 456', '2019-09-25 07:06:23'),
(1698, 2, '::1', 'Asset Added - ID: 457', '2019-09-25 07:07:40'),
(1699, -1, '::1', 'User/Admin Login Failure - EMAIL: admin@example.com', '2019-09-26 02:16:06'),
(1700, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-26 02:16:13'),
(1701, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-26 04:10:32'),
(1702, 2, '::1', 'Ticket Added - ID: 6', '2019-09-26 06:07:43'),
(1703, 2, '::1', 'Ticket Added - ID: 7', '2019-09-26 06:08:31'),
(1704, 2, '::1', 'Ticket Added - ID: 8', '2019-09-26 06:09:06'),
(1705, 2, '::1', 'User/Staff Logged Out - ID: 2', '2019-09-26 06:13:05'),
(1706, -1, '::1', 'User/Admin Logged In - ID: 4', '2019-09-26 06:13:13'),
(1707, 4, '::1', 'Ticket Status Update - ID: 6', '2019-09-26 06:14:07'),
(1708, 4, '::1', 'Ticket Reply Added - ID: 11', '2019-09-26 06:14:08'),
(1709, 4, '::1', 'Ticket Status Update - ID: 6', '2019-09-26 06:14:28'),
(1710, 4, '::1', 'Ticket Reply Added - ID: 12', '2019-09-26 06:14:29'),
(1711, 4, '::1', 'Ticket Assigned - ID: 6', '2019-09-26 06:15:57'),
(1712, 4, '::1', 'User/Staff Logged Out - ID: 4', '2019-09-26 06:17:10'),
(1713, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-26 06:17:16'),
(1714, 2, '::1', 'Ticket Status Update - ID: 6', '2019-09-26 06:19:09'),
(1715, 2, '::1', 'Ticket Reply Added - ID: 13', '2019-09-26 06:19:10'),
(1716, 2, '::1', 'User/Staff Logged Out - ID: 2', '2019-09-26 06:19:39'),
(1717, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-28 02:34:03'),
(1718, 2, '::1', 'License Added - ID: 268', '2019-09-28 02:39:10'),
(1719, 2, '::1', 'License Added - ID: 269', '2019-09-28 02:39:41'),
(1720, 2, '::1', 'License Added - ID: 270', '2019-09-28 02:40:10'),
(1721, 2, '::1', 'License Added - ID: 271', '2019-09-28 02:40:36'),
(1722, 2, '::1', 'License Added - ID: 272', '2019-09-28 02:41:06'),
(1723, 2, '::1', 'License Added - ID: 273', '2019-09-28 02:41:33'),
(1724, 2, '::1', 'License Added - ID: 274', '2019-09-28 02:42:02'),
(1725, 2, '::1', 'License Added - ID: 275', '2019-09-28 02:42:32'),
(1726, 2, '::1', 'Asset Edited - ID: 451', '2019-09-28 02:44:11'),
(1727, 2, '::1', 'Asset Edited - ID: 450', '2019-09-28 02:46:17'),
(1728, 2, '::1', 'Location Added - ID: 257', '2019-09-28 02:50:18'),
(1729, 2, '::1', 'Asset Added - ID: 458', '2019-09-28 02:52:07'),
(1730, 2, '::1', 'Location Added - ID: 258', '2019-09-28 03:03:31'),
(1731, 2, '::1', 'Asset Added - ID: 459', '2019-09-28 03:07:49'),
(1732, 2, '::1', 'License Added - ID: 276', '2019-09-28 03:19:42'),
(1733, 2, '::1', 'Location Added - ID: 259', '2019-09-28 03:21:44'),
(1734, 2, '::1', 'Asset Added - ID: 460', '2019-09-28 03:29:27'),
(1735, 2, '::1', 'Asset Added - ID: 461', '2019-09-28 03:34:11'),
(1736, 2, '::1', 'Asset Edited - ID: 460', '2019-09-28 03:37:07'),
(1737, 2, '::1', 'License Added - ID: 277', '2019-09-28 03:39:22'),
(1738, 2, '::1', 'Asset Edited - ID: 460', '2019-09-28 03:41:35'),
(1739, 2, '::1', 'Asset Added - ID: 462', '2019-09-28 03:42:40'),
(1740, 2, '::1', 'Location Added - ID: 260', '2019-09-28 03:52:27'),
(1741, 2, '::1', 'Asset Added - ID: 463', '2019-09-28 03:55:55'),
(1742, 2, '::1', 'Asset Added - ID: 464', '2019-09-28 04:00:24'),
(1743, 2, '::1', 'License Added - ID: 278', '2019-09-28 04:01:31'),
(1744, 2, '::1', 'License Added - ID: 279', '2019-09-28 04:02:01'),
(1745, 2, '::1', 'Asset Edited - ID: 463', '2019-09-28 04:02:35'),
(1746, 2, '::1', 'Location Added - ID: 261', '2019-09-28 06:28:06'),
(1747, 2, '::1', 'Asset Added - ID: 465', '2019-09-28 06:30:13'),
(1748, 2, '::1', 'License Added - ID: 280', '2019-09-28 06:30:44'),
(1749, 2, '::1', 'Location Added - ID: 262', '2019-09-28 06:35:36'),
(1750, 2, '::1', 'Asset Added - ID: 466', '2019-09-28 06:42:40'),
(1751, 2, '::1', 'Asset Edited - ID: 466', '2019-09-28 06:50:33'),
(1752, 2, '::1', 'Asset Added - ID: 467', '2019-09-28 06:54:11'),
(1753, 2, '::1', 'Asset Edited - ID: 466', '2019-09-28 06:58:10'),
(1754, 2, '::1', 'Asset Added - ID: 468', '2019-09-28 07:11:16'),
(1755, 2, '::1', 'Asset Edited - ID: 467', '2019-09-28 07:12:09'),
(1756, 2, '::1', 'Asset Edited - ID: 466', '2019-09-28 07:13:03'),
(1757, 2, '::1', 'License Added - ID: 281', '2019-09-28 07:14:22'),
(1758, 2, '::1', 'License Added - ID: 282', '2019-09-28 07:16:16'),
(1759, 2, '::1', 'License Added - ID: 283', '2019-09-28 07:16:41'),
(1760, 2, '::1', 'License Added - ID: 284', '2019-09-28 07:18:08'),
(1761, 2, '::1', 'Asset Edited - ID: 466', '2019-09-28 07:18:49'),
(1762, 2, '::1', 'Location Added - ID: 263', '2019-09-28 07:33:49'),
(1763, 2, '::1', 'Asset Added - ID: 469', '2019-09-28 07:36:33'),
(1764, 2, '::1', 'License Added - ID: 285', '2019-09-28 07:37:12'),
(1765, 2, '::1', 'License Added - ID: 286', '2019-09-28 07:40:42'),
(1766, 2, '::1', 'License Added - ID: 287', '2019-09-28 07:41:16'),
(1767, 2, '::1', 'Asset Added - ID: 470', '2019-09-28 07:43:42'),
(1768, 2, '::1', 'Asset Added - ID: 471', '2019-09-28 07:45:12'),
(1769, 2, '::1', 'Location Added - ID: 264', '2019-09-28 07:51:27'),
(1770, 2, '::1', 'Asset Added - ID: 472', '2019-09-28 07:54:31'),
(1771, 2, '::1', 'Location Added - ID: 265', '2019-09-28 07:57:09'),
(1772, 2, '::1', 'Asset Added - ID: 473', '2019-09-28 08:01:21'),
(1773, 2, '::1', 'Location Added - ID: 266', '2019-09-28 08:02:29'),
(1774, 2, '::1', 'Asset Added - ID: 474', '2019-09-28 08:04:36'),
(1775, 2, '::1', 'Location Added - ID: 267', '2019-09-28 08:08:43'),
(1776, 2, '::1', 'Asset Added - ID: 475', '2019-09-28 08:10:54'),
(1777, 2, '::1', 'Location Added - ID: 268', '2019-09-28 08:11:47'),
(1778, 2, '::1', 'Asset Added - ID: 476', '2019-09-28 08:14:51'),
(1779, 2, '::1', 'Asset Added - ID: 477', '2019-09-28 08:17:34'),
(1780, 2, '::1', 'License Added - ID: 288', '2019-09-28 08:19:25'),
(1781, 2, '::1', 'Location Added - ID: 269', '2019-09-28 08:21:20'),
(1782, 2, '::1', 'Asset Added - ID: 478', '2019-09-28 08:22:55'),
(1783, 2, '::1', 'License Added - ID: 289', '2019-09-28 08:23:25'),
(1784, 2, '::1', 'Location Added - ID: 270', '2019-09-28 08:25:42'),
(1785, 2, '::1', 'Asset Added - ID: 479', '2019-09-28 08:31:19'),
(1786, 2, '::1', 'Asset Added - ID: 480', '2019-09-28 08:35:51'),
(1787, 2, '::1', 'Asset Edited - ID: 479', '2019-09-28 08:36:47'),
(1788, 2, '::1', 'Asset Added - ID: 481', '2019-09-28 09:05:25'),
(1789, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-30 02:03:42'),
(1790, 2, '::1', 'Location Added - ID: 271', '2019-09-30 02:09:31'),
(1791, 2, '::1', 'Location Deleted - ID: 271', '2019-09-30 02:22:57'),
(1792, 2, '::1', 'Location Edited - ID: 100', '2019-09-30 02:24:07'),
(1793, 2, '::1', 'Asset Added - ID: 482', '2019-09-30 02:30:41'),
(1794, 2, '::1', 'Asset Edited - ID: 482', '2019-09-30 02:45:07'),
(1795, 2, '::1', 'License Added - ID: 290', '2019-09-30 02:47:02'),
(1796, 2, '::1', 'License Added - ID: 291', '2019-09-30 02:47:53'),
(1797, 2, '::1', 'Asset Edited - ID: 482', '2019-09-30 02:49:33'),
(1798, 2, '::1', 'Location Added - ID: 272', '2019-09-30 02:58:45'),
(1799, 2, '::1', 'Asset Added - ID: 483', '2019-09-30 03:17:49'),
(1800, 2, '::1', 'Asset Added - ID: 484', '2019-09-30 03:22:47'),
(1801, 2, '::1', 'Asset Added - ID: 485', '2019-09-30 03:28:16'),
(1802, 2, '::1', 'Asset Added - ID: 486', '2019-09-30 03:39:42'),
(1803, 2, '::1', 'Asset Edited - ID: 483', '2019-09-30 03:50:40'),
(1804, 2, '::1', 'Asset Added - ID: 487', '2019-09-30 04:03:37'),
(1805, 2, '::1', 'Asset Edited - ID: 483', '2019-09-30 04:03:59'),
(1806, 2, '::1', 'License Added - ID: 292', '2019-09-30 04:09:49'),
(1807, 2, '::1', 'License Added - ID: 293', '2019-09-30 04:11:32'),
(1808, 2, '::1', 'User/Staff Logged Out - ID: 2', '2019-09-30 07:42:24'),
(1809, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-09-30 07:42:36'),
(1810, 2, '::1', 'Location Added - ID: 273', '2019-09-30 07:48:22'),
(1811, 2, '::1', 'Asset Added - ID: 488', '2019-09-30 07:56:33'),
(1812, 2, '::1', 'Location Added - ID: 274', '2019-09-30 08:18:23'),
(1813, 2, '::1', 'Asset Added - ID: 489', '2019-09-30 08:22:00'),
(1814, 2, '::1', 'Asset Added - ID: 490', '2019-09-30 08:24:56'),
(1815, 2, '::1', 'Location Added - ID: 275', '2019-09-30 08:26:34'),
(1816, 2, '::1', 'Asset Added - ID: 491', '2019-09-30 08:28:15'),
(1817, 2, '::1', 'Asset Added - ID: 492', '2019-09-30 08:31:44'),
(1818, -1, '127.0.0.1', 'User/Admin Logged In - ID: 2', '2019-10-01 02:49:47'),
(1819, 2, '::1', 'Asset Edited - ID: 482', '2019-10-01 02:50:12'),
(1820, 2, '::1', 'Asset Added - ID: 493', '2019-10-01 03:25:50'),
(1821, 2, '::1', 'Asset Edited - ID: 493', '2019-10-01 03:26:22'),
(1822, 2, '::1', 'Asset Edited - ID: 493', '2019-10-01 03:26:38'),
(1823, 2, '::1', 'Asset Added - ID: 494', '2019-10-01 03:40:13'),
(1824, 2, '::1', 'Asset Added - ID: 495', '2019-10-01 03:43:34'),
(1825, 2, '::1', 'Asset Edited - ID: 494', '2019-10-01 03:44:39'),
(1826, 2, '::1', 'Asset Edited - ID: 494', '2019-10-01 03:45:21'),
(1827, 2, '::1', 'Location Added - ID: 277', '2019-10-01 03:47:24'),
(1828, 2, '::1', 'Asset Added - ID: 496', '2019-10-01 03:50:17'),
(1829, 2, '::1', 'Asset Added - ID: 497', '2019-10-01 03:52:25'),
(1830, 2, '::1', 'Location Added - ID: 278', '2019-10-01 04:30:01'),
(1831, 2, '::1', 'Asset Added - ID: 498', '2019-10-01 05:00:59'),
(1832, 2, '::1', 'Asset Edited - ID: 498', '2019-10-01 05:04:14'),
(1833, 2, '::1', 'Asset Edited - ID: 498', '2019-10-01 05:06:37'),
(1834, 2, '::1', 'Asset Edited - ID: 498', '2019-10-01 05:08:07'),
(1835, 2, '::1', 'Location Edited - ID: 276', '2019-10-01 06:17:03'),
(1836, 2, '::1', 'Asset Added - ID: 499', '2019-10-01 06:19:40'),
(1837, 2, '::1', 'Asset Added - ID: 500', '2019-10-01 06:20:11'),
(1838, 2, '::1', 'Location Added - ID: 279', '2019-10-01 06:20:36'),
(1839, 2, '::1', 'Asset Added - ID: 501', '2019-10-01 06:30:09'),
(1840, 2, '::1', 'License Added - ID: 294', '2019-10-01 06:30:53'),
(1841, 2, '::1', 'Location Added - ID: 280', '2019-10-01 06:32:35'),
(1842, 2, '::1', 'Asset Added - ID: 502', '2019-10-01 06:41:15'),
(1843, 2, '::1', 'License Added - ID: 295', '2019-10-01 06:43:17'),
(1844, 2, '::1', 'Asset Edited - ID: 502', '2019-10-01 06:43:55'),
(1845, 2, '::1', 'Asset Added - ID: 503', '2019-10-01 06:46:35'),
(1846, 2, '::1', 'Asset Edited - ID: 500', '2019-10-01 07:20:48'),
(1847, 2, '::1', 'License Added - ID: 296', '2019-10-01 07:21:26'),
(1848, 2, '::1', 'License Added - ID: 297', '2019-10-01 07:21:57'),
(1849, 2, '::1', 'Location Added - ID: 281', '2019-10-01 07:32:53'),
(1850, 2, '::1', 'Asset Added - ID: 504', '2019-10-01 07:37:40'),
(1851, 2, '::1', 'License Added - ID: 298', '2019-10-01 07:38:18'),
(1852, 2, '::1', 'Location Added - ID: 282', '2019-10-01 07:50:28'),
(1853, 2, '::1', 'Asset Added - ID: 505', '2019-10-01 07:57:35'),
(1854, 2, '::1', 'Location Added - ID: 283', '2019-10-01 08:04:18'),
(1855, 2, '::1', 'Asset Added - ID: 506', '2019-10-01 08:08:27'),
(1856, 2, '::1', 'License Added - ID: 299', '2019-10-01 08:12:25'),
(1857, 2, '::1', 'License Added - ID: 300', '2019-10-01 08:13:04'),
(1858, 2, '::1', 'Asset Edited - ID: 505', '2019-10-01 08:15:50'),
(1859, 2, '::1', 'Asset Added - ID: 507', '2019-10-01 08:27:19'),
(1860, 2, '::1', 'License Added - ID: 301', '2019-10-01 08:27:46'),
(1861, 2, '::1', 'Asset Edited - ID: 507', '2019-10-01 08:28:08'),
(1862, 2, '::1', 'Asset Added - ID: 508', '2019-10-01 08:31:17'),
(1863, 2, '::1', 'License Added - ID: 302', '2019-10-01 08:31:54'),
(1864, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-10-02 02:27:38'),
(1865, 2, '::1', 'License Added - ID: 303', '2019-10-02 02:30:15'),
(1866, 2, '::1', 'License Added - ID: 304', '2019-10-02 02:30:57'),
(1867, 2, '::1', 'License Added - ID: 305', '2019-10-02 02:32:31'),
(1868, 2, '::1', 'License Added - ID: 306', '2019-10-02 02:35:26'),
(1869, 2, '::1', 'License Added - ID: 307', '2019-10-02 02:35:52'),
(1870, 2, '::1', 'Asset Edited - ID: 439', '2019-10-02 02:38:25'),
(1871, 2, '::1', 'License Added - ID: 308', '2019-10-02 02:39:11'),
(1872, 2, '::1', 'License Added - ID: 309', '2019-10-02 02:40:03'),
(1873, 2, '::1', 'Asset Edited - ID: 446', '2019-10-02 02:41:00'),
(1874, 2, '::1', 'Asset Edited - ID: 448', '2019-10-02 02:41:13'),
(1875, 2, '::1', 'Asset Edited - ID: 443', '2019-10-02 02:44:55'),
(1876, 2, '::1', 'License Added - ID: 310', '2019-10-02 02:45:42'),
(1877, 2, '::1', 'License Added - ID: 311', '2019-10-02 02:46:11'),
(1878, 2, '::1', 'License Added - ID: 312', '2019-10-02 02:46:56'),
(1879, 2, '::1', 'License Added - ID: 313', '2019-10-02 02:47:46'),
(1880, 2, '::1', 'License Added - ID: 314', '2019-10-02 02:51:04'),
(1881, 2, '::1', 'License Added - ID: 315', '2019-10-02 02:51:24'),
(1882, 2, '::1', 'License Added - ID: 316', '2019-10-02 02:52:03'),
(1883, 2, '::1', 'License Added - ID: 317', '2019-10-02 02:52:57'),
(1884, 2, '::1', 'Asset Added - ID: 509', '2019-10-02 02:57:49'),
(1885, 2, '::1', 'Asset Edited - ID: 440', '2019-10-02 03:16:28'),
(1886, 2, '::1', 'Asset Edited - ID: 440', '2019-10-02 03:17:20'),
(1887, 2, '::1', 'Asset Edited - ID: 489', '2019-10-02 03:25:38'),
(1888, 2, '::1', 'License Added - ID: 318', '2019-10-02 03:26:45'),
(1889, 2, '::1', 'License Added - ID: 319', '2019-10-02 03:27:17'),
(1890, 2, '::1', 'Asset Edited - ID: 488', '2019-10-02 03:28:27'),
(1891, 2, '::1', 'Asset Added - ID: 510', '2019-10-02 04:26:25'),
(1892, 2, '::1', 'Asset Edited - ID: 460', '2019-10-02 04:27:29'),
(1893, 2, '::1', 'Asset Edited - ID: 460', '2019-10-02 04:28:11'),
(1894, 2, '::1', 'Asset Edited - ID: 460', '2019-10-02 06:32:08'),
(1895, 2, '::1', 'Location Edited - ID: 1', '2019-10-02 06:38:07'),
(1896, 2, '::1', 'Asset Added - ID: 511', '2019-10-02 06:38:52'),
(1897, 2, '::1', 'Asset Edited - ID: 511', '2019-10-02 06:44:13'),
(1898, 2, '::1', 'License Added - ID: 320', '2019-10-02 06:44:52'),
(1899, 2, '::1', 'License Added - ID: 321', '2019-10-02 06:45:39'),
(1900, 2, '::1', 'License Added - ID: 322', '2019-10-02 06:46:10'),
(1901, 2, '::1', 'License Added - ID: 323', '2019-10-02 06:47:05'),
(1902, 2, '::1', 'License Added - ID: 324', '2019-10-02 06:47:51'),
(1903, 2, '::1', 'License Added - ID: 325', '2019-10-02 06:48:23'),
(1904, 2, '::1', 'License Added - ID: 326', '2019-10-02 06:49:03'),
(1905, 2, '::1', 'License Added - ID: 327', '2019-10-02 06:49:50'),
(1906, 2, '::1', 'License Added - ID: 328', '2019-10-02 06:50:28'),
(1907, 2, '::1', 'Asset Edited - ID: 511', '2019-10-02 06:57:46'),
(1908, 2, '::1', 'Asset Edited - ID: 511', '2019-10-02 07:00:35'),
(1909, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-10-03 06:18:48'),
(1910, 2, '::1', 'Asset Added - ID: 512', '2019-10-03 06:25:16'),
(1911, 2, '::1', 'License Added - ID: 329', '2019-10-03 06:25:53'),
(1912, 2, '::1', 'Asset Added - ID: 513', '2019-10-03 06:40:12'),
(1913, 2, '::1', 'License Added - ID: 330', '2019-10-03 06:40:55'),
(1914, 2, '::1', 'License Added - ID: 331', '2019-10-03 06:42:17'),
(1915, 2, '::1', 'Location Edited - ID: 1', '2019-10-03 06:46:24'),
(1916, 2, '::1', 'Asset Added - ID: 514', '2019-10-03 06:48:44'),
(1917, 2, '::1', 'License Added - ID: 332', '2019-10-03 06:49:17'),
(1918, 2, '::1', 'Asset Edited - ID: 514', '2019-10-03 07:03:40'),
(1919, 2, '::1', 'Asset Added - ID: 515', '2019-10-03 07:06:40'),
(1920, 2, '::1', 'License Added - ID: 333', '2019-10-03 07:07:25'),
(1921, 2, '::1', 'Asset Added - ID: 516', '2019-10-03 07:12:38'),
(1922, 2, '::1', 'License Added - ID: 334', '2019-10-03 07:13:14'),
(1923, 2, '::1', 'Asset Added - ID: 517', '2019-10-03 07:17:36'),
(1924, 2, '::1', 'Asset Added - ID: 518', '2019-10-03 07:28:11'),
(1925, 2, '::1', 'Asset Added - ID: 519', '2019-10-03 07:30:50'),
(1926, 2, '::1', 'Asset Added - ID: 520', '2019-10-03 07:33:24'),
(1927, 2, '::1', 'Asset Edited - ID: 516', '2019-10-03 07:33:43'),
(1928, 2, '::1', 'Asset Edited - ID: 518', '2019-10-03 07:33:57'),
(1929, 2, '::1', 'Asset Edited - ID: 519', '2019-10-03 07:34:14'),
(1930, 2, '::1', 'Asset Added - ID: 521', '2019-10-03 07:42:47'),
(1931, 2, '::1', 'Asset Added - ID: 522', '2019-10-03 07:46:19'),
(1932, 2, '::1', 'Asset Added - ID: 523', '2019-10-03 07:48:50'),
(1933, 2, '::1', 'Asset Added - ID: 524', '2019-10-03 07:51:18'),
(1934, 2, '::1', 'Asset Added - ID: 525', '2019-10-03 07:54:36'),
(1935, 2, '::1', 'Asset Added - ID: 526', '2019-10-03 08:02:46'),
(1936, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-10-04 01:56:12'),
(1937, 2, '::1', 'Asset Edited - ID: 522', '2019-10-04 02:02:46'),
(1938, 2, '::1', 'Asset Edited - ID: 522', '2019-10-04 02:09:10'),
(1939, 2, '::1', 'Asset Edited - ID: 522', '2019-10-04 02:17:15'),
(1940, 2, '::1', 'Asset Edited - ID: 522', '2019-10-04 02:17:23'),
(1941, 2, '::1', 'Asset Edited - ID: 516', '2019-10-04 02:34:53'),
(1942, 2, '::1', 'Asset Edited - ID: 513', '2019-10-04 02:43:30'),
(1943, 2, '::1', 'Asset Edited - ID: 514', '2019-10-04 02:45:54'),
(1944, 2, '::1', 'Asset Edited - ID: 519', '2019-10-04 02:52:28'),
(1945, 2, '::1', 'Asset Edited - ID: 518', '2019-10-04 02:56:05'),
(1946, 2, '::1', 'Asset Edited - ID: 519', '2019-10-04 02:57:07'),
(1947, 2, '::1', 'Asset Edited - ID: 520', '2019-10-04 03:00:02'),
(1948, 2, '::1', 'Asset Edited - ID: 521', '2019-10-04 03:04:07'),
(1949, 2, '::1', 'Asset Edited - ID: 513', '2019-10-04 03:05:26'),
(1950, 2, '::1', 'Asset Edited - ID: 514', '2019-10-04 03:05:53'),
(1951, 2, '::1', 'Asset Edited - ID: 515', '2019-10-04 03:09:51'),
(1952, 2, '::1', 'Asset Edited - ID: 516', '2019-10-04 03:12:35'),
(1953, 2, '::1', 'Asset Edited - ID: 517', '2019-10-04 03:14:42'),
(1954, 2, '::1', 'Asset Edited - ID: 523', '2019-10-04 03:17:09'),
(1955, 2, '::1', 'Asset Edited - ID: 523', '2019-10-04 03:18:35'),
(1956, 2, '::1', 'Asset Edited - ID: 520', '2019-10-04 03:19:33'),
(1957, 2, '::1', 'Asset Edited - ID: 524', '2019-10-04 03:21:21'),
(1958, 2, '::1', 'Asset Edited - ID: 525', '2019-10-04 03:22:53'),
(1959, 2, '::1', 'Asset Edited - ID: 526', '2019-10-04 03:25:36'),
(1960, 2, '::1', 'Asset Edited - ID: 526', '2019-10-04 03:26:14'),
(1961, 2, '::1', 'Asset Edited - ID: 512', '2019-10-04 03:28:34'),
(1962, 2, '::1', 'Asset Edited - ID: 526', '2019-10-04 03:29:03'),
(1963, 2, '::1', 'Asset Edited - ID: 512', '2019-10-04 03:29:12'),
(1964, 2, '::1', 'Asset Edited - ID: 526', '2019-10-04 03:53:43'),
(1965, 2, '::1', 'Asset Added - ID: 527', '2019-10-04 07:07:48'),
(1966, 2, '::1', 'Asset Added - ID: 528', '2019-10-04 07:10:19'),
(1967, 2, '::1', 'Asset Added - ID: 529', '2019-10-04 07:22:40'),
(1968, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-10-05 02:06:30'),
(1969, 2, '::1', 'Asset Edited - ID: 528', '2019-10-05 02:06:54'),
(1970, 2, '::1', 'Asset Added - ID: 530', '2019-10-05 02:12:07'),
(1971, 2, '::1', 'Asset Added - ID: 531', '2019-10-05 02:17:37'),
(1972, 2, '::1', 'Asset Edited - ID: 531', '2019-10-05 02:20:20'),
(1973, 2, '::1', 'Asset Added - ID: 532', '2019-10-05 02:24:01'),
(1974, 2, '::1', 'Asset Added - ID: 533', '2019-10-05 02:27:31'),
(1975, 2, '::1', 'Asset Added - ID: 534', '2019-10-05 02:39:42'),
(1976, 2, '::1', 'Asset Edited - ID: 534', '2019-10-05 03:10:13'),
(1977, 2, '::1', 'Asset Added - ID: 535', '2019-10-05 03:15:06'),
(1978, 2, '::1', 'Asset Edited - ID: 535', '2019-10-05 03:15:27'),
(1979, 2, '::1', 'Asset Edited - ID: 535', '2019-10-05 03:16:15'),
(1980, 2, '::1', 'Asset Added - ID: 536', '2019-10-05 03:22:56'),
(1981, 2, '::1', 'Asset Added - ID: 537', '2019-10-05 03:38:17'),
(1982, 2, '::1', 'Asset Added - ID: 538', '2019-10-05 03:39:36'),
(1983, 2, '::1', 'Asset Added - ID: 539', '2019-10-05 03:40:46'),
(1984, 2, '::1', 'Asset Added - ID: 540', '2019-10-05 03:43:47'),
(1985, 2, '::1', 'Asset Added - ID: 541', '2019-10-05 03:45:49'),
(1986, 2, '::1', 'License Added - ID: 335', '2019-10-05 03:46:15'),
(1987, 2, '::1', 'License Added - ID: 336', '2019-10-05 03:47:11'),
(1988, 2, '::1', 'Asset Added - ID: 542', '2019-10-05 03:52:00'),
(1989, 2, '::1', 'Asset Added - ID: 543', '2019-10-05 03:57:01'),
(1990, 2, '::1', 'Asset Added - ID: 544', '2019-10-05 04:15:08'),
(1991, 2, '::1', 'Asset Added - ID: 545', '2019-10-05 04:19:12'),
(1992, 2, '::1', 'Asset Edited - ID: 544', '2019-10-05 04:21:35'),
(1993, 2, '::1', 'Asset Edited - ID: 544', '2019-10-05 04:23:23'),
(1994, 2, '::1', 'Asset Added - ID: 546', '2019-10-05 04:27:21'),
(1995, 2, '::1', 'Asset Added - ID: 547', '2019-10-05 04:34:28'),
(1996, 2, '::1', 'Asset Added - ID: 548', '2019-10-05 04:40:19'),
(1997, 2, '::1', 'Asset Added - ID: 549', '2019-10-05 04:42:53'),
(1998, 2, '::1', 'Asset Edited - ID: 549', '2019-10-05 04:44:34'),
(1999, 2, '::1', 'Asset Added - ID: 550', '2019-10-05 04:47:10'),
(2000, 2, '::1', 'Asset Added - ID: 551', '2019-10-05 04:54:03'),
(2001, 2, '::1', 'Asset Added - ID: 552', '2019-10-05 05:00:07'),
(2002, 2, '::1', 'Asset Added - ID: 553', '2019-10-05 06:12:56'),
(2003, 2, '::1', 'Asset Added - ID: 554', '2019-10-05 06:17:28'),
(2004, 2, '::1', 'Asset Added - ID: 555', '2019-10-05 06:21:07'),
(2005, 2, '::1', 'Asset Added - ID: 556', '2019-10-05 06:36:38'),
(2006, 2, '::1', 'Asset Edited - ID: 556', '2019-10-05 06:37:59'),
(2007, 2, '::1', 'Asset Added - ID: 557', '2019-10-05 06:40:19'),
(2008, 2, '::1', 'Asset Edited - ID: 557', '2019-10-05 06:41:13'),
(2009, 2, '::1', 'Asset Edited - ID: 557', '2019-10-05 06:41:50'),
(2010, 2, '::1', 'Asset Added - ID: 558', '2019-10-05 06:46:15'),
(2011, 2, '::1', 'Asset Edited - ID: 558', '2019-10-05 06:46:57'),
(2012, 2, '::1', 'Asset Edited - ID: 558', '2019-10-05 06:47:43'),
(2013, 2, '::1', 'Asset Added - ID: 559', '2019-10-05 06:49:52'),
(2014, 2, '::1', 'Asset Added - ID: 560', '2019-10-05 06:59:43'),
(2015, 2, '::1', 'Asset Edited - ID: 517', '2019-10-05 07:12:03'),
(2016, 2, '::1', 'Asset Added - ID: 561', '2019-10-05 07:16:52'),
(2017, 2, '::1', 'Asset Added - ID: 562', '2019-10-05 07:20:56'),
(2018, 2, '::1', 'Knowledge Base Category Added - ID: 2', '2019-10-05 07:42:25'),
(2019, 2, '::1', 'Knowledge Base Article Added - ID: 4', '2019-10-05 07:47:02'),
(2020, 2, '::1', 'Asset Added - ID: 563', '2019-10-05 08:06:07'),
(2021, 2, '::1', 'Asset Added - ID: 564', '2019-10-05 08:07:39'),
(2022, 2, '::1', 'Asset Edited - ID: 560', '2019-10-05 08:22:03'),
(2023, 2, '::1', 'Asset Added - ID: 565', '2019-10-05 08:30:03'),
(2024, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-10-07 03:46:02'),
(2025, 2, '::1', 'Asset Added - ID: 566', '2019-10-07 03:52:15'),
(2026, 2, '::1', 'Asset Added - ID: 567', '2019-10-07 03:53:36'),
(2027, 2, '::1', 'Asset Added - ID: 568', '2019-10-07 03:59:31'),
(2028, 2, '::1', 'Asset Added - ID: 569', '2019-10-07 04:04:02'),
(2029, 2, '::1', 'Asset Added - ID: 570', '2019-10-07 04:17:52'),
(2030, 2, '::1', 'Asset Added - ID: 571', '2019-10-07 04:23:47'),
(2031, 2, '::1', 'Asset Edited - ID: 523', '2019-10-07 04:27:43'),
(2032, 2, '::1', 'Asset Added - ID: 572', '2019-10-07 04:30:42'),
(2033, 2, '::1', 'Asset Added - ID: 573', '2019-10-07 04:31:49'),
(2034, 2, '::1', 'Asset Added - ID: 574', '2019-10-07 04:33:35'),
(2035, 2, '::1', 'Asset Added - ID: 575', '2019-10-07 04:35:31'),
(2036, 2, '::1', 'Asset Added - ID: 576', '2019-10-07 04:38:02'),
(2037, 2, '::1', 'Asset Edited - ID: 576', '2019-10-07 04:39:30'),
(2038, 2, '::1', 'Asset Added - ID: 577', '2019-10-07 04:46:08'),
(2039, 2, '::1', 'Asset Added - ID: 578', '2019-10-07 04:51:23'),
(2040, 2, '::1', 'Asset Edited - ID: 514', '2019-10-07 05:03:11'),
(2041, 2, '::1', 'Asset Edited - ID: 514', '2019-10-07 05:05:48'),
(2042, 2, '::1', 'User/Staff Logged Out - ID: 2', '2019-10-07 06:18:10'),
(2043, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-10-07 06:18:18'),
(2044, 2, '::1', 'Asset Edited - ID: 514', '2019-10-07 06:20:37'),
(2045, 2, '::1', 'Asset Deleted - ID: 428', '2019-10-07 07:39:31'),
(2046, 2, '::1', 'Asset Edited - ID: 232', '2019-10-07 07:40:12'),
(2047, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-10-08 02:33:31'),
(2048, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-10-08 04:35:32'),
(2049, 2, '::1', 'Location Added - ID: 287', '2019-10-08 04:41:20'),
(2050, 2, '::1', 'Asset Added - ID: 579', '2019-10-08 04:47:12'),
(2051, 2, '::1', 'Location Edited - ID: 239', '2019-10-08 05:05:09'),
(2052, 2, '::1', 'Location Edited - ID: 240', '2019-10-08 05:05:30'),
(2053, 2, '::1', 'Asset Added - ID: 580', '2019-10-08 05:09:17'),
(2054, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-10-09 02:14:35'),
(2055, 2, '::1', 'Location Added - ID: 288', '2019-10-09 03:33:10'),
(2056, 2, '::1', 'Asset Added - ID: 581', '2019-10-09 03:41:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `ticket` int(11) NOT NULL,
  `departmentid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `assetid` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `status` varchar(50) NOT NULL,
  `priority` varchar(50) NOT NULL,
  `timestamp` datetime NOT NULL,
  `notes` text NOT NULL,
  `ccs` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tickets`
--

INSERT INTO `tickets` (`id`, `ticket`, `departmentid`, `clientid`, `userid`, `adminid`, `assetid`, `email`, `subject`, `status`, `priority`, `timestamp`, `notes`, `ccs`) VALUES
(2, 129115, 0, 97, 0, 5, 5, 'tafalah@gmail.com', 'Scan Document', 'Closed', 'Normal', '2019-07-13 04:52:08', '', ''),
(3, 168625, 0, 77, 3, 4, 0, 'tafalah@gmail.com', 'Purchasing Land Ciledug', 'Closed', 'High', '2019-07-13 06:24:30', '', ''),
(4, 719626, 0, 347, 3, 2, 0, 'tafalah@gmail.com', 'Persetujuan Pengajuan Sewa Rumah Ujung Gading', 'Closed', 'Normal', '2019-08-28 04:59:03', '', ''),
(6, 716520, 1, 3, 7, 4, 0, 'edijuari@gmail.com', 'Tiket Baru', 'Reopened', 'High', '2019-09-26 06:07:37', '', ''),
(7, 459610, 1, 3, 8, 2, 0, 'khalid@example.com', 'Tiket Baru 2', 'Open', 'Normal', '2019-09-26 06:08:26', '', ''),
(8, 485943, 1, 3, 9, 2, 0, 'dadan@example.com', 'Tiket  Baru 3', 'Open', 'Low', '2019-09-26 06:09:01', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tickets_departments`
--

CREATE TABLE `tickets_departments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tickets_departments`
--

INSERT INTO `tickets_departments` (`id`, `name`) VALUES
(1, 'Default Department');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tickets_pr`
--

CREATE TABLE `tickets_pr` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `content` text CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tickets_pr`
--

INSERT INTO `tickets_pr` (`id`, `name`, `content`) VALUES
(1, 'Demo Predefined Reply', '<div><p>Predefined reply body.<br></p></div>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tickets_replies`
--

CREATE TABLE `tickets_replies` (
  `id` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `peopleid` int(11) NOT NULL,
  `message` text NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tickets_replies`
--

INSERT INTO `tickets_replies` (`id`, `ticketid`, `peopleid`, `message`, `timestamp`) VALUES
(2, 2, 2, '<p>di cek lagi bueleng</p>', '2019-07-13 04:52:08'),
(3, 2, 2, '<p>segera akan dirposes oleh admin</p>', '2019-07-13 04:55:56'),
(4, 3, 4, '<p>Cek pembelian tanah di ciledug apakah sesuai dengan anggaran dan progressnya</p>', '2019-07-13 06:24:30'),
(5, 3, 4, '<p>segera di laksanakan&nbsp;</p>', '2019-07-13 06:26:41'),
(6, 4, 2, '<p>proses persetujan pengajuan umk untuk sewa rumah ujung gading sebesar 25 juta</p>', '2019-08-28 04:59:03'),
(8, 6, 2, '<p>menambahkan tiket baru</p>', '2019-09-26 06:07:37'),
(9, 7, 2, '<p>menambahkan tiket baru Normal</p>', '2019-09-26 06:08:26'),
(10, 8, 2, '<p>menambahkan tiket baru Low</p>', '2019-09-26 06:09:01'),
(11, 6, 4, '<p>komentar dari Teknisi</p>', '2019-09-26 06:14:07'),
(12, 6, 4, 'komentar dari Teknisi', '2019-09-26 06:14:28'),
(13, 6, 2, '', '2019-09-26 06:19:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tickets_rules`
--

CREATE TABLE `tickets_rules` (
  `id` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `executed` int(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cond_status` varchar(255) NOT NULL,
  `cond_priority` varchar(255) NOT NULL,
  `cond_timeelapsed` varchar(20) NOT NULL,
  `cond_datetime` datetime NOT NULL,
  `act_status` varchar(255) NOT NULL,
  `act_priority` varchar(255) NOT NULL,
  `act_assignto` int(11) NOT NULL,
  `act_notifyadmins` int(1) NOT NULL,
  `act_addreply` int(1) NOT NULL,
  `reply` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tickets_rules`
--

INSERT INTO `tickets_rules` (`id`, `ticketid`, `executed`, `name`, `cond_status`, `cond_priority`, `cond_timeelapsed`, `cond_datetime`, `act_status`, `act_priority`, `act_assignto`, `act_notifyadmins`, `act_addreply`, `reply`) VALUES
(1, 4, 0, 'Diproses Kembali', 'a:1:{i:0;s:4:\"Open\";}', 'a:1:{i:0;s:6:\"Normal\";}', '', '2019-08-28 12:15:00', 'Open', 'Normal', 2, 1, 1, 'Mohon diproses kembali. Tanyakan ke Ujung Gading apakah sudah terima uang sewa bulan lalu. ');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `assetcategories`
--
ALTER TABLE `assetcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag` (`tag`);

--
-- Indeks untuk tabel `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `clients_admins`
--
ALTER TABLE `clients_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `config`
--
ALTER TABLE `config`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `emaillog`
--
ALTER TABLE `emaillog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hosts`
--
ALTER TABLE `hosts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hosts_checks`
--
ALTER TABLE `hosts_checks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hosts_history`
--
ALTER TABLE `hosts_history`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hosts_people`
--
ALTER TABLE `hosts_people`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kb_articles`
--
ALTER TABLE `kb_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kb_categories`
--
ALTER TABLE `kb_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indeks untuk tabel `licensecategories`
--
ALTER TABLE `licensecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag` (`tag`);

--
-- Indeks untuk tabel `licenses_assets`
--
ALTER TABLE `licenses_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notificationtemplates`
--
ALTER TABLE `notificationtemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `originals`
--
ALTER TABLE `originals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `projects_admins`
--
ALTER TABLE `projects_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `smslog`
--
ALTER TABLE `smslog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `statuscodes`
--
ALTER TABLE `statuscodes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `systemlog`
--
ALTER TABLE `systemlog`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tickets_departments`
--
ALTER TABLE `tickets_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tickets_pr`
--
ALTER TABLE `tickets_pr`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tickets_replies`
--
ALTER TABLE `tickets_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tickets_rules`
--
ALTER TABLE `tickets_rules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `assetcategories`
--
ALTER TABLE `assetcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=582;

--
-- AUTO_INCREMENT untuk tabel `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT untuk tabel `clients_admins`
--
ALTER TABLE `clients_admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `credentials`
--
ALTER TABLE `credentials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `emaillog`
--
ALTER TABLE `emaillog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `hosts`
--
ALTER TABLE `hosts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `hosts_checks`
--
ALTER TABLE `hosts_checks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `hosts_history`
--
ALTER TABLE `hosts_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `hosts_people`
--
ALTER TABLE `hosts_people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `issues`
--
ALTER TABLE `issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `kb_articles`
--
ALTER TABLE `kb_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kb_categories`
--
ALTER TABLE `kb_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `labels`
--
ALTER TABLE `labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `licensecategories`
--
ALTER TABLE `licensecategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `licenses`
--
ALTER TABLE `licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT untuk tabel `licenses_assets`
--
ALTER TABLE `licenses_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT untuk tabel `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT untuk tabel `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `models`
--
ALTER TABLE `models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `notificationtemplates`
--
ALTER TABLE `notificationtemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `originals`
--
ALTER TABLE `originals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `people`
--
ALTER TABLE `people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `projects_admins`
--
ALTER TABLE `projects_admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `smslog`
--
ALTER TABLE `smslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `statuscodes`
--
ALTER TABLE `statuscodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `systemlog`
--
ALTER TABLE `systemlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2057;

--
-- AUTO_INCREMENT untuk tabel `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tickets_departments`
--
ALTER TABLE `tickets_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tickets_pr`
--
ALTER TABLE `tickets_pr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tickets_replies`
--
ALTER TABLE `tickets_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tickets_rules`
--
ALTER TABLE `tickets_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
