-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Feb 2023 pada 10.07
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sepidatasiswa`
--

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `joinsiswa`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `joinsiswa` (
`Id` int(11)
,`Nis` varchar(50)
,`Foto` varchar(100)
,`Nama` varchar(50)
,`Angkatan` varchar(50)
,`Id_jurusan` int(11)
,`Jurusan` varchar(50)
,`Email` varchar(50)
,`No_hp` varchar(20)
,`Alamat` varchar(100)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `Id` int(11) NOT NULL,
  `Jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`Id`, `Jurusan`) VALUES
(1, 'RPL1'),
(7, 'TKJ'),
(9, 'TBSM'),
(10, 'TOI'),
(11, 'DKV');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `Id` int(11) NOT NULL,
  `Nis` varchar(50) NOT NULL,
  `Foto` varchar(100) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Angkatan` varchar(50) NOT NULL,
  `Id_jurusan` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `No_hp` varchar(20) NOT NULL,
  `Alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`Id`, `Nis`, `Foto`, `Nama`, `Angkatan`, `Id_jurusan`, `Email`, `No_hp`, `Alamat`) VALUES
(2, '211345', 'canon_600da2.jpg', 'Sepi Supriatna', '12', 7, 'sepi@gmail.com', '0874897563762', 'purbaratu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(3, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Struktur untuk view `joinsiswa`
--
DROP TABLE IF EXISTS `joinsiswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `joinsiswa`  AS SELECT `a`.`Id` AS `Id`, `a`.`Nis` AS `Nis`, `a`.`Foto` AS `Foto`, `a`.`Nama` AS `Nama`, `a`.`Angkatan` AS `Angkatan`, `a`.`Id_jurusan` AS `Id_jurusan`, `b`.`Jurusan` AS `Jurusan`, `a`.`Email` AS `Email`, `a`.`No_hp` AS `No_hp`, `a`.`Alamat` AS `Alamat` FROM (`siswa` `a` join `jurusan` `b` on(`a`.`Id_jurusan` = `b`.`Id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
