-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14 Apr 2019 pada 21.07
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soode_padma`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_material`
--

CREATE TABLE `t_material` (
  `material_id` int(11) NOT NULL,
  `nm_material` varchar(100) NOT NULL,
  `kd_material` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_material`
--

INSERT INTO `t_material` (`material_id`, `nm_material`, `kd_material`) VALUES
(30, 'Bar Slide Material (SS330 06)', 'M-1-SS-000s'),
(25, 'Bar Comp Material', 'N-1-KK-0001'),
(31, 'Wire Base Material', 'W-1-LL-0001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_mesin`
--

CREATE TABLE `t_mesin` (
  `mesin_id` int(11) NOT NULL,
  `no_mesin` varchar(100) NOT NULL,
  `nm_mesin` varchar(100) NOT NULL,
  `ct_mc` int(11) NOT NULL,
  `ct_mp` int(11) NOT NULL,
  `target_perjam` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_mesin`
--

INSERT INTO `t_mesin` (`mesin_id`, `no_mesin`, `nm_mesin`, `ct_mc`, `ct_mp`, `target_perjam`) VALUES
(15, '11', 'Cutting', 10, 3, 50),
(17, '22', 'Gress', 30, 15, 40),
(20, '33', 'Plating', 13, 5, 30),
(25, '44', 'Assy', 27, 21, 45),
(27, '55', 'finishing', 26, 20, 60);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_produk`
--

CREATE TABLE `t_produk` (
  `produk_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `nm_produk` varchar(100) NOT NULL,
  `kd_produk` varchar(100) NOT NULL,
  `std_packing` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_produk`
--

INSERT INTO `t_produk` (`produk_id`, `material_id`, `nm_produk`, `kd_produk`, `std_packing`) VALUES
(15, 30, 'BAR SLIDE', 'F47-46331-0000', 'Box Kardus'),
(34, 30, 'Bar Step new', 'BAR 12398', 'Plastik dahh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_produksi`
--

CREATE TABLE `t_produksi` (
  `produksi_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `mesin_id` int(11) NOT NULL,
  `tgl_produksi` date NOT NULL,
  `no_lot` varchar(100) NOT NULL,
  `proses` int(11) NOT NULL,
  `qty_ok` int(11) NOT NULL,
  `qty_ng` int(11) NOT NULL,
  `prod_time` int(11) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `shift` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_produksi`
--

INSERT INTO `t_produksi` (`produksi_id`, `produk_id`, `mesin_id`, `tgl_produksi`, `no_lot`, `proses`, `qty_ok`, `qty_ng`, `prod_time`, `pic`, `shift`) VALUES
(385, 34, 15, '2019-04-14', '002', 1, 500, 5, 7, 'rina', 1),
(382, 15, 25, '2019-04-14', '001', 5, 85, 2, 7, 'sani', 1),
(378, 15, 15, '2019-04-14', '001', 1, 100, 1, 7, 'badi', 1),
(379, 15, 17, '2019-04-14', '001', 2, 100, 1, 7, 'anto', 2),
(380, 15, 27, '2019-04-14', '001', 3, 90, 1, 7, 'mada', 1),
(381, 15, 25, '2019-04-14', '001', 4, 90, 2, 7, 'rara', 1),
(386, 34, 17, '2019-04-14', '002', 2, 400, 7, 7, 'nurul', 2),
(387, 34, 15, '2019-04-14', '002', 3, 400, 7, 7, 'laras', 1),
(388, 15, 25, '2019-04-14', '003', 1, 1000, 9, 7, 'budi', 1),
(390, 15, 25, '2019-04-14', '003', 2, 300, 20, 7, 'zidan', 1),
(391, 34, 25, '2019-04-14', '004', 1, 2000, 20, 7, 'yuli', 1),
(393, 34, 25, '2019-04-14', '005', 1, 200, 10, 7, 'roji', 3),
(394, 34, 20, '2019-04-14', '006', 1, 800, 9, 7, 'yuni', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_material`
--
ALTER TABLE `t_material`
  ADD PRIMARY KEY (`material_id`);

--
-- Indexes for table `t_mesin`
--
ALTER TABLE `t_mesin`
  ADD PRIMARY KEY (`mesin_id`);

--
-- Indexes for table `t_produk`
--
ALTER TABLE `t_produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- Indexes for table `t_produksi`
--
ALTER TABLE `t_produksi`
  ADD PRIMARY KEY (`produksi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_material`
--
ALTER TABLE `t_material`
  MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `t_mesin`
--
ALTER TABLE `t_mesin`
  MODIFY `mesin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `t_produk`
--
ALTER TABLE `t_produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `t_produksi`
--
ALTER TABLE `t_produksi`
  MODIFY `produksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
