-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15 Apr 2019 pada 06.19
-- Versi Server: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epemilos`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` varchar(255) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
('1', '111', '111');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_calon`
--

CREATE TABLE `tb_calon` (
  `id` varchar(50) NOT NULL,
  `namacalon` varchar(50) NOT NULL,
  `visi` varchar(100) NOT NULL,
  `misi` varchar(200) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `totalsuara` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_calon`
--

INSERT INTO `tb_calon` (`id`, `namacalon`, `visi`, `misi`, `foto`, `totalsuara`) VALUES
('5c89f1da57cbc', 'Andrew Bobola', 'Visi Bobola', 'Misi Bobola', '5c89f1da57cbc.jpg', 0),
('5c89f1ed9990f', 'Taufiq Hasan', 'Visi Hasan', 'Misi Hasan', '5c89f1ed9990f.jpg', 0),
('5c89f23f731c7', 'Muh Mustafit', 'Visi Mus', 'Misi Mus', '5c89f23f731c7.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengawas`
--

CREATE TABLE `tb_pengawas` (
  `id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `namapengawas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengawas`
--

INSERT INTO `tb_pengawas` (`id`, `username`, `password`, `namapengawas`) VALUES
('5c91075cc2', 'pengawas', 'pengawas', 'Pengawas 1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id` varchar(255) NOT NULL,
  `nis` varchar(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `namasiswa` varchar(50) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `suara` varchar(255) NOT NULL,
  `absen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id`, `nis`, `password`, `namasiswa`, `kelas`, `suara`, `absen`) VALUES
('5c8a8b1972b56', '1', 'c4ca4238a0b923820dcc509a6f75849b', 'Saya', 'X RPL 1', '0', '0'),
('5c911ab03a39a', '2', 'c81e728d9d4c2f636f067f89cc14862c', '2', 'X RPL 1', '0', '5c911ab03a39a'),
('5c911ab9e1996', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '3', 'X RPL 1', '5c89f23f731c7', '5c91075cc2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tb_calon`
--
ALTER TABLE `tb_calon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengawas`
--
ALTER TABLE `tb_pengawas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suara` (`suara`,`absen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
