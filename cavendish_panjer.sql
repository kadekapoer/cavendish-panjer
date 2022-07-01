-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jul 2022 pada 09.09
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cavendish_panjer`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Freebase', '2022-06-30 19:14:00', '2022-06-30 19:14:00'),
(2, 'Salt Nicotine', '2022-06-30 19:14:11', '2022-06-30 19:14:11'),
(3, 'Mod', '2022-06-30 19:41:23', '2022-06-30 19:41:23'),
(4, 'Pod', '2022-06-30 19:41:31', '2022-06-30 19:41:31'),
(5, 'Automizer', '2022-06-30 19:41:40', '2022-06-30 19:41:40'),
(6, 'Coil/Catheridge', '2022-06-30 19:41:53', '2022-06-30 19:41:53'),
(7, 'Accesisoris', '2022-06-30 19:42:11', '2022-06-30 19:42:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(10) UNSIGNED NOT NULL,
  `kode_member` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_03_05_194740_tambah_kolom_baru_to_users_table', 1),
(7, '2021_03_05_195441_buat_kategori_table', 1),
(8, '2021_03_05_195949_buat_produk_table', 1),
(9, '2021_03_05_200515_buat_member_table', 1),
(10, '2021_03_05_200706_buat_supplier_table', 1),
(11, '2021_03_05_200841_buat_pembelian_table', 1),
(12, '2021_03_05_200845_buat_pembelian_detail_table', 1),
(13, '2021_03_05_200853_buat_penjualan_table', 1),
(14, '2021_03_05_200858_buat_penjualan_detail_table', 1),
(15, '2021_03_05_200904_buat_setting_table', 1),
(16, '2021_03_05_201756_buat_pengeluaran_table', 1),
(17, '2021_03_11_225128_create_sessions_table', 1),
(18, '2021_03_24_115009_tambah_foreign_key_to_produk_table', 1),
(19, '2021_03_24_131829_tambah_kode_produk_to_produk_table', 1),
(20, '2021_05_08_220315_tambah_diskon_to_setting_table', 1),
(21, '2021_05_09_124745_edit_id_member_to_penjualan_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(10) UNSIGNED NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `bayar` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_detail`
--

CREATE TABLE `pembelian_detail` (
  `id_pembelian_detail` int(10) UNSIGNED NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(10) UNSIGNED NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(10) UNSIGNED NOT NULL,
  `id_member` int(11) DEFAULT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` int(11) NOT NULL DEFAULT 0,
  `total_keuntungan` int(11) NOT NULL,
  `bayar` int(11) NOT NULL DEFAULT 0,
  `diterima` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `id_penjualan_detail` int(10) UNSIGNED NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` int(11) NOT NULL DEFAULT 0,
  `keuntungan` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(10) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `kode_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga_beli` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `harga_jual` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `kode_produk`, `nama_produk`, `merk`, `harga_beli`, `diskon`, `harga_jual`, `stok`, `created_at`, `updated_at`) VALUES
(1, 1, 'P000001', 'Pop Sens Grappe', NULL, 60000, 0, 80000, 3, '2022-06-30 19:43:33', '2022-06-30 19:43:33'),
(2, 1, 'P000002', 'Pop Sens Lemon', NULL, 60000, 0, 80000, 6, '2022-06-30 19:44:01', '2022-06-30 19:44:01'),
(3, 1, 'P000003', 'Mr .Coffee Strawberry', NULL, 130000, 0, 145000, 1, '2022-06-30 19:50:55', '2022-06-30 19:50:55'),
(4, 1, 'P000004', 'Mr .Coffee Chesse', NULL, 130000, 0, 145000, 1, '2022-06-30 19:51:19', '2022-06-30 19:51:19'),
(5, 1, 'P000005', 'Golden Layers', NULL, 130000, 0, 150000, 2, '2022-06-30 19:51:57', '2022-06-30 19:51:57'),
(6, 1, 'P000006', 'Avoshi', NULL, 130000, 0, 150000, 1, '2022-06-30 19:52:57', '2022-06-30 22:19:32'),
(7, 1, 'P000007', 'Pastry DP', NULL, 130000, 0, 150000, 3, '2022-06-30 19:53:54', '2022-06-30 19:53:54'),
(8, 1, 'P000008', 'Waffle Vanila', NULL, 130000, 0, 150000, 2, '2022-06-30 19:54:31', '2022-06-30 19:54:31'),
(9, 1, 'P000009', 'Candu Tiramisu', NULL, 130000, 0, 155000, 2, '2022-06-30 19:55:27', '2022-06-30 19:55:27'),
(10, 1, 'P000010', 'Dewa Roman Picisan', NULL, 115000, 0, 135000, 5, '2022-06-30 19:57:23', '2022-06-30 19:57:23'),
(11, 1, 'P000011', 'Milshake Banana', NULL, 130000, 0, 150000, 3, '2022-06-30 20:00:17', '2022-06-30 20:00:17'),
(12, 1, 'P000012', 'Milshake Oreo', NULL, 130000, 0, 150000, 3, '2022-06-30 20:00:59', '2022-06-30 20:00:59'),
(13, 1, 'P000013', 'Pokibro Banana', NULL, 145000, 0, 165000, 1, '2022-06-30 20:03:32', '2022-06-30 20:03:32'),
(14, 1, 'P000014', 'Dua Apple', NULL, 140000, 0, 160000, 2, '2022-06-30 20:04:02', '2022-06-30 20:04:02'),
(15, 1, 'P000015', 'Slank v1 banana', NULL, 140000, 0, 160000, 4, '2022-06-30 20:04:43', '2022-06-30 20:04:43'),
(16, 1, 'P000016', 'Slank v2 Blackcurrant', NULL, 140000, 0, 160000, 2, '2022-06-30 20:05:13', '2022-06-30 20:05:13'),
(17, 1, 'P000017', 'Slank v3 fullmoon', NULL, 140000, 0, 160000, 3, '2022-06-30 20:05:56', '2022-06-30 20:06:36'),
(18, 1, 'P000018', 'Zat besi', NULL, 140000, 0, 160000, 3, '2022-06-30 20:07:14', '2022-06-30 20:07:14'),
(19, 1, 'P000019', 'Orbit banana', NULL, 120000, 0, 140000, 1, '2022-06-30 20:18:50', '2022-06-30 20:18:50'),
(20, 1, 'P000020', 'Babe', NULL, 140000, 0, 160000, 0, '2022-06-30 20:19:50', '2022-06-30 20:19:50'),
(21, 1, 'P000021', 'Krusty v1', NULL, 125000, 0, 145000, 0, '2022-06-30 20:22:03', '2022-06-30 20:22:03'),
(22, 1, 'P000022', 'Krusty v2', NULL, 125000, 0, 145000, 1, '2022-06-30 20:26:24', '2022-06-30 20:26:24'),
(23, 1, 'P000023', 'Krusty v3', NULL, 125000, 0, 145000, 0, '2022-06-30 20:27:21', '2022-06-30 20:27:21'),
(24, 1, 'P000024', 'krusty v4', NULL, 105000, 0, 125000, 1, '2022-06-30 20:28:34', '2022-06-30 20:28:34'),
(25, 1, 'P000025', 'Blondies blueberry', NULL, 120000, 0, 140000, 0, '2022-06-30 20:31:12', '2022-06-30 20:31:12'),
(26, 1, 'P000026', 'lat mjlok strawberry', NULL, 105000, 0, 125000, 2, '2022-06-30 20:33:04', '2022-06-30 20:33:04'),
(27, 1, 'P000027', 'Lat mjlok vanilla', NULL, 100000, 0, 120000, 3, '2022-06-30 20:33:50', '2022-06-30 20:33:50'),
(28, 1, 'P000028', 'Lat mjlok banana', NULL, 100000, 0, 120000, 1, '2022-06-30 20:35:23', '2022-06-30 20:35:23'),
(29, 1, 'P000029', 'Lat mjlok tiramisu', NULL, 100000, 0, 120000, 3, '2022-06-30 20:37:19', '2022-06-30 20:37:19'),
(30, 1, 'P000030', 'Krspy', NULL, 105000, 0, 125000, 1, '2022-06-30 20:38:58', '2022-06-30 20:38:58'),
(31, 1, 'P000031', 'Naffs almond', NULL, 100000, 0, 120000, 2, '2022-06-30 20:41:07', '2022-06-30 20:41:07'),
(32, 1, 'P000032', 'Glu v1 sirsak', NULL, 105000, 0, 125000, 4, '2022-06-30 20:42:30', '2022-06-30 20:44:18'),
(33, 1, 'P000033', 'Glu v9 pink lady', NULL, 105000, 0, 125000, 2, '2022-06-30 20:45:16', '2022-06-30 20:45:16'),
(34, 1, 'P000034', 'This liquid suck', NULL, 110000, 0, 130000, 2, '2022-06-30 20:46:38', '2022-06-30 20:46:38'),
(35, 1, 'P000035', 'Croffle trouble', NULL, 110000, 0, 130000, 2, '2022-06-30 20:48:05', '2022-06-30 20:48:05'),
(36, 1, 'P000036', 'muffin v1 strawberry', NULL, 110000, 0, 130000, 2, '2022-06-30 20:49:05', '2022-06-30 20:49:05'),
(37, 1, 'P000037', 'muffin v2 blackcurrant', NULL, 110000, 0, 130000, 0, '2022-06-30 20:49:45', '2022-06-30 20:49:45'),
(38, 1, 'P000038', 'Kaguya', NULL, 110000, 0, 130000, 2, '2022-06-30 20:50:28', '2022-06-30 20:50:28'),
(39, 1, 'P000039', 'Pastry time', NULL, 100000, 0, 125000, 1, '2022-06-30 20:51:37', '2022-06-30 20:51:37'),
(40, 1, 'P000040', 'DNKW strawberry', NULL, 100000, 0, 120000, 3, '2022-06-30 20:52:45', '2022-06-30 20:52:45'),
(41, 1, 'P000041', 'Bequ', NULL, 100000, 0, 120000, 2, '2022-06-30 20:54:47', '2022-06-30 20:54:47'),
(42, 1, 'P000042', 'waffle banana', NULL, 105000, 0, 125000, 3, '2022-06-30 20:55:58', '2022-06-30 20:55:58'),
(43, 1, 'P000043', 'Brazilian mango', NULL, 105000, 0, 125000, 1, '2022-06-30 20:58:46', '2022-06-30 20:58:46'),
(44, 1, 'P000044', 'Alacarte hitam', NULL, 110000, 0, 130000, 0, '2022-06-30 20:59:26', '2022-06-30 20:59:26'),
(45, 1, 'P000045', 'Hokla strawberry', NULL, 105000, 0, 125000, 2, '2022-06-30 21:01:02', '2022-06-30 21:01:02'),
(46, 1, 'P000046', 'Yougurt drip anggur', NULL, 100000, 0, 120000, 2, '2022-06-30 21:02:50', '2022-06-30 21:02:50'),
(47, 1, 'P000047', 'Yougurt drip berry', NULL, 100000, 0, 120000, 1, '2022-06-30 21:03:52', '2022-06-30 21:03:52'),
(48, 1, 'P000048', 'Bondan v3 cheese', NULL, 140000, 0, 160000, 2, '2022-06-30 21:10:37', '2022-06-30 21:10:37'),
(49, 1, 'P000049', 'Eco melon', NULL, 110000, 0, 130000, 1, '2022-06-30 21:11:24', '2022-06-30 21:11:24'),
(50, 1, 'P000050', 'Susubro original', NULL, 140000, 0, 160000, 0, '2022-06-30 21:12:19', '2022-06-30 21:12:19'),
(51, 1, 'P000051', 'Susubro banana', NULL, 140000, 0, 160000, 1, '2022-06-30 21:12:37', '2022-06-30 21:12:37'),
(52, 1, 'P000052', 'Dua banana', NULL, 125000, 0, 145000, 2, '2022-06-30 21:13:11', '2022-06-30 21:13:11'),
(53, 1, 'P000053', 'Lexy', NULL, 135000, 0, 150000, 1, '2022-06-30 21:13:34', '2022-06-30 21:13:34'),
(54, 1, 'P000054', 'Dc bailys', NULL, 130000, 0, 150000, 1, '2022-06-30 21:13:57', '2022-06-30 21:13:57'),
(55, 1, 'P000055', 'Crack v1 strawberry', NULL, 100000, 0, 115000, 1, '2022-06-30 21:14:23', '2022-06-30 21:14:23'),
(56, 1, 'P000056', 'Crack v1 keju', NULL, 100000, 0, 115000, 2, '2022-06-30 21:14:48', '2022-06-30 21:14:48'),
(57, 1, 'P000057', 'Crack v1 coklat', NULL, 100000, 0, 115000, 2, '2022-06-30 21:15:07', '2022-06-30 21:15:07'),
(58, 1, 'P000058', 'Roti bandara v1 banana', NULL, 110000, 0, 130000, 1, '2022-06-30 21:15:45', '2022-06-30 21:15:45'),
(59, 1, 'P000059', 'Roti bandara v2 cheese', NULL, 110000, 0, 130000, 2, '2022-06-30 21:16:10', '2022-06-30 21:16:10'),
(60, 1, 'P000060', 'Dua strawberry', NULL, 105000, 0, 125000, 2, '2022-06-30 21:16:55', '2022-06-30 21:16:55'),
(61, 1, 'P000061', 'Dua blueberry', NULL, 105000, 0, 125000, 1, '2022-06-30 21:17:21', '2022-06-30 21:17:21'),
(62, 1, 'P000062', 'Dua grape', NULL, 105000, 0, 125000, 2, '2022-06-30 21:18:58', '2022-06-30 21:18:58'),
(63, 1, 'P000063', 'Jigle puff', NULL, 105000, 0, 125000, 3, '2022-06-30 21:20:17', '2022-06-30 21:20:17'),
(64, 1, 'P000064', 'Banana licious', NULL, 110000, 0, 130000, 0, '2022-06-30 21:20:55', '2022-06-30 21:20:55'),
(65, 1, 'P000065', 'Nikmat', NULL, 115000, 0, 135000, 3, '2022-06-30 21:26:10', '2022-06-30 21:26:10'),
(66, 1, 'P000066', 'Cheese bar', NULL, 110000, 0, 130000, 3, '2022-06-30 21:27:21', '2022-06-30 21:27:21'),
(67, 1, 'P000067', 'Tiger wong', NULL, 115000, 0, 135000, 2, '2022-06-30 21:28:07', '2022-06-30 21:28:07'),
(68, 1, 'P000068', 'American fruty mangga', NULL, 105000, 0, 125000, 2, '2022-06-30 21:28:45', '2022-06-30 21:28:45'),
(69, 1, 'P000069', 'American fruty banana', NULL, 105000, 0, 125000, 2, '2022-06-30 21:29:08', '2022-06-30 21:29:08'),
(70, 1, 'P000070', 'Crush candy', NULL, 100000, 0, 120000, 1, '2022-06-30 21:29:32', '2022-06-30 21:29:32'),
(71, 1, 'P000071', 'Blondies strawberry', NULL, 110000, 0, 130000, 1, '2022-06-30 21:30:05', '2022-06-30 21:30:05'),
(72, 1, 'P000072', 'Energy drips', NULL, 105000, 0, 125000, 2, '2022-06-30 21:30:40', '2022-06-30 21:30:40'),
(73, 1, 'P000073', 'Slirp squese', NULL, 95000, 0, 115000, 1, '2022-06-30 21:31:08', '2022-06-30 21:31:08'),
(74, 1, 'P000074', 'Polar apple', NULL, 95000, 0, 115000, 2, '2022-06-30 21:31:39', '2022-06-30 21:31:39'),
(75, 1, 'P000075', 'Polar grape', NULL, 95000, 0, 115000, 2, '2022-06-30 21:31:54', '2022-06-30 21:31:54'),
(76, 1, 'P000076', 'Grape lyechee', NULL, 105000, 0, 125000, 1, '2022-06-30 21:32:23', '2022-06-30 21:32:23'),
(77, 1, 'P000077', 'Nyx lyeche peach', NULL, 105000, 0, 125000, 1, '2022-06-30 21:32:58', '2022-06-30 21:32:58'),
(78, 1, 'P000078', 'Nyx grape apple', NULL, 105000, 0, 125000, 1, '2022-06-30 21:33:16', '2022-06-30 21:33:16'),
(79, 1, 'P000079', 'Nyx grape peach', NULL, 105000, 0, 125000, 1, '2022-06-30 21:33:34', '2022-06-30 21:33:34'),
(80, 1, 'P000080', 'Nyx Manggo raspberry', NULL, 105000, 0, 125000, 2, '2022-06-30 21:35:08', '2022-06-30 21:35:08'),
(81, 1, 'P000081', 'Levica', NULL, 55000, 0, 75000, 14, '2022-06-30 21:37:39', '2022-06-30 21:37:39'),
(82, 1, 'P000082', 'Abidin', NULL, 100000, 0, 120000, 2, '2022-06-30 21:38:15', '2022-06-30 21:38:15'),
(83, 1, 'P000083', 'Kw anggur putih', NULL, 100000, 0, 120000, 1, '2022-06-30 21:38:45', '2022-06-30 21:38:45'),
(84, 1, 'P000084', 'Kw anggur merah', NULL, 100000, 0, 120000, 2, '2022-06-30 21:39:12', '2022-06-30 21:39:12'),
(85, 1, 'P000085', 'Khalifa Honeydew  series', NULL, 100000, 0, 120000, 1, '2022-06-30 21:39:42', '2022-06-30 21:39:42'),
(86, 1, 'P000086', 'Khalifa Manggo  series', NULL, 100000, 0, 120000, 3, '2022-06-30 21:40:14', '2022-06-30 21:40:14'),
(87, 1, 'P000087', 'Khalifa Chocoloky', NULL, 115000, 0, 130000, 3, '2022-06-30 21:41:07', '2022-06-30 21:41:07'),
(88, 1, 'P000088', 'Paradewa apple', NULL, 100000, 0, 120000, 1, '2022-06-30 21:41:36', '2022-06-30 21:41:36'),
(89, 1, 'P000089', 'Paradewa manggo', NULL, 100000, 0, 120000, 1, '2022-06-30 21:41:55', '2022-06-30 21:41:55'),
(90, 1, 'P000090', 'Paradewa chocoloki', NULL, 100000, 0, 120000, 3, '2022-06-30 21:42:14', '2022-06-30 21:42:14'),
(91, 1, 'P000091', 'Iceberg aplle peach', NULL, 100000, 0, 120000, 1, '2022-06-30 21:42:36', '2022-06-30 21:42:36'),
(92, 1, 'P000092', 'Iceberg blackdew', NULL, 100000, 0, 120000, 1, '2022-06-30 21:42:55', '2022-06-30 21:42:55'),
(93, 1, 'P000093', 'Iceberg manggo salsa', NULL, 100000, 0, 120000, 2, '2022-06-30 21:43:10', '2022-06-30 21:43:10'),
(94, 1, 'P000094', 'Iceberg citrus snow', NULL, 100000, 0, 120000, 1, '2022-06-30 21:43:24', '2022-06-30 21:43:24'),
(95, 1, 'P000095', 'Snack v1 strawberry', NULL, 100000, 0, 115000, 6, '2022-06-30 21:43:52', '2022-06-30 21:43:52'),
(96, 1, 'P000096', 'Snack v2 banana', NULL, 100000, 0, 115000, 1, '2022-06-30 21:44:22', '2022-06-30 21:44:22'),
(97, 1, 'P000097', 'Snack v3 oreo', NULL, 100000, 0, 115000, 2, '2022-06-30 21:44:41', '2022-06-30 21:44:41'),
(98, 1, 'P000098', 'Snack v4 tiramisu', NULL, 100000, 0, 115000, 0, '2022-06-30 21:44:55', '2022-06-30 21:44:55'),
(99, 1, 'P000099', 'Happy crunch v1 coklat', NULL, 105000, 0, 125000, 0, '2022-06-30 21:45:15', '2022-06-30 21:45:15'),
(100, 1, 'P000100', 'Happy crunch v2 white', NULL, 105000, 0, 125000, 2, '2022-06-30 21:45:33', '2022-06-30 21:45:33'),
(101, 1, 'P000101', 'Ghost rabbit', NULL, 100000, 0, 120000, 1, '2022-06-30 21:46:08', '2022-06-30 21:46:08'),
(102, 1, 'P000102', 'Candiman series', NULL, 100000, 0, 120000, 3, '2022-06-30 21:46:33', '2022-06-30 21:46:33'),
(103, 1, 'P000103', 'Luxxy cream', NULL, 110000, 0, 130000, 3, '2022-06-30 21:47:11', '2022-06-30 21:47:11'),
(104, 1, 'P000104', 'The hype', NULL, 110000, 0, 130000, 3, '2022-06-30 21:47:38', '2022-06-30 21:47:38'),
(105, 1, 'P000105', 'Oat drips v1 original oat', NULL, 110000, 0, 130000, 1, '2022-06-30 21:48:03', '2022-06-30 21:48:03'),
(106, 1, 'P000106', 'Oat drips v2 kacang ijo', NULL, 110000, 0, 130000, 0, '2022-06-30 21:48:17', '2022-06-30 21:48:17'),
(107, 1, 'P000107', 'Oat drips v3 banana', NULL, 110000, 0, 130000, 2, '2022-06-30 21:48:31', '2022-06-30 21:48:31'),
(108, 1, 'P000108', 'Oat drips v5 coklat legacy', NULL, 110000, 0, 130000, 2, '2022-06-30 21:48:48', '2022-06-30 21:48:48'),
(109, 1, 'P000109', 'Oat drips v6 strawberry oat', NULL, 110000, 0, 130000, 2, '2022-06-30 21:49:04', '2022-06-30 21:49:04'),
(110, 1, 'P000110', 'Whale dream v3 strawberry cheese', NULL, 115000, 0, 135000, 4, '2022-06-30 21:50:04', '2022-06-30 21:50:04'),
(111, 1, 'P000111', 'Sweet marble green', NULL, 100000, 0, 120000, 4, '2022-06-30 21:50:25', '2022-06-30 21:50:25'),
(112, 1, 'P000112', 'Sweet marble purpple', NULL, 100000, 0, 120000, 2, '2022-06-30 21:50:42', '2022-06-30 21:50:42'),
(113, 1, 'P000113', 'Sweet marble red', NULL, 100000, 0, 120000, 4, '2022-06-30 21:50:57', '2022-06-30 21:50:57'),
(114, 1, 'P000114', 'Juta juice blackdew', NULL, 100000, 0, 110000, 3, '2022-06-30 21:51:28', '2022-06-30 21:52:17'),
(115, 1, 'P000115', 'Juta juice mango', NULL, 75000, 0, 90000, 2, '2022-06-30 21:51:43', '2022-06-30 21:51:43'),
(116, 1, 'P000116', 'Juta juta yougurt', NULL, 75000, 0, 90000, 1, '2022-06-30 21:51:57', '2022-06-30 21:51:57'),
(117, 1, 'P000117', 'Juta sundae', NULL, 75000, 0, 90000, 2, '2022-06-30 21:52:49', '2022-06-30 21:52:49'),
(118, 1, 'P000118', 'Juta oat original', NULL, 75000, 0, 90000, 2, '2022-06-30 21:53:04', '2022-06-30 21:53:04'),
(119, 1, 'P000119', 'Juta oat banana', NULL, 75000, 0, 90000, 2, '2022-06-30 21:53:18', '2022-06-30 21:53:18'),
(120, 1, 'P000120', 'Juta oat strawberry', NULL, 75000, 0, 90000, 1, '2022-06-30 21:53:33', '2022-06-30 21:53:33'),
(121, 1, 'P000121', 'Munchies v1 strawberry', NULL, 105000, 0, 125000, 2, '2022-06-30 21:54:01', '2022-06-30 21:54:01'),
(122, 1, 'P000122', 'Munchies v2 grape', NULL, 105000, 0, 125000, 1, '2022-06-30 21:54:21', '2022-06-30 21:54:21'),
(123, 1, 'P000123', 'Munchies v3 mango', NULL, 105000, 0, 125000, 2, '2022-06-30 21:54:50', '2022-06-30 21:54:50'),
(124, 1, 'P000124', 'Bananarila', NULL, 115000, 0, 135000, 3, '2022-06-30 21:55:07', '2022-06-30 21:55:07'),
(125, 1, 'P000125', 'Bigbang', NULL, 110000, 0, 130000, 5, '2022-06-30 21:55:28', '2022-06-30 21:55:28'),
(126, 1, 'P000126', 'American dessert', NULL, 110000, 0, 130000, 5, '2022-06-30 21:55:51', '2022-06-30 21:55:51'),
(127, 1, 'P000127', 'Snowy vanilla', NULL, 100000, 0, 120000, 4, '2022-06-30 21:56:15', '2022-06-30 21:56:15'),
(128, 1, 'P000128', 'Thai tea', NULL, 115000, 0, 135000, 1, '2022-06-30 21:57:07', '2022-06-30 21:57:07'),
(129, 2, 'P000129', 'Snack 15 ml', NULL, 28000, 0, 45000, 12, '2022-06-30 21:58:26', '2022-06-30 21:58:26'),
(130, 2, 'P000130', 'Grape berry', NULL, 70000, 0, 85000, 3, '2022-06-30 21:59:29', '2022-06-30 21:59:29'),
(131, 2, 'P000131', 'Happy crunch', NULL, 80000, 0, 100000, 3, '2022-06-30 21:59:52', '2022-06-30 21:59:52'),
(132, 2, 'P000132', 'Crack v3 strawberry', NULL, 70000, 0, 85000, 1, '2022-06-30 22:00:30', '2022-06-30 22:00:30'),
(146, 2, 'P000133', 'Snack v1 strawberry Salt', NULL, 70000, 0, 85000, 2, '2022-06-30 22:19:51', '2022-06-30 22:25:18'),
(147, 2, 'P000147', 'Snack v2 banana Salt', NULL, 70000, 0, 85000, 2, '2022-06-30 22:26:10', '2022-06-30 22:26:10'),
(149, 2, 'P000148', 'Snack v3 oreo Salt', NULL, 70000, 0, 85000, 2, '2022-06-30 22:26:44', '2022-06-30 22:26:44'),
(150, 2, 'P000150', 'Snack v4 tiramisu Salt', NULL, 70000, 0, 85000, 1, '2022-06-30 22:27:25', '2022-06-30 22:27:25'),
(152, 2, 'P000151', 'Elo series', NULL, 55000, 0, 75000, 4, '2022-06-30 22:28:17', '2022-06-30 22:28:17'),
(153, 2, 'P000153', 'Glu  sirsak v1 Salt', NULL, 55000, 0, 75000, 2, '2022-06-30 22:28:45', '2022-06-30 22:28:45'),
(154, 2, 'P000154', 'Juice orama', NULL, 55000, 0, 75000, 2, '2022-06-30 22:29:39', '2022-06-30 22:29:39'),
(155, 2, 'P000155', 'Munchies strawberry', NULL, 70000, 0, 85000, 1, '2022-06-30 22:30:06', '2022-06-30 22:30:06'),
(156, 2, 'P000156', 'Munchies grape', NULL, 70000, 0, 85000, 0, '2022-06-30 22:30:20', '2022-06-30 22:30:20'),
(157, 2, 'P000157', 'Dua series salt', NULL, 55000, 0, 75000, 5, '2022-06-30 22:30:50', '2022-06-30 22:30:50'),
(158, 2, 'P000158', 'Candu series salt', NULL, 95000, 0, 120000, 6, '2022-06-30 22:31:21', '2022-06-30 22:31:21'),
(159, 2, 'P000159', 'Crush candy salt', NULL, 80000, 0, 100000, 2, '2022-06-30 22:31:46', '2022-06-30 22:31:46'),
(160, 2, 'P000160', 'Crouffle trouble', NULL, 80000, 0, 100000, 3, '2022-06-30 22:32:03', '2022-06-30 22:32:03'),
(161, 2, 'P000161', 'Muffin & sex salt', NULL, 80000, 0, 100000, 0, '2022-06-30 22:32:27', '2022-06-30 22:32:27'),
(162, 2, 'P000162', 'Savage series salt', NULL, 95000, 0, 120000, 4, '2022-06-30 22:32:52', '2022-06-30 22:32:52'),
(163, 2, 'P000163', 'Krusty juice series salt', NULL, 70000, 0, 85000, 7, '2022-06-30 22:33:16', '2022-06-30 22:33:16'),
(164, 2, 'P000164', 'Krusty crepes salt', NULL, 80000, 0, 100000, 8, '2022-06-30 22:33:33', '2022-06-30 22:33:33'),
(165, 2, 'P000165', 'Foom watermelon', NULL, 90000, 0, 110000, 2, '2022-06-30 22:33:50', '2022-06-30 22:33:50'),
(166, 2, 'P000166', 'Foom honeydew', NULL, 90000, 0, 110000, 5, '2022-06-30 22:34:09', '2022-06-30 22:34:09'),
(167, 2, 'P000167', 'Foom berry', NULL, 90000, 0, 110000, 4, '2022-06-30 22:34:24', '2022-06-30 22:34:24'),
(168, 2, 'P000168', 'Foom mango', NULL, 90000, 0, 110000, 5, '2022-06-30 22:34:38', '2022-06-30 22:34:38'),
(169, 2, 'P000169', 'Iceland grape', NULL, 95000, 0, 120000, 2, '2022-06-30 22:34:50', '2022-06-30 22:34:50'),
(170, 2, 'P000170', 'Iceland strawberry', NULL, 95000, 0, 120000, 4, '2022-06-30 22:35:03', '2022-06-30 22:35:03'),
(171, 2, 'P000171', 'Iceland mango', NULL, 95000, 0, 120000, 3, '2022-06-30 22:35:17', '2022-06-30 22:35:17'),
(172, 2, 'P000172', 'Aflo series', NULL, 35000, 0, 55000, 0, '2022-06-30 22:35:41', '2022-06-30 22:35:41'),
(173, 2, 'P000173', 'Kuy series', NULL, 35000, 0, 55000, 2, '2022-06-30 22:36:00', '2022-06-30 22:36:00'),
(174, 3, 'P000174', 'Capo Cigpet', NULL, 200000, 0, 230000, 1, '2022-06-30 22:36:35', '2022-06-30 22:36:35'),
(175, 3, 'P000175', 'Dovpo mvii', NULL, 320000, 0, 360000, 2, '2022-06-30 22:37:23', '2022-06-30 22:37:23'),
(176, 3, 'P000176', 'Thelema centaurus', NULL, 495000, 0, 540000, 2, '2022-06-30 22:37:48', '2022-06-30 22:37:48'),
(177, 3, 'P000177', 'Thelema double pink', NULL, 485000, 0, 550000, 0, '2022-06-30 22:38:09', '2022-06-30 22:38:09'),
(178, 3, 'P000178', 'Thelema solo', NULL, 395000, 0, 430000, 2, '2022-06-30 22:38:26', '2022-06-30 22:38:26'),
(179, 3, 'P000179', 'Thelema clear', NULL, 435000, 0, 470000, 1, '2022-06-30 22:38:45', '2022-06-30 22:38:45'),
(180, 3, 'P000180', 'Thelema carbon', NULL, 485000, 0, 500000, 0, '2022-06-30 22:39:21', '2022-06-30 22:39:21'),
(181, 3, 'P000181', 'R234', NULL, 450000, 0, 500000, 2, '2022-06-30 22:39:43', '2022-06-30 22:39:43'),
(182, 4, 'P000182', 'Caliburn ak2 pink sakura', NULL, 245000, 0, 270000, 3, '2022-06-30 22:40:30', '2022-06-30 22:40:30'),
(183, 4, 'P000183', 'Caliburn g2', NULL, 240000, 0, 270000, 2, '2022-06-30 22:40:56', '2022-06-30 22:40:56'),
(184, 4, 'P000184', 'Ursa baby', NULL, 170000, 0, 190000, 5, '2022-06-30 22:41:18', '2022-06-30 22:41:44'),
(185, 4, 'P000185', 'Ursa nano', NULL, 160000, 0, 185000, 0, '2022-06-30 22:42:00', '2022-06-30 22:42:00'),
(186, 4, 'P000186', 'Ursa nano pink', NULL, 190000, 0, 220000, 0, '2022-06-30 22:42:20', '2022-06-30 22:42:20'),
(187, 4, 'P000187', 'Gk2', NULL, 290000, 0, 320000, 4, '2022-06-30 22:52:03', '2022-06-30 22:52:03'),
(188, 4, 'P000188', 'Vinci royale', NULL, 225000, 0, 260000, 1, '2022-06-30 22:52:28', '2022-06-30 22:52:28'),
(189, 4, 'P000189', 'Vinci pod kit', NULL, 185000, 0, 230000, 2, '2022-06-30 22:52:44', '2022-06-30 22:52:44'),
(190, 4, 'P000190', 'Vinci q', NULL, 120000, 0, 140000, 3, '2022-06-30 22:53:01', '2022-06-30 22:53:01'),
(191, 4, 'P000191', 'Drag nano2', NULL, 245000, 0, 270000, 2, '2022-06-30 22:53:18', '2022-06-30 22:53:18'),
(192, 4, 'P000192', 'Caliburn a2', NULL, 185000, 0, 220000, 0, '2022-06-30 22:53:39', '2022-06-30 22:53:39'),
(193, 4, 'P000193', 'Easy', NULL, 115000, 0, 130000, 1, '2022-06-30 22:53:53', '2022-06-30 22:53:53'),
(194, 4, 'P000194', 'Oxva xlim v2', NULL, 245000, 0, 275000, 4, '2022-06-30 22:54:26', '2022-06-30 22:54:26'),
(195, 4, 'P000195', 'Kalmia', NULL, 245000, 0, 275000, 2, '2022-06-30 22:54:44', '2022-06-30 22:54:44'),
(196, 4, 'P000196', 'Apods', NULL, 225000, 0, 250000, 2, '2022-06-30 22:55:07', '2022-06-30 22:55:07'),
(197, 5, 'P000197', 'citadel clone', NULL, 80000, 0, 100000, 1, '2022-06-30 22:55:29', '2022-06-30 22:55:29'),
(198, 5, 'P000198', 'Reload x clone', NULL, 80000, 0, 100000, 1, '2022-06-30 22:55:45', '2022-06-30 22:55:45'),
(199, 5, 'P000199', 'Hadaly clone', NULL, 80000, 0, 100000, 2, '2022-06-30 22:56:09', '2022-06-30 22:56:09'),
(200, 5, 'P000200', 'Drop clone', NULL, 75000, 0, 90000, 2, '2022-06-30 22:56:23', '2022-06-30 22:56:23'),
(201, 5, 'P000201', 'Haku sxk', NULL, 210000, 0, 230000, 3, '2022-06-30 22:56:40', '2022-06-30 22:56:40'),
(202, 5, 'P000202', 'An rda sxk', NULL, 210000, 0, 250000, 1, '2022-06-30 22:57:11', '2022-06-30 22:57:11'),
(203, 5, 'P000203', 'Wasp nano authen rda', NULL, 95000, 0, 130000, 1, '2022-06-30 22:57:26', '2022-06-30 22:57:26'),
(204, 5, 'P000204', 'Drop authen', NULL, 280000, 0, 320000, 2, '2022-06-30 22:57:50', '2022-06-30 22:57:50'),
(205, 5, 'P000205', 'Wasp nano rta authen', NULL, 180000, 0, 220000, 1, '2022-06-30 22:58:15', '2022-06-30 22:58:15'),
(206, 5, 'P000206', 'Zeus rta clone', NULL, 95000, 0, 140000, 2, '2022-06-30 22:58:30', '2022-06-30 22:58:30'),
(207, 5, 'P000207', 'Gear rta clone', NULL, 110000, 0, 150000, 2, '2022-06-30 22:59:50', '2022-06-30 22:59:50'),
(208, 5, 'P000208', 'Nitrous clone', NULL, 80000, 0, 100000, 2, '2022-06-30 23:00:04', '2022-06-30 23:00:04'),
(209, 5, 'P000209', 'Reload s clone', NULL, 80000, 0, 100000, 5, '2022-06-30 23:00:18', '2022-06-30 23:00:18'),
(210, 6, 'P000210', 'easy cartridge', NULL, 23000, 0, 35000, 1, '2022-06-30 23:00:56', '2022-06-30 23:00:56'),
(211, 6, 'P000211', 'Cartridge vinci', NULL, 31000, 0, 40000, 9, '2022-06-30 23:01:27', '2022-06-30 23:01:27'),
(212, 6, 'P000212', 'Cartridge ursa', NULL, 31000, 0, 40000, 6, '2022-06-30 23:01:41', '2022-06-30 23:01:41'),
(213, 6, 'P000213', 'Cartridge smok solus', NULL, 30000, 0, 40000, 6, '2022-06-30 23:02:50', '2022-06-30 23:02:50'),
(214, 6, 'P000214', 'Coil caliburn g', NULL, 31000, 0, 40000, 8, '2022-06-30 23:03:11', '2022-06-30 23:03:11'),
(215, 6, 'P000215', 'Cartridge dragnano2', NULL, 32000, 0, 40000, 7, '2022-06-30 23:03:30', '2022-06-30 23:03:30'),
(216, 6, 'P000216', 'Cartridge caliburn A2', NULL, 31000, 0, 40000, 13, '2022-06-30 23:03:53', '2022-06-30 23:03:53'),
(217, 6, 'P000217', 'Baby alien', NULL, 5000, 0, 15000, 33, '2022-06-30 23:04:13', '2022-06-30 23:04:13'),
(218, 6, 'P000218', 'Full tm', NULL, 20000, 0, 35000, 22, '2022-06-30 23:04:25', '2022-06-30 23:04:25'),
(219, 6, 'P000219', 'Fushed', NULL, 10000, 0, 20000, 32, '2022-06-30 23:04:39', '2022-06-30 23:04:39'),
(220, 6, 'P000220', 'Coil vinci 0.6', NULL, 24000, 0, 35000, 4, '2022-06-30 23:05:05', '2022-06-30 23:05:05'),
(221, 6, 'P000221', 'Coil vinci 0.3', NULL, 24000, 0, 35000, 7, '2022-06-30 23:05:18', '2022-06-30 23:05:18'),
(222, 6, 'P000222', 'Coil vinci 0.45', NULL, 24000, 0, 35000, 4, '2022-06-30 23:05:31', '2022-06-30 23:05:31'),
(223, 6, 'P000223', 'Coil vinci 0.8', NULL, 24000, 0, 35000, 4, '2022-06-30 23:05:44', '2022-06-30 23:05:44'),
(224, 7, 'P000224', 'Batre vtc4', NULL, 25000, 0, 40000, 0, '2022-06-30 23:05:57', '2022-06-30 23:05:57'),
(225, 7, 'P000225', 'Charger 2 slot vapcell', NULL, 65000, 0, 80000, 0, '2022-06-30 23:06:40', '2022-06-30 23:06:40'),
(226, 7, 'P000226', 'Charger 4 slot vapcell', NULL, 75000, 0, 110000, 2, '2022-06-30 23:07:07', '2022-06-30 23:07:07'),
(227, 7, 'P000227', 'DRIPTIP KOMODO', NULL, 15000, 0, 30000, 2, '2022-06-30 23:07:22', '2022-06-30 23:07:22'),
(228, 7, 'P000228', 'Driptip komodo stainles', NULL, 20000, 0, 30000, 6, '2022-06-30 23:07:34', '2022-06-30 23:07:34'),
(229, 7, 'P000229', 'Driptip rewape', NULL, 10000, 0, 25000, 10, '2022-06-30 23:07:49', '2022-06-30 23:07:49'),
(230, 7, 'P000230', 'LANYARD', NULL, 8500, 0, 25000, 25, '2022-06-30 23:08:07', '2022-06-30 23:08:07'),
(231, 7, 'P000231', 'KAPAS HOLY', NULL, 20000, 0, 35000, 1, '2022-06-30 23:08:49', '2022-06-30 23:08:49'),
(232, 7, 'P000232', 'Kapas CATON BACON', NULL, 42000, 0, 55000, 5, '2022-06-30 23:09:05', '2022-06-30 23:09:05'),
(233, 7, 'P000233', 'Kapas holy mini', NULL, 10000, 0, 15000, 3, '2022-06-30 23:09:17', '2022-06-30 23:09:17'),
(234, 7, 'P000234', 'Pouch', NULL, 12000, 0, 20000, 9, '2022-06-30 23:09:35', '2022-06-30 23:09:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('S28ha1z4KpZkUCJZxXJ3Pk8x4SDjUY1mEPOGBbfG', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiZHdoS3pmUTF6SHlPQzh5VEtQVjdYYTBxVThDN3pydGE2RU8zalQyeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWsiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkZlNJeGZLZlNwVGNXTGNQbnhCVHhsdXZFOHR0bWhkRDluaGd6bUs4aWxsZ2N6SlIwMnFRUUsiO3M6MTI6ImlkX3Blbmp1YWxhbiI7aTozO3M6MTI6ImlkX3BlbWJlbGlhbiI7aTozO3M6MTE6ImlkX3N1cHBsaWVyIjtzOjE6IjEiO30=', 1656659375);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(10) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_nota` tinyint(4) NOT NULL,
  `diskon` smallint(6) NOT NULL DEFAULT 0,
  `path_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_kartu_member` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_perusahaan`, `alamat`, `telepon`, `tipe_nota`, `diskon`, `path_logo`, `path_kartu_member`, `created_at`, `updated_at`) VALUES
(1, 'Cavendish Panjer', 'Jln. Tukad Melangit No 27 Panjer', '', 1, 5, '/img/logo.png', '/img/member.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
(1, 'Supplier Cavendish', 'Bali', '08123456789', '2022-06-30 20:08:08', '2022-06-30 20:08:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `foto`, `level`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', NULL, '$2y$10$fSIxfKfSpTcWLcPnxBTxluvE8ttmhdD9nhgzmK8illgczJR02qQQK', '/img/user.jpg', 1, NULL, NULL, NULL, NULL, NULL, '2022-06-30 18:51:38', '2022-06-30 18:51:38'),
(2, 'Thugend', 'thugend@gmail.com', NULL, '$2y$10$rG0psKFJfQZtogGXo1WXX.xv21jzitWl.FwyFau.u06u4ovoM7Rly', '/img/user.jpg', 2, NULL, NULL, NULL, NULL, NULL, '2022-06-30 18:51:38', '2022-06-30 18:51:38');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `kategori_nama_kategori_unique` (`nama_kategori`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD UNIQUE KEY `member_kode_member_unique` (`kode_member`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  ADD PRIMARY KEY (`id_pembelian_detail`);

--
-- Indeks untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`id_penjualan_detail`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `produk_nama_produk_unique` (`nama_produk`),
  ADD UNIQUE KEY `produk_kode_produk_unique` (`kode_produk`),
  ADD KEY `produk_id_kategori_foreign` (`id_kategori`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  MODIFY `id_pembelian_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id_penjualan_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
