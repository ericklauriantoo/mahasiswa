-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2022 at 11:04 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `krs`
--

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `kode_krs` varchar(15) NOT NULL,
  `StudentID` varchar(15) NOT NULL,
  `kode_term` varchar(4) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`kode_krs`, `StudentID`, `kode_term`, `keterangan`) VALUES
('100000001', '100000001', '1212', ''),
('100000002', '100000001', '1213', ''),
('100000003', '100000002', '1212', ''),
('100000004', '100000002', '1213', ''),
('100000005', '03081200002', '1212', '');

-- --------------------------------------------------------

--
-- Table structure for table `krs_detail`
--

CREATE TABLE `krs_detail` (
  `kode_krsdetail` varchar(15) NOT NULL,
  `kode_krs` varchar(15) NOT NULL,
  `kode_matakuliah` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `krs_detail`
--

INSERT INTO `krs_detail` (`kode_krsdetail`, `kode_krs`, `kode_matakuliah`) VALUES
('10000000101', '100000001', 'MK0001'),
('10000000102', '100000001', 'MK0003'),
('10000000201', '100000002', 'MK0002'),
('10000000202', '100000002', 'MK0001'),
('10000000301', '100000003', 'MK0002'),
('10000000302', '100000003', 'MK0001'),
('10000000401', '100000004', 'MK0002'),
('10000000402', '100000004', 'MK0001'),
('10000000501', '100000005', 'MK0001'),
('10000000502', '100000005', 'MK0002'),
('10000000503', '100000005', 'MK0003'),
('10000000504', '100000005', 'MK0004'),
('10000000505', '100000005', 'MK0005'),
('10000000506', '100000005', 'MK0006');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `StudentID` varchar(15) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Jurusan` varchar(30) NOT NULL,
  `Tahun_masuk` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`StudentID`, `Nama`, `Jurusan`, `Tahun_masuk`) VALUES
('03081200002', 'ERICK LAURIANTO', 'SISTEM INFORMASI', '2020'),
('100000001', 'BUDI', 'SISTEM INFORMASI', '2017'),
('100000002', 'SUSI', 'SISTEM INFORMASI', '2017');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_matakuliah` varchar(6) NOT NULL,
  `nama_matakuliah` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode_matakuliah`, `nama_matakuliah`, `sks`) VALUES
('MK0001', 'BUSINESS APPLICATION PROGRAMMING', 4),
('MK0002', 'AUDIT DAN KONTROL SISTEM INFROMASI', 4),
('MK0003', 'PEMASARAN DIGITAL', 4),
('MK0004', 'SISTEM INFORMASI PERUSAHAAN', 4),
('MK0005', 'MANAJEMEN STRATEGI PERUSAHAAN', 4),
('MK0006', 'DASAR MANAJEMEN KEUANGAN', 4);

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `kode_term` varchar(4) NOT NULL,
  `tahun_ajar` varchar(4) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`kode_term`, `tahun_ajar`, `semester`, `keterangan`) VALUES
('1212', '2020', 'GANJIL', ''),
('1213', '2020', 'GENAP', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_kodemk_namamk_sks`
-- (See below for the actual view)
--
CREATE TABLE `view_kodemk_namamk_sks` (
`kode_matakuliah` varchar(6)
,`nama_matakuliah` varchar(50)
,`sks` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_mahasiswa_kodeterm_1213`
-- (See below for the actual view)
--
CREATE TABLE `view_mahasiswa_kodeterm_1213` (
`StudentID` varchar(15)
,`Nama` varchar(50)
,`kode_term` varchar(4)
,`semester` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_mahasiswa_krs_detail_matakuliah`
-- (See below for the actual view)
--
CREATE TABLE `view_mahasiswa_krs_detail_matakuliah` (
`StudentID` varchar(15)
,`nama` varchar(50)
,`kode_term` varchar(4)
,`kode_matakuliah` varchar(6)
,`nama_matakuliah` varchar(50)
,`sks` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_mahasiswa_matakuliah`
-- (See below for the actual view)
--
CREATE TABLE `view_mahasiswa_matakuliah` (
`StudentID` varchar(15)
,`Nama` varchar(50)
,`kode_krs` varchar(15)
,`kode_matakuliah` varchar(6)
,`nama_matakuliah` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_mahasiswa_matakuliah_mk0001`
-- (See below for the actual view)
--
CREATE TABLE `view_mahasiswa_matakuliah_mk0001` (
`StudentID` varchar(15)
,`Nama` varchar(50)
,`kode_krs` varchar(15)
,`kode_matakuliah` varchar(6)
,`nama_matakuliah` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_mahasiswa_term`
-- (See below for the actual view)
--
CREATE TABLE `view_mahasiswa_term` (
`StudentID` varchar(15)
,`Nama` varchar(50)
,`kode_term` varchar(4)
,`semester` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_mahasiswa_term_ganjil`
-- (See below for the actual view)
--
CREATE TABLE `view_mahasiswa_term_ganjil` (
`StudentID` varchar(15)
,`Nama` varchar(50)
,`kode_term` varchar(4)
,`semester` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_mahasiswa_term_genap`
-- (See below for the actual view)
--
CREATE TABLE `view_mahasiswa_term_genap` (
`StudentID` varchar(15)
,`Nama` varchar(50)
,`kode_term` varchar(4)
,`semester` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_only_03081200002`
-- (See below for the actual view)
--
CREATE TABLE `view_only_03081200002` (
`StudentID` varchar(15)
,`nama` varchar(50)
,`kode_term` varchar(4)
,`kode_matakuliah` varchar(6)
,`nama_matakuliah` varchar(50)
,`sks` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vjlhkrsmhs`
-- (See below for the actual view)
--
CREATE TABLE `vjlhkrsmhs` (
`StudentID` varchar(15)
,`Nama` varchar(50)
,`JLHKRS` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `view_kodemk_namamk_sks`
--
DROP TABLE IF EXISTS `view_kodemk_namamk_sks`;

CREATE ALGORITHM=UNDEFINED DEFINER=`appMahasiswa`@`%` SQL SECURITY DEFINER VIEW `view_kodemk_namamk_sks`  AS SELECT `mk`.`kode_matakuliah` AS `kode_matakuliah`, `mk`.`nama_matakuliah` AS `nama_matakuliah`, `mk`.`sks` AS `sks` FROM `matakuliah` AS `mk``mk`  ;

-- --------------------------------------------------------

--
-- Structure for view `view_mahasiswa_kodeterm_1213`
--
DROP TABLE IF EXISTS `view_mahasiswa_kodeterm_1213`;

CREATE ALGORITHM=UNDEFINED DEFINER=`appMahasiswa`@`%` SQL SECURITY DEFINER VIEW `view_mahasiswa_kodeterm_1213`  AS SELECT `view_mahasiswa_term`.`StudentID` AS `StudentID`, `view_mahasiswa_term`.`Nama` AS `Nama`, `view_mahasiswa_term`.`kode_term` AS `kode_term`, `view_mahasiswa_term`.`semester` AS `semester` FROM `view_mahasiswa_term` WHERE `view_mahasiswa_term`.`kode_term` = 12131213  ;

-- --------------------------------------------------------

--
-- Structure for view `view_mahasiswa_krs_detail_matakuliah`
--
DROP TABLE IF EXISTS `view_mahasiswa_krs_detail_matakuliah`;

CREATE ALGORITHM=UNDEFINED DEFINER=`appMahasiswa`@`%` SQL SECURITY DEFINER VIEW `view_mahasiswa_krs_detail_matakuliah`  AS SELECT `mhs`.`StudentID` AS `StudentID`, `mhs`.`Nama` AS `nama`, `kr`.`kode_term` AS `kode_term`, `mk`.`kode_matakuliah` AS `kode_matakuliah`, `mk`.`nama_matakuliah` AS `nama_matakuliah`, `mk`.`sks` AS `sks` FROM (((`mahasiswa` `mhs` join `krs` `kr` on(`kr`.`StudentID` = `mhs`.`StudentID`)) join `krs_detail` `kd` on(`kd`.`kode_krs` = `kr`.`kode_krs`)) join `matakuliah` `mk` on(`mk`.`kode_matakuliah` = `kd`.`kode_matakuliah`))  ;

-- --------------------------------------------------------

--
-- Structure for view `view_mahasiswa_matakuliah`
--
DROP TABLE IF EXISTS `view_mahasiswa_matakuliah`;

CREATE ALGORITHM=UNDEFINED DEFINER=`appMahasiswa`@`%` SQL SECURITY DEFINER VIEW `view_mahasiswa_matakuliah`  AS SELECT `mhs`.`StudentID` AS `StudentID`, `mhs`.`Nama` AS `Nama`, `kr`.`kode_krs` AS `kode_krs`, `mk`.`kode_matakuliah` AS `kode_matakuliah`, `mk`.`nama_matakuliah` AS `nama_matakuliah` FROM (((`mahasiswa` `mhs` join `krs` `kr` on(`kr`.`StudentID` = `mhs`.`StudentID`)) join `krs_detail` `kd` on(`kd`.`kode_krs` = `kr`.`kode_krs`)) join `matakuliah` `mk` on(`mk`.`kode_matakuliah` = `kd`.`kode_matakuliah`))  ;

-- --------------------------------------------------------

--
-- Structure for view `view_mahasiswa_matakuliah_mk0001`
--
DROP TABLE IF EXISTS `view_mahasiswa_matakuliah_mk0001`;

CREATE ALGORITHM=UNDEFINED DEFINER=`appMahasiswa`@`%` SQL SECURITY DEFINER VIEW `view_mahasiswa_matakuliah_mk0001`  AS SELECT `view_mahasiswa_matakuliah`.`StudentID` AS `StudentID`, `view_mahasiswa_matakuliah`.`Nama` AS `Nama`, `view_mahasiswa_matakuliah`.`kode_krs` AS `kode_krs`, `view_mahasiswa_matakuliah`.`kode_matakuliah` AS `kode_matakuliah`, `view_mahasiswa_matakuliah`.`nama_matakuliah` AS `nama_matakuliah` FROM `view_mahasiswa_matakuliah` WHERE `view_mahasiswa_matakuliah`.`kode_matakuliah` = 'MK0001''MK0001'  ;

-- --------------------------------------------------------

--
-- Structure for view `view_mahasiswa_term`
--
DROP TABLE IF EXISTS `view_mahasiswa_term`;

CREATE ALGORITHM=UNDEFINED DEFINER=`appMahasiswa`@`%` SQL SECURITY DEFINER VIEW `view_mahasiswa_term`  AS SELECT `mhs`.`StudentID` AS `StudentID`, `mhs`.`Nama` AS `Nama`, `kr`.`kode_term` AS `kode_term`, `tm`.`semester` AS `semester` FROM ((`mahasiswa` `mhs` join `krs` `kr` on(`kr`.`StudentID` = `mhs`.`StudentID`)) join `term` `tm` on(`tm`.`kode_term` = `kr`.`kode_term`))  ;

-- --------------------------------------------------------

--
-- Structure for view `view_mahasiswa_term_ganjil`
--
DROP TABLE IF EXISTS `view_mahasiswa_term_ganjil`;

CREATE ALGORITHM=UNDEFINED DEFINER=`appMahasiswa`@`%` SQL SECURITY DEFINER VIEW `view_mahasiswa_term_ganjil`  AS SELECT `view_mahasiswa_term`.`StudentID` AS `StudentID`, `view_mahasiswa_term`.`Nama` AS `Nama`, `view_mahasiswa_term`.`kode_term` AS `kode_term`, `view_mahasiswa_term`.`semester` AS `semester` FROM `view_mahasiswa_term` WHERE `view_mahasiswa_term`.`semester` = 'GANJIL''GANJIL'  ;

-- --------------------------------------------------------

--
-- Structure for view `view_mahasiswa_term_genap`
--
DROP TABLE IF EXISTS `view_mahasiswa_term_genap`;

CREATE ALGORITHM=UNDEFINED DEFINER=`appMahasiswa`@`%` SQL SECURITY DEFINER VIEW `view_mahasiswa_term_genap`  AS SELECT `view_mahasiswa_term`.`StudentID` AS `StudentID`, `view_mahasiswa_term`.`Nama` AS `Nama`, `view_mahasiswa_term`.`kode_term` AS `kode_term`, `view_mahasiswa_term`.`semester` AS `semester` FROM `view_mahasiswa_term` WHERE `view_mahasiswa_term`.`semester` = 'GENAP''GENAP'  ;

-- --------------------------------------------------------

--
-- Structure for view `view_only_03081200002`
--
DROP TABLE IF EXISTS `view_only_03081200002`;

CREATE ALGORITHM=UNDEFINED DEFINER=`appMahasiswa`@`%` SQL SECURITY DEFINER VIEW `view_only_03081200002`  AS SELECT `view_mahasiswa_krs_detail_matakuliah`.`StudentID` AS `StudentID`, `view_mahasiswa_krs_detail_matakuliah`.`nama` AS `nama`, `view_mahasiswa_krs_detail_matakuliah`.`kode_term` AS `kode_term`, `view_mahasiswa_krs_detail_matakuliah`.`kode_matakuliah` AS `kode_matakuliah`, `view_mahasiswa_krs_detail_matakuliah`.`nama_matakuliah` AS `nama_matakuliah`, `view_mahasiswa_krs_detail_matakuliah`.`sks` AS `sks` FROM `view_mahasiswa_krs_detail_matakuliah` WHERE `view_mahasiswa_krs_detail_matakuliah`.`StudentID` = '03081200002''03081200002'  ;

-- --------------------------------------------------------

--
-- Structure for view `vjlhkrsmhs`
--
DROP TABLE IF EXISTS `vjlhkrsmhs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`appMahasiswa`@`%` SQL SECURITY DEFINER VIEW `vjlhkrsmhs`  AS SELECT `mhs`.`StudentID` AS `StudentID`, `mhs`.`Nama` AS `Nama`, count(`StudentID`) AS `JLHKRS` FROM (`mahasiswa` `mhs` join `krs` on(`mhs`.`StudentID` = `StudentID`)) GROUP BY `mhs`.`StudentID`, `mhs`.`Nama``Nama`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`kode_krs`);

--
-- Indexes for table `krs_detail`
--
ALTER TABLE `krs_detail`
  ADD PRIMARY KEY (`kode_krsdetail`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_matakuliah`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`kode_term`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
