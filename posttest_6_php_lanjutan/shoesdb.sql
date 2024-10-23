-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Okt 2024 pada 18.55
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoesdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `suggestion_box`
--

CREATE TABLE `suggestion_box` (
  `id_pelanggan` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Pesan` varchar(255) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `suggestion_box`
--

INSERT INTO `suggestion_box` (`id_pelanggan`, `Email`, `Pesan`, `nama`, `foto`) VALUES
(14, 'kemalarsenio@gmail.com', 'deepclean', 'MUHAMMAD KHEMAL ARSENIO BOHARI', '16-10-24-PAS FOTO.jpg'),
(15, 'kemalarsenio@gmail.com', 'yg bersih bg', 'MUHAMMAD KHEMAL ARSENIO BOHARI', '16-10-24-pas foto almet.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(4, 'azmy', '$2y$10$CrNatqjqcPMwAOMUsRJKHuX2SBVQpm1zb7N0.DAid0j/fnL9Go7u2', 'User'),
(5, 'admin', '$2y$10$VCskaiyMip5EOvoK/9aLS.LSDVIRQfJyj1gvIMVHzdcHfOHEQpCAK', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `suggestion_box`
--
ALTER TABLE `suggestion_box`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `suggestion_box`
--
ALTER TABLE `suggestion_box`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
