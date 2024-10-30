-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Okt 2024 pada 18.18
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id`, `foto`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'galeri1630509922.jpg', 'Kegiatan Belajar Mengajar', '2021-09-01 15:25:22', NULL),
(2, 'galeri1630510007.jpg', 'Lomba Mekanik Nasional', '2021-09-01 15:26:47', NULL),
(3, 'galeri1630510415.jpg', 'Acara Wisuda Angkatan 2012', '2021-09-01 15:33:35', NULL),
(4, 'galeri1630510443.jpg', 'Foto Bersama TOSM1', '2021-09-01 15:34:03', NULL),
(5, 'galeri1630510466.jpg', 'Berani Kotor Itu Baik', '2021-09-01 15:34:26', NULL),
(6, 'galeri1729786181.png', 'Febriatama Nuriza', '2024-10-24 16:09:41', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id`, `judul`, `keterangan`, `gambar`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'Pengumuman Tanggal 1 September Dibagi Raport', '<p>untuk para siswa/i harap hadir dalam cara pembagian raport, jangan lupa membawa orang tua atau wali masing-masing</p>', 'informasi1630510538.jpg', '2021-09-01 15:35:38', '2021-09-01 22:40:26', 2),
(2, 'PPDB Akan Dibuka Pada Tanggal 2 September 2021', '<p>Penerimaan Peserta Didik Baru akan dibuka pada tanggal 2 September 2021, bagi calon siswa yang akan mendaftar, silahkan datang ke sekolah pada tanggal yang telah ditentukan.</p>', 'informasi1630510959.jpg', '2021-09-01 15:42:39', NULL, 2),
(3, 'Persyaratan PPDB', '<p>Silahkan membawa persyaratan PPDB pada saat mendaftar<br />1. Alat tulis<br />2. Uang saku</p>', 'informasi1630511107.jpg', '2021-09-01 15:45:07', NULL, 2),
(4, 'PPDB 2024/2025 Dibuka', 'harap klik link ini www.google.com', 'informasi1729785997.png', '2024-10-24 16:06:37', NULL, 1232);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama`, `keterangan`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Olahraga', 'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when.', 'jurusan1630509461.jpg', '2021-09-01 15:17:41', '2024-10-24 23:26:38'),
(2, 'Membaca', 'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when.', 'jurusan1630509492.jpg', '2021-09-01 15:18:12', '2024-10-24 23:26:26'),
(3, 'Menghitung', 'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when.', 'jurusan1630509515.jpeg', '2021-09-01 15:18:35', '2024-10-24 23:25:24'),
(4, 'Menulis', 'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when.', 'jurusan1630509536.jpg', '2021-09-01 15:18:56', '2024-10-24 23:25:08'),
(5, 'Menggambar', 'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when.', 'jurusan1630509549.jpg', '2021-09-01 15:19:09', '2024-10-24 23:24:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `logo` varchar(50) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `tentang_sekolah` text NOT NULL,
  `foto_sekolah` varchar(50) NOT NULL,
  `google_maps` text NOT NULL,
  `nama_kepsek` varchar(50) NOT NULL,
  `foto_kepsek` varchar(50) NOT NULL,
  `sambutan_kepsek` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `nama`, `email`, `telepon`, `alamat`, `logo`, `favicon`, `tentang_sekolah`, `foto_sekolah`, `google_maps`, `nama_kepsek`, `foto_kepsek`, `sambutan_kepsek`, `created_at`, `updated_at`) VALUES
(1, 'PAUD Perintis 2', 'paudkoberprintis2@gmail.com', '08965532157', 'Jl. Raya Merdeka No. 17, Indonesia Raya Merdeka 45.\r\nKp. Gobang RT04/RW02 Kec. Ciambar Kab. Sukabumi', 'logo1729786855.jpg', 'favicon1729786855.jpg', '<p style=\"text-align: center;\"><strong>TENTANG</strong></p>\r\n<p style=\"text-align: center;\">Web sekolah ini didirikan pada tahun 2024 dengan penuh kegembiraan dan semangat yang membara. Web sekolah ini berlokasi di jalur internet dengan posisi yang sangat strategis.</p>\r\n<p style=\"text-align: center;\"> </p>\r\n<p style=\"text-align: center;\"><strong>Visi Misi</strong></p>\r\n<p style=\"text-align: center;\">Menjadikan media informasi seperti youtube sebagai sarana untuk berbagi ilmu dan pengalaman tanpa batasan tempat dan waktu, sehingga dapat dimanfaatkan dengan baik oleh para pencari ilmu.</p>\r\n<p style=\"text-align: center;\">dan menciptakan lingkungan belajar yang menyenangkan</p>', 'sekolah1729787625.jpg', 'https://www.google.com/maps/embed?pb=!4v1729786743098!6m8!1m7!1so1iGIuMz3ihx73m9mRAp_w!2m2!1d-6.849485100077766!2d106.76538144017!3f115.20371112764897!4f10.062000675728754!5f0.7820865974627469', 'Dzulfikar Nurfikri S.Ss', 'kepsek1630508274.png', 'Selamat datang para pencari inspirasi, semoga kalian sehat semua ya. Semangat terus dalam menuntut ilmu, jangan pernah bosan ya, kelak ilmu yang kamu pelajari hari ini, akan bermanfaat di masa yang akan datang, semoga hari-harimu selalu bahagia dan sejahtera', '2021-08-14 15:24:49', '2024-10-25 00:01:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('Super Admin','Admin') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `username`, `password`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Dzulfikar F', 'sa', 'e10adc3949ba59abbe56e057f20f883e', 'Super Admin', '2021-07-17 06:25:30', '2024-10-25 00:00:00'),
(2, 'Putri P', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Super Admin', '2021-07-17 06:25:30', NULL),
(1231, 'febri', 'admin', 'admin', 'Super Admin', '2024-10-24 10:37:59', NULL),
(1232, 'Febri', 'febri123', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2024-10-24 10:44:00', NULL),
(1233, 'Azzahra', 'azzahra', 'e10adc3949ba59abbe56e057f20f883e', 'Super Admin', '2024-10-28 05:35:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1234;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
