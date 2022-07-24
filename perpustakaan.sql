-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8111
-- Waktu pembuatan: 22 Jul 2022 pada 06.27
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` char(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `nohp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `alamat`, `nohp`) VALUES
('1', 'Jovi', 'Bandung', '081313162548'),
('2', 'Nisa', 'Bandung', '081313162548'),
('3', 'Dera', 'bandung', '081313162548'),
('4', 'Julian', 'Bandung', '081313162548');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `kodeBuku` varchar(10) NOT NULL,
  `judulBuku` varchar(200) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `tahunTerbit` varchar(20) NOT NULL,
  `posisiRak` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`kodeBuku`, `judulBuku`, `penerbit`, `penulis`, `tahunTerbit`, `posisiRak`) VALUES
('KB001', 'Malin Kundang', 'Bentang Pustaka ', 'Andrea Hirata', '2005', 'KR001'),
('KB002', 'Kancil', 'Pustaka Sandro Jaya', 'Rahimsyah AR., MB.', '2011', 'KR001'),
('KB003', 'PHP', 'GAGAS MEDIA', 'RADITYA DIKA', '2006', 'KR002'),
('KB004', 'SEPATU DAHLAN', 'NOURA BOOKS', 'KHRISNA PABICHARA', '2012', 'KR003'),
('KB005', 'WhyPeople Warren Buffet', 'ELEX MEDIA KOMPUTINDO', 'Grimnamu', '2014', 'KR004');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` char(10) NOT NULL,
  `id_anggota` char(10) NOT NULL,
  `kodeBuku` char(10) NOT NULL,
  `tglpinjam` varchar(20) DEFAULT NULL,
  `tglkembali` varchar(20) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_anggota`, `kodeBuku`, `tglpinjam`, `tglkembali`, `keterangan`) VALUES
('001', '1', 'KB001', '22/07/2022', '05/08/2022', 'belum dikembalikan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kodeBuku`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`,`id_anggota`,`kodeBuku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
