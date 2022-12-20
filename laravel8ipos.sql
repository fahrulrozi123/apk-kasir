-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2022 pada 21.55
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8ipos`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `access`
--

CREATE TABLE `access` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `kelola_akun` tinyint(1) NOT NULL,
  `kelola_barang` tinyint(1) NOT NULL,
  `transaksi` tinyint(1) NOT NULL,
  `kelola_laporan` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `access`
--

INSERT INTO `access` (`id`, `user`, `kelola_akun`, `kelola_barang`, `transaksi`, `kelola_laporan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, '2022-06-12 07:09:56', '2022-06-12 07:09:56'),
(2, 2, 0, 1, 1, 1, '2022-06-12 07:17:21', '2022-06-12 07:17:21'),
(3, 3, 0, 1, 1, 1, '2022-06-12 07:18:31', '2022-06-12 07:18:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activities`
--

INSERT INTO `activities` (`id`, `id_user`, `user`, `nama_kegiatan`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 2, 'Jago Software', 'pasok', 1, '2022-06-12 18:41:53', '2022-06-12 18:41:53'),
(2, 2, 'Jago Software', 'transaksi', 5, '2022-06-12 18:48:22', '2022-06-12 18:48:22'),
(3, 1, 'Nasrul Kurniawan', 'transaksi', 4, '2022-06-12 19:14:44', '2022-06-12 19:14:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `markets`
--

CREATE TABLE `markets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_toko` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `markets`
--

INSERT INTO `markets` (`id`, `nama_toko`, `no_telp`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Toko Jago Software', '085800084682', 'Jl. Jago Gang 5, Shopee', NULL, '2022-06-12 07:23:09');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_05_22_230351_create_product_table', 1),
(10, '2020_05_26_114219_create_supply_table', 1),
(11, '2020_05_26_123200_create_trigger_supply', 1),
(12, '2020_06_03_202123_create_supply_system', 1),
(13, '2020_06_03_202129_create_transaction_table', 1),
(14, '2020_06_10_225325_create_access_table', 1),
(15, '2020_06_12_133440_create_activity_table', 1),
(16, '2020_06_15_205927_create_market_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `berat_barang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merek` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stok` int(11) NOT NULL DEFAULT 15,
  `harga` bigint(20) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tersedia',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `kode_barang`, `jenis_barang`, `nama_barang`, `berat_barang`, `merek`, `stok`, `harga`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, '836673714', 'Konsumsi', 'Beng beng', '2 g', 'Beng beng', 25, 1000, 'Tersedia', '2022-06-12 18:28:36', '2022-06-12 18:28:36'),
(2, '188682463', 'Konsumsi', 'Beng beng stik', '2 g', 'Beng beng', 30, 500, 'Tersedia', '2022-06-12 18:29:33', '2022-06-12 18:29:33'),
(3, '937602587', 'Konsumsi', 'Better Roma', '2 g', 'Better Roma', 5, 500, 'Tersedia', '2022-06-12 18:30:28', '2022-06-12 19:14:44'),
(4, '671332776', 'Konsumsi', 'Sosis', '1 g', 'Sosis', 38, 1000, 'Tersedia', '2022-06-12 18:31:13', '2022-06-12 19:14:44'),
(5, '88190604', 'Konsumsi', 'Tango', '1 g', 'Tango', 21, 500, 'Tersedia', '2022-06-12 18:31:54', '2022-06-12 18:48:22'),
(6, '478837554', 'Konsumsi', 'Mie Gemes', '1 g', 'Mie Gemes', 27, 500, 'Tersedia', '2022-06-12 18:32:35', '2022-06-12 19:14:44'),
(7, '553838619', 'Konsumsi', 'Ale ale', NULL, 'Ale ale', 11, 1500, 'Tersedia', '2022-06-12 18:33:37', '2022-06-12 19:14:44'),
(8, '756088471', 'Konsumsi', 'Beras Cap SI', '1 kg', 'SI', 50, 10000, 'Tersedia', '2022-06-12 18:35:52', '2022-06-12 18:35:52'),
(9, '144003302', 'Konsumsi', 'Minyak Curah', '1 kg', 'Minyak Curah', 53, 15000, 'Tersedia', '2022-06-12 18:36:33', '2022-06-12 18:48:22'),
(10, '836410459', 'Produksi', 'GAS ELPIJI 3 KG', NULL, 'ELPIJI', 79, 14000, 'Tersedia', '2022-06-12 18:38:15', '2022-06-12 18:48:22'),
(11, '756552429', 'Produksi', 'GAS ELPIJI 12 KG', '12 kg', 'ELPIJI', 45, 75000, 'Tersedia', '2022-06-12 18:39:48', '2022-06-12 18:39:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplies`
--

CREATE TABLE `supplies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_beli` bigint(20) NOT NULL,
  `id_pemasok` int(11) NOT NULL,
  `pemasok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `supplies`
--

INSERT INTO `supplies` (`id`, `kode_barang`, `nama_barang`, `jumlah`, `harga_beli`, `id_pemasok`, `pemasok`, `created_at`, `updated_at`) VALUES
(1, '756552429', 'GAS ELPIJI 12 KG', 10, 75000, 2, 'Jago Software', '2022-06-12 18:41:53', '2022-06-12 18:41:53');

--
-- Trigger `supplies`
--
DELIMITER $$
CREATE TRIGGER `tg_pasok_barang` AFTER INSERT ON `supplies` FOR EACH ROW BEGIN
                UPDATE products SET stok = stok + NEW.jumlah WHERE kode_barang = NEW.kode_barang;
            END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supply_systems`
--

CREATE TABLE `supply_systems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `supply_systems`
--

INSERT INTO `supply_systems` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2022-06-12 07:10:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` bigint(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_barang` bigint(20) NOT NULL,
  `subtotal` bigint(20) NOT NULL,
  `diskon` int(11) NOT NULL,
  `total` bigint(20) NOT NULL,
  `bayar` bigint(20) NOT NULL,
  `kembali` bigint(20) NOT NULL,
  `id_kasir` int(11) NOT NULL,
  `kasir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `kode_transaksi`, `kode_barang`, `nama_barang`, `harga`, `jumlah`, `total_barang`, `subtotal`, `diskon`, `total`, `bayar`, `kembali`, `id_kasir`, `kasir`, `created_at`, `updated_at`) VALUES
(1, 'T13062022014653', '88190604', 'Tango', 500, 2, 1000, 55000, 5, 52250, 60000, 7750, 2, 'Jago Software', '2022-06-12 18:48:21', '2022-06-12 18:48:21'),
(2, 'T13062022014653', '144003302', 'Minyak Curah', 15000, 2, 30000, 55000, 5, 52250, 60000, 7750, 2, 'Jago Software', '2022-06-12 18:48:21', '2022-06-12 18:48:21'),
(3, 'T13062022014653', '671332776', 'Sosis', 1000, 1, 1000, 55000, 5, 52250, 60000, 7750, 2, 'Jago Software', '2022-06-12 18:48:21', '2022-06-12 18:48:21'),
(4, 'T13062022014653', '836410459', 'GAS ELPIJI 3 KG', 14000, 1, 14000, 55000, 5, 52250, 60000, 7750, 2, 'Jago Software', '2022-06-12 18:48:21', '2022-06-12 18:48:21'),
(5, 'T13062022014653', '553838619', 'Ale ale', 1500, 6, 9000, 55000, 5, 52250, 60000, 7750, 2, 'Jago Software', '2022-06-12 18:48:21', '2022-06-12 18:48:21'),
(6, 'T13062022021408', '671332776', 'Sosis', 1000, 4, 4000, 14000, 0, 14000, 20000, 6000, 1, 'Nasrul Kurniawan', '2022-06-12 19:14:44', '2022-06-12 19:14:44'),
(7, 'T13062022021408', '553838619', 'Ale ale', 1500, 3, 4500, 14000, 0, 14000, 20000, 6000, 1, 'Nasrul Kurniawan', '2022-06-12 19:14:44', '2022-06-12 19:14:44'),
(8, 'T13062022021408', '478837554', 'Mie Gemes', 500, 6, 3000, 14000, 0, 14000, 20000, 6000, 1, 'Nasrul Kurniawan', '2022-06-12 19:14:44', '2022-06-12 19:14:44'),
(9, 'T13062022021408', '937602587', 'Better Roma', 500, 5, 2500, 14000, 0, 14000, 20000, 6000, 1, 'Nasrul Kurniawan', '2022-06-12 19:14:44', '2022-06-12 19:14:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `role`, `foto`, `email`, `email_verified_at`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nasrul Kurniawan', 'admin', 'default.jpg', 'nasrulkurniawan@gmail.com', NULL, 'nasrul', '$2y$10$jCBZom.Azt13.Bnf1LpXj.nOsFEjyvxApFOA1aQKSEqXrwr.FGoGq', 'yRCPX771cH0BxiIRvJluhvunKvhQ7kb55M9NWknKaaSONXvRJXFBXwdZklw2', '2022-06-12 07:09:56', '2022-06-12 07:09:56'),
(2, 'Jago Software', 'kasir', 'logo.png', 'jagosoftware@shopee.co.id', NULL, 'jagosoftware', '$2y$10$yiUErsWX88KVm25RuyfRfuv5iCTz4zUho/CIfWBEGXS1OFHX0Ailu', 'JatBvQFOvJ32Bb86Y8nsWqDA5678FPWrOPf8MNzze0Wv1MAjaSaQdZOaS9Vb', '2022-06-12 07:17:21', '2022-06-12 07:17:32'),
(3, 'Kayla', 'kasir', 'logo.png', 'kayla@jagosoftware.co.id', NULL, 'kayla', '$2y$10$63uqkZJ9pSFDY7Fe.vZ6J.TYef4dsY4Ji7aS0wLohdi2z/LdETO7S', 'eQ3ssj8iMt8rK6KCgGaZG4pJW146m64vB6zhEQt311bDiyFu5mua5iSK8An1', '2022-06-12 07:18:31', '2022-06-12 07:18:31');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supply_systems`
--
ALTER TABLE `supply_systems`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `access`
--
ALTER TABLE `access`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `markets`
--
ALTER TABLE `markets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `supplies`
--
ALTER TABLE `supplies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `supply_systems`
--
ALTER TABLE `supply_systems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
