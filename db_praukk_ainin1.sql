-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2023 at 09:03 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_praukk_ainin1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dvd`
--

CREATE TABLE `tb_dvd` (
  `id_dvd` int(10) NOT NULL,
  `genre_film` varchar(30) NOT NULL,
  `judul_film` varchar(50) NOT NULL,
  `tahun_film` int(4) NOT NULL,
  `tanggal_sewa` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_dvd`
--

INSERT INTO `tb_dvd` (`id_dvd`, `genre_film`, `judul_film`, `tahun_film`, `tanggal_sewa`, `tanggal_kembali`, `harga`) VALUES
(1, 'fh', 'fvc', 0, '2023-02-15', '0000-00-00', 5),
(2, 'fh', 'fvc', 2003, '2023-02-15', '0000-00-00', 5),
(3, 'fh', 'fvc', 2003, '2023-02-15', '2023-02-03', 5),
(4, 'fh', 'fvc', 2003, '2023-02-15', '2023-02-03', 5),
(5, 'fh', 'fvc', 2003, '2023-02-15', '2023-02-03', 5),
(6, 'fh', 'fvc', 2003, '2023-02-15', '2023-02-03', 5),
(7, 'dfd', 'fgfgf', 5, '2023-02-01', '2023-02-02', 2),
(8, 'dfd', 'fgfgf', 5, '2023-02-01', '2023-02-02', 2),
(9, 'dfd', 'fgfgf', 5, '2023-02-01', '2023-02-02', 2),
(10, 'dfd', 'fgfgf', 5, '2023-02-01', '2023-02-02', 2),
(11, 'yaya', 'yo', 1234, '2023-01-31', '2023-02-09', 5),
(12, 'yaya', 'yo', 1234, '2023-01-31', '2023-02-09', 5),
(13, 'yaya', 'yo', 1234, '2023-01-31', '2023-02-09', 5),
(14, 'yaya', 'yo', 1234, '2023-01-31', '2023-02-09', 5),
(17, 'fd', 'fdg', 0, '2023-02-08', '2023-02-02', 5),
(18, 'hormonis', 'sehidup semati', 2009, '2023-02-17', '2023-02-01', 100),
(20, 'hormonis', 'love', 2007, '2023-02-17', '2023-02-09', 150),
(21, 'hormonis', 'sehidup semati', 2009, '2023-02-17', '2023-02-01', 100),
(22, 'hurmonis', 'love', 2001, '2023-02-01', '2023-02-02', 250);

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyewa`
--

CREATE TABLE `tb_penyewa` (
  `id_penyewa` int(10) NOT NULL,
  `nama_penyewa` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `id_dvd` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_penyewa`
--

INSERT INTO `tb_penyewa` (`id_penyewa`, `nama_penyewa`, `alamat`, `id_dvd`) VALUES
(20, 'nina', ' sayung', 20),
(21, 'dian', ' semarang', 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dvd`
--
ALTER TABLE `tb_dvd`
  ADD PRIMARY KEY (`id_dvd`);

--
-- Indexes for table `tb_penyewa`
--
ALTER TABLE `tb_penyewa`
  ADD PRIMARY KEY (`id_penyewa`),
  ADD KEY `id_dvd` (`id_dvd`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_dvd`
--
ALTER TABLE `tb_dvd`
  MODIFY `id_dvd` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_penyewa`
--
ALTER TABLE `tb_penyewa`
  MODIFY `id_penyewa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_penyewa`
--
ALTER TABLE `tb_penyewa`
  ADD CONSTRAINT `tb_penyewa_ibfk_1` FOREIGN KEY (`id_dvd`) REFERENCES `tb_dvd` (`id_dvd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
