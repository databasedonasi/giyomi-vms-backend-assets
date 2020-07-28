-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 27, 2020 at 07:11 PM
-- Server version: 10.3.23-MariaDB
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
-- Database: `pahangkr_giyomi`
--

-- --------------------------------------------------------

--
-- Table structure for table `catatan`
--

CREATE TABLE `catatan` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `isi` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `spk_proses_id` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `hak`
--

CREATE TABLE `hak` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `hak`
--

INSERT INTO `hak` (`id`, `created_at`, `updated_at`, `nama`, `created_by_id`, `updated_by_id`, `deleted_at`) VALUES
(2, '2020-05-05 01:51:51', '2020-05-05 01:51:57', 'USER', NULL, NULL, NULL),
(3, '2020-05-05 11:51:27', '2020-05-05 11:51:29', 'USER', NULL, NULL, NULL),
(4, '2020-05-05 11:52:55', '2020-05-05 11:52:57', 'USER', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_koleksi`
--

CREATE TABLE `jenis_koleksi` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `jenis_koleksi`
--

INSERT INTO `jenis_koleksi` (`id`, `created_at`, `updated_at`, `nama`, `created_by_id`, `updated_by_id`, `deleted_at`) VALUES
(1, '2020-05-05 02:19:59', '2020-05-05 02:19:59', 'Atasan', 4, 4, NULL),
(2, '2020-05-05 02:20:46', '2020-05-05 02:20:46', 'Celana', 4, 4, NULL),
(3, '2020-05-05 02:20:57', '2020-05-05 02:20:57', 'Tas', 4, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `koleksi`
--

CREATE TABLE `koleksi` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `foto_download_url` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `jenis_koleksi_id` bigint(20) DEFAULT NULL,
  `detail_aksesoris` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `koleksi`
--

INSERT INTO `koleksi` (`id`, `created_at`, `updated_at`, `foto_download_url`, `nama`, `created_by_id`, `updated_by_id`, `jenis_koleksi_id`, `detail_aksesoris`, `deleted_at`) VALUES
(11, '2020-05-19 18:47:00', '2020-05-19 18:47:00', 'https://www.balenciaga.com/66/49/49469640cq_14_a_f.jpg', 'Evening Dress', 4, 4, 1, NULL, NULL),
(12, '2020-05-25 06:40:45', '2020-05-25 06:40:45', 'https://s.blanja.com/picspace/976/162768/640.640_e66f33ae06b249a0a03c1a59cc9ddf4a.jpg', 'Fine Lace', 4, 4, 1, 'Percikan berlian samudera', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_spk`
--

CREATE TABLE `nilai_spk` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `kerapihan` double DEFAULT NULL,
  `kualitas` double DEFAULT NULL,
  `waktu` double DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `spk_id` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `panjang_kain`
--

CREATE TABLE `panjang_kain` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `panjang` double DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `satuan_panjang_kain_id` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `panjang_kain`
--

INSERT INTO `panjang_kain` (`id`, `created_at`, `updated_at`, `panjang`, `created_by_id`, `updated_by_id`, `satuan_panjang_kain_id`, `deleted_at`) VALUES
(13, '2020-05-19 18:47:11', '2020-05-19 18:47:11', 5, 4, 4, 1, NULL),
(14, '2020-05-19 18:47:12', '2020-05-19 18:47:12', 10, 4, 4, 2, NULL),
(15, '2020-05-25 06:40:58', '2020-05-25 06:40:58', 6, 4, 4, 2, NULL),
(16, '2020-05-25 06:41:03', '2020-05-25 06:41:03', 10, 4, 4, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `proses`
--

CREATE TABLE `proses` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `proses`
--

INSERT INTO `proses` (`id`, `created_at`, `updated_at`, `nama`, `created_by_id`, `updated_by_id`, `deleted_at`) VALUES
(1, '2020-05-05 02:21:53', '2020-05-05 02:21:53', 'Cutting', 4, 4, NULL),
(2, '2020-05-05 02:22:01', '2020-05-05 02:22:01', 'Jahit', 4, 4, NULL),
(3, '2020-05-05 02:22:08', '2020-05-05 02:22:08', 'Finishing', 4, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `created_at`, `updated_at`, `nama`, `created_by_id`, `updated_by_id`, `deleted_at`) VALUES
(3, '2020-05-05 01:51:55', '2020-05-05 01:51:57', 'ceo', NULL, NULL, NULL),
(4, '2020-05-05 01:52:02', '2020-05-05 01:52:02', 'staff', 4, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_hak`
--

CREATE TABLE `role_hak` (
  `hak_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `role_hak`
--

INSERT INTO `role_hak` (`hak_id`, `role_id`) VALUES
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `satuan_panjang_kain`
--

CREATE TABLE `satuan_panjang_kain` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `satuan_panjang_kain`
--

INSERT INTO `satuan_panjang_kain` (`id`, `created_at`, `updated_at`, `nama`, `created_by_id`, `updated_by_id`, `deleted_at`) VALUES
(1, '2020-05-05 02:23:41', '2020-05-05 02:23:41', 'yard', 4, 4, NULL),
(2, '2020-05-05 02:23:49', '2020-05-05 02:23:49', 'meter', 4, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spk`
--

CREATE TABLE `spk` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `nilai_spk_id` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `spk`
--

INSERT INTO `spk` (`id`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `vendor_id`, `nilai_spk_id`, `deleted_at`) VALUES
(9, '2020-05-19 18:46:56', '2020-05-19 18:46:56', 4, 4, 2, NULL, NULL),
(10, '2020-05-25 06:40:40', '2020-05-25 06:40:40', 4, 4, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spk_proses`
--

CREATE TABLE `spk_proses` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `durasi_nyata` int(11) DEFAULT NULL,
  `durasi_rencana` int(11) DEFAULT NULL,
  `order1` int(11) DEFAULT NULL,
  `tanggal_selesai` datetime DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `proses_id` bigint(20) DEFAULT NULL,
  `spk_id` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `spk_proses`
--

INSERT INTO `spk_proses` (`id`, `created_at`, `updated_at`, `durasi_nyata`, `durasi_rencana`, `order1`, `tanggal_selesai`, `created_by_id`, `updated_by_id`, `proses_id`, `spk_id`, `deleted_at`) VALUES
(25, '2020-05-19 18:47:02', '2020-05-19 18:47:02', NULL, 2, 2, NULL, 4, 4, 2, 9, NULL),
(26, '2020-05-19 18:47:03', '2020-05-19 18:47:03', NULL, 3, 1, NULL, 4, 4, 1, 9, NULL),
(27, '2020-05-19 18:47:03', '2020-05-19 18:47:03', NULL, 1, 3, NULL, 4, 4, 3, 9, NULL),
(28, '2020-05-25 06:40:54', '2020-05-25 06:40:54', NULL, 5, 1, NULL, 4, 4, 1, 10, NULL),
(29, '2020-05-25 06:40:54', '2020-05-25 06:40:54', NULL, 3, 2, NULL, 4, 4, 2, 10, NULL),
(30, '2020-05-25 06:40:55', '2020-05-25 06:40:55', NULL, 1, 3, NULL, 4, 4, 3, 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spk_status`
--

CREATE TABLE `spk_status` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `spk_id` bigint(20) DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `spk_status`
--

INSERT INTO `spk_status` (`id`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `spk_id`, `status_id`, `deleted_at`) VALUES
(11, '2020-05-19 18:47:06', '2020-05-19 18:47:06', 4, 4, 9, 1, NULL),
(12, '2020-05-25 07:24:49', '2020-05-25 07:24:49', NULL, NULL, 10, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spk_varian`
--

CREATE TABLE `spk_varian` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `panjang_kain_id` bigint(20) DEFAULT NULL,
  `spk_id` bigint(20) DEFAULT NULL,
  `varian_id` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `spk_varian`
--

INSERT INTO `spk_varian` (`id`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `panjang_kain_id`, `spk_id`, `varian_id`, `deleted_at`) VALUES
(5, '2020-05-19 18:47:28', '2020-05-19 18:47:28', 4, 4, 14, 9, 10, NULL),
(6, '2020-05-19 18:47:28', '2020-05-19 18:47:28', 4, 4, 13, 9, 9, NULL),
(7, '2020-05-25 06:41:12', '2020-05-25 06:41:12', 4, 4, 15, 10, 11, NULL),
(8, '2020-05-25 06:41:17', '2020-05-25 06:41:17', 4, 4, 16, 10, 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `created_at`, `updated_at`, `nama`, `created_by_id`, `updated_by_id`, `deleted_at`) VALUES
(1, '2020-05-05 02:33:21', '2020-05-05 02:33:21', 'draft', 4, 4, NULL),
(2, '2020-05-05 02:33:38', '2020-05-05 02:33:38', 'req_val', 4, 4, NULL),
(3, '2020-05-05 02:33:45', '2020-05-05 02:33:45', 'validated', 4, 4, NULL),
(4, '2020-05-05 02:33:57', '2020-05-05 02:33:57', 'on_going', 4, 4, NULL),
(5, '2020-05-05 02:34:05', '2020-05-05 02:34:05', 'completed', 4, 4, NULL),
(6, '2020-05-05 02:34:12', '2020-05-05 02:34:12', 'pending', 4, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ukuran`
--

CREATE TABLE `ukuran` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `ukuran`
--

INSERT INTO `ukuran` (`id`, `created_at`, `updated_at`, `nama`, `created_by_id`, `updated_by_id`, `deleted_at`) VALUES
(1, '2020-05-18 00:34:34', NULL, 'XS', 4, 4, NULL),
(2, '2020-05-18 00:34:34', NULL, 'S', 4, 4, NULL),
(3, '2020-05-18 00:34:34', NULL, 'M', 4, 4, NULL),
(4, '2020-05-18 00:34:34', NULL, 'L', 4, 4, NULL),
(5, '2020-05-18 00:34:34', NULL, 'XL', 4, 4, NULL),
(6, '2020-05-18 00:34:34', NULL, 'XXL', 4, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ukuran_jumlah`
--

CREATE TABLE `ukuran_jumlah` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `spk_varian_id` bigint(20) DEFAULT NULL,
  `ukuran_id` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `ukuran_jumlah`
--

INSERT INTO `ukuran_jumlah` (`id`, `created_at`, `updated_at`, `jumlah`, `created_by_id`, `updated_by_id`, `spk_varian_id`, `ukuran_id`, `deleted_at`) VALUES
(13, '2020-05-19 18:47:37', '2020-05-19 18:47:37', 2, 4, 4, 5, 2, NULL),
(14, '2020-05-19 18:47:37', '2020-05-19 18:47:37', 4, 4, 4, 5, 4, NULL),
(15, '2020-05-19 18:47:37', '2020-05-19 18:47:37', 1, 4, 4, 5, 1, NULL),
(16, '2020-05-19 18:47:37', '2020-05-19 18:47:37', 3, 4, 4, 5, 3, NULL),
(17, '2020-05-19 18:47:46', '2020-05-19 18:47:46', 5, 4, 4, 5, 5, NULL),
(18, '2020-05-19 18:47:47', '2020-05-19 18:47:47', 6, 4, 4, 5, 6, NULL),
(19, '2020-05-19 18:47:47', '2020-05-19 18:47:47', 7, 4, 4, 6, 1, NULL),
(20, '2020-05-19 18:47:48', '2020-05-19 18:47:48', 8, 4, 4, 6, 2, NULL),
(21, '2020-05-19 18:48:01', '2020-05-19 18:48:01', 9, 4, 4, 6, 3, NULL),
(22, '2020-05-19 18:48:02', '2020-05-19 18:48:02', 10, 4, 4, 6, 5, NULL),
(23, '2020-05-19 18:48:02', '2020-05-19 18:48:02', 11, 4, 4, 6, 4, NULL),
(24, '2020-05-19 18:48:02', '2020-05-19 18:48:02', 12, 4, 4, 6, 6, NULL),
(25, '2020-05-25 06:41:25', '2020-05-25 06:41:25', 1, 4, 4, 7, 2, NULL),
(26, '2020-05-25 06:41:25', '2020-05-25 06:41:25', 1, 4, 4, 7, 3, NULL),
(27, '2020-05-25 06:41:26', '2020-05-25 06:41:26', 1, 4, 4, 7, 1, NULL),
(28, '2020-05-25 06:41:29', '2020-05-25 06:41:29', 1, 4, 4, 7, 4, NULL),
(29, '2020-05-25 06:41:39', '2020-05-25 06:41:39', 1, 4, 4, 7, 6, NULL),
(30, '2020-05-25 06:41:40', '2020-05-25 06:41:40', 1, 4, 4, 7, 5, NULL),
(31, '2020-05-25 06:41:40', '2020-05-25 06:41:40', 2, 4, 4, 8, 1, NULL),
(32, '2020-05-25 06:41:43', '2020-05-25 06:41:43', 2, 4, 4, 8, 2, NULL),
(33, '2020-05-25 06:41:54', '2020-05-25 06:41:54', 2, 4, 4, 8, 3, NULL),
(34, '2020-05-25 06:41:54', '2020-05-25 06:41:54', 1, 4, 4, 8, 5, NULL),
(35, '2020-05-25 06:41:55', '2020-05-25 06:41:55', 1, 4, 4, 8, 4, NULL),
(36, '2020-05-25 06:41:58', '2020-05-25 06:41:58', 2, 4, 4, 8, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ukuran_jumlah_penerimaan`
--

CREATE TABLE `ukuran_jumlah_penerimaan` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_diterima` bit(1) DEFAULT NULL,
  `jumlah_penerimaan` int(11) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `ukuran_jumlah_id` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `foto_downlaod_url` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `created_at`, `updated_at`, `email`, `foto_downlaod_url`, `password`, `telepon`, `username`, `created_by_id`, `updated_by_id`, `role_id`, `deleted_at`) VALUES
(4, '2020-05-05 01:51:59', '2020-05-05 01:51:59', 'ceo@gmail.com', 'https://pt-babel.go.id/wp-content/uploads/2019/03/portrait-square-03-300x300.jpg', '{bcrypt}$2a$10$PkIW9QfylqWwKP/hkHjtme9xBVmVhLPZMh4SfeKS9fvgmI9Yt4fBG', '081231684641', 'ceo', NULL, NULL, 3, NULL),
(5, '2020-05-05 01:52:05', '2020-05-05 01:52:05', 'staff1@gmail.com', 'http://scontent-sin6-2.cdninstagram.com/v/t51.2885-15/e35/35000952_259532818125171_5138521924023877632_n.jpg?_nc_ht=scontent-sin6-2.cdninstagram.com&_nc_cat=103&_nc_ohc=DYWbkkRqEYoAX-rXf88&oh=867b44d6abcbb99c7da605782685a01e&oe=5E9B706B', '{bcrypt}$2a$10$Nw8zF34nxXerkWiUThOolubZ2EON.llDRAamAAnhgeuz.sXjybI3m', '081231684642', 'staff1', 4, 4, 4, NULL),
(6, '2020-05-05 01:52:07', '2020-05-05 01:52:07', 'staff12@gmail.com', 'http://scontent-sin6-2.cdninstagram.com/v/t51.2885-15/e35/35000952_259532818125171_5138521924023877632_n.jpg?_nc_ht=scontent-sin6-2.cdninstagram.com&_nc_cat=103&_nc_ohc=DYWbkkRqEYoAX-rXf88&oh=867b44d6abcbb99c7da605782685a01e&oe=5E9B706B', '{bcrypt}$2a$10$EqB15nrAxiHBn5Y45xrmOu3MPx71AxuSaIgttrHTx2JMd0cpVsV9u', '081231684643', 'staff2', 4, 4, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `varian`
--

CREATE TABLE `varian` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `varian` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `koleksi_id` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `varian`
--

INSERT INTO `varian` (`id`, `created_at`, `updated_at`, `varian`, `created_by_id`, `updated_by_id`, `koleksi_id`, `deleted_at`) VALUES
(9, '2020-05-19 18:47:07', '2020-05-19 18:47:07', 'Hijau', 4, 4, 11, NULL),
(10, '2020-05-19 18:47:07', '2020-05-19 18:47:07', 'Biru', 4, 4, 11, NULL),
(11, '2020-05-25 06:40:54', '2020-05-25 06:40:54', 'Hitam', 4, 4, 12, NULL),
(12, '2020-05-25 06:40:59', '2020-05-25 06:40:59', 'Putih', 4, 4, 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `skor` double DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `created_at`, `updated_at`, `alamat`, `email`, `nama`, `skor`, `telepon`, `created_by_id`, `updated_by_id`, `deleted_at`) VALUES
(1, '2020-05-05 02:16:22', '2020-05-05 02:16:22', 'Keputih Gang II No. 1', 'alvian@gmail.com', 'Alvian', NULL, '081234567890', 4, 4, NULL),
(2, '2020-05-13 21:58:03', '2020-05-13 21:58:03', 'Jl. Magersari II No. 7', 'eka@gmail.com', 'Eka', NULL, '081987654321', 4, 4, NULL),
(3, '2020-05-13 22:47:43', '2020-05-13 22:47:43', 'Perum Kodam V No. 2', 'maulana@gmail.com', 'Maulana', NULL, '081236482472', 4, 4, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catatan`
--
ALTER TABLE `catatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9nvr4oqxre033dp4fwmoue5py` (`created_by_id`),
  ADD KEY `FK6vj0m6x5cldya6w490rw7ehuv` (`updated_by_id`),
  ADD KEY `FK4gm1ercy5g508i3y6sl1ynbyq` (`spk_proses_id`);

--
-- Indexes for table `hak`
--
ALTER TABLE `hak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3wxxnb2crjall1m7i2t2pyqe2` (`created_by_id`),
  ADD KEY `FKiy9cuw5ubbl889y0ddctfr7c` (`updated_by_id`);

--
-- Indexes for table `jenis_koleksi`
--
ALTER TABLE `jenis_koleksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKcqeb4o6qquwpi4x9v29rxdtqd` (`created_by_id`),
  ADD KEY `FK6jhmakvwmnlwx78ekokfh48x9` (`updated_by_id`);

--
-- Indexes for table `koleksi`
--
ALTER TABLE `koleksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKsd334kvpiunqhx92lvu5abxce` (`created_by_id`),
  ADD KEY `FKjttfjw3u8ek6yof6lnet0hkfr` (`updated_by_id`),
  ADD KEY `FKbej5tcleuxg9ckvh2nwi2u2sw` (`jenis_koleksi_id`);

--
-- Indexes for table `nilai_spk`
--
ALTER TABLE `nilai_spk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKesl63ldimxidpcw5b7sg9a79v` (`created_by_id`),
  ADD KEY `FKe30qg510tefwetuvwvrcbnxlo` (`updated_by_id`),
  ADD KEY `FKc2w3b52p36keuhdvd8dgns8lh` (`spk_id`);

--
-- Indexes for table `panjang_kain`
--
ALTER TABLE `panjang_kain`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpn4hfm8idd3x2b41llyn8nlno` (`created_by_id`),
  ADD KEY `FK6a7vgyhg9v82ib2ww2yn6nkhq` (`updated_by_id`),
  ADD KEY `FK5ruqbxf4xmcqpqp6eewsw1x00` (`satuan_panjang_kain_id`);

--
-- Indexes for table `proses`
--
ALTER TABLE `proses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbbtbnica99mipys7r1vkpmid0` (`created_by_id`),
  ADD KEY `FKo77pa9rl0pxxd86eam154vj6h` (`updated_by_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_ow9y26u7x73ivbl1dhx4a4tb6` (`nama`),
  ADD KEY `FKm9jafbkd2m7x4ms2iq3b9hfg3` (`created_by_id`),
  ADD KEY `FKc83us3t8gi1n71m3v6sw4d2dh` (`updated_by_id`);

--
-- Indexes for table `role_hak`
--
ALTER TABLE `role_hak`
  ADD PRIMARY KEY (`role_id`,`hak_id`),
  ADD KEY `FK2qfuk1g1u20dfwo2vmklr1l06` (`hak_id`);

--
-- Indexes for table `satuan_panjang_kain`
--
ALTER TABLE `satuan_panjang_kain`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKod7udfu3wh3rnsae9idn3phx` (`created_by_id`),
  ADD KEY `FKpm9pbw6guk4qtdlqk50u61sef` (`updated_by_id`);

--
-- Indexes for table `spk`
--
ALTER TABLE `spk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKo30hfpwoapq5y7lbugj1y61x8` (`created_by_id`),
  ADD KEY `FKgjf351dh4sc8bhs0hb9qh1bk5` (`updated_by_id`),
  ADD KEY `FKmktoqxpse6bcd58k6frnd6bd6` (`vendor_id`),
  ADD KEY `FKfo0mq3h9funa0nxhp3u5m1vtb` (`nilai_spk_id`);

--
-- Indexes for table `spk_proses`
--
ALTER TABLE `spk_proses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKq3o99u48c8iydxnjdeupdaqph` (`created_by_id`),
  ADD KEY `FKnu13ufddshbvl365olwde6cf3` (`updated_by_id`),
  ADD KEY `FK9uo0y38keebhrkx19xded8j1j` (`proses_id`),
  ADD KEY `FKrhh9y7ig1q4xny9u9mnsrpjus` (`spk_id`);

--
-- Indexes for table `spk_status`
--
ALTER TABLE `spk_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpsew334tyinyqdim9uj8vgr4d` (`created_by_id`),
  ADD KEY `FKphp4og418jjbsby8a30t75jea` (`updated_by_id`),
  ADD KEY `FK9db6u1d75fsfpe5s83240v0co` (`spk_id`),
  ADD KEY `FK9sb7ejqobhpv1tvt6bmbd547x` (`status_id`);

--
-- Indexes for table `spk_varian`
--
ALTER TABLE `spk_varian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKr5t4o951b9ba9njgkat9pidd8` (`created_by_id`),
  ADD KEY `FKe6oeswsvfw5t6wooywllfub1t` (`updated_by_id`),
  ADD KEY `FKgjgxux6lv9ypj8ctaaupwoj6h` (`panjang_kain_id`),
  ADD KEY `FKlbda7jgv0nw76fasdpisg0i8d` (`spk_id`),
  ADD KEY `FK89dh23bt39e8s28169pnbc5hd` (`varian_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_jmhs7p100sgjodb6a27nuijha` (`nama`),
  ADD KEY `FK913o0cdsl4banjuifch1l1i27` (`created_by_id`),
  ADD KEY `FKhw2msaevkdny65vyoo0lw18ic` (`updated_by_id`);

--
-- Indexes for table `ukuran`
--
ALTER TABLE `ukuran`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_dmvt3bpbibn5bq29yl68ux264` (`nama`),
  ADD KEY `FK4pioud7glp3wtc3h821xsn4i0` (`created_by_id`),
  ADD KEY `FKt4ghh2ymvqomeumkrv8gr6yq2` (`updated_by_id`);

--
-- Indexes for table `ukuran_jumlah`
--
ALTER TABLE `ukuran_jumlah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKc3598cq831krrp420vaehb2f7` (`created_by_id`),
  ADD KEY `FKfr7vky890m0n2127shpbl4a2p` (`updated_by_id`),
  ADD KEY `FKc3hxjevug6pcpvhcre2g5rb1f` (`spk_varian_id`),
  ADD KEY `FK7u440tpuugoqpyxff84j7rycy` (`ukuran_id`);

--
-- Indexes for table `ukuran_jumlah_penerimaan`
--
ALTER TABLE `ukuran_jumlah_penerimaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKloa003jjr5pl3j9eu0sj6vug3` (`created_by_id`),
  ADD KEY `FKtp1gvub7t7ouatcn4pvdqsbv6` (`updated_by_id`),
  ADD KEY `FKm3nktt9ap0hdu5vuj3g8ups93` (`ukuran_jumlah_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`),
  ADD KEY `FK9o7r2qptrh93devpob11veidj` (`created_by_id`),
  ADD KEY `FKnede8yco9u8399icxl1aj37or` (`updated_by_id`),
  ADD KEY `FKn82ha3ccdebhokx3a8fgdqeyy` (`role_id`);

--
-- Indexes for table `varian`
--
ALTER TABLE `varian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpgbab10g0sre0afk1of7o25i5` (`created_by_id`),
  ADD KEY `FKo1rkot16hs5tprdafc0x2xstn` (`updated_by_id`),
  ADD KEY `FKnnlxpbgxt0m9vj64xgb44lq9n` (`koleksi_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKmi323dfymmh8wrrfuuuf5wpsb` (`created_by_id`),
  ADD KEY `FKgabu4746fcfnunh8ugkk7nmoa` (`updated_by_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catatan`
--
ALTER TABLE `catatan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hak`
--
ALTER TABLE `hak`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jenis_koleksi`
--
ALTER TABLE `jenis_koleksi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `koleksi`
--
ALTER TABLE `koleksi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nilai_spk`
--
ALTER TABLE `nilai_spk`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panjang_kain`
--
ALTER TABLE `panjang_kain`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `proses`
--
ALTER TABLE `proses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `satuan_panjang_kain`
--
ALTER TABLE `satuan_panjang_kain`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `spk`
--
ALTER TABLE `spk`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `spk_proses`
--
ALTER TABLE `spk_proses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `spk_status`
--
ALTER TABLE `spk_status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `spk_varian`
--
ALTER TABLE `spk_varian`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ukuran`
--
ALTER TABLE `ukuran`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ukuran_jumlah`
--
ALTER TABLE `ukuran_jumlah`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `ukuran_jumlah_penerimaan`
--
ALTER TABLE `ukuran_jumlah_penerimaan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `varian`
--
ALTER TABLE `varian`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `catatan`
--
ALTER TABLE `catatan`
  ADD CONSTRAINT `FK4gm1ercy5g508i3y6sl1ynbyq` FOREIGN KEY (`spk_proses_id`) REFERENCES `spk_proses` (`id`),
  ADD CONSTRAINT `FK6vj0m6x5cldya6w490rw7ehuv` FOREIGN KEY (`updated_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK9nvr4oqxre033dp4fwmoue5py` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `hak`
--
ALTER TABLE `hak`
  ADD CONSTRAINT `FK3wxxnb2crjall1m7i2t2pyqe2` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKiy9cuw5ubbl889y0ddctfr7c` FOREIGN KEY (`updated_by_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `jenis_koleksi`
--
ALTER TABLE `jenis_koleksi`
  ADD CONSTRAINT `FK6jhmakvwmnlwx78ekokfh48x9` FOREIGN KEY (`updated_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKcqeb4o6qquwpi4x9v29rxdtqd` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `koleksi`
--
ALTER TABLE `koleksi`
  ADD CONSTRAINT `FKbej5tcleuxg9ckvh2nwi2u2sw` FOREIGN KEY (`jenis_koleksi_id`) REFERENCES `jenis_koleksi` (`id`),
  ADD CONSTRAINT `FKjttfjw3u8ek6yof6lnet0hkfr` FOREIGN KEY (`updated_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKsd334kvpiunqhx92lvu5abxce` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `nilai_spk`
--
ALTER TABLE `nilai_spk`
  ADD CONSTRAINT `FKc2w3b52p36keuhdvd8dgns8lh` FOREIGN KEY (`spk_id`) REFERENCES `spk` (`id`),
  ADD CONSTRAINT `FKe30qg510tefwetuvwvrcbnxlo` FOREIGN KEY (`updated_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKesl63ldimxidpcw5b7sg9a79v` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `panjang_kain`
--
ALTER TABLE `panjang_kain`
  ADD CONSTRAINT `FK5ruqbxf4xmcqpqp6eewsw1x00` FOREIGN KEY (`satuan_panjang_kain_id`) REFERENCES `satuan_panjang_kain` (`id`),
  ADD CONSTRAINT `FK6a7vgyhg9v82ib2ww2yn6nkhq` FOREIGN KEY (`updated_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKpn4hfm8idd3x2b41llyn8nlno` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `proses`
--
ALTER TABLE `proses`
  ADD CONSTRAINT `FKbbtbnica99mipys7r1vkpmid0` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKo77pa9rl0pxxd86eam154vj6h` FOREIGN KEY (`updated_by_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `FKc83us3t8gi1n71m3v6sw4d2dh` FOREIGN KEY (`updated_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKm9jafbkd2m7x4ms2iq3b9hfg3` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `role_hak`
--
ALTER TABLE `role_hak`
  ADD CONSTRAINT `FK2qfuk1g1u20dfwo2vmklr1l06` FOREIGN KEY (`hak_id`) REFERENCES `hak` (`id`),
  ADD CONSTRAINT `FKoynuf9f7ie8u4jyem5m0y5yr8` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Constraints for table `satuan_panjang_kain`
--
ALTER TABLE `satuan_panjang_kain`
  ADD CONSTRAINT `FKod7udfu3wh3rnsae9idn3phx` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKpm9pbw6guk4qtdlqk50u61sef` FOREIGN KEY (`updated_by_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `spk`
--
ALTER TABLE `spk`
  ADD CONSTRAINT `FKfo0mq3h9funa0nxhp3u5m1vtb` FOREIGN KEY (`nilai_spk_id`) REFERENCES `nilai_spk` (`id`),
  ADD CONSTRAINT `FKgjf351dh4sc8bhs0hb9qh1bk5` FOREIGN KEY (`updated_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKmktoqxpse6bcd58k6frnd6bd6` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`),
  ADD CONSTRAINT `FKo30hfpwoapq5y7lbugj1y61x8` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `spk_proses`
--
ALTER TABLE `spk_proses`
  ADD CONSTRAINT `FK9uo0y38keebhrkx19xded8j1j` FOREIGN KEY (`proses_id`) REFERENCES `proses` (`id`),
  ADD CONSTRAINT `FKnu13ufddshbvl365olwde6cf3` FOREIGN KEY (`updated_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKq3o99u48c8iydxnjdeupdaqph` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKrhh9y7ig1q4xny9u9mnsrpjus` FOREIGN KEY (`spk_id`) REFERENCES `spk` (`id`);

--
-- Constraints for table `spk_status`
--
ALTER TABLE `spk_status`
  ADD CONSTRAINT `FK9db6u1d75fsfpe5s83240v0co` FOREIGN KEY (`spk_id`) REFERENCES `spk` (`id`),
  ADD CONSTRAINT `FK9sb7ejqobhpv1tvt6bmbd547x` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `FKphp4og418jjbsby8a30t75jea` FOREIGN KEY (`updated_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKpsew334tyinyqdim9uj8vgr4d` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `spk_varian`
--
ALTER TABLE `spk_varian`
  ADD CONSTRAINT `FK89dh23bt39e8s28169pnbc5hd` FOREIGN KEY (`varian_id`) REFERENCES `varian` (`id`),
  ADD CONSTRAINT `FKe6oeswsvfw5t6wooywllfub1t` FOREIGN KEY (`updated_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKgjgxux6lv9ypj8ctaaupwoj6h` FOREIGN KEY (`panjang_kain_id`) REFERENCES `panjang_kain` (`id`),
  ADD CONSTRAINT `FKlbda7jgv0nw76fasdpisg0i8d` FOREIGN KEY (`spk_id`) REFERENCES `spk` (`id`),
  ADD CONSTRAINT `FKr5t4o951b9ba9njgkat9pidd8` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `FK913o0cdsl4banjuifch1l1i27` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKhw2msaevkdny65vyoo0lw18ic` FOREIGN KEY (`updated_by_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `ukuran`
--
ALTER TABLE `ukuran`
  ADD CONSTRAINT `FK4pioud7glp3wtc3h821xsn4i0` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKt4ghh2ymvqomeumkrv8gr6yq2` FOREIGN KEY (`updated_by_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `ukuran_jumlah`
--
ALTER TABLE `ukuran_jumlah`
  ADD CONSTRAINT `FK7u440tpuugoqpyxff84j7rycy` FOREIGN KEY (`ukuran_id`) REFERENCES `ukuran` (`id`),
  ADD CONSTRAINT `FKc3598cq831krrp420vaehb2f7` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKc3hxjevug6pcpvhcre2g5rb1f` FOREIGN KEY (`spk_varian_id`) REFERENCES `spk_varian` (`id`),
  ADD CONSTRAINT `FKfr7vky890m0n2127shpbl4a2p` FOREIGN KEY (`updated_by_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `ukuran_jumlah_penerimaan`
--
ALTER TABLE `ukuran_jumlah_penerimaan`
  ADD CONSTRAINT `FKloa003jjr5pl3j9eu0sj6vug3` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKm3nktt9ap0hdu5vuj3g8ups93` FOREIGN KEY (`ukuran_jumlah_id`) REFERENCES `ukuran_jumlah` (`id`),
  ADD CONSTRAINT `FKtp1gvub7t7ouatcn4pvdqsbv6` FOREIGN KEY (`updated_by_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK9o7r2qptrh93devpob11veidj` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKn82ha3ccdebhokx3a8fgdqeyy` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `FKnede8yco9u8399icxl1aj37or` FOREIGN KEY (`updated_by_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `varian`
--
ALTER TABLE `varian`
  ADD CONSTRAINT `FKnnlxpbgxt0m9vj64xgb44lq9n` FOREIGN KEY (`koleksi_id`) REFERENCES `koleksi` (`id`),
  ADD CONSTRAINT `FKo1rkot16hs5tprdafc0x2xstn` FOREIGN KEY (`updated_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKpgbab10g0sre0afk1of7o25i5` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `vendor`
--
ALTER TABLE `vendor`
  ADD CONSTRAINT `FKgabu4746fcfnunh8ugkk7nmoa` FOREIGN KEY (`updated_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKmi323dfymmh8wrrfuuuf5wpsb` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
