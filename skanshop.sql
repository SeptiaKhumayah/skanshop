-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Nov 2021 pada 10.12
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skanshop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `search` text NOT NULL,
  `kategori` text NOT NULL,
  `produk_lainnya` text NOT NULL,
  `posting` text NOT NULL,
  `foto` text NOT NULL,
  `nama_produk` text NOT NULL,
  `harga_produk` varchar(15) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `search`, `kategori`, `produk_lainnya`, `posting`, `foto`, `nama_produk`, `harga_produk`, `deskripsi`) VALUES
(1, '', '', '', '', 'ayu putri-6520 sale banner promo.jpg', '', '', ''),
(2, '', 'Fashion', '', '', 'ayu putri-6519 sale banner promo.jpg', '', '', ''),
(3, '', 'Makanan', '', '', 'ayu putri-6505 sale banner promo.png', 'logo', '190', 'gamudeng'),
(4, '', 'Fashion', '', '', 'ayu putri-6526 sale banner promo.jpg', 'promo', '7890', 'logo'),
(5, '', 'jasa', '', '', 'fathiyatul fitri-6830 freelance work from home.jpg', 'logo', '5000', 'keterangan'),
(6, '', 'elektronik', '', '', 'fathiyatul fitri-7008 cityscape background preview cf.png', 'bangunan', '70000', 'rumah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `foto` text DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `cpassword` text NOT NULL,
  `wa` varchar(15) NOT NULL,
  `fb` text DEFAULT NULL,
  `ig` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `foto`, `nama`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `email`, `password`, `cpassword`, `wa`, `fb`, `ig`) VALUES
(1, NULL, 'gantar', 'Laki-Laki', '0000-00-00', '', '', 'aku123', 'aku123', '', NULL, NULL),
(2, 'ayu putri-6505 sale banner promo.jpg', 'Septi ', 'Perempuan', '2021-10-12', 'arab', 'septiakhumayah@gmail.com', 'aku123', '', '3457765', 'http://localhost/skanshop/profil.php', 'http://localhost/skanshop/profil.php');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
