-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 03:45 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE `pinjaman` (
  `id` int(11) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `tanggal` varchar(11) NOT NULL,
  `pinjaman` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjaman`
--

INSERT INTO `pinjaman` (`id`, `id_user`, `nama`, `tanggal`, `pinjaman`, `status`) VALUES
(27, '3', 'jon', '29-09-2021', '200000', 'disetujui'),
(28, '6', 'nasirudin ahmad', '30-09-2021', '100000', 'disetujui'),
(29, '6', 'nasirudin ahmad', '04-11-2021', '200000', 'disetujui');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `nama`, `no_tlp`, `email`, `photo`) VALUES
(2, 'nasir', '082115100979', 'nasirsuganda2@gmail.com', ''),
(3, 'jon', '09782323232', 'nasir@nasir.com', ''),
(5, 'asif', '09782323232', 'asif@asif.com', ''),
(6, 'nasirudin ahmad', '0821151009792', 'nasirsuganda@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `simpanan`
--

CREATE TABLE `simpanan` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` varchar(10) NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `tahun` varchar(20) NOT NULL,
  `simpanan_pokok` int(100) NOT NULL,
  `simpanan_wajib` int(100) NOT NULL,
  `simpanan_sukarela` int(100) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simpanan`
--

INSERT INTO `simpanan` (`id`, `id_user`, `tanggal`, `bulan`, `tahun`, `simpanan_pokok`, `simpanan_wajib`, `simpanan_sukarela`, `status`) VALUES
(272, 6, '30-09-2021', '2021-09', '', 0, 25000, 50000, 'disetujui'),
(273, 6, '30-09-2021', '2021-09', '', 0, 25000, 2000000, 'disetujui'),
(274, 6, '30-09-2021', '2021-09', '', 0, 0, 0, 'disetujui'),
(275, 3, '17-10-2021', '2021-10', '', 0, 25000, 0, 'pending'),
(276, 6, '17-10-2021', '2021-10', '', 0, 50000, 0, 'pending'),
(277, 6, '17-10-2021', '2021-10', '', 0, 70000, 0, 'disetujui'),
(278, 6, '17-10-2021', '2021-10', '', 0, 70000, 0, 'pending'),
(279, 6, '17-10-2021', '2021-10', '', 0, 25000, 0, 'pending'),
(280, 6, '17-10-2021', '2021-10', '', 0, 50000, 0, 'pending'),
(281, 6, '17-10-2021', '2021-10', '', 0, 50000, 0, 'pending'),
(282, 6, '17-10-2021', '2021-10', '', 0, 50000, 0, 'pending'),
(283, 6, '17-10-2021', '2021-10', '', 0, 50000, 0, 'pending'),
(284, 6, '17-10-2021', '2021-10', '', 0, 50000, 0, 'pending'),
(285, 6, '17-10-2021', '2021-10', '', 0, 50000, 0, 'pending'),
(286, 6, '17-10-2021', '2021-10', '', 0, 50000, 0, 'pending'),
(287, 6, '17-10-2021', '2021-10', '', 0, 50000, 0, 'pending'),
(288, 6, '17-10-2021', '2021-10', '', 0, 25000, 50000, 'pending'),
(289, 6, '16-11-2021', '2021-11', '', 0, 25000, 220000, 'pending'),
(290, 6, '16-11-2021', '2021-11', '', 0, 25000, 220000, 'pending'),
(291, 6, '16-11-2021', '2021-11', '', 0, 25000, 220000, 'pending'),
(292, 6, '16-11-2021', '2021-11', '', 0, 25000, 24446000, 'pending'),
(293, 6, '16-11-2021', '2021-11', '', 0, 25000, 24446000, 'pending'),
(294, 6, '16-11-2021', '2021-11', '', 0, 25000, 0, 'pending'),
(295, 6, '16-11-2021', '2021-11', '', 0, 25000, 0, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `foto_ktp` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(10) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `nik`, `foto_ktp`, `tgl_lahir`, `email`, `password`, `level`, `status`) VALUES
(2, 'nasir', '1234567891234566789', '613b7f30aabbf.jpg', '2021-09-02', 'nasirsuganda2@gmail.com', '$2y$10$PYZlkH8KMGCYoRcphGlXi.uTaOqFmfrn/7NPk9yqiTRDrmSWVu/lS', 'admin', 'aktif'),
(3, 'jon', '12345678', '613d93d2b8e98.jpg', '2021-09-12', 'nasir@nasir.com', '$2y$10$g3XzD.nAKqVs6g5vUjp/Ke84YfH9Pjo0Z95PNbuxoqZfnTAoDCtUq', 'user', 'aktif'),
(5, 'asif', '1234567890', '6154698d5aed8.jpg', '2021-09-29', 'asif@asif.com', '$2y$10$.jGRndP5Bj5GkQAczvmwd.RCRrm7.AokhXuhhHn5U5XVOpplaSpdm', 'user', 'pending'),
(6, 'nasirudin ahmad', '1234567890001', '615509187c64a.jpg', '2021-09-30', 'nasirsuganda@gmail.com', '$2y$10$IdMdLMbKeTe6Q3lSr2NI5e.8uuVkD9fzIGRGxbqSPLZAj4t8EZPIS', 'user', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simpanan`
--
ALTER TABLE `simpanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pinjaman`
--
ALTER TABLE `pinjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `simpanan`
--
ALTER TABLE `simpanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
