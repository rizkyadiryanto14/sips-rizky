-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 16 Bulan Mei 2023 pada 03.00
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wiki`
--

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `bimbingan_dosen_v`
-- (Lihat di bawah untuk tampilan aktual)
--
DROP VIEW IF EXISTS `bimbingan_dosen_v`;
CREATE TABLE `bimbingan_dosen_v` (
`nip` varchar(30)
,`nama` varchar(100)
,`nomor_telepon` varchar(30)
,`email` varchar(100)
,`level` enum('1','2','4')
,`nim` varchar(50)
,`nama_mahasiswa` varchar(100)
,`nama_prodi` varchar(50)
,`mahasiswa_id` bigint(20)
,`id` bigint(20)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_judul`
--

DROP TABLE IF EXISTS `daftar_judul`;
CREATE TABLE `daftar_judul` (
  `id` int(11) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `judul_skripsi` varchar(500) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `abstrak` text NOT NULL,
  `tahun_lulus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `daftar_judul`
--

INSERT INTO `daftar_judul` (`id`, `nim`, `judul_skripsi`, `nama`, `abstrak`, `tahun_lulus`) VALUES
(9, '1801013044', 'Aplikasi Kamus Aksara Ende', 'Mimin', 'Aplikasi kamus aksara ende merupakan sebuah aplikas yang menerjemahkan aplikasi kamus', '2020'),
(10, '1801013056', 'Impelementasi Laravel Pada Sistem Informasi Akademik Berbasis Website', 'Ahmad', 'Aplikasi Siakaad', '2019'),
(11, '1701071061', 'Sistem Infromasi Manajemen Aset Berbasis Web Di Universitas Teknologi Sumbawa', 'M.Zayyan Musoffa', 'manajemen aset', '2021'),
(12, '1701071061', 'Sistem Infromasi Manajemen Aset Berbasis Web Di Universitas Teknologi Sumbawa', 'M.Zayyan Musoffa', 'fdhh', '2021'),
(13, '1701071061', 'sistem informasi pendaftaran skripsi berbasis web', 'Olvira Nanda', 'gcjj', '2023');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen_hasil`
--

DROP TABLE IF EXISTS `dokumen_hasil`;
CREATE TABLE `dokumen_hasil` (
  `id` bigint(20) NOT NULL,
  `mahasiswa_id` bigint(20) NOT NULL,
  `kegiatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

DROP TABLE IF EXISTS `dosen`;
CREATE TABLE `dosen` (
  `id` bigint(20) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `prodi_id` bigint(20) NOT NULL DEFAULT 1,
  `nama` varchar(100) NOT NULL,
  `nomor_telepon` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `level` enum('1','2','4') NOT NULL DEFAULT '2' COMMENT '1 = admin, 2 = dosen, 4 = kaprodi',
  `signature` varchar(30) DEFAULT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id`, `nip`, `prodi_id`, `nama`, `nomor_telepon`, `email`, `level`, `signature`, `password`) VALUES
(1, '20201011', 1, 'Azhari Ali, M.Kom.', '00852254168', 'dosen1@gmail.com', '2', 'signature-66a7e018a6.png', 'dosen12345'),
(2, '20201015', 1, 'Superadmin', '082330538265', 'admin@admin.com', '1', NULL, 'percobaan'),
(4, '20201017', 1, 'Ambarwati S. Kom', '08215674535786', 'ambarrannazwa@gmail.com', '2', NULL, 'dosen12345'),
(7, '20201018', 1, 'Binaga Sinaga, M.H', '0872928234', 'binaga@gmail.com', '2', NULL, 'percobaan2'),
(8, '20201019', 1, 'Nina Sulistyo, M.M', '083652776522', 'nina@gmail.com', '2', NULL, 'dosen12345'),
(9, '20201020', 1, 'Ateng, M.Ag', '083876329987', 'ateng@gmail.com', '2', NULL, 'dosen12345'),
(10, '2011210', 1, 'Rizky Adi Ryanto', '085333411680', 'rizky14082000@gmail.com', '2', NULL, 'Rizky140820'),
(12, '2001013006', 1, 'wardatuljannah', '085333411680', 'wardatuljannah0707@gmail.com', '4', NULL, '12345678'),
(13, '123456789000', 1, 'rizky', '085333411680', 'rizky@gmail.com', '4', NULL, '12345'),
(14, '1901013055', 1, 'kaprodi', '08324832432', 'kaprodi@gmail.com', '4', NULL, 'kaprodi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_sender`
--

DROP TABLE IF EXISTS `email_sender`;
CREATE TABLE `email_sender` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `email_sender`
--

INSERT INTO `email_sender` (`id`, `email`, `password`, `smtp_port`, `smtp_host`) VALUES
(1, 'rizky@jaksparohserver.my.id', 'Rizky201121@', '465', 'ssl://mail.jaksparohserver.my.id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakultas`
--

DROP TABLE IF EXISTS `fakultas`;
CREATE TABLE `fakultas` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `dekan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fakultas`
--

INSERT INTO `fakultas` (`id`, `nama`, `dekan`) VALUES
(2, 'Fakultas Rekayasa Sistem', 'Mietra Anggara'),
(8, 'Fakultas Teknik', 'Daniel Carvajal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari`
--

DROP TABLE IF EXISTS `hari`;
CREATE TABLE `hari` (
  `id` int(11) NOT NULL,
  `nama_hari` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hari`
--

INSERT INTO `hari` (`id`, `nama_hari`) VALUES
(1, 'Senin'),
(2, 'Selasa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_kegiatan`
--

DROP TABLE IF EXISTS `hasil_kegiatan`;
CREATE TABLE `hasil_kegiatan` (
  `id` bigint(20) NOT NULL,
  `mahasiswa_id` bigint(20) NOT NULL,
  `file` varchar(50) NOT NULL,
  `kegiatan` varchar(5000) DEFAULT NULL,
  `file_kegiatan` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `hasil_kegiatan_v`
-- (Lihat di bawah untuk tampilan aktual)
--
DROP VIEW IF EXISTS `hasil_kegiatan_v`;
CREATE TABLE `hasil_kegiatan_v` (
`mahasiswa_id` bigint(20)
,`id` bigint(20)
,`file` varchar(50)
,`kegiatan` varchar(5000)
,`file_kegiatan` varchar(50)
,`nim` varchar(50)
,`nama_mahasiswa` varchar(100)
,`nama_prodi` varchar(50)
,`status` varchar(50)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_penelitian`
--

DROP TABLE IF EXISTS `hasil_penelitian`;
CREATE TABLE `hasil_penelitian` (
  `id` bigint(20) NOT NULL,
  `penelitian_id` bigint(20) NOT NULL,
  `berita_acara` varchar(50) NOT NULL,
  `masukan` varchar(50) NOT NULL,
  `status` enum('1','2') NOT NULL COMMENT '1 = lulus, 2 = tidak lulus'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_seminar`
--

DROP TABLE IF EXISTS `hasil_seminar`;
CREATE TABLE `hasil_seminar` (
  `id` bigint(20) NOT NULL,
  `seminar_id` bigint(20) NOT NULL,
  `berita_acara` text NOT NULL,
  `masukan` text NOT NULL COMMENT 'komentar pdf (pembimbing, penguji, catatan)',
  `status` enum('1','2','3') NOT NULL COMMENT '1 = lanjut, 2 = lanjut (perbaikan), 3 = ditolak'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil_seminar`
--

INSERT INTO `hasil_seminar` (`id`, `seminar_id`, `berita_acara`, `masukan`, `status`) VALUES
(39, 40, '', '', '1'),
(45, 46, '', '', '1'),
(46, 47, '', '', '1'),
(48, 49, '', '', '3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_template`
--

DROP TABLE IF EXISTS `home_template`;
CREATE TABLE `home_template` (
  `id` int(11) NOT NULL,
  `carousel_bg1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carousel_subtitle1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carousel_title1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carousel_description1` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carousel_btn_href1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carousel_btn_text1` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carousel_bg2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carousel_subtitle2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `carousel_title2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `carousel_description2` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `carousel_btn_href2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `carousel_btn_text2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `carousel_bg3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `carousel_subtitle3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `carousel_title3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `carousel_description3` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `carousel_btn_href3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `carousel_btn_text3` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `timeline` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `panduanskripsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tentang_kami_subtitle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tentang_kami_isi` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `social_description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_fb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_twitter` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kontak_subtitle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `home_template`
--

INSERT INTO `home_template` (`id`, `carousel_bg1`, `carousel_subtitle1`, `carousel_title1`, `carousel_description1`, `carousel_btn_href1`, `carousel_btn_text1`, `carousel_bg2`, `carousel_subtitle2`, `carousel_title2`, `carousel_description2`, `carousel_btn_href2`, `carousel_btn_text2`, `carousel_bg3`, `carousel_subtitle3`, `carousel_title3`, `carousel_description3`, `carousel_btn_href3`, `carousel_btn_text3`, `timeline`, `panduanskripsi`, `tentang_kami_subtitle`, `tentang_kami_isi`, `social_description`, `link_fb`, `link_twitter`, `alamat`, `phone`, `email`, `kontak_subtitle`, `page_title`) VALUES
(1, 'download3.jpeg', '', 'SIPS', 'Sistem Informasi Pelayanan Skripsi Program Studi Informatika Fakultas Rekayasa Sistem\r\n', 'http://localhost/skripsites/home/registrasi', 'Mulai', 'download4.jpeg', '', 'Pendaftaran Skripsi', 'Universitas Teknologi Sumbawa', 'http://localhost/skripsites/home/registrasi', 'Mulai', 'uts3.jpg', '', 'Penjadwalan Seminar dan Sidang Skripsi.', '', 'http://localhost/skripsites/home/registrasi', 'Mulai', '1.png', 'Pengembangan produk bioindustri.pdf', 'Aplikasi Monitoring Tugas Akhir Mahasiswa UTS Sumbawa', 'Tujuan dari sistem ini adalah sebagai media pencatat, memonitoring dan penjadwalan tugas akhir. Media pencatat yaitu untuk mencatat setiap mahasiswa yang sedang mengerjakan tugas akhir. Memonitoring dalam hal ini diperuntukan untuk dosen agar dosen pembimbing dapat mengawasi mahasiswa bimbingannya agar mengetahui dan mengawasi perkembangan mahasiswa bimbingannya.', '', '', '', 'Jl. Raya Olat Maras Batu Alang, Pernek, Kec. Moyo Hulu, Kabupaten Sumbawa, Nusa Tenggara Bar. 84371', '0218728291', 'uts@uts.ac.id', '', 'Sistem Monitoring Skripsi dan Tugas Akhir UTS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_dosen`
--

DROP TABLE IF EXISTS `jadwal_dosen`;
CREATE TABLE `jadwal_dosen` (
  `id` int(11) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `jadwal` datetime NOT NULL,
  `ruangan` varchar(50) NOT NULL,
  `nama_mk` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam`
--

DROP TABLE IF EXISTS `jam`;
CREATE TABLE `jam` (
  `id` int(11) NOT NULL,
  `range_jam` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsultasi`
--

DROP TABLE IF EXISTS `konsultasi`;
CREATE TABLE `konsultasi` (
  `id` bigint(20) NOT NULL,
  `proposal_mahasiswa_id` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `isi` text NOT NULL,
  `bukti` text NOT NULL,
  `sk_tim` varchar(50) DEFAULT NULL,
  `persetujuan_pembimbing` enum('1','0') NOT NULL DEFAULT '0' COMMENT '1 = true, 0 = false',
  `persetujuan_kaprodi` enum('1','0') NOT NULL DEFAULT '0' COMMENT '1 = true, 0 = false',
  `komentar_pembimbing` text DEFAULT NULL,
  `komentar_kaprodi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konsultasi`
--

INSERT INTO `konsultasi` (`id`, `proposal_mahasiswa_id`, `tanggal`, `jam`, `isi`, `bukti`, `sk_tim`, `persetujuan_pembimbing`, `persetujuan_kaprodi`, `komentar_pembimbing`, `komentar_kaprodi`) VALUES
(10, 33, '2022-04-26', '11:00:00', 'Bimbingan BAB 3 Metodologi Penelitian', '20220426060102.doc', NULL, '1', '1', NULL, NULL),
(11, 33, '2022-04-26', '11:05:00', 'Bimbingan Abstrak dan Latar Belakang', '20220426060601.doc', NULL, '1', '1', NULL, NULL),
(12, 32, '2022-04-26', '11:42:00', 'Bimbingan BAB 1 - BAB 2', '20220426064325.doc', NULL, '1', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuota_bimbingan`
--

DROP TABLE IF EXISTS `kuota_bimbingan`;
CREATE TABLE `kuota_bimbingan` (
  `id` int(11) NOT NULL,
  `nilai` varchar(50) NOT NULL DEFAULT '8'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kuota_bimbingan`
--

INSERT INTO `kuota_bimbingan` (`id`, `nilai`) VALUES
(2, '10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE `mahasiswa` (
  `id` bigint(20) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `prodi_id` bigint(20) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat_orang_tua` text NOT NULL,
  `nomor_telepon_orang_tua` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `nomor_telepon` varchar(30) NOT NULL,
  `nomor_telepon_orang_dekat` varchar(30) NOT NULL,
  `ipk` text NOT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `password` text NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0' COMMENT '1 = aktif, 0 = nonaktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `prodi_id`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `email`, `alamat_orang_tua`, `nomor_telepon_orang_tua`, `alamat`, `nomor_telepon`, `nomor_telepon_orang_dekat`, `ipk`, `foto`, `password`, `status`) VALUES
(25, '2001013025', 'osama', 2, 'laki-laki', 'taliwang', '2000-12-08', 'rizky14082000@gmail.com', 'taliwang', '34234234', 'taliwang', '32423423423432', '234234', '3.0', '20230107091229.png', '$2y$10$gN8SLxgM8YztbYdDpIgbTO7sMXSHF9BV3Er1j8km7CZattKczNhxq', '1'),
(27, '1901013115', 'olvira nanda', 2, 'perempuan', 'utan', '2001-04-18', 'olvirananda@gmail.com', 'Desa Orong Bawa , Kecamatan Utan', '085333589553', 'Desa Orong Bawa , Kecamatan Utan', '085333589553', '085333589553', '3.50', '20230108052741.png', '$2y$10$qeccTyV0g1Ks8zZrC9d9y.lJQTv5QF6Jd3v3qmuxuc7QT2G1Helqy', '1'),
(28, '1901013042', 'nurul azmi', 2, 'perempuan', 'utan', '2001-08-02', 'nr.azmi02@gmail.com', 'pamulung', '085333356251', 'pamulung', '085333356251', '085333356251', '3.50', NULL, '$2y$10$I8Iw9Vv6MYTO/jJKVF6xo..BkidnBaNrXzRQVzztIKzlprgV1.f76', '1'),
(29, '1901013101', 'meri anjarsari', 2, 'perempuan', 'lape', '2001-01-01', 'merianjarsari@gmail.com', 'lape', '081233456789', 'lape', '081233456789', '081233456789', '3.50', NULL, '$2y$10$9Wx5HpxoqKDJIeELqbjvduFssDil/sozeyn2WsX9IwzUehqxmqcCW', '1'),
(30, '1901013244', 'makdum ibrahim', 2, 'perempuan', 'sumbawa', '2001-01-02', 'makdumibrahim@gmail.com', 'pamulung', '081909234567', 'pamulung', '081909234567', '081909234567', '3.50', NULL, '$2y$10$FrO5wVzlls/toaAbs2y2/ez3IwKCQrRIpVYJBzbw4L6z1th8yfMna', '1'),
(31, '1901013001', 'Maulana Helmi Akbar', 2, 'laki-laki', 'Tarano', '2001-08-17', 'helmi@gmail.com', 'Tarano', '082156789998', 'Tarano', '0853334678901', '082156789998', '3.00', NULL, '$2y$10$rLUwej7jEzI6HqTSm7W8/egi42XVLRJwIWvv5wpR7FMHJDKCwzhZ2', '1'),
(32, '1901013002', 'warda wulandari', 2, 'perempuan', 'seteluk', '2002-01-01', 'warda@gmail.com', 'seteluk', '0813335895553', 'seteluk', '0813335895553', '0813335895553', '3.50', NULL, '$2y$10$aR1ShZ5r0K7R5FzpnvXYJ.rga89IGBh57q3lgOdjkCVP4lIB2mLo.', '1'),
(33, '1901013003', 'Tri Reski', 2, 'perempuan', 'Sumbawa', '2001-01-09', 'tris@gmail.com', 'Sumbawa besar', '085335476221', 'Baiti jannati', '085335476221', '085335476221', '3.15', NULL, '$2y$10$G0ee6waHCkEBxQM.KUQ2N.WwyCj/lzCXhJrH4c1Y11C1Q40nXVMlm', '1'),
(34, '1901013005', 'Erma Suryani', 2, 'perempuan', 'Lombok', '2001-11-09', 'ermaa@gmail.com', 'Labangka', '081265778231', 'Empang', '087668992331', '08766754332', '3.22', NULL, '$2y$10$Gjji065/vtVIRryFIS4o1utJ088jWiuderrt9oYIhrO0jwGLbLy0C', '1'),
(35, '1901013006', 'Abi Aulia', 2, 'perempuan', 'Sumbawa', '2000-01-13', 'abiaulia@gmail.com', 'Lape', '082331445672', 'Lape', '087335678233', '087668997332', '3.87', NULL, '$2y$10$7j.mxHlC36j3RRP34SRA9uz2mXZQrp0xx169V7RN8qBbHakfc9NHa', '1'),
(36, '1901013008', 'Asri Ramdani', 2, 'perempuan', 'boak', '2001-11-09', 'asri02@gmail.com', '08766233511', '0876663554221', 'Boak', '087889765332', '082117665998', '3.20', NULL, '$2y$10$QlzAotCCMYl0O9hKhxUz0O3dsTwjoqE9JCz.RsISdZzQENBp34jBa', '0'),
(37, '1901013043', 'mahasiswa1', 2, 'laki-laki', 'bima', '2023-01-02', 'adiryantorizky140820@gmail.com', 'fdsf', '23423', 'bima', '3423423', '23423', '4.0', '20230109074601.png', '$2y$10$GnW0htBtD1lCOXWZ.gY4IuToZyofypf65MZvKbnO93RleiaDdW42i', '0'),
(38, '1901013025', 'ewrew', 2, 'laki-laki', 'wqeqw', '2023-01-01', 'adiryantorizky140820@gmail.com', 'sadas', '34234', 'sdafdsa', '23423423', '23423', '4', NULL, '$2y$10$1/XrDfwvISPnNQzTdkBjBONwtKqv/bJdG9gPwrtnvy9XEF4Apsdna', '0'),
(39, '1901013044', 'Rizky', 2, 'laki-laki', 'sdas', '2000-02-01', 'rizky14082000@gmail.com', 'saasd', 'asdas', 'asdsa', '312312', 'sadsa', '4.0', '20230113021850.png', '$2y$10$KDeW9jUZTrl7TjRGEAbTE.J8iYcs33wKl0ABSdKoMgMaCZ6/4LJYG', '1'),
(40, '2001013026', 'osama', 2, 'laki-laki', 'Taliwang ', '2000-01-17', 'osama@gmail.com', 'taliwang', '085333411680', 'Taliwang ', '085333411680', '085333411680', '4.0', '20230116045515.png', '$2y$10$HW0QfBdMy0WXbBucwqQHpucmD7cM5OAhO4RpU7RZuQ9bhCjQpLBZe', '1'),
(41, '1901013050', 'Wiki Nasmansyah', 2, 'laki-laki', 'Batam', '2000-12-03', 'wikinasmansyah@gmail.com', 'Desa Lanta Kecematan Lambu', '085345627645', 'kos belakang akper', '085238746750', '083216745890', '3.49', '20230408080832.png', '$2y$10$KvSUSVLlH0gWewxCpUrZcO.84NZukAOz40MQFynPIn/tlElsMzHmi', '1');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `mahasiswa_v`
-- (Lihat di bawah untuk tampilan aktual)
--
DROP VIEW IF EXISTS `mahasiswa_v`;
CREATE TABLE `mahasiswa_v` (
`nama_prodi` varchar(50)
,`id` bigint(20)
,`nim` varchar(50)
,`nama` varchar(100)
,`prodi_id` bigint(20)
,`jenis_kelamin` enum('laki-laki','perempuan')
,`tempat_lahir` varchar(20)
,`tanggal_lahir` date
,`email` varchar(100)
,`alamat_orang_tua` text
,`nomor_telepon_orang_tua` varchar(30)
,`alamat` text
,`nomor_telepon` varchar(30)
,`nomor_telepon_orang_dekat` varchar(30)
,`ipk` text
,`foto` varchar(50)
,`password` text
,`status` enum('1','0')
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penelitian`
--

DROP TABLE IF EXISTS `penelitian`;
CREATE TABLE `penelitian` (
  `id` bigint(20) NOT NULL,
  `judul_penelitian` varchar(100) DEFAULT NULL,
  `proposal_mahasiswa_id` bigint(20) NOT NULL,
  `pembimbing_id` bigint(20) NOT NULL,
  `penguji_id` bigint(20) NOT NULL,
  `bukti` text NOT NULL,
  `persetujuan_pembimbing` enum('1','2') NOT NULL COMMENT '1 = true, 2 = false',
  `persetujuan_penguji` enum('1','2') NOT NULL COMMENT '1 = true, 2 = false',
  `komentar_pembimbing` text DEFAULT NULL,
  `komentar_penguji` text DEFAULT NULL,
  `sk_tim` varchar(50) DEFAULT NULL,
  `file_seminar` varchar(50) DEFAULT NULL,
  `bukti_konsultasi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `penguji_dosen_v`
-- (Lihat di bawah untuk tampilan aktual)
--
DROP VIEW IF EXISTS `penguji_dosen_v`;
CREATE TABLE `penguji_dosen_v` (
`nip` varchar(30)
,`nama` varchar(100)
,`nomor_telepon` varchar(30)
,`email` varchar(100)
,`level` enum('1','2','4')
,`id` bigint(20)
,`mahasiswa_id` bigint(20)
,`nim` varchar(50)
,`nama_mahasiswa` varchar(100)
,`nama_prodi` varchar(50)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

DROP TABLE IF EXISTS `prodi`;
CREATE TABLE `prodi` (
  `id` bigint(20) NOT NULL,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `dosen_id` bigint(20) NOT NULL COMMENT 'ketua prodi (pembimbing)',
  `fakultas_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id`, `kode`, `nama`, `dosen_id`, `fakultas_id`) VALUES
(2, '20201017', 'Informatika', 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `proposal_mahasiswa`
--

DROP TABLE IF EXISTS `proposal_mahasiswa`;
CREATE TABLE `proposal_mahasiswa` (
  `id` bigint(20) NOT NULL,
  `mahasiswa_id` bigint(20) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `outline_skripsi` varchar(255) NOT NULL,
  `dosen_id` bigint(20) NOT NULL COMMENT 'pembimbing',
  `dosen_penguji_id` varchar(11) DEFAULT NULL,
  `transkip` varchar(255) NOT NULL,
  `krs` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0' COMMENT '1 = disetujui, 0 = tidak disetujui',
  `lulus_mkMetodologi` varchar(50) NOT NULL,
  `lulus_mkWajib` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `proposal_mahasiswa`
--

INSERT INTO `proposal_mahasiswa` (`id`, `mahasiswa_id`, `judul`, `outline_skripsi`, `dosen_id`, `dosen_penguji_id`, `transkip`, `krs`, `status`, `lulus_mkMetodologi`, `lulus_mkWajib`) VALUES
(84, 40, 'contoh', '20230116045752.pdf', 8, NULL, '20230116045752.pdf', '20230116045752.pdf', '0', 'Lulus', 'Lulus'),
(85, 28, 'contoh', '20230116051242.pdf', 10, NULL, '20230116051242.pdf', '20230116051242.pdf', '0', 'Lulus', 'Lulus'),
(86, 29, 'sadsad', '20230116053107.pdf', 1, NULL, '20230116053107.pdf', '20230116053107.pdf', '0', 'Lulus', 'Lulus'),
(87, 30, 'sdsdfsdf', '20230116053205.pdf', 1, NULL, '20230116053205.pdf', '20230116053205.pdf', '0', 'Lulus', 'Lulus'),
(88, 31, 'Sistem informasi', '20230116053530.pdf', 1, NULL, '20230116053530.pdf', '20230116053530.pdf', '0', 'Lulus', 'Lulus'),
(89, 32, 'Sistem informasi pengajuan layanan', '20230116053716.pdf', 8, NULL, '20230116053716.pdf', '20230116053716.pdf', '0', 'Lulus', 'Lulus'),
(90, 41, 'PENERAPAN ALGORITMA GENETIKA UNTUK PENJADWALAN OTOMATIS SEMINAR DAN SIDANG SKRIPSI PADA SISTEM INFOR', '20230408081941.pdf', 1, NULL, '20230408081941.pdf', '20230408081941.pdf', '1', 'Lulus', 'Lulus');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `proposal_mahasiswa_v`
-- (Lihat di bawah untuk tampilan aktual)
--
DROP VIEW IF EXISTS `proposal_mahasiswa_v`;
CREATE TABLE `proposal_mahasiswa_v` (
`id` bigint(20)
,`mahasiswa_id` bigint(20)
,`judul` varchar(100)
,`outline_skripsi` varchar(255)
,`dosen_id` bigint(20)
,`dosen_penguji_id` varchar(11)
,`transkip` varchar(255)
,`krs` varchar(255)
,`status` enum('1','0')
,`nim` varchar(50)
,`nama_mahasiswa` varchar(100)
,`nama_prodi` varchar(50)
,`email` varchar(100)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan`
--

DROP TABLE IF EXISTS `ruangan`;
CREATE TABLE `ruangan` (
  `id` int(11) NOT NULL,
  `nama_ruangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `seminar`
--

DROP TABLE IF EXISTS `seminar`;
CREATE TABLE `seminar` (
  `id` bigint(20) NOT NULL,
  `proposal_mahasiswa_id` bigint(20) NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL,
  `tempat` varchar(255) DEFAULT NULL,
  `file_proposal` varchar(50) NOT NULL,
  `syarat_seminar` varchar(50) NOT NULL,
  `surat_permohonan` varchar(50) NOT NULL,
  `kartu_bimbingan` varchar(50) NOT NULL,
  `signature` varchar(200) DEFAULT NULL,
  `dosen_penguji_id` varchar(50) DEFAULT NULL,
  `dosen_penguji2_id` varchar(50) DEFAULT NULL,
  `dosen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `seminar`
--

INSERT INTO `seminar` (`id`, `proposal_mahasiswa_id`, `mahasiswa_id`, `tanggal`, `jam`, `jam_selesai`, `tempat`, `file_proposal`, `syarat_seminar`, `surat_permohonan`, `kartu_bimbingan`, `signature`, `dosen_penguji_id`, `dosen_penguji2_id`, `dosen_id`) VALUES
(49, 88, 29, NULL, NULL, NULL, NULL, '20230408080207.pdf', '20230408080207.pdf', '20230408080207.pdf', '20230408080207.pdf', NULL, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `skripsi`
--

DROP TABLE IF EXISTS `skripsi`;
CREATE TABLE `skripsi` (
  `id` int(11) NOT NULL,
  `judul_skripsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dosen_id` int(11) DEFAULT NULL,
  `dosen_penguji_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dosen_penguji2_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_skripsi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mahasiswa_id` int(11) DEFAULT NULL,
  `jadwal_skripsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL,
  `tempat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `krs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formulir` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kwitansi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lulus_mkWajib` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kartu_bimbingan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transkip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sertifikat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lembar_persetujuan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bebas_bauk` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `skripsi_v`
-- (Lihat di bawah untuk tampilan aktual)
--
DROP VIEW IF EXISTS `skripsi_v`;
CREATE TABLE `skripsi_v` (
`nim` varchar(50)
,`nama_prodi` varchar(50)
,`nama_mahasiswa` varchar(100)
,`mahasiswa_id` bigint(20)
,`judul_skripsi` varchar(100)
,`dosen_id` int(11)
,`dosen_penguji_id` varchar(50)
,`dosen_penguji2_id` varchar(50)
,`id` int(11)
,`nama_pembimbing` varchar(100)
,`jadwal_skripsi` varchar(100)
,`jam_selesai` time
,`tempat` text
,`file_skripsi` varchar(50)
,`status` varchar(1)
,`krs` varchar(50)
,`formulir` varchar(50)
,`kwitansi` varchar(50)
,`lulus_mkWajib` varchar(50)
,`kartu_bimbingan` varchar(50)
,`transkip` varchar(50)
,`sertifikat` varchar(50)
,`lembar_persetujuan` varchar(50)
,`bebas_bauk` varchar(50)
,`email` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `skripsi_vl`
-- (Lihat di bawah untuk tampilan aktual)
--
DROP VIEW IF EXISTS `skripsi_vl`;
CREATE TABLE `skripsi_vl` (
`nim` varchar(50)
,`nama_prodi` varchar(50)
,`nama_mahasiswa` varchar(100)
,`id` int(11)
,`judul_skripsi` varchar(100)
,`dosen_id` int(11)
,`dosen_penguji_id` varchar(50)
,`dosen_penguji2_id` varchar(50)
,`mahasiswa_id` bigint(20)
,`nama_pembimbing` varchar(100)
,`nama_penguji` varchar(100)
,`jadwal_skripsi` varchar(100)
,`jam_selesai` time
,`tempat` text
,`file_skripsi` varchar(50)
,`status` varchar(1)
,`krs` varchar(50)
,`formulir` varchar(50)
,`kwitansi` varchar(50)
,`lulus_mkWajib` varchar(50)
,`kartu_bimbingan` varchar(50)
,`transkip` varchar(50)
,`sertifikat` varchar(50)
,`lembar_persetujuan` varchar(50)
,`bebas_bauk` varchar(50)
,`email` varchar(100)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `bimbingan_dosen_v`
--
DROP TABLE IF EXISTS `bimbingan_dosen_v`;

DROP VIEW IF EXISTS `bimbingan_dosen_v`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bimbingan_dosen_v`  AS  select `dosen`.`nip` AS `nip`,`dosen`.`nama` AS `nama`,`dosen`.`nomor_telepon` AS `nomor_telepon`,`dosen`.`email` AS `email`,`dosen`.`level` AS `level`,`proposal_mahasiswa_v`.`nim` AS `nim`,`proposal_mahasiswa_v`.`nama_mahasiswa` AS `nama_mahasiswa`,`proposal_mahasiswa_v`.`nama_prodi` AS `nama_prodi`,`proposal_mahasiswa_v`.`mahasiswa_id` AS `mahasiswa_id`,`dosen`.`id` AS `id` from (`dosen` join `proposal_mahasiswa_v` on(`dosen`.`id` = `proposal_mahasiswa_v`.`dosen_id`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `hasil_kegiatan_v`
--
DROP TABLE IF EXISTS `hasil_kegiatan_v`;

DROP VIEW IF EXISTS `hasil_kegiatan_v`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hasil_kegiatan_v`  AS  select `hasil_kegiatan`.`mahasiswa_id` AS `mahasiswa_id`,`hasil_kegiatan`.`id` AS `id`,`hasil_kegiatan`.`file` AS `file`,`hasil_kegiatan`.`kegiatan` AS `kegiatan`,`hasil_kegiatan`.`file_kegiatan` AS `file_kegiatan`,`mahasiswa_v`.`nim` AS `nim`,`mahasiswa_v`.`nama` AS `nama_mahasiswa`,`mahasiswa_v`.`nama_prodi` AS `nama_prodi`,`hasil_kegiatan`.`status` AS `status` from (`hasil_kegiatan` join `mahasiswa_v` on(`mahasiswa_v`.`id` = `hasil_kegiatan`.`mahasiswa_id`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `mahasiswa_v`
--
DROP TABLE IF EXISTS `mahasiswa_v`;

DROP VIEW IF EXISTS `mahasiswa_v`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mahasiswa_v`  AS  select `prodi`.`nama` AS `nama_prodi`,`mahasiswa`.`id` AS `id`,`mahasiswa`.`nim` AS `nim`,`mahasiswa`.`nama` AS `nama`,`mahasiswa`.`prodi_id` AS `prodi_id`,`mahasiswa`.`jenis_kelamin` AS `jenis_kelamin`,`mahasiswa`.`tempat_lahir` AS `tempat_lahir`,`mahasiswa`.`tanggal_lahir` AS `tanggal_lahir`,`mahasiswa`.`email` AS `email`,`mahasiswa`.`alamat_orang_tua` AS `alamat_orang_tua`,`mahasiswa`.`nomor_telepon_orang_tua` AS `nomor_telepon_orang_tua`,`mahasiswa`.`alamat` AS `alamat`,`mahasiswa`.`nomor_telepon` AS `nomor_telepon`,`mahasiswa`.`nomor_telepon_orang_dekat` AS `nomor_telepon_orang_dekat`,`mahasiswa`.`ipk` AS `ipk`,`mahasiswa`.`foto` AS `foto`,`mahasiswa`.`password` AS `password`,`mahasiswa`.`status` AS `status` from (`mahasiswa` join `prodi` on(`mahasiswa`.`prodi_id` = `prodi`.`id`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `penguji_dosen_v`
--
DROP TABLE IF EXISTS `penguji_dosen_v`;

DROP VIEW IF EXISTS `penguji_dosen_v`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `penguji_dosen_v`  AS  select `dosen`.`nip` AS `nip`,`dosen`.`nama` AS `nama`,`dosen`.`nomor_telepon` AS `nomor_telepon`,`dosen`.`email` AS `email`,`dosen`.`level` AS `level`,`dosen`.`id` AS `id`,`proposal_mahasiswa_v`.`mahasiswa_id` AS `mahasiswa_id`,`proposal_mahasiswa_v`.`nim` AS `nim`,`proposal_mahasiswa_v`.`nama_mahasiswa` AS `nama_mahasiswa`,`proposal_mahasiswa_v`.`nama_prodi` AS `nama_prodi` from (`dosen` join `proposal_mahasiswa_v` on(`dosen`.`id` = `proposal_mahasiswa_v`.`dosen_penguji_id`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `proposal_mahasiswa_v`
--
DROP TABLE IF EXISTS `proposal_mahasiswa_v`;

DROP VIEW IF EXISTS `proposal_mahasiswa_v`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `proposal_mahasiswa_v`  AS  select `proposal_mahasiswa`.`id` AS `id`,`proposal_mahasiswa`.`mahasiswa_id` AS `mahasiswa_id`,`proposal_mahasiswa`.`judul` AS `judul`,`proposal_mahasiswa`.`outline_skripsi` AS `outline_skripsi`,`proposal_mahasiswa`.`dosen_id` AS `dosen_id`,`proposal_mahasiswa`.`dosen_penguji_id` AS `dosen_penguji_id`,`proposal_mahasiswa`.`transkip` AS `transkip`,`proposal_mahasiswa`.`krs` AS `krs`,`proposal_mahasiswa`.`status` AS `status`,`mahasiswa_v`.`nim` AS `nim`,`mahasiswa_v`.`nama` AS `nama_mahasiswa`,`mahasiswa_v`.`nama_prodi` AS `nama_prodi`,`mahasiswa_v`.`email` AS `email` from (`proposal_mahasiswa` join `mahasiswa_v` on(`proposal_mahasiswa`.`mahasiswa_id` = `mahasiswa_v`.`id`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `skripsi_v`
--
DROP TABLE IF EXISTS `skripsi_v`;

DROP VIEW IF EXISTS `skripsi_v`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `skripsi_v`  AS  select `mahasiswa_v`.`nim` AS `nim`,`mahasiswa_v`.`nama_prodi` AS `nama_prodi`,`mahasiswa_v`.`nama` AS `nama_mahasiswa`,`mahasiswa_v`.`id` AS `mahasiswa_id`,`skripsi`.`judul_skripsi` AS `judul_skripsi`,`skripsi`.`dosen_id` AS `dosen_id`,`skripsi`.`dosen_penguji_id` AS `dosen_penguji_id`,`skripsi`.`dosen_penguji2_id` AS `dosen_penguji2_id`,`skripsi`.`id` AS `id`,`dosen`.`nama` AS `nama_pembimbing`,`skripsi`.`jadwal_skripsi` AS `jadwal_skripsi`,`skripsi`.`jam_selesai` AS `jam_selesai`,`skripsi`.`tempat` AS `tempat`,`skripsi`.`file_skripsi` AS `file_skripsi`,`skripsi`.`status` AS `status`,`skripsi`.`krs` AS `krs`,`skripsi`.`formulir` AS `formulir`,`skripsi`.`kwitansi` AS `kwitansi`,`skripsi`.`lulus_mkWajib` AS `lulus_mkWajib`,`skripsi`.`kartu_bimbingan` AS `kartu_bimbingan`,`skripsi`.`transkip` AS `transkip`,`skripsi`.`sertifikat` AS `sertifikat`,`skripsi`.`lembar_persetujuan` AS `lembar_persetujuan`,`skripsi`.`bebas_bauk` AS `bebas_bauk`,`mahasiswa_v`.`email` AS `email` from ((`skripsi` join `mahasiswa_v` on(`skripsi`.`mahasiswa_id` = `mahasiswa_v`.`id`)) join `dosen` on(`skripsi`.`dosen_id` = `dosen`.`id`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `skripsi_vl`
--
DROP TABLE IF EXISTS `skripsi_vl`;

DROP VIEW IF EXISTS `skripsi_vl`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `skripsi_vl`  AS  select `skripsi_v`.`nim` AS `nim`,`skripsi_v`.`nama_prodi` AS `nama_prodi`,`skripsi_v`.`nama_mahasiswa` AS `nama_mahasiswa`,`skripsi_v`.`id` AS `id`,`skripsi_v`.`judul_skripsi` AS `judul_skripsi`,`skripsi_v`.`dosen_id` AS `dosen_id`,`skripsi_v`.`dosen_penguji_id` AS `dosen_penguji_id`,`skripsi_v`.`dosen_penguji2_id` AS `dosen_penguji2_id`,`skripsi_v`.`mahasiswa_id` AS `mahasiswa_id`,`skripsi_v`.`nama_pembimbing` AS `nama_pembimbing`,`dosen`.`nama` AS `nama_penguji`,`skripsi_v`.`jadwal_skripsi` AS `jadwal_skripsi`,`skripsi_v`.`jam_selesai` AS `jam_selesai`,`skripsi_v`.`tempat` AS `tempat`,`skripsi_v`.`file_skripsi` AS `file_skripsi`,`skripsi_v`.`status` AS `status`,`skripsi_v`.`krs` AS `krs`,`skripsi_v`.`formulir` AS `formulir`,`skripsi_v`.`kwitansi` AS `kwitansi`,`skripsi_v`.`lulus_mkWajib` AS `lulus_mkWajib`,`skripsi_v`.`kartu_bimbingan` AS `kartu_bimbingan`,`skripsi_v`.`transkip` AS `transkip`,`skripsi_v`.`sertifikat` AS `sertifikat`,`skripsi_v`.`lembar_persetujuan` AS `lembar_persetujuan`,`skripsi_v`.`bebas_bauk` AS `bebas_bauk`,`skripsi_v`.`email` AS `email` from (`skripsi_v` join `dosen` on(`skripsi_v`.`dosen_penguji_id` = `dosen`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar_judul`
--
ALTER TABLE `daftar_judul`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dokumen_hasil`
--
ALTER TABLE `dokumen_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `email_sender`
--
ALTER TABLE `email_sender`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hasil_kegiatan`
--
ALTER TABLE `hasil_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hasil_penelitian`
--
ALTER TABLE `hasil_penelitian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hasil_seminar`
--
ALTER TABLE `hasil_seminar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seminar_id` (`seminar_id`);

--
-- Indeks untuk tabel `home_template`
--
ALTER TABLE `home_template`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal_dosen`
--
ALTER TABLE `jadwal_dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kuota_bimbingan`
--
ALTER TABLE `kuota_bimbingan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penelitian`
--
ALTER TABLE `penelitian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `proposal_mahasiswa`
--
ALTER TABLE `proposal_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `seminar`
--
ALTER TABLE `seminar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `skripsi`
--
ALTER TABLE `skripsi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftar_judul`
--
ALTER TABLE `daftar_judul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `dokumen_hasil`
--
ALTER TABLE `dokumen_hasil`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `email_sender`
--
ALTER TABLE `email_sender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `hari`
--
ALTER TABLE `hari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `hasil_kegiatan`
--
ALTER TABLE `hasil_kegiatan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `hasil_penelitian`
--
ALTER TABLE `hasil_penelitian`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `hasil_seminar`
--
ALTER TABLE `hasil_seminar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `home_template`
--
ALTER TABLE `home_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jadwal_dosen`
--
ALTER TABLE `jadwal_dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jam`
--
ALTER TABLE `jam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `kuota_bimbingan`
--
ALTER TABLE `kuota_bimbingan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `penelitian`
--
ALTER TABLE `penelitian`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `proposal_mahasiswa`
--
ALTER TABLE `proposal_mahasiswa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `seminar`
--
ALTER TABLE `seminar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `skripsi`
--
ALTER TABLE `skripsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
