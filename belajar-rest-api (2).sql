-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2023 at 12:00 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar-rest-api`
--

-- --------------------------------------------------------

--
-- Table structure for table `alat`
--

CREATE TABLE `alat` (
  `idalat` bigint(20) UNSIGNED NOT NULL,
  `nama_alat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resep_idresep` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alat`
--

INSERT INTO `alat` (`idalat`, `nama_alat`, `keterangan`, `resep_idresep`, `created_at`, `updated_at`) VALUES
(1, 'pisau', 'keterangan', 1, '2023-02-17 01:38:25', '2023-02-17 01:38:25'),
(2, 'wajan', 'keterangan', 1, '2023-02-17 01:38:25', '2023-02-17 01:38:25'),
(3, 'pisau', 'keterangan', 2, '2023-02-17 01:38:35', '2023-02-17 01:38:35'),
(4, 'wajan', 'keterangan', 2, '2023-02-17 01:38:35', '2023-02-17 01:38:35'),
(5, 'pisau', 'keterangan', 3, '2023-02-17 01:38:44', '2023-02-17 01:38:44'),
(6, 'wajan', 'keterangan', 3, '2023-02-17 01:38:44', '2023-02-17 01:38:44'),
(7, 'pisau', 'keterangan', 4, '2023-02-17 01:38:49', '2023-02-17 01:38:49'),
(8, 'wajan', 'keterangan', 4, '2023-02-17 01:38:49', '2023-02-17 01:38:49'),
(9, 'pisau', 'keterangan', 5, '2023-02-17 03:39:56', '2023-02-17 03:39:56'),
(10, 'wajan', 'keterangan', 5, '2023-02-17 03:39:56', '2023-02-17 03:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `bahan`
--

CREATE TABLE `bahan` (
  `idbahan` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banyak` decimal(8,2) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resep_idresep` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bahan`
--

INSERT INTO `bahan` (`idbahan`, `nama`, `satuan`, `banyak`, `keterangan`, `resep_idresep`, `created_at`, `updated_at`) VALUES
(1, 'ayam', 'kg', '1.00', 'keterangan', 1, '2023-02-17 01:38:25', '2023-02-17 01:38:25'),
(2, 'tepung', 'kg', '100.00', 'keterangan', 1, '2023-02-17 01:38:25', '2023-02-17 01:38:25'),
(3, 'ayam', 'kg', '1.00', 'keterangan', 2, '2023-02-17 01:38:35', '2023-02-17 01:38:35'),
(4, 'tepung', 'kg', '100.00', 'keterangan', 2, '2023-02-17 01:38:35', '2023-02-17 01:38:35'),
(5, 'ayam', 'kg', '1.00', 'keterangan', 3, '2023-02-17 01:38:44', '2023-02-17 01:38:44'),
(6, 'tepung', 'kg', '100.00', 'keterangan', 3, '2023-02-17 01:38:44', '2023-02-17 01:38:44'),
(7, 'ayam', 'kg', '1.00', 'keterangan', 4, '2023-02-17 01:38:49', '2023-02-17 01:38:49'),
(8, 'tepung', 'kg', '100.00', 'keterangan', 4, '2023-02-17 01:38:49', '2023-02-17 01:38:49'),
(9, 'ayam', 'kg', '1.00', 'keterangan', 5, '2023-02-17 03:39:56', '2023-02-17 03:39:56'),
(10, 'tepung', 'kg', '100.00', 'keterangan', 5, '2023-02-17 03:39:56', '2023-02-17 03:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `idlog` bigint(20) UNSIGNED NOT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `useraccess` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`idlog`, `module`, `action`, `useraccess`, `created_at`, `updated_at`) VALUES
(1, 'register', 'registrasi akun', 'admin@admin.com', '2023-02-17 01:35:58', '2023-02-17 01:35:58'),
(2, 'register', 'registrasi akun', 'clara.wibowo@example.net', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(3, 'register', 'registrasi akun', 'jyuliarti@example.com', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(4, 'register', 'registrasi akun', 'silvia71@example.com', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(5, 'register', 'registrasi akun', 'danu.aryani@example.net', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(6, 'register', 'registrasi akun', 'cakrabirawa.mangunsong@example.org', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(7, 'register', 'registrasi akun', 'kuswoyo.julia@example.org', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(8, 'register', 'registrasi akun', 'handayani.galiono@example.com', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(9, 'register', 'registrasi akun', 'rmaulana@example.net', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(10, 'register', 'registrasi akun', 'gsitumorang@example.com', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(11, 'register', 'registrasi akun', 'ohassanah@example.com', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(12, 'register', 'registrasi akun', 'uyainah.raisa@example.net', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(13, 'register', 'registrasi akun', 'wahyudin.cakrawangsa@example.net', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(14, 'register', 'registrasi akun', 'unasyidah@example.com', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(15, 'register', 'registrasi akun', 'ikin70@example.net', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(16, 'register', 'registrasi akun', 'xmanullang@example.org', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(17, 'register', 'registrasi akun', 'nurul.prabowo@example.org', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(18, 'register', 'registrasi akun', 'maras05@example.org', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(19, 'register', 'registrasi akun', 'dono.laksita@example.org', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(20, 'register', 'registrasi akun', 'huyainah@example.com', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(21, 'register', 'registrasi akun', 'safitri.kamal@example.org', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(22, 'register', 'registrasi akun', 'sabrina.hariyah@example.com', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(23, 'register', 'registrasi akun', 'badriansyah@example.com', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(24, 'register', 'registrasi akun', 'dian.suryatmi@example.com', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(25, 'register', 'registrasi akun', 'wirda99@example.net', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(26, 'register', 'registrasi akun', 'nyuniar@example.net', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(27, 'register', 'registrasi akun', 'lili23@example.net', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(28, 'register', 'registrasi akun', 'prabowo.ibun@example.net', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(29, 'register', 'registrasi akun', 'jmaheswara@example.org', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(30, 'register', 'registrasi akun', 'dnuraini@example.net', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(31, 'register', 'registrasi akun', 'eka11@example.net', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(32, 'register', 'registrasi akun', 'sanggraini@example.net', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(33, 'register', 'registrasi akun', 'buwais@example.org', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(34, 'register', 'registrasi akun', 'khandayani@example.net', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(35, 'register', 'registrasi akun', 'melinda.widiastuti@example.com', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(36, 'register', 'registrasi akun', 'psirait@example.com', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(37, 'register', 'registrasi akun', 'damar.yulianti@example.com', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(38, 'register', 'registrasi akun', 'tasdik.nasyiah@example.net', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(39, 'register', 'registrasi akun', 'waskita.kayla@example.com', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(40, 'register', 'registrasi akun', 'hastuti.agus@example.com', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(41, 'register', 'registrasi akun', 'mulya18@example.org', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(42, 'register', 'registrasi akun', 'hwinarsih@example.org', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(43, 'register', 'registrasi akun', 'martana.rahimah@example.net', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(44, 'register', 'registrasi akun', 'kamal31@example.net', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(45, 'register', 'registrasi akun', 'hyolanda@example.com', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(46, 'register', 'registrasi akun', 'bfirmansyah@example.com', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(47, 'register', 'registrasi akun', 'irma06@example.org', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(48, 'register', 'registrasi akun', 'darman.hutasoit@example.org', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(49, 'register', 'registrasi akun', 'carla87@example.net', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(50, 'register', 'registrasi akun', 'hidayanto.lutfan@example.net', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(51, 'register', 'registrasi akun', 'oyuniar@example.net', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(52, 'login', 'login akun', 'admin@admin.com', '2023-02-17 01:37:04', '2023-02-17 01:37:04'),
(53, 'tambah resep', 'tambah resep ayam bumbu rendang dengan id 1', 'admin@admin.com', '2023-02-17 01:38:25', '2023-02-17 01:38:25'),
(54, 'tambah bahan', 'tambah bahan untuk id resep 1 dengan bahan ayam', '-', '2023-02-17 01:38:25', '2023-02-17 01:38:25'),
(55, 'tambah bahan', 'tambah bahan untuk id resep 1 dengan bahan tepung', '-', '2023-02-17 01:38:25', '2023-02-17 01:38:25'),
(56, 'tambah alat', 'tambah alat untuk id resep 1 dengan nama alat pisau', '-', '2023-02-17 01:38:25', '2023-02-17 01:38:25'),
(57, 'tambah alat', 'tambah alat untuk id resep 1 dengan nama alat wajan', '-', '2023-02-17 01:38:25', '2023-02-17 01:38:25'),
(58, 'tambah resep', 'tambah resep ayam bumbu rica-rica dengan id 2', 'admin@admin.com', '2023-02-17 01:38:35', '2023-02-17 01:38:35'),
(59, 'tambah bahan', 'tambah bahan untuk id resep 2 dengan bahan ayam', '-', '2023-02-17 01:38:35', '2023-02-17 01:38:35'),
(60, 'tambah bahan', 'tambah bahan untuk id resep 2 dengan bahan tepung', '-', '2023-02-17 01:38:35', '2023-02-17 01:38:35'),
(61, 'tambah alat', 'tambah alat untuk id resep 2 dengan nama alat pisau', '-', '2023-02-17 01:38:35', '2023-02-17 01:38:35'),
(62, 'tambah alat', 'tambah alat untuk id resep 2 dengan nama alat wajan', '-', '2023-02-17 01:38:35', '2023-02-17 01:38:35'),
(63, 'tambah resep', 'tambah resep ayam goreng sambal ijo dengan id 3', 'admin@admin.com', '2023-02-17 01:38:44', '2023-02-17 01:38:44'),
(64, 'tambah bahan', 'tambah bahan untuk id resep 3 dengan bahan ayam', '-', '2023-02-17 01:38:44', '2023-02-17 01:38:44'),
(65, 'tambah bahan', 'tambah bahan untuk id resep 3 dengan bahan tepung', '-', '2023-02-17 01:38:44', '2023-02-17 01:38:44'),
(66, 'tambah alat', 'tambah alat untuk id resep 3 dengan nama alat pisau', '-', '2023-02-17 01:38:44', '2023-02-17 01:38:44'),
(67, 'tambah alat', 'tambah alat untuk id resep 3 dengan nama alat wajan', '-', '2023-02-17 01:38:44', '2023-02-17 01:38:44'),
(68, 'tambah resep', 'tambah resep ayam goreng sambal matah dengan id 4', 'admin@admin.com', '2023-02-17 01:38:49', '2023-02-17 01:38:49'),
(69, 'tambah bahan', 'tambah bahan untuk id resep 4 dengan bahan ayam', '-', '2023-02-17 01:38:49', '2023-02-17 01:38:49'),
(70, 'tambah bahan', 'tambah bahan untuk id resep 4 dengan bahan tepung', '-', '2023-02-17 01:38:49', '2023-02-17 01:38:49'),
(71, 'tambah alat', 'tambah alat untuk id resep 4 dengan nama alat pisau', '-', '2023-02-17 01:38:49', '2023-02-17 01:38:49'),
(72, 'tambah alat', 'tambah alat untuk id resep 4 dengan nama alat wajan', '-', '2023-02-17 01:38:49', '2023-02-17 01:38:49'),
(73, 'login', 'login akun', 'clara.wibowo@example.net', '2023-02-17 03:39:04', '2023-02-17 03:39:04'),
(74, 'tambah resep', 'tambah resep ayam bumbu rendang dengan id 5', 'admin@admin.com', '2023-02-17 03:39:56', '2023-02-17 03:39:56'),
(75, 'tambah bahan', 'tambah bahan untuk id resep 5 dengan bahan ayam', '-', '2023-02-17 03:39:56', '2023-02-17 03:39:56'),
(76, 'tambah bahan', 'tambah bahan untuk id resep 5 dengan bahan tepung', '-', '2023-02-17 03:39:56', '2023-02-17 03:39:56'),
(77, 'tambah alat', 'tambah alat untuk id resep 5 dengan nama alat pisau', '-', '2023-02-17 03:39:56', '2023-02-17 03:39:56'),
(78, 'tambah alat', 'tambah alat untuk id resep 5 dengan nama alat wajan', '-', '2023-02-17 03:39:56', '2023-02-17 03:39:56'),
(79, 'login', 'login akun', 'admin@admin.com', '2023-02-17 04:00:16', '2023-02-17 04:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_02_10_080154_create_resep_table', 1),
(5, '2023_02_10_082031_create_alat_table', 1),
(6, '2023_02_10_083221_create_bahan_table', 1),
(7, '2023_02_10_083803_create_resep_view_table', 1),
(8, '2023_02_10_084134_create_rating_table', 1),
(9, '2023_02_10_084749_create_log_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `idrating` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resep_idresep` bigint(20) UNSIGNED NOT NULL,
  `email_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`idrating`, `rating`, `review`, `resep_idresep`, `email_user`, `created_at`, `updated_at`) VALUES
(2, 5, 'resep nya mantap', 1, 'clara.wibowo@example.net', '2023-02-17 03:01:56', '2023-02-17 03:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `resep`
--

CREATE TABLE `resep` (
  `idresep` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cara_pembuatan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_resep` enum('draft','submit','publish','unpublished') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resep`
--

INSERT INTO `resep` (`idresep`, `judul`, `gambar`, `cara_pembuatan`, `video`, `user_email`, `status_resep`, `created_at`, `updated_at`) VALUES
(1, 'ayam bumbu rendang', 'uploads/1676597905_banner wisuda 219.jpg', 'blablabla', 'https://google.com', 'admin@admin.com', 'publish', '2023-02-17 01:38:25', '2023-02-17 01:38:25'),
(2, 'ayam bumbu rica-rica', 'uploads/1676597915_banner wisuda 219.jpg', 'blablabla', 'https://google.com', 'admin@admin.com', 'publish', '2023-02-17 01:38:35', '2023-02-17 01:38:35'),
(3, 'ayam goreng sambal ijo', 'uploads/1676597924_banner wisuda 219.jpg', 'blablabla', 'https://google.com', 'admin@admin.com', 'publish', '2023-02-17 01:38:44', '2023-02-17 01:38:44'),
(4, 'ayam goreng sambal matah', 'uploads/1676597929_banner wisuda 219.jpg', 'blablabla', 'https://google.com', 'admin@admin.com', 'publish', '2023-02-17 01:38:49', '2023-02-17 01:38:49'),
(5, 'ayam bumbu rendang', 'uploads/1676605196_WhatsApp Image 2023-02-10 at 11.21.21.jpg', 'blablabla', 'https://google.com', 'admin@admin.com', 'submit', '2023-02-17 03:39:56', '2023-02-17 03:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `resep_view`
--

CREATE TABLE `resep_view` (
  `idresep_view` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `resep_idresep` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resep_view`
--

INSERT INTO `resep_view` (`idresep_view`, `email`, `date`, `resep_idresep`) VALUES
(1, NULL, '2023-02-17 02:16:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_validate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('aktif','non-aktif') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'non-aktif',
  `last_login` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `role`, `password`, `email_validate`, `status`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@admin.com', 'admin', '$2y$10$q8/vVYuKAFsK1HdwGoU/yOEhr6B.wp3WEKKoLkltYFn8BGFM5Dp8e', NULL, 'aktif', '2023-02-17 08:35:58', '2023-02-17 01:35:58', '2023-02-17 01:35:58'),
(2, 'Raina Agustina S.Kom', 'clara.wibowo@example.net', 'user', '$2y$10$IWHGDWvg7KaUeoFA6BnGbO6SyAevZkm4fMg8mT3e/DQ1MEM3AjEI2', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(3, 'Kalim Olga Nainggolan', 'jyuliarti@example.com', 'user', '$2y$10$g/yx.owCWUsv8kIb/EtXVeKB35T9kcVvtNsKXJvrWGI0jC.C2UU02', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(4, 'Kamaria Haryanti', 'silvia71@example.com', 'user', '$2y$10$pRRVoNF7sGoel4Yq5zB97OtIEjSJmBVAOgiPg3d.H9B7teL1ctzlO', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(5, 'Bancar Jindra Sirait', 'danu.aryani@example.net', 'user', '$2y$10$SxG2poRtlRDLDvQB9YYKIuCaDITLJnDoqAayms2mXvCsPCZ6j8LjW', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(6, 'Ade Fitriani Mulyani', 'cakrabirawa.mangunsong@example.org', 'user', '$2y$10$UNsCqUJIKwCztYdav2PDOuzmdGov8QT52JkR9AItL9I.h4Zyd3z5C', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(7, 'Puspa Maryati', 'kuswoyo.julia@example.org', 'user', '$2y$10$DmzpPuhUUuuTZqi7Vfu53OCxHJfCW/1Pq/wVRNy5TPsihWcdxM/AG', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(8, 'Rahmi Kuswandari', 'handayani.galiono@example.com', 'user', '$2y$10$HEIVK.gYbzFyvmFMxEbAY.Ykl9nJdvOk8Gz0d2FG.SPdeWxRm6rYS', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(9, 'Ajiono Prasetyo', 'rmaulana@example.net', 'user', '$2y$10$2c22xKPzaPKpIr.jdaOOOeaq4MF0A2JkmTia7JYST3NBmftvnWW5q', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(10, 'Ajimat Nugroho', 'gsitumorang@example.com', 'user', '$2y$10$ohVGCgmw8v8U2Uok68nvBORJ7XVGi8YqK95ZdsgJZThh7diw6Z5bC', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(11, 'Tantri Oktaviani S.Pt', 'ohassanah@example.com', 'user', '$2y$10$GhfKvTvuygqiWQy80Oty9uMmfQ12Wly84O58I0U.hNuV1G5cZ7Ske', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(12, 'Dian Hesti Suartini S.T.', 'uyainah.raisa@example.net', 'user', '$2y$10$Jlr/.L/Gjc9qxTZHuAlY.e9/Tgdm4IVEWyQ1WyUgkxljutMKxZfZW', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(13, 'Rahmi Fujiati S.Psi', 'wahyudin.cakrawangsa@example.net', 'user', '$2y$10$TuE/uNV2fC6WIY6FnomoLes2ste4UDCkxm082vO2I7sM0HNX9gZqO', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(14, 'Heryanto Putra M.M.', 'unasyidah@example.com', 'user', '$2y$10$2kUVhzmp5ybMZt2AdnNQfO.yufDirF7amNGiBAqb4fbAVg4DWtPze', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(15, 'Faizah Fitria Palastri M.Kom.', 'ikin70@example.net', 'user', '$2y$10$M.a1UNcW33j202o7slw1PeL2F08cP4N45zgT3WTUccE1OQbu.Bfxi', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(16, 'Ghaliyati Kamaria Andriani M.Pd', 'xmanullang@example.org', 'user', '$2y$10$Mnby3ykJDr5ruVAd.l/JjuK3awJA4QrAWpvkg0T/2qYMG3k7kvk.G', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(17, 'Chelsea Suryatmi', 'nurul.prabowo@example.org', 'user', '$2y$10$xwPQds4CsGHsiESQc9JbmuDSGgRYysgvgYJfJ0eo3tScvYfCj8e4O', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(18, 'Puti Hariyah', 'maras05@example.org', 'user', '$2y$10$PBqm9gycpr9rQLsE0lIveeYXfH18rgzIgyrJu2Y1uHR44rswdbIV.', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(19, 'Makara Napitupulu', 'dono.laksita@example.org', 'user', '$2y$10$SzZ68oPF2EI/hXkRIPQIv.O1jU8Txqw7KiS3MS.TDagHjPB3Dawea', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(20, 'Tantri Nuraini', 'huyainah@example.com', 'user', '$2y$10$htBXpi5kkdOilibxgiZiO.lyTHZBnPfXXAkk/5cvRTpT0OJ5BcziC', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(21, 'Dirja Edison Samosir', 'safitri.kamal@example.org', 'user', '$2y$10$1pyi/nSDzCXkyeeG4TZ/JuzgnKCysQMPgAIPNO2YZJVTcyMDw/u3O', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(22, 'Tri Yahya Mustofa', 'sabrina.hariyah@example.com', 'user', '$2y$10$6olrSWe/Lcc3iL4Av7gevucw5nOSGQT00VF8NwbLMzrALVG7qgH5.', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(23, 'Carla Rahimah', 'badriansyah@example.com', 'user', '$2y$10$Mq282o4e78SCCR57/RJci.a./b3lREGGVnGGDk5Xq27KxlgPRCkGW', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(24, 'Hendra Cahyo Prasetyo', 'dian.suryatmi@example.com', 'user', '$2y$10$0O4uWiMxvb97YXYccNGfP.oZFJa4ob5xZwOwx/P/IE3AuT.W25tZ.', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(25, 'Chelsea Suryatmi', 'wirda99@example.net', 'user', '$2y$10$YyIXPFfQPljtob1DMx5eVuHfE/./ElN4Tn/1QqK6pitvI3pd909mS', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(26, 'Ratna Melani M.Ak', 'nyuniar@example.net', 'user', '$2y$10$ILQbRFDyvvpAmY/dEwv7hOSAglecRMTELevTfJEikghIIc2LUo.g6', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(27, 'Panca Salman Maryadi', 'lili23@example.net', 'user', '$2y$10$A1AHqtAfaz4A8K9asMnJ0udrGOH3.aMrQWD1T4nevEiPiPaxCOBiG', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(28, 'Damar Nashiruddin', 'prabowo.ibun@example.net', 'user', '$2y$10$MzsicunMwXR8JM7Bkl7o7ue488I4FtdwbP3IRksX36gbeW0KSLrXm', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(29, 'Alika Jessica Laksmiwati M.Kom.', 'jmaheswara@example.org', 'user', '$2y$10$CFGmZ6XDDaRVuYKdMUaz3u.vsqYEHr3AC4pdo1PJqm8WnHKVVwxrq', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(30, 'Belinda Ira Hastuti', 'dnuraini@example.net', 'user', '$2y$10$ttPQ3CuTARWReUt52IymIOY7L8PsKRDOj4nOdeYErS2aOzpz8SjEu', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(31, 'Dacin Prayoga', 'eka11@example.net', 'user', '$2y$10$VnK2.fjYkDgv5Zpg0Ds9U.IrO5ptTKmmkszltD3IyzXzXU3kNNHlO', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(32, 'Yani Paris Nasyiah', 'sanggraini@example.net', 'user', '$2y$10$qsI/AcD3LhB/4ZGX5dVtF.YYf/OmkUpIdCnZd3COJgLu/ZWpvaJmu', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(33, 'Cici Ophelia Nasyidah S.T.', 'buwais@example.org', 'user', '$2y$10$62PI7Da1V/9L7HpQmI.PPOm/KfwnHwbmRdUKagfGCaVUPzPY.THl6', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(34, 'Pardi Waskita', 'khandayani@example.net', 'user', '$2y$10$dw70LUE.260lUhEshPZyO.dhFgwB.EwtVhPNUDl3povEjkdXf8D3.', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(35, 'Samsul Marpaung', 'melinda.widiastuti@example.com', 'user', '$2y$10$afqeCJdwh4bxA7MhUUruz.Tk9vY5MdvMko27tn4JfcYL8QSWc8FVq', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(36, 'Diana Karimah Yolanda M.Ak', 'psirait@example.com', 'user', '$2y$10$Lg.QTWimS8nNybD81KH.uOdQKeELIJv33Ckw4RzL3inBaA6i8kkyS', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(37, 'Malik Gada Samosir', 'damar.yulianti@example.com', 'user', '$2y$10$4geHe3ZieDanedbImwGaNe6oPgJ5K2IRNNpP5eUHl0iRwPwSjFppG', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(38, 'Edison Hendra Hakim', 'tasdik.nasyiah@example.net', 'user', '$2y$10$3EsVbxlDWykQWddD4HOvzeBNwGKQv/AbDOFOyIMUkn876cafPZN3a', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(39, 'Perkasa Dirja Nainggolan M.Kom.', 'waskita.kayla@example.com', 'user', '$2y$10$pQ8kD1Q4p5zfZg/gwuRiXujkDQE8Stt6Nh5X8F1xKPShZRo701CrS', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(40, 'Lembah Banawi Damanik', 'hastuti.agus@example.com', 'user', '$2y$10$08YrQ9PjOsCN4w1HBElqLOLv8h19EhKHSbHqQ/BAIMCQPwk75S/UW', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(41, 'Lintang Aryani', 'mulya18@example.org', 'user', '$2y$10$Uy9usF932YSta/97HleDbuBYmPVBF75H/o.EaNTUy0T2Q1UUlnrBa', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(42, 'Sidiq Waskita', 'hwinarsih@example.org', 'user', '$2y$10$XPNrA.BoXRwO/OnjiXSC3Ox9eG.yPKtYFJtkWMetgOh9RsAQs7Fqi', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(43, 'Usyi Sudiati', 'martana.rahimah@example.net', 'user', '$2y$10$c2a.XBeOjMaaucAWP4uxh.vscLWqcb2Md5knrYv/zye/HKPHSDIk.', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(44, 'Gamblang Prasetyo', 'kamal31@example.net', 'user', '$2y$10$XelCImYvxyBH0Vm/xqHeYe8en6pCE6LvGvAqinmHCmP2SNq9osh2G', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(45, 'Hamzah Hardiansyah M.Ak', 'hyolanda@example.com', 'user', '$2y$10$KsOKXwQHRmKV7UBy42b5xuk1Y2Ckk.iv7xPDvLneY/5t17ALWVL6i', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(46, 'Surya Hutapea', 'bfirmansyah@example.com', 'user', '$2y$10$OcqFkL7Pk/e9/3M5eEhRuOlDuWFlfKv6FqVSKOCOYmEn769txbl5W', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(47, 'Wira Mangunsong', 'irma06@example.org', 'user', '$2y$10$7xUAZkE3m2CNxPMOMXyzsOxsg7VPFpz24sUHBjdNNlRUrK/4j5Bf2', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(48, 'Elma Winarsih', 'darman.hutasoit@example.org', 'user', '$2y$10$tz4rJDdCz86RrN5TrORMV.vWKPcUtuVJXTGup4M533CYdiJFLw6.a', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(49, 'Budi Embuh Sitorus', 'carla87@example.net', 'user', '$2y$10$JyrqDg7onX6jMDOLfTkMK.Q1H0qqJFA5sV4Hbqk1W3.OUNkHjpdUK', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(50, 'Kani Andriani S.Pt', 'hidayanto.lutfan@example.net', 'user', '$2y$10$MhOoMxcIcgewz2XAxTIN8uCsdKoRszUBOpQITrPSQroVMfkMgUq/W', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04'),
(51, 'Jono Prayoga', 'oyuniar@example.net', 'user', '$2y$10$4VXTqCHfVRND3SAOEdyzbu5pFsTCReEAqustXfhwKxsdVeznUnTB6', NULL, 'aktif', '2023-02-17 08:36:04', '2023-02-17 01:36:04', '2023-02-17 01:36:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alat`
--
ALTER TABLE `alat`
  ADD PRIMARY KEY (`idalat`),
  ADD KEY `alat_resep_idresep_foreign` (`resep_idresep`);

--
-- Indexes for table `bahan`
--
ALTER TABLE `bahan`
  ADD PRIMARY KEY (`idbahan`),
  ADD KEY `bahan_resep_idresep_foreign` (`resep_idresep`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`idlog`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`idrating`),
  ADD KEY `rating_resep_idresep_foreign` (`resep_idresep`),
  ADD KEY `rating_email_user_foreign` (`email_user`);

--
-- Indexes for table `resep`
--
ALTER TABLE `resep`
  ADD PRIMARY KEY (`idresep`),
  ADD KEY `resep_user_email_foreign` (`user_email`);

--
-- Indexes for table `resep_view`
--
ALTER TABLE `resep_view`
  ADD PRIMARY KEY (`idresep_view`),
  ADD KEY `resep_view_resep_idresep_foreign` (`resep_idresep`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alat`
--
ALTER TABLE `alat`
  MODIFY `idalat` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bahan`
--
ALTER TABLE `bahan`
  MODIFY `idbahan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `idlog` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `idrating` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `resep`
--
ALTER TABLE `resep`
  MODIFY `idresep` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resep_view`
--
ALTER TABLE `resep_view`
  MODIFY `idresep_view` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alat`
--
ALTER TABLE `alat`
  ADD CONSTRAINT `alat_resep_idresep_foreign` FOREIGN KEY (`resep_idresep`) REFERENCES `resep` (`idresep`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bahan`
--
ALTER TABLE `bahan`
  ADD CONSTRAINT `bahan_resep_idresep_foreign` FOREIGN KEY (`resep_idresep`) REFERENCES `resep` (`idresep`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_email_user_foreign` FOREIGN KEY (`email_user`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_resep_idresep_foreign` FOREIGN KEY (`resep_idresep`) REFERENCES `resep` (`idresep`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resep`
--
ALTER TABLE `resep`
  ADD CONSTRAINT `resep_user_email_foreign` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resep_view`
--
ALTER TABLE `resep_view`
  ADD CONSTRAINT `resep_view_resep_idresep_foreign` FOREIGN KEY (`resep_idresep`) REFERENCES `resep` (`idresep`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
