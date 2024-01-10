-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2023 at 02:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uji_kom`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_checkout` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_checkout`, `batas_bayar`) VALUES
(5, 'miki', 'Keboansikep', '2023-10-21 00:00:00', '2023-10-21 00:00:00'),
(6, 'Risda Rosdiana', 'kenanga anggrek', '2023-10-20 02:42:50', '2023-10-21 02:42:50'),
(7, 'Rihanna', 'Baker Street', '2023-10-20 06:40:41', '2023-10-21 06:40:41'),
(8, 'Risda Rosdiana', 'Baker Street', '2023-10-26 19:09:42', '2023-10-27 19:09:42'),
(9, 'Rihanna', 'Baker Street', '2023-10-26 19:12:05', '2023-10-27 19:12:05');

-- --------------------------------------------------------

--
-- Table structure for table `tb_item`
--

CREATE TABLE `tb_item` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(120) NOT NULL,
  `caption` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_item`
--

INSERT INTO `tb_item` (`id_produk`, `nama_produk`, `caption`, `kategori`, `harga`, `stock`, `gambar`) VALUES
(1, 'Sweater Oversize Basic NUNA - Coksu', 'Bahan : Premium Cotton Fleece. Spesifikasi Detail Bahan: Tebal, bagian dalam lembut seperti kapas dan bagian luar Katun dan Gramasi 280 gsm. 1 Ukuran Allsize to Oversize. Lingkar dada : 120 cm, Panjang : 63 cm.', 'Basic Sweater', 169000, 5, 'fixx.jpg'),
(2, 'Sweater Oversized Basic NUNA - Grey', 'Bahan : Premium Cotton Fleece. \r\nSpesifikasi Detail Bahan: Tebal, bagian dalam lembut seperti kapas dan bagian luar Katun dan Gramasi 280 gsm. \r\n\r\n1 Ukuran Allsize to Oversize. \r\nLingkar dada : 120 cm, \r\nPanjang : 63 cm.', 'Basic Sweater', 169000, 9, 'abu.jpg'),
(3, 'Sweater Oversized Basic NUNA - Army', 'Bahan : Premium Cotton Fleece. \r\nSpesifikasi Detail Bahan: Tebal, bagian dalam lembut seperti kapas dan bagian luar Katun dan Gramasi 280 gsm. \r\n1 Ukuran Allsize to Oversize. \r\nLingkar dada : 120 cm, \r\nPanjang : 63 cm.', 'Basic Sweater', 169000, 9, 'two.jpg'),
(4, 'Sweater Oversized Basic NUNA - Black', 'Bahan : Premium Cotton Fleece. \r\nSpesifikasi Detail Bahan: Tebal, bagian dalam lembut seperti kapas dan bagian luar Katun dan Gramasi 280 gsm. \r\n\r\n1 Ukuran Allsize to Oversize. \r\nLingkar dada : 120 cm, \r\nPanjang : 63 cm.', 'Basic Sweater', 169000, 8, 'fixxx.jpg'),
(5, 'Jacket Varsity Oversize Big Coco NUNA', 'Bahan : Fleece Polyester.\r\nSpesifikasi Detail Bahan: Ringan tidak tebal, bagian dalam lembut dan bagian luar Katun dan Gramasi 200 gsm.\r\n \r\n1 Ukuran Allsize to Oversize.\r\nLingkar dada 120cm,\r\nPanjang 65cm.', 'Jacket Series', 129000, 9, 'varsy.jpg'),
(6, 'Jacket Varsity Oversize Milo NUNA', 'Bahan : Fleece Polyester.Spesifikasi Detail Bahan: Ringan tidak tebal, bagian dalam lembut dan bagian luar Katun dan Gramasi 200 gsm. 1 Ukuran Allsize to Oversize.Lingkar dada 120cm,Panjang 65cm.', 'Jacket Series', 129000, 9, 'varsiti.jpg'),
(7, 'Jacket Hoodie Lily Lilac NUNA', 'Bahan : Cotton Terry\r\nSpesifikasi Detail Bahan: Luwes/Flowy, bagian dalam lembut dan bagian luar Katun dan Gramasi 260 gsm\r\n \r\n1 Ukuran Allsize to Oversize\r\nLingkar dada 122cm\r\nPanjang 55cm', 'Jacket Series', 175000, 7, 'lilyu.jpg'),
(8, 'Sweater Sunflower NUNA - Army', 'Bahan : Katun LinenSpesifikasi Detail Bahan: Luwes/Flowy, bagian dalam lembut dan bagian luar Katun dan Gramasi 280 gsm 1 Ukuran Allsize to OversizeLingkar dada 115cmPanjang 55cm', 'Crop Series', 165000, 7, 'armyy.jpg'),
(9, 'Sweater Sunflower NUNA - Blue', 'Bahan : Katun LinenSpesifikasi Detail Bahan: Luwes/Flowy, bagian dalam lembut dan bagian luar Katun dan Gramasi 280 gsm 1 Ukuran Allsize to OversizeLingkar dada 115cmPanjang 55cm', 'Crop Series', 165000, 7, 'flower.jpg'),
(10, 'Jacket Shirt Cordu NUNA - Denim', 'Bahan : Katun \r\nSpesifikasi Detail Bahan: Luwes/Flowy, bagian dalam lembut dan bagian luar Katun dan Gramasi 280 gsm\r\n \r\n1 Ukuran Allsize to Oversize\r\nLingkar dada 115cm\r\nPanjang 65cm', 'Jacket Series', 185000, 8, 'bluee.jpg'),
(11, 'Oversize Cordu Dearest NUNA', 'Bahan : Corduroy\r\nSpesifikasi Detail Bahan: Luwes/Flowy, bagian dalam lembut dan bagian luar Katun dan Gramasi 280 gsm\r\n \r\n1 Ukuran Allsize to Oversize\r\nLingkar dada 115cm\r\nPanjang 55cm', 'Jacket Series', 185000, 7, 'coksu.jpg'),
(12, 'Jacket Varsity Hanni NUNA', 'Bahan : Fleece Polyester\r\nSpesifikasi Detail Bahan: Ringan tidak tebal, bagian dalam lembut dan bagian luar Katun dan Gramasi 280 gsm\r\n \r\n1 Ukuran Allsize to Oversize\r\nLingkar dada 120cm\r\nPanjang 65cm', 'Jacket Series', 135000, 7, 'hanni.jpg'),
(13, 'Sweater Oversized 199x NUNA', 'Bahan : Premium Cotton Terry\r\nSpesifikasi Detail Bahan: Luwes/Flowy, bagian dalam lembut dan bagian luar Katun dan Gramasi 280 gsm\r\n \r\n1 Ukuran Allsize to Oversize\r\nLingkar dada 130cm\r\nPanjang 65cm', 'Basic Sweater', 165000, 7, '199x.jpg'),
(18, 'Jacket Nabi Butterfly NUNA', 'Bahan : Premium Cotton Fleece. Spesifikasi Detail Bahan: Tebal, bagian dalam lembut seperti kapas dan bagian luar Katun dan Gramasi 280 gsm. 1 Ukuran Allsize to Oversize. Lingkar dada : 120 cm, Panjang : 63 cm.', 'Jacket Series', 195000, 5, 'nab11.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_produk`, `nama_produk`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 2, 1, 'Sweater Oversize Basic NUNA - Coksu', 1, 169000, ''),
(2, 2, 8, 'Sweater Sunflower NUNA - Army', 1, 165000, ''),
(3, 3, 7, 'Jacket Hoodie Lily Lilac NUNA', 1, 175000, ''),
(4, 3, 6, 'Jacket Varsity Oversize Milo NUNA', 1, 129000, ''),
(5, 4, 1, 'Sweater Oversize Basic NUNA - Coksu', 1, 169000, ''),
(6, 5, 5, 'Jacket Varsity Oversize Big Coco NUNA', 1, 129000, ''),
(7, 6, 2, 'Sweater Oversized Basic NUNA - Grey', 1, 169000, ''),
(8, 7, 1, 'Sweater Oversize Basic NUNA - Coksu', 2, 169000, ''),
(9, 8, 1, 'Sweater Oversize Basic NUNA - Coksu', 1, 169000, ''),
(10, 8, 10, 'Jacket Shirt Cordu NUNA - Denim', 1, 185000, ''),
(11, 8, 4, 'Sweater Oversized Basic NUNA - Black', 1, 169000, ''),
(12, 9, 1, 'Sweater Oversize Basic NUNA - Coksu', 1, 169000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_item SET stock = stock-NEW.jumlah
    WHERE id_produk = NEW.id_produk;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '12345', 2),
(3, 'jena', 'jenna', '345', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_item`
--
ALTER TABLE `tb_item`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_item`
--
ALTER TABLE `tb_item`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
