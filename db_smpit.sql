-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jun 2020 pada 09.31
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smpit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `formulir`
--

CREATE TABLE `formulir` (
  `id_mhs` int(11) NOT NULL,
  `nama_mhs` varchar(100) NOT NULL,
  `nisn_mhs` int(11) NOT NULL,
  `tempatlahir_mhs` varchar(100) NOT NULL,
  `tanggallahir_mhs` date NOT NULL,
  `agama_mhs` varchar(100) NOT NULL,
  `wn_mhs` varchar(100) NOT NULL,
  `jeniskelamin_mhs` varchar(100) NOT NULL,
  `id_prov` int(11) NOT NULL,
  `id_kabupaten` int(11) NOT NULL,
  `id_kecamatan` varchar(50) NOT NULL,
  `alamat_mhs` varchar(100) NOT NULL,
  `kodepos_mhs` int(11) NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `agama_ayah` varchar(100) NOT NULL,
  `pendidikan_ayah` varchar(100) NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `penghasilan_ayah` varchar(100) NOT NULL,
  `wn_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `agama_ibu` varchar(100) NOT NULL,
  `pendidikan_ibu` varchar(100) NOT NULL,
  `penghasilan_ibu` varchar(100) NOT NULL,
  `wn_ibu` varchar(100) NOT NULL,
  `nama_wali` varchar(100) NOT NULL,
  `agama_wali` varchar(100) NOT NULL,
  `pendidikan_wali` varchar(100) NOT NULL,
  `pekerjaan_wali` varchar(100) NOT NULL,
  `penghasilan_wali` varchar(100) NOT NULL,
  `wn_wali` varchar(100) NOT NULL,
  `status_pendaftaran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `formulir`
--

INSERT INTO `formulir` (`id_mhs`, `nama_mhs`, `nisn_mhs`, `tempatlahir_mhs`, `tanggallahir_mhs`, `agama_mhs`, `wn_mhs`, `jeniskelamin_mhs`, `id_prov`, `id_kabupaten`, `id_kecamatan`, `alamat_mhs`, `kodepos_mhs`, `nama_ayah`, `agama_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `wn_ayah`, `nama_ibu`, `agama_ibu`, `pendidikan_ibu`, `penghasilan_ibu`, `wn_ibu`, `nama_wali`, `agama_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `wn_wali`, `status_pendaftaran`) VALUES
(32, 'M Andika Riski', 1700018174, 'Merauke', '2020-05-11', 'Islam', 'WNI', 'Pria', 36, 50, '1', 'Jalur 7', 23232, 'Rustam', 'Islam', 'Strata 1', 'PNS', 'Rp 2.500.000,00 - Rp 5.000.000,00', 'WNI', 'Fitri Yuli astuti', 'Islam', 'SMP Sederajat', 'Rp 2.500.000,00 - Rp 5.000.000,00', 'WNI', 'Wira', 'Islam', 'Strata 1', 'PNS', 'Lebih dari Rp 5.000.000,00', 'WNI', 'Di Terima'),
(39, 'Zaki Bhaskara', 1700018173, 'Jakarta', '2020-06-07', 'Islam', 'WNI', 'Pria', 37, 52, '2', 'Jalan sawit', 12326, 'Bambang', 'Islam', 'Strata 1', 'eqwe', 'Rp 1.000.000,00 - Rp 2.500.000,00', 'WNI', 'Yuli', 'Islam', 'SMA Sederajat', 'Rp 1.000.000,00 - Rp 2.500.000,00', 'WNA', 'Wira', 'Islam', 'SMA Sederajat', 'PNS', 'Rp 2.500.000,00 - Rp 5.000.000,00', 'WNI', 'Tidak Di Terima'),
(40, 'Ummu habibah', 1700018190, 'Jogjakarta', '2020-06-09', 'Islam', 'WNI', 'Wanita', 37, 52, '2', 'Jlr 7', 34343, 'Bambang', 'Islam', 'SMA Sederajat', 'PNS', 'Rp 2.500.000,00 - Rp 5.000.000,00', 'WNI', 'Yuli', 'Islam', 'SMA Sederajat', 'Rp 2.500.000,00 - Rp 5.000.000,00', 'WNI', 'Wira', 'Islam', 'SMA Sederajat', 'PNS', 'Rp 2.500.000,00 - Rp 5.000.000,00', 'WNA', 'Di Terima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `periode`
--

CREATE TABLE `periode` (
  `id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `periode`
--

INSERT INTO `periode` (`id`, `status`) VALUES
(1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kabupaten`
--

CREATE TABLE `tbl_kabupaten` (
  `id_kabupaten` int(100) NOT NULL,
  `nama_kabupaten` varchar(50) NOT NULL,
  `id_prov` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kabupaten`
--

INSERT INTO `tbl_kabupaten` (`id_kabupaten`, `nama_kabupaten`, `id_prov`) VALUES
(50, 'Kab. Merauke', 36),
(51, 'Kab. Timika', 36),
(52, 'Kab. Sleman', 37),
(53, 'Kab. Bantul', 37);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kecamatan`
--

CREATE TABLE `tbl_kecamatan` (
  `id_kecamatan` int(100) NOT NULL,
  `nama_kecamatan` varchar(50) NOT NULL,
  `id_kabupaten` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kecamatan`
--

INSERT INTO `tbl_kecamatan` (`id_kecamatan`, `nama_kecamatan`, `id_kabupaten`) VALUES
(1, 'Tanah Miring', 50),
(2, 'Turi', 52),
(3, 'Tembagapura', 51),
(4, 'Sewon', 53);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_provinsi`
--

CREATE TABLE `tbl_provinsi` (
  `id_prov` int(100) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_provinsi`
--

INSERT INTO `tbl_provinsi` (`id_prov`, `nama_provinsi`) VALUES
(36, 'Papua'),
(37, 'DIY');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ui_homeuser`
--

CREATE TABLE `ui_homeuser` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `gelombang1` varchar(100) NOT NULL,
  `gelombang2` varchar(100) NOT NULL,
  `gelombang3` varchar(100) NOT NULL,
  `opengelombang1` date NOT NULL,
  `opengelombang2` date NOT NULL,
  `opengelombang3` date NOT NULL,
  `closegelombang1` date NOT NULL,
  `closegelombang2` date NOT NULL,
  `closegelombang3` date NOT NULL,
  `nama_cp` varchar(100) NOT NULL,
  `no_cp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ui_homeuser`
--

INSERT INTO `ui_homeuser` (`id`, `image`, `gelombang1`, `gelombang2`, `gelombang3`, `opengelombang1`, `opengelombang2`, `opengelombang3`, `closegelombang1`, `closegelombang2`, `closegelombang3`, `nama_cp`, `no_cp`) VALUES
(1, 'infopendaftaran.jpeg', 'Pendaftaran Gelombang I', 'Pendaftaran Gelombang II', 'Pendaftaran Gelombang III', '2020-05-04', '2020-05-21', '2020-05-22', '2020-05-23', '2020-05-26', '2020-05-28', 'Andika', '082399770016');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `image` varchar(150) NOT NULL,
  `password` varchar(500) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_create` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_create`) VALUES
(14, 'Andika Riski', 'dika@gmail.com', 'M-Adhika-Riski1.jpg', '$2y$10$m/XAR4sVS1YQK7PnHZWKe.ud7mNojyUL1NlHaJQe42dZQvieQDrgC', 1, 1, 1585638900);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(3, 1, 1),
(7, 2, 2),
(38, 1, 3),
(51, 9, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'pengaturan'),
(12, 'pendaftar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administator'),
(2, 'Member'),
(9, 'Pendaftar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `url` varchar(150) NOT NULL,
  `icon` varchar(150) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 12, 'Halaman Utama', 'pendaftar', 'fas fa-fw fa-tachometer-alt', 1),
(5, 3, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(7, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder-open', 1),
(8, 3, 'Sub Menu Management', 'menu/submenu', 'fas fa-fw fa-folder', 1),
(14, 3, 'Akses Admin', 'admin/role', 'fas fa-fw fa-sync-alt', 1),
(15, 3, 'Ganti Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(17, 12, 'Pendaftaran', 'pendaftar/formpendaftaran', 'fab fa-fw fas fa-edit', 1),
(18, 1, 'Data pendaftar', 'admin/datapendaftar', 'fas fa-fw fa-address-book', 1),
(19, 1, 'Data Akun', 'admin/dataakun', 'far fa-fw fa-user-circle', 1),
(21, 3, 'Periode Pendaftaran', 'admin/periodependaftaran', 'fas fa-fw fa-calendar-alt', 1),
(22, 12, 'Cek Status Pendaftaran', 'pendaftar/pengumumanPendaftaran', 'fas fa-fw fa-file-alt', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `formulir`
--
ALTER TABLE `formulir`
  ADD PRIMARY KEY (`id_mhs`),
  ADD KEY `id_kabupaten` (`id_kabupaten`),
  ADD KEY `id_kelurahan` (`id_kecamatan`),
  ADD KEY `id_prov` (`id_prov`,`id_kabupaten`) USING BTREE;

--
-- Indeks untuk tabel `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_kabupaten`
--
ALTER TABLE `tbl_kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`),
  ADD KEY `id_prov` (`id_prov`);

--
-- Indeks untuk tabel `tbl_kecamatan`
--
ALTER TABLE `tbl_kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`),
  ADD KEY `id_kabupaten` (`id_kabupaten`);

--
-- Indeks untuk tabel `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  ADD PRIMARY KEY (`id_prov`);

--
-- Indeks untuk tabel `ui_homeuser`
--
ALTER TABLE `ui_homeuser`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `formulir`
--
ALTER TABLE `formulir`
  MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `periode`
--
ALTER TABLE `periode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_kabupaten`
--
ALTER TABLE `tbl_kabupaten`
  MODIFY `id_kabupaten` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `tbl_kecamatan`
--
ALTER TABLE `tbl_kecamatan`
  MODIFY `id_kecamatan` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  MODIFY `id_prov` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `ui_homeuser`
--
ALTER TABLE `ui_homeuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `formulir`
--
ALTER TABLE `formulir`
  ADD CONSTRAINT `formulir_ibfk_1` FOREIGN KEY (`id_kabupaten`) REFERENCES `tbl_kabupaten` (`id_kabupaten`),
  ADD CONSTRAINT `formulir_ibfk_2` FOREIGN KEY (`id_prov`) REFERENCES `tbl_provinsi` (`id_prov`);

--
-- Ketidakleluasaan untuk tabel `tbl_kabupaten`
--
ALTER TABLE `tbl_kabupaten`
  ADD CONSTRAINT `tbl_kabupaten_ibfk_1` FOREIGN KEY (`id_prov`) REFERENCES `tbl_provinsi` (`id_prov`);

--
-- Ketidakleluasaan untuk tabel `tbl_kecamatan`
--
ALTER TABLE `tbl_kecamatan`
  ADD CONSTRAINT `tbl_kecamatan_ibfk_1` FOREIGN KEY (`id_kabupaten`) REFERENCES `tbl_kabupaten` (`id_kabupaten`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
