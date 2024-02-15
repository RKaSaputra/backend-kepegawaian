-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2024 at 05:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pegawai`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddDivisi` ()   BEGIN
    INSERT INTO divisi (divisi) VALUES (divisi);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AddJabatan` ()   BEGIN
    INSERT INTO jabatan (jabatan, gaji_pokok) VALUES (jabatan, gaji_pokok);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AddPegawai` ()   BEGIN
     INSERT INTO pegawai (nama_pegawai, alamat, id_jabatan, id_divisi) VALUES (nama_pegawai, alamat, id_jabatan, id_divisi);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteDivisi` (IN `id_divisi` INT)   BEGIN
    DELETE FROM jabatan WHERE id_divisi = id_divisi;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteJabatan` (IN `id_jabatan` INT)   BEGIN
    DELETE FROM jabatan WHERE id_jabatan = id_jabatan;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeletePegawai` (IN `id_pegawai` INT)   BEGIN
    DELETE FROM pegawai WHERE id_pegawai = id_pegawai;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditDivisi` ()   BEGIN
    UPDATE divisi SET id_divisi = id_divisi, divisi = divisi WHERE id = id_jabatan;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditJabatan` ()   BEGIN
    UPDATE jabatan SET id_jabatan = id_jabatan, jabatan = jabatan, gaji_pokok = gaji_pokok WHERE id = id_jabatan;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditPegawai` ()   BEGIN
    UPDATE pegawai SET nama_pegawai = nama_pegawai, alamat = alamat, id_jabatan = id_jabatan, id_divisi = id_divisi WHERE id = id_pegawai;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Tampildivisi` ()   BEGIN
    SELECT * FROM divisi;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `TampilJabatan` ()   BEGIN
    SELECT * FROM jabatan;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `TampilPegawai` ()   BEGIN
    SELECT * FROM pegawai;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id_divisi` int(11) NOT NULL,
  `divisi` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `divisi`, `createdAt`, `updatedAt`) VALUES
(21, 'Produksi', '2024-02-15 16:55:38', '2024-02-15 16:55:38'),
(22, 'Pemasaran', '2024-02-15 16:55:43', '2024-02-15 16:55:43'),
(23, 'Keuangan', '2024-02-15 16:55:55', '2024-02-15 16:55:55'),
(24, 'Teknologi Informasi', '2024-02-15 16:56:11', '2024-02-15 16:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `gaji_pokok` float NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `jabatan`, `gaji_pokok`, `createdAt`, `updatedAt`) VALUES
(11, 'Manajer Produksi', 5000000, '2024-02-15 16:57:01', '2024-02-15 16:57:01'),
(12, 'Supervisor Produksi', 4500000, '2024-02-15 16:57:20', '2024-02-15 16:57:25'),
(13, 'Analis Pemasaran', 4000000, '2024-02-15 16:57:42', '2024-02-15 16:57:45'),
(14, 'Akuntan', 7000000, '2024-02-15 16:58:02', '2024-02-15 16:58:02');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pegawai` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `id_divisi` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `alamat`, `id_jabatan`, `id_divisi`, `createdAt`, `updatedAt`) VALUES
(9, 'Dika', 'Antapani', 11, 21, '2024-02-15 16:58:22', '2024-02-15 16:58:22'),
(10, 'Bilal', 'Kiaracondong', 12, 21, '2024-02-15 16:58:37', '2024-02-15 16:58:37'),
(11, 'Abdul', 'Antapani', 12, 21, '2024-02-15 16:58:51', '2024-02-15 16:58:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `id_jabatan` (`id_jabatan`),
  ADD KEY `id_divisi` (`id_divisi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id_divisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`),
  ADD CONSTRAINT `pegawai_ibfk_2` FOREIGN KEY (`id_divisi`) REFERENCES `divisi` (`id_divisi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
