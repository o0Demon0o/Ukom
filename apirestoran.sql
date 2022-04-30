-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Nov 2021 pada 04.54
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apirestoran`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `details`
--

CREATE TABLE `details` (
  `iddetail` int(10) UNSIGNED NOT NULL,
  `idorder` int(11) NOT NULL,
  `idmenu` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `hargajual` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `details`
--

INSERT INTO `details` (`iddetail`, `idorder`, `idmenu`, `jumlah`, `hargajual`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 1, 20000, '2021-03-22 00:37:37', '2021-03-22 00:37:37'),
(2, 1, 11, 2, 25000, '2021-03-22 00:37:37', '2021-03-22 00:37:37'),
(3, 4, 13, 2, 3000, NULL, NULL),
(4, 4, 14, 3, 200, NULL, NULL),
(5, 4, 15, 4, 200, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `idkategori` int(10) UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`idkategori`, `kategori`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'tes kategori tes', 'keterangan yoi', '2021-02-09 02:56:10', '2021-03-01 04:56:37'),
(2, 'Amaliatown', 'Non laboriosam eos aut animi ducimus ad alias. Odio vitae natus aut facere. Delectus hic vel voluptatem nesciunt laudantium rerum excepturi. Omnis rerum sint ut repellendus quod.', '2021-02-09 03:03:30', '2021-02-09 03:03:30'),
(3, 'Lake Tamaratown', 'Omnis tempora explicabo inventore molestiae dolore. At alias facilis iure. Unde iure deleniti fugiat deleniti optio libero. Dicta modi minima possimus deserunt corrupti omnis consequuntur.', '2021-02-09 03:05:20', '2021-02-09 03:05:20'),
(4, 'New Felicity', 'Pariatur illum reprehenderit nemo dolorem temporibus minima eum. Commodi officiis vero veniam eaque aliquid qui vel.', '2021-02-09 03:05:20', '2021-02-09 03:05:20'),
(5, 'New Robb', 'Cupiditate necessitatibus et nihil aut quasi cum qui. Fuga beatae hic assumenda in quas aut quaerat. Libero provident quia ipsam nulla.', '2021-02-09 03:05:20', '2021-02-09 03:05:20'),
(6, 'South Clara', 'Reprehenderit voluptate dolorem ducimus aut. Eos molestiae repudiandae sint ad voluptatem repudiandae.', '2021-02-09 03:05:20', '2021-02-09 03:05:20'),
(7, 'North Tillmanmouth', 'A omnis sunt eum commodi nostrum blanditiis error. Ut quia dolores fuga culpa. Facilis rerum voluptate libero eum impedit esse esse.', '2021-02-09 03:05:20', '2021-02-09 03:05:20'),
(8, 'New Dorianbury', 'Accusantium occaecati non commodi et autem ut. Corporis amet omnis ipsa velit expedita quas. Veritatis possimus aut est quae eligendi nemo repudiandae.', '2021-02-09 03:05:20', '2021-02-09 03:05:20'),
(9, 'Elbertton', 'Placeat rerum nulla aut ea. Iste quasi molestiae ipsa rem sit placeat minima. Veniam fugit et mollitia est illum. Consequatur asperiores placeat in ea.', '2021-02-09 03:05:20', '2021-02-09 03:05:20'),
(10, 'Lake Chaim', 'Voluptates eveniet aut adipisci sit. Tempora optio eum non fuga. Dolorem quas nisi aut non. Deserunt facilis necessitatibus porro aut amet. Delectus quisquam vel laudantium quo aut quas officia aut.', '2021-02-09 03:05:20', '2021-02-09 03:05:20'),
(11, 'Billport', 'Amet et neque quam. Neque eveniet dolorem est dolores numquam. Sit est sit est adipisci.', '2021-02-09 03:05:20', '2021-02-09 03:05:20'),
(12, 'Bernadineberg', 'Amet animi sint doloribus. Nam tempora iste doloribus qui. Eaque adipisci et placeat quos perferendis et eos officia.', '2021-02-09 03:05:20', '2021-02-09 03:05:20'),
(15, 'kategorites', 'keterangan', '2021-02-15 05:49:20', '2021-02-15 05:49:20'),
(16, 'gf', 'gh', '2021-03-01 03:40:00', '2021-03-01 03:40:00'),
(17, 'ad', 'aa', '2021-03-01 03:41:07', '2021-03-01 03:41:07'),
(18, 'fg', 'fg', '2021-03-01 03:41:13', '2021-03-01 03:41:13'),
(19, 'es cendol', 'manggates', '2021-03-01 03:42:41', '2021-03-01 03:42:41'),
(20, 'tes', 'tes', '2021-03-01 03:45:51', '2021-03-01 03:45:51'),
(21, 'grf', 'grf', '2021-03-01 03:48:04', '2021-03-01 03:48:04'),
(22, 'dawet', 'r', '2021-03-01 03:52:52', '2021-03-01 03:52:52'),
(23, 'jajan', 'es', '2021-03-01 03:54:58', '2021-03-01 03:54:58'),
(24, 'sayur', 'rt', '2021-03-01 03:57:50', '2021-03-01 03:57:50'),
(25, 'kategori', 'es batu', '2021-03-01 03:59:51', '2021-03-01 03:59:51'),
(26, 'rfg', 'rfd', '2021-03-01 04:03:42', '2021-03-01 04:03:42'),
(41, 'buah segar', 'enak', '2021-03-08 05:42:27', '2021-03-08 05:42:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `idmenu` int(10) UNSIGNED NOT NULL,
  `idkategori` bigint(20) NOT NULL,
  `menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`idmenu`, `idkategori`, `menu`, `gambar`, `harga`, `created_at`, `updated_at`) VALUES
(9, 1, 'jeruk malang ', 'http://localhost:8000/upload/durian.jpg', 456006, '2021-03-08 01:32:16', '2021-03-08 06:52:05'),
(11, 1, 'jeruk malang enak manis jos', 'http://localhost:8000/upload/bakwan.jpg', 456006, '2021-03-08 04:12:07', '2021-03-08 04:12:07'),
(13, 24, 'pisang manis enak', 'http://localhost:8000/upload/sawo.jpg', 2500, '2021-03-08 05:42:05', '2021-03-08 05:42:05'),
(14, 1, 'Apel ', 'http://localhost:8000/upload/jelly.jpg', 2500, '2021-03-08 05:48:06', '2021-03-08 07:11:39'),
(15, 19, 'Sawo enak', 'http://localhost:8000/upload/dawet.jpg', 6000, '2021-03-08 07:12:06', '2021-03-08 07:12:34');

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
(5, '2021_02_09_014849_create_kategoris_table', 1),
(6, '2021_02_09_023111_create_pelanggans_table', 1),
(7, '2021_02_15_055748_create_menus_table', 2),
(8, '2021_02_18_015538_user', 3),
(9, '2021_03_15_001518_create_orders_table', 4),
(10, '2021_03_15_001720_create_details_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `idorder` int(10) UNSIGNED NOT NULL,
  `idpelanggan` int(11) NOT NULL,
  `tglorder` date NOT NULL,
  `total` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembali` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`idorder`, `idpelanggan`, `tglorder`, `total`, `bayar`, `kembali`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-03-15', 20000, 6000, 3000, 1, NULL, '2021-03-15 00:37:08'),
(2, 2, '2021-03-15', 40000, 45000, 5000, 1, NULL, '2021-03-15 03:05:50'),
(3, 3, '2021-03-10', 20000, 0, 0, 0, NULL, NULL),
(4, 5, '2021-03-22', 20000, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggans`
--

CREATE TABLE `pelanggans` (
  `idpelanggan` int(10) UNSIGNED NOT NULL,
  `pelanggan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pelanggans`
--

INSERT INTO `pelanggans` (`idpelanggan`, `pelanggan`, `alamat`, `telp`, `created_at`, `updated_at`) VALUES
(1, 'tes kategori', 'keterangan', '123', '2021-02-09 02:56:10', '2021-02-15 05:35:58'),
(2, 'Deja Ratke', '72087 Viva Hills Suite 281\nKarsonshire, CA 62603', '1-472-961-4809', '2021-02-09 03:03:30', '2021-02-09 03:03:30'),
(3, 'Hailey Roob', '52025 Klocko Drive Apt. 407\nWest Rosa, NY 15172', '956.248.6966', '2021-02-09 03:05:20', '2021-02-09 03:05:20'),
(4, 'Tania Lynch', '58464 Elliot Mountains Apt. 718\nVidaside, IL 17372-4068', '+15257388371', '2021-02-09 03:05:20', '2021-02-09 03:05:20'),
(5, 'Prof. Bart Gibson PhD', '95807 Goyette Land\nWeimannville, MT 01727', '386.752.8506', '2021-02-09 03:05:20', '2021-02-09 03:05:20'),
(6, 'Austen DuBuque', '9900 Roberto Circles Apt. 910\nPort Raoulland, NV 24640', '+17418205666', '2021-02-09 03:05:20', '2021-02-09 03:05:20'),
(7, 'Donnie Batz', '17151 Princess Expressway Apt. 643\nPort Florenceshire, MD 36963-6091', '+16348003420', '2021-02-09 03:05:20', '2021-02-09 03:05:20'),
(8, 'Darius Skiles', '8615 Runolfsdottir Prairie\nAbbottshire, MT 25786-3526', '626-221-2742', '2021-02-09 03:05:20', '2021-02-09 03:05:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `relasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `level`, `api_token`, `status`, `relasi`, `created_at`, `updated_at`) VALUES
(1, 'smkrevit@gmail.com', 'password', 'pelanggan', 'a3zgUOGQkcVqFKYc56zOPqzUIRnbgZ69pOGvZaYQ', 1, 'smkrevit@gmail.com', '2021-02-18 02:04:05', '2021-02-18 02:29:07'),
(2, 'email@gmail.com', '123456', 'pelanggan', 'dczOkHAgTcsWGRFiuyOBK7gWYrClOTQ1jC6x0vf1', 1, 'email@gmail.com', '2021-02-18 02:10:02', '2021-02-18 02:23:51'),
(3, 'admin@gmail.com', 'admin', 'admin', 'JAr9k6zdjyTJewUCugPE81RpIzfRB0sVYL2j0VDj', 1, 'back', '2021-03-22 02:11:37', '2021-03-29 00:54:56'),
(4, 'koki@gmail.com', 'koki', 'koki', 'aFrDIdGWxSUAOpnIfAc32Puhpu5WSE3XNt69aUh1', 1, 'back', '2021-03-22 02:12:29', '2021-03-22 03:38:31'),
(5, 'kasir@gmail.com', 'kasir', 'kasir', '123456', 1, 'back', '2021-03-22 02:12:46', '2021-03-22 03:39:02'),
(6, 'kasir2@gmail.com', '123', 'kasir', '123456', 0, 'back', '2021-03-22 02:48:58', '2021-03-22 03:07:53'),
(7, 'Admin21@gmail.com', '123', 'admin', '123456', 1, 'back', '2021-03-22 02:49:23', '2021-03-22 02:49:23'),
(8, 'admin@gmail.com', '$2y$10$/uYsf.ebhn0dsu25mrM5g.eM0OpyBURQfkX7NLbx8RcswF9XoxyIa', 'admin', '123456', 1, 'back', '2021-03-29 00:56:59', '2021-03-29 00:56:59'),
(9, 'kasir3@gmail.com', '$2y$10$/MiwEYNFCF6kmgyOiPAf/upYvJ6uLi5Kd/03bVeaCH4x0TetojcxO', 'kasir', 'kS9DFKveKYQEMQCqzffJEKoO5qlbBEy4LAebRF53', 1, 'back', '2021-03-29 00:57:44', '2021-03-29 01:19:16'),
(10, 'koki2@gmail.com', '$2y$10$igz3q8QKqo0YwDwuWRU2/ua9yWBXbe8Iay40UlwucqYn8kej1KdVW', 'koki', 'JjHjiFZUKQhpAWrT4GXyhR2kcy54FHvXoG22YFKN', 1, 'back', '2021-03-29 00:58:10', '2021-04-05 14:00:16'),
(11, 'admin1@gmail.com', '$2y$10$a7tF00rGLB17c5bH9tEtf.a/FHRfjIMdofzK2389VdzNeVgiL92LW', 'admin', '6vJSAThY6MSRPpTKCNU6W7jlNMi6uYrU6iTFBeNR', 1, 'back', '2021-03-29 01:02:08', '2021-04-05 14:00:29');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`iddetail`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`idmenu`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`idorder`);

--
-- Indeks untuk tabel `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD PRIMARY KEY (`idpelanggan`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `details`
--
ALTER TABLE `details`
  MODIFY `iddetail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `idkategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `idmenu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `idorder` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pelanggans`
--
ALTER TABLE `pelanggans`
  MODIFY `idpelanggan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
