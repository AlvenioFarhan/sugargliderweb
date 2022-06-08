-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2021 at 10:40 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sugarglider`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `user` varchar(16) NOT NULL,
  `pass` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`user`, `pass`) VALUES
('admin', 'admin'),
('user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tb_diagnosa`
--

CREATE TABLE `tb_diagnosa` (
  `kode_diagnosa` varchar(16) NOT NULL,
  `nama_diagnosa` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `solusi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_diagnosa`
--

INSERT INTO `tb_diagnosa` (`kode_diagnosa`, `nama_diagnosa`, `detail`, `solusi`) VALUES
('P01', 'Aflatoxicosis (Liver)', 'Sebuah penyakit hati yang disebabkan oleh konsumsi aflatoksin, yang merupakan metabolit beracun yang dihasilkan oleh jamur tertentu di / pada makanan dan feed. Resiko tertinggi untuk kontaminasi adalah jagung, kacang, dan biji kapas. Aflatoksin juga karsinogenik (menyebabkan kanker). SG dapat kontak aflatoxicosis dengan makan jangkrik yang telah diberi makan jagung yang terkontaminasi, atau kacang makan.', ''),
('P02', 'Sembelit', 'Memakan makanan yang kering secara berlebihan bisa mengakibatkan sembelit pada SG karena kurangnya cairan yang membantu makanan tersebut untuk dicerna. ', 'Hindari makanan yang kering dan selalu sediakan makanan yang segar, hindari juga pemberian berlebihan terhadap biskuit, dll. Sediakan selalu makanan yang mudah dicernah oleh SG. Hindari pemberian cat food atau dog food. Berilah buah buahan yang segar. Jika hal ini berlanjut lebih dari 48jam, anda harus segera konsultasi dengan dokter hewan.'),
('P03', 'Katarak', 'Katarak pada mata disebabkan oleh SG yang sering terkena matahari langsung. Hal ini tidak bisa disembuhkan. Tapi apa bila ini belum terjadi kita bisa menghindarinya.', 'Hindari SG terkena matahari langsung. Jangan khawatir apa bila SG yang terkena katarak juga bisa menghasilkan SG joey yang katarak. Joey yang dilahrikan indukan yang mengalami katarak tidak akan mengalami hal yang serupa.'),
('P04', 'Dehidrasi', 'Sugar Glider akan mengalami dehidrasi jika matanya terlihat kusam, kulit yang sangat kaku. Periksa SG anda dengan mencubit kulit di belakang leher. Jika ditarik dalam satu detik dan kembali seperti semula, maka SG anda sehat. Tetapi apabila sebaliknya maka SG anda mengalami dehidrasi.', 'Pengobatan bisa dilakukan dengan memberikan air yang mengandung glukosa seimbang. Dan sangat disarankan pemberian jus buah untuk Sugar Glider.'),
('P05', 'Stress / Depresi', 'Salah satu dari banyaknya penyakit dari SG adalah penyakit stress/Depresi. Biasanya disebabkan karena adobt hanya 1 ekor dan jarang melakukan interaksi. Jika kurang nya interaksi dan perhatian yang diberikan, SG bisa stress dan depresi dan dapat mengakibatkan masalah kesehatan seperti over grooming, bahkan bisa sampai mutilasi diri sendiri. Sugar glider juga termasuk hewan yang bersih, kebersihan kandang dan lingkungannya sangat perlu dijaga termasuk pouch atau tempat tidur mereka.', 'Jadi pencegahan yang harus kita lakukan sebelum sugar glider kita mengalami stress dan depresi adalah sering kita ajak interaksi atau meng handle, mencarikan pasangan atau teman sugar glider, hingga menjaga kebersihan lingkungan serta kandang sugar glider.'),
('P06', 'Penyumbatan Usus', 'Sebuah benda asing, seperti sekam benih, biji, millet, atau kayu, tidak tercerna dan menumpuk di usus, sehingga kotoran akhirnya ikut\"an menumpuk di usus', 'Selalu memberi makan glider Anda yang sehat baik diet seimbang, Jangan pernah memberikan dog food atau cat food kering, Tidak memberikan bij\"ani, kacang-kacangan dan makanan kering lainnya'),
('P07', 'Giardiasis', 'Sebuah penyakit diare disebabkan oleh intestinalis Giardia (juga dikenal sebagai Giardia lamblia), sebuah bersel satu, parasit mikroskopis yang hidup di usus manusia dan hewan. Parasit ini dilindungi oleh kulit luar yang memungkinkan untuk bertahan di lingkungan selama jangka waktu yang lama. Semua sugar glider membawa Gardia sebagai bagian alami dari sistem pencernaan mereka.', 'Karantina hewan dengan gejala. Giardiasis adalah SANGAT menular ke Glider lainnya. Perhatikan dengan hewan lain dan diri sendiri. Cuci tangan dengan bersih setelah menanganiglider yang terinfeksi dan jauhkan tangan dari mulut anda. Bersihkan kandang glider lain seksama mensterilkan kandang dan segala isinya. Mensterilkan kandang dan item lagi seminggu setelah perbaikan adalah melihat'),
('P08', 'HLP (Hint Leg Paralysis)', 'Kelemahan dari kaki belakang, dapat dilihat saat SG memiliki masalah dalam memanjat, berjalan, terlalu memiliki kaki gemetar dan mungkin tidak aktif lagi. HLP sering terjadi karena SG kekurangan asupan kalsium.', 'Asupan makanan yang mempunyai kandungan kalsium yang cukup harus selalu diberikan. Pemberian kalsium dapat dipenuhi oleh sumber makanan alami mereka seperti jangkrik dan juga suplemen kalsium yang biasa diberikan untuk reptil.'),
('P09', 'Penyakit Tidak Ditemukan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `kode_gejala` varchar(16) NOT NULL,
  `nama_gejala` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`kode_gejala`, `nama_gejala`) VALUES
('G001', 'Nafsu Makannya Berkurang'),
('G002', 'Sering Memutar Mutarkan Kepalanya'),
('G003', 'Mengalami Kejang - Kejang'),
('G004', 'Mengalami Tegang'),
('G005', 'Kesulitan Kencing'),
('G006', 'Kotorannya Keras'),
('G007', 'Bermata Kusam'),
('G008', 'Berbintik Putih Dimatanya'),
('G009', 'Pernapasannya Cepat'),
('G010', 'Lemas dan Lesu'),
('G011', 'Berkulit Kering'),
('G012', 'Mengalami Rontok pada Bulu'),
('G013', 'Pola Tidurnya Tidak Teratur'),
('G014', 'Mengalami Penurunan Aktivitas / Tidak Aktif'),
('G015', 'Menjadi Agresif'),
('G016', 'Mengalami Muntah - Muntah'),
('G017', 'Mengalami Kembung di Perut'),
('G018', 'Mengalami Diare'),
('G019', 'Tidak Mengeluarkan Kotoran'),
('G020', 'Mengalami Mencret'),
('G021', 'Kotorannya Berwarna Hijau'),
('G022', 'Menggigil / Gemetaran'),
('G023', 'Sulit untuk Mencengkram'),
('G024', 'Kaki Belakangnya Diseret'),
('G025', 'Tidak Kuat Berdiri');

-- --------------------------------------------------------

--
-- Table structure for table `tb_konsultasi`
--

CREATE TABLE `tb_konsultasi` (
  `id_rule` int(11) NOT NULL,
  `kode` varchar(16) DEFAULT NULL,
  `jawaban` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_konsultasi`
--

INSERT INTO `tb_konsultasi` (`id_rule`, `kode`, `jawaban`) VALUES
(1, 'G002', 'Ya'),
(2, 'G003', 'Ya'),
(3, 'G004', 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rule`
--

CREATE TABLE `tb_rule` (
  `id_rule` int(11) NOT NULL,
  `kode` varchar(16) DEFAULT NULL,
  `jenis` varchar(16) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `child` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rule`
--

INSERT INTO `tb_rule` (`id_rule`, `kode`, `jenis`, `parent`, `child`) VALUES
(1, 'G002', 'tanya', 0, 'ya'),
(2, 'G003', 'tanya', 1, 'ya'),
(3, 'G004', 'tanya', 2, 'ya'),
(4, 'P01', 'diagnosa', 3, 'ya'),
(5, 'P01', 'diagnosa', 3, 'tidak'),
(6, 'P09', 'diagnosa', 2, 'tidak'),
(7, 'G005', 'tanya', 1, 'tidak'),
(8, 'G006', 'tanya', 7, 'ya'),
(9, 'P02', 'diagnosa', 8, 'ya'),
(10, 'P09', 'diagnosa', 8, 'tidak'),
(11, 'G007', 'tanya', 7, 'tidak'),
(12, 'G008', 'tanya', 11, 'ya'),
(13, 'P03', 'diagnosa', 12, 'ya'),
(14, 'P09', 'diagnosa', 12, 'tidak'),
(15, 'G010', 'tanya', 11, 'tidak'),
(16, 'G011', 'tanya', 15, 'ya'),
(17, 'P04', 'diagnosa', 16, 'ya'),
(18, 'P09', 'diagnosa', 16, 'tidak'),
(19, 'G009', 'tanya', 15, 'tidak'),
(20, 'G012', 'tanya', 19, 'ya'),
(21, 'G013', 'tanya', 20, 'ya'),
(22, 'G014', 'tanya', 21, 'ya'),
(23, 'G015', 'tanya', 22, 'ya'),
(24, 'P05', 'diagnosa', 23, 'ya'),
(25, 'P05', 'diagnosa', 23, 'tidak'),
(26, 'P09', 'diagnosa', 22, 'tidak'),
(27, 'P09', 'diagnosa', 21, 'tidak'),
(28, 'P09', 'diagnosa', 20, 'tidak'),
(29, 'G016', 'tanya', 19, 'tidak'),
(30, 'G017', 'tanya', 29, 'ya'),
(31, 'G018', 'tanya', 30, 'ya'),
(32, 'G019', 'tanya', 31, 'ya'),
(33, 'P06', 'diagnosa', 32, 'ya'),
(34, 'P06', 'diagnosa', 32, 'tidak'),
(35, 'P09', 'diagnosa', 31, 'tidak'),
(36, 'P09', 'diagnosa', 30, 'tidak'),
(37, 'G020', 'tanya', 29, 'tidak'),
(38, 'G021', 'tanya', 37, 'ya'),
(39, 'P07', 'diagnosa', 38, 'ya'),
(40, 'P09', 'diagnosa', 38, 'tidak'),
(41, 'G022', 'tanya', 37, 'tidak'),
(42, 'G023', 'tanya', 41, 'ya'),
(43, 'G024', 'tanya', 42, 'ya'),
(44, 'G025', 'tanya', 43, 'ya'),
(45, 'P08', 'diagnosa', 44, 'ya'),
(46, 'P08', 'diagnosa', 44, 'tidak'),
(47, 'P08', 'diagnosa', 43, 'tidak'),
(48, 'P09', 'diagnosa', 42, 'tidak'),
(49, 'P09', 'diagnosa', 41, 'tidak');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `tb_diagnosa`
--
ALTER TABLE `tb_diagnosa`
  ADD PRIMARY KEY (`kode_diagnosa`);

--
-- Indexes for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indexes for table `tb_konsultasi`
--
ALTER TABLE `tb_konsultasi`
  ADD PRIMARY KEY (`id_rule`);

--
-- Indexes for table `tb_rule`
--
ALTER TABLE `tb_rule`
  ADD PRIMARY KEY (`id_rule`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_konsultasi`
--
ALTER TABLE `tb_konsultasi`
  MODIFY `id_rule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_rule`
--
ALTER TABLE `tb_rule`
  MODIFY `id_rule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
