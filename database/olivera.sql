-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 19, 2022 at 02:32 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bade_manager`
--
CREATE DATABASE IF NOT EXISTS `bade_manager` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bade_manager`;

-- --------------------------------------------------------

--
-- Table structure for table `bade_daerah_ende`
--

CREATE TABLE `bade_daerah_ende` (
  `id` int(11) UNSIGNED NOT NULL,
  `indonesia` text NOT NULL,
  `daerah` text NOT NULL,
  `aksara` text NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bade_daerah_ende`
--

INSERT INTO `bade_daerah_ende` (`id`, `indonesia`, `daerah`, `aksara`, `status`) VALUES
(1, 'anak', 'Ana', 'ana', 0),
(2, 'saya', 'Ja’o', 'ja’o', 0),
(3, 'tidak', 'Iwa', 'iwa', 0),
(4, 'kasih', 'Pati', 'pati', 0),
(5, 'tidur', 'Eru', 'eru', 0),
(6, 'pergi', 'Mbana', 'mbana', 0),
(7, 'cari', 'Ghae', 'ghae', 0),
(8, 'beli', 'Mbeta', 'mbeta', 0),
(9, 'siapa', 'Sai', 'sai', 0),
(10, 'belum', 'Za’e', 'za’e', 0),
(11, 'habis', 'Mbeja', 'mbeja', 0),
(12, 'makan', 'Ka', 'Ka', 0),
(13, 'minum', 'Minu', 'minu', 0),
(14, 'garam', 'Si’e', 'si’e', 0),
(15, 'asam', 'Nangge', 'nangge', 0),
(16, 'jalan', 'Raza', 'raza', 0),
(17, 'nangis', 'Rita', 'rita', 0),
(18, 'rumah', 'Sa’o', 'sa’o', 0),
(19, 'jendela', 'Pate', 'pati', 0),
(20, 'pintu', 'Pere', 'pere', 0),
(21, 'gurita', 'Kubi', 'kubi', 0),
(22, 'kamu', 'Kau', 'kau', 0),
(23, 'adik', 'Ari', 'ari', 0),
(24, 'kakak', 'Ka’e', 'Ka’e', 0),
(25, 'mama', 'Ine', 'ine', 0),
(26, 'dia', 'kai', 'kai', 0),
(27, 'kebun', 'uma', 'uma', 0),
(28, 'gelas', 'gela', 'gela', 0),
(29, 'mangkok', 'boko', 'boko', 0),
(30, 'tas', 'tas', 'tas', 0),
(31, 'sepatu', 'sepatu', 'sepatu', 0),
(32, 'sabun', 'sabu', 'sabu', 0),
(33, 'pisang', 'muku', 'muku', 0),
(34, 'mana', 'embha', 'embha', 0),
(35, 'ada', 'zatu', 'zatu', 0),
(36, 'meninggal', 'mata', 'mata', 0),
(37, 'tanah', 'tana', 'tana', 0),
(38, 'ojek', 'oje', 'oje', 0),
(39, 'mobil', 'oto', 'oto', 0),
(40, 'kursi', 'kadera', 'kadera', 0),
(41, 'kayu', 'kaju', 'kaju', 0),
(42, 'belum matang', 'meta', 'meta', 0),
(43, 'kamar', 'kama', 'kama', 0),
(44, 'panas', 'petu', 'petu', 0),
(45, 'dingin', 'kette', 'kete', 0),
(46, 'tunggu', 'napa', 'napa', 0),
(47, 'orang', 'ata', 'ata', 0),
(48, 'istri', 'fai', 'ai', 0),
(49, 'suami', 'haki', 'haki', 0),
(50, 'saudara perempuan', 'weta', 'weta', 0),
(51, 'saudara laki- laki', 'nara', 'nara', 0),
(52, 'ipar laki-laki', 'eja', 'eja', 0),
(53, 'cabai', 'koro', 'eja', 0),
(54, 'kompor', 'kofo', 'ko o', 0),
(55, 'wajan', 'kawa', 'kawa', 0),
(56, 'botol', 'boti', 'boti', 0),
(57, 'tangga', 'tangi', 'tangi', 0),
(58, 'mangga', 'pau', 'pau', 0),
(59, 'disini', 'pandia', 'pandia', 0),
(60, 'disana', 'panore', 'panore', 0),
(61, 'panggil', 'niu', 'niuiu', 0),
(62, 'dayung', 'wesa', 'wesa', 0),
(63, 'baju', 'zambu', 'zambu', 0),
(64, 'celana', 'zake', 'zake', 0),
(65, 'tangan', 'zima', 'zima', 0),
(66, 'kaki', 'Ha”i', 'ha’i', 0),
(67, 'asin', 'mesi', 'mesi', 0),
(68, 'air', 'ae', 'ae', 0),
(69, 'sayur', 'uta', 'uta', 0),
(70, 'rok', 'andro', 'andro', 0),
(71, 'bapak', 'baba', 'baba', 0),
(72, 'malam', 'kombe', 'kombe', 0),
(73, 'siang', 'zera', 'zera', 0),
(74, 'dengan', 'Ne’e', 'Ne’e', 0),
(75, 'sabar', 'saba', 'saba', 0),
(76, 'mari atau datang', 'mai', 'mai', 0),
(77, 'jelek', 'Re’e', 'Re’e', 0),
(78, 'cantik', 'sare', 'sare', 0),
(79, 'tidak bias', 'tazo', 'tazo', 0),
(80, 'siram', 'sira', 'sira', 0),
(81, 'gayung', 'gajo', 'gajo', 0),
(82, 'hati', 'ate', 'ate', 0),
(83, 'sakit', 'ro', 'ro', 0),
(84, 'pacar', 'nasa', 'nasa', 0),
(85, 'jauh', 'reu', 'reu', 0),
(86, 'dekat', 'We’e', 'we’e', 0),
(87, 'piring', 'bha', 'bha', 0),
(88, 'melahirkan', 'Dhadhi', 'dhadhi', 0),
(89, 'mata', 'zemata', 'zemata', 0),
(90, 'kerja', 'Kema', 'kema', 0),
(91, 'baik', 'Pawe', 'pawe', 0),
(92, 'jahat', 'Jaha', 'jaha', 0),
(93, 'muka', 'Nia', 'nia', 0),
(94, 'ambil', 'Maza', 'maza', 0),
(95, 'capeh', 'Mo', 'mo', 0),
(96, 'lama', 'Hebho', 'hebho', 0),
(97, 'tidak mau', 'Bhazo', 'bhazo', 0),
(98, 'sendiri', 'Mesa', 'mesa', 0),
(99, 'kecil', 'Dhiki', 'dhiki', 0),
(100, 'lebih dulu', 'Muzu', 'muzu', 0),
(101, 'manis', 'Mi', 'mi', 0),
(102, 'berdiri', 'Dari', 'dari', 0),
(103, 'duduk', 'Ngambe', 'ngambe', 0),
(104, 'buta', 'Gibe', 'gibe', 0),
(105, 'bawa', 'Dhoko', 'dhoko', 0),
(106, 'cepat', 'Zama', 'zama', 0),
(107, 'atas', 'Wawo', 'wawo', 0),
(108, 'batu', 'watu', 'watu', 0),
(109, 'bawa', 'wena', 'wena', 0),
(110, 'bukit', 'Kezzi', 'kezzu', 0),
(111, 'bantal', 'Zani', 'zani', 0),
(112, 'sarung', 'Zuka', 'zuka', 0),
(113, 'kaleng', 'Balle', 'balle', 0),
(114, 'daun', 'Wunu', 'wunu', 0),
(115, 'pohon', 'Pu kaju', 'pukaju', 0),
(116, 'kelor', 'Wona', 'wona', 0),
(117, 'kain', 'Kaee', 'kae', 0),
(118, 'kramik', 'Jubi', 'jubi', 0),
(119, 'sisir', 'Keke', 'keke', 0),
(120, 'bulan', 'Wuza', 'wuza', 0),
(121, 'benar', 'Dema', 'dema', 0),
(122, 'sapu', 'Ngoni', 'ngoni', 0),
(123, 'diam', 'Naru', 'naru', 0),
(124, 'bicara', 'Gare', 'gare', 0),
(125, 'kasitau', 'Nosi', 'nosi', 0),
(126, 'hitam', 'Mite', 'mite', 0),
(127, 'putih', 'Bhara', 'bhara', 0),
(128, 'mereh', 'Toro', 'toro', 0),
(129, 'kuning', 'Kune', 'kune', 0),
(130, 'biru', 'Meta', 'meta', 0),
(131, 'patah', 'Po’i', 'po’i', 0),
(132, 'beras', 'Are', 'are', 0),
(133, 'air laut', 'Ae mesi', 'Ae mesi', 0),
(134, 'langit', 'Ziru', 'ziru', 0),
(135, 'hujan', 'Ura', 'ura', 0),
(136, 'mendung', 'Kubhu', 'kubhu', 0),
(137, 'sukun', 'Karara', 'karara', 0),
(138, 'nangka', 'Nakawara', 'nakawara', 0),
(139, 'nenes', 'Ana na', 'anana', 0),
(140, 'robek', 'Mbira', 'mbira', 0),
(141, 'nyiru', 'Hidhe', 'hidhe', 0),
(142, 'benang', 'Zezu', 'zezu', 0),
(143, 'mesin', 'Mase', 'mase', 0),
(144, 'perahu', 'Bodi', 'bodi', 0),
(145, 'pukat', 'Landa', 'landa', 0),
(146, 'palu', 'Pesa', 'pesa', 0),
(147, 'parang', 'Topo', 'topo', 0),
(148, 'pisau', 'Piso', 'piso', 0),
(149, 'maki', 'Mbatu', 'mbatuu', 0),
(150, 'malu', 'Mea', 'mea', 0),
(151, 'ember', 'Embe', 'embe', 0),
(152, 'mencuri', 'Naka', 'naka', 0),
(153, 'nama', 'Naja', 'naja', 0),
(154, 'kolong', 'Zewu', 'zewu', 0),
(155, 'panjang', 'Zewa', 'zewa', 0),
(156, 'pendek', 'Bhoko', 'bhoko', 0),
(157, 'lari', 'Paru', 'paruu', 0),
(158, 'dapat', 'Ngaza', 'ngaza', 0),
(159, 'istrihat', 'Du’u', 'du,u', 0),
(160, 'tua', 'Tu’a', 'tu’a', 0),
(161, 'pulpen', 'belepion', 'belepoin', 0),
(162, 'mimpi', 'Nipi', 'nipi', 0),
(163, 'rajin', 'Bugu', 'buguu', 0),
(164, 'sembarang', 'Rewo', 'rewo', 0),
(165, 'keri', 'mara', 'naru', 0),
(166, 'basa', 'Mbasa', 'mbasa', 0),
(167, 'gelap', 'Miza', 'miza', 0),
(168, 'terang', 'Digha', 'digha', 0),
(169, 'ringan', 'Fe’a', 'e’a', 0),
(170, 'berat', 'Ndate', 'ndate', 0),
(171, 'cuci', 'Sabu', 'sabu', 0),
(172, 'pakean', 'Pakea', 'pakea', 0),
(173, 'mandi', 'Rio', 'rio', 0),
(174, 'bagus', 'Gaga', 'gaga', 0),
(175, 'kaget', 'Nggigha', 'ngigha', 0),
(176, 'bintang', 'Ndaza', 'ndaza', 0),
(177, 'pukul', 'Pongga', 'pongga', 0),
(178, 'luka', 'Neka', 'neka', 0),
(179, 'terbakar', 'Mbanga', 'mbanga', 0),
(180, 'bangun', 'To’o', 'to’o', 0),
(181, 'pulang', 'warro', 'warro', 0),
(182, 'benci', 'Ronggi', 'ronggi', 0),
(183, 'sampai', 'Nggena', 'ngena', 0),
(184, 'kepala', 'hollo', 'hollo', 0),
(185, 'bosan', 'Buja', 'buja', 0),
(186, 'lihat', 'Tei', 'tei', 0),
(187, 'ekor', 'Eko', 'eko', 0),
(188, 'minta', 'Ono', 'ono', 0),
(189, 'belimbing', 'Mbindi', 'mbindi', 0),
(190, 'tomat', 'Dagalai', 'dagalaii', 0),
(191, 'serai', 'Nawe', 'nawe', 0),
(192, 'jahe', 'Zea', 'zea', 0),
(193, 'kunyit', 'Kune', 'kune', 0),
(194, 'bawang merah', 'Somu', 'somu', 0),
(195, 'bawang putih', 'Sunga', 'sunga', 0),
(196, 'bakar', 'Tunu', 'tunu', 0),
(197, 'kelapa', 'Nio', 'nio', 0),
(198, 'kunci', 'Kusi', 'kusi', 0),
(199, 'kaca', 'Nenu', 'nenu', 0),
(200, 'hidung', 'Iru', 'iru', 0),
(201, 'gemuk', 'Zembbo', 'zembho', 0),
(202, 'kurus', 'Noko', 'noko', 0),
(203, 'pindah', 'Pinda', 'pinda', 0),
(204, 'ubi', 'Wa’i', 'wa’ai', 0),
(205, 'bibi', 'No’o', 'No’o', 0),
(206, 'om', 'Bele', 'bele', 0),
(207, 'paman', 'Eda', 'eda', 0),
(208, 'tante', 'Muda', 'muda', 0),
(209, 'nenek', 'Ambu', 'ambu', 0),
(210, 'moyang', 'Kajo', 'kajo', 0),
(211, 'sudah', 'Pekka', 'peka', 0),
(212, 'semut', 'Mettu', 'mettu', 0),
(213, 'kelajengking', 'Hetti', 'hetti', 0),
(214, 'gila', 'Mbingu', 'mbingu', 0),
(215, 'jatuh', 'Mboka', 'mboka', 0),
(216, 'teriak', 'Kera', 'kera', 0),
(217, 'cincin', 'Ngguru', 'nguru', 0),
(218, 'gelang', 'Gezza', 'gezza', 0),
(219, 'bau', 'Wau', 'wau', 0),
(220, 'kalung', 'Ozo penu', 'ozopenu', 0),
(221, 'anting', 'Ta ate', 'taate', 0),
(222, 'jepit', 'Gepe', 'gepe', 0),
(223, 'surat', 'Sura', 'sura', 0),
(224, 'berenang', 'Nangu', 'nangu', 0),
(225, 'sampan', 'Sapa', 'sapa', 0),
(226, 'dara', 'Raa', 'ra', 0),
(227, 'dalam', 'One', 'one', 0),
(228, 'jangung', 'Jawa', 'jawa', 0),
(229, 'mabuk', 'Mbu', 'mbu', 0),
(230, 'sekarang', 'Mema', 'mema', 0),
(231, 'rambut', 'Fu', 'u', 0),
(232, 'ikut', 'Mogha', 'mogha', 0),
(233, 'kasar', 'kasa', 'kasa', 0),
(234, 'minyak', 'Zengi', 'zengi', 0),
(235, 'ikat', 'Rike', 'rike', 0),
(236, 'tarik', 'Esa', 'esa', 0),
(237, 'lomppat', 'Poro', 'poro', 0),
(238, 'titip', 'Ngatu', 'ngatu', 0),
(239, 'tampar', 'Waso', 'waso', 0),
(240, 'tendang', 'Kenda', 'kenda', 0),
(241, 'injak', 'Keso', 'keso', 0),
(242, 'kuat', 'Tenggo', 'tenggo', 0),
(243, 'lemah', 'Lema', 'lema', 0),
(244, 'mungkin', 'Sambeo', 'sambheo', 0),
(245, 'angin', 'angi', 'angi', 0),
(246, 'cangkul', 'Tambi', 'tambi', 0),
(247, 'leba', 'Ero', 'ero', 0),
(248, 'ubu jakar', 'Uwi jawa', 'uwijawa', 0),
(249, 'jeruk', 'Munde', 'munde', 0),
(250, 'kecoak', 'Pagi', 'pegi', 0),
(251, 'nyamuk', 'Kepa', 'kepa', 0),
(252, 'lalat', 'Haze', 'haze', 0),
(253, 'jengkrik', 'Naju', 'naju', 0),
(254, 'ngintip', 'Mbeti', 'mbetri', 0),
(255, 'belakang', 'Zonggo', 'zonggo', 0),
(256, 'kotor', 'Raki', 'raki', 0),
(257, 'kepala', 'Uzu', 'uzu', 0),
(258, 'mulut', 'Moki', 'moki', 0),
(259, 'telinga', 'Hinga', 'hinga', 0),
(260, 'pusat', 'Puse', 'puse', 0),
(261, 'tuli', 'Dhoka', 'dhoka', 0),
(262, 'bisu', 'Ngongo', 'ngongo', 0),
(263, 'beli', 'mbeta', 'mbeta', 0),
(264, 'gula', 'Sa ami', 'saami', 0),
(265, 'lipistik', 'Gicu', 'gicu', 0),
(266, 'parfum', 'Mange', 'mange', 0),
(267, 'sampah', 'mbeku', 'mbeku', 0),
(268, 'teman', 'Ozo imu', 'ozoimu', 0),
(269, 'nyala', 'Ja', 'ja', 0),
(270, 'cuci', 'Rasi', 'rasi', 0),
(271, 'gunting', 'Guti', 'Gguti', 0),
(272, 'telur', 'Tezo', 'tezo', 0),
(273, 'kardus', 'Dos', 'dos', 0),
(274, 'topi', 'Nggobhe', 'nggobhe', 0),
(275, 'toples', 'Tafale', 'ta ale', 0),
(276, 'tikar', 'Te’e', 'te’e', 0),
(277, 'segar', 'Katta', 'katta', 0),
(278, 'bangkuang', 'Ujumbojo', 'ujumbojo', 0),
(279, 'alang-alang', 'kii', 'kii', 0),
(280, 'lemon', 'Nggeru', 'nggeru', 0),
(281, 'bisul', 'Mbowo', 'mbowo', 0),
(282, 'biji', 'Mboko', 'mboko', 0),
(283, 'kemana', 'Mbana amba', 'Mbanembha', 0),
(284, 'di mana', 'Paamba', 'aamba', 0),
(285, 'uang', 'Doi', 'doi', 0),
(286, 'petir', 'bheza', 'Bheza', 0),
(287, 'masjid', 'Zangga', 'zangga', 0),
(288, 'tempurung', 'He’a', 'he’a', 0),
(289, 'minyak tahah', 'Zengi tana', 'zengitana', 0),
(290, 'sutel', 'Sude', 'sude', 0),
(291, 'sendok', 'Bhoi', 'bhoiu', 0),
(292, 'garpuk', 'Garpu', 'garpu', 0),
(293, 'keringat', 'Runga', 'runga', 0),
(294, 'tetiak', 'Keze', 'keze', 0),
(295, 'jari', 'Kanga', 'kanga', 0),
(296, 'kuku', 'Kungu', 'kungu', 0),
(297, 'paying', 'Paju', 'paju', 0),
(298, 'kasal', 'Kesa', 'kesa', 0),
(299, 'selang', 'Sela', 'sela', 0),
(300, 'lampu', 'Lapu', 'lapu', 0),
(301, 'pencuri', 'Atanaka', 'atanaka', 0),
(302, 'sandar', 'Mbe’i', 'mbe’i', 0),
(303, 'nyahut', 'Tazu', 'tazu', 0),
(304, 'gelombang', 'Embho', 'embho', 0),
(305, 'ombak', 'Mbata', 'mbata', 0),
(306, 'sikat', 'Sika', 'sika', 0),
(307, 'silet', 'Robi', 'robi', 0),
(308, 'bunga', 'Bunga', 'bunga', 0),
(309, 'tali', 'Tazi', 'tazi', 0),
(310, 'tunjuk', 'Tuju', 'tuju', 0),
(311, 'pegang', 'Take', 'takke', 0),
(312, 'cumi', 'Wenu', 'wenu', 0),
(313, 'kepiting', 'Kojo', 'kojo', 0),
(314, 'pasir', 'Ena', 'ena', 0),
(315, 'pantai', 'Ma’u', 'ma’u', 0),
(316, 'tunduk', 'Juku', 'juku', 0),
(317, 'rosleting', 'Kostare', 'kostare', 0),
(318, 'dempot', 'Dope', 'dope', 0),
(319, 'bedak', 'Beda', 'beda', 0),
(320, 'koper', 'Kofe', 'ko e', 0),
(321, 'disana', 'Nore', 'nore', 0),
(322, 'disini', 'Dhia', 'dhia', 0),
(323, 'begini', 'Ngenha', 'ngena', 0),
(324, 'seperti', 'Mode', 'mode', 0),
(325, 'kipas', 'Teppa', 'teppa', 0),
(326, 'bamboo', 'Peri', 'peri', 0),
(327, 'kabel', 'Kabe', 'kabe', 0),
(328, 'tulis', 'Tuli', 'tulii', 0),
(329, 'karet', 'Geta', 'getta', 0),
(330, 'krupuk', 'Koropo', 'koropo', 0),
(331, 'kresek', 'karese', 'karese', 0),
(332, 'asa', 'Dhazi', 'dhazi', 0),
(333, 'pensil', 'Patalo', 'patalo', 0),
(334, 'siput', 'wuzi', 'wuzi', 0),
(335, 'bulu babi', 'Ete', 'ete', 0),
(336, 'karbau', 'Kamba', 'kamba', 0),
(337, 'mau', 'Fonga', 'onga', 0),
(338, 'bodoh', 'Bhongo', 'bongo', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bade_history`
--

CREATE TABLE `bade_history` (
  `history_id` int(11) NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_translate` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `bahasa` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mode` int(1) NOT NULL,
  `versi` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `favorite` int(1) NOT NULL,
  `sid` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bade_kata`
--

CREATE TABLE `bade_kata` (
  `kata_id` int(11) NOT NULL,
  `text` longtext NOT NULL,
  `bahasa` text NOT NULL,
  `mode` int(1) NOT NULL,
  `versi` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `agent` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bade_komunitas`
--

CREATE TABLE `bade_komunitas` (
  `komunitas_id` int(11) NOT NULL,
  `komunitas_uid` text NOT NULL,
  `komunitas_bahasa` text NOT NULL,
  `komunitas_text` text NOT NULL,
  `komunitas_tanggal` date NOT NULL,
  `komunitas_tanggal_update` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bade_lang`
--

CREATE TABLE `bade_lang` (
  `lang_id` int(11) NOT NULL,
  `bahasa_id` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `bahasa_desc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `versi` int(11) NOT NULL,
  `ukuran` int(255) NOT NULL,
  `aktif` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bade_lang`
--

INSERT INTO `bade_lang` (`lang_id`, `bahasa_id`, `bahasa_desc`, `versi`, `ukuran`, `aktif`) VALUES
(3, 'ende', 'Ende', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bade_users`
--

CREATE TABLE `bade_users` (
  `user_id` int(11) NOT NULL,
  `username` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_level` enum('admin','user') COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `user_last_active` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bade_users`
--

INSERT INTO `bade_users` (`user_id`, `username`, `password`, `user_level`, `user_last_active`) VALUES
(5, 'admin', 'admin', 'admin', '2022-04-01 10:47:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bade_daerah_ende`
--
ALTER TABLE `bade_daerah_ende`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bade_history`
--
ALTER TABLE `bade_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `bade_kata`
--
ALTER TABLE `bade_kata`
  ADD PRIMARY KEY (`kata_id`);

--
-- Indexes for table `bade_komunitas`
--
ALTER TABLE `bade_komunitas`
  ADD PRIMARY KEY (`komunitas_id`);

--
-- Indexes for table `bade_lang`
--
ALTER TABLE `bade_lang`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `bade_users`
--
ALTER TABLE `bade_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bade_daerah_ende`
--
ALTER TABLE `bade_daerah_ende`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT for table `bade_history`
--
ALTER TABLE `bade_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bade_kata`
--
ALTER TABLE `bade_kata`
  MODIFY `kata_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bade_komunitas`
--
ALTER TABLE `bade_komunitas`
  MODIFY `komunitas_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bade_lang`
--
ALTER TABLE `bade_lang`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bade_users`
--
ALTER TABLE `bade_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `brangrea`
--
CREATE DATABASE IF NOT EXISTS `brangrea` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `brangrea`;

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pokja` int(11) DEFAULT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `nama_berita` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `id_pokja`, `slug_berita`, `nama_berita`, `keterangan`, `jenis_berita`, `status_berita`, `gambar`, `tanggal_post`, `tanggal`) VALUES
(4, 641, 74, 'sejarah-pkk', 'Sejarah PKK', '<p>Awalnya, PKK adalah sebuah ide yang dibangun dari dari&nbsp; seminar Home Economic di Bogor tahun 1957.</p>\r\n<p>Pemerintah Indonesia kemudian menindaklanjuti seminar tersebut dengan membuat pelajaran pendidikan kesejahteraan keluarga.</p>\r\n<p>Sedangkan sebagai sebuah gerakan masyarakat, Pemberdayaan dan Kesejahteraan Keluarga awalnya diinisasi oleh istri gubernur Jawa Tengah (ibu Isriati Moenadi) yang begitu prihatin dengan kondisi masyarakat di wilayahnya yang menderita busung lapar.</p>\r\n<p>Inisasi istri gubernur Jawa Tengah ini mendapat respon yang baik di Indonesia.</p>\r\n<p>Adapun perubahan nama PKK sendiri terjadi pada 27 Desember 1972 kala Menteri Dalam Negeri mengeluarkan surat kawat kepada seluruh gubernur Indonesia.</p>\r\n<p>Isi surat kawat tersebut adalah agar mengubah nama Pendidikan Kesejahteraan Keluarga menjadi Pembinaan Kesejahteraan Keluarga pada 27 Desember pun ditetapkan sebagai hari kesatuan gerak PKK.</p>\r\n<h2><strong>PKK adalah Tonggak Kemajuan Ibu-ibu dan Keluarga</strong></h2>\r\n<p>Sebagai sebuah gerakan, PKK selanjutnya bergerak pada dua dimensi sekaligus, yakni:</p>\r\n<ol>\r\n<li>Dimensi spirtual, terutama dalam hal sikap dan perilaku sebagai hamba Tuhan, anggota masyarakat, serta warga negara yang dinamis serta bermanfaat dengan didasarkan pada Pancasila serta UUD 1945.</li>\r\n<li>Dimensi fisik material meliputi sandang, pangan, papan, kesempatan kerja, kesehatan, dan lingkungan hidup yang sehat serta lestari melalui peningkatan pendidikan, pengetahuan serta keterampilan.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Profil', 'Publish', 'sejarah-pkkdsf.jpg', '2016-09-22 04:30:53', '2021-06-19 15:25:37'),
(5, 641, 74, 'visi-dan-misi', 'Visi dan Misi', '<p style=\"text-align: justify;\"><strong>VISI</strong></p>\r\n<p style=\"text-align: justify;\">Terwujudnya keluarga yang beriman dan bertaqwa kepada Tuhan Yang Maha Esa, berakhlak mulia dan berbudi luhur, sehat sejahtera, maju &ndash; mandiri, kesetaraan dan keadilan gender serta kesadaran hukum dan lingkungan.</p>\r\n<p style=\"text-align: justify;\"><strong>MISI</strong></p>\r\n<ol>\r\n<li style=\"text-align: justify;\">Meningkatkan mental spiritual, perilaku hidup dengan menghayati dan mengamalkan Pancasila serta meningkatkan pelaksanaan hak dan kewajiban sesuai dengan hak azasi manusia (HAM), demokrasi, meningkatkan kesetiakawanan sosial dan kegotong royongan serta pembentukan watak bangsa yang selaras, serasi dan seimbang.</li>\r\n<li style=\"text-align: justify;\">Meningkatkan pendidikan dan ketrampilan yang diperlukan, dalam upaya mencerdaskan kehidupan bangsa serta pendapatan keluarga.</li>\r\n<li style=\"text-align: justify;\">Meningkatkan kualitas dan kuantitas pangan keluarga, serta upaya peningkatan pemanfaatan pekarangan melalui Halaman Asri, Teratur, Indah dan Nyaman (HATINYA PKK), sandang dan perumahan serta tata laksana rumah tangga yang sehat.</li>\r\n<li style=\"text-align: justify;\">Meningkatkan derajat kesehatan, kelestarian lingkungan hidup serta membiasakan hidup berencana dlam semua aspek kehidupan dan perencanaan ekonomi keluarga dengan membiasakan menabung.</li>\r\n<li style=\"text-align: justify;\">Meningkatkan pengelolaan Gerakan PKK baik kegiatan pengorganisasian maupun pelaksanaan program-programnya yang disesuaikan dengan situasi dan kondisi masyarakat setempat.</li>\r\n</ol>\r\n<p style=\"text-align: justify;\">&nbsp;</p>', 'Profil', 'Publish', 'visi-dan-misi-dsd.jpg', '2016-09-22 04:31:15', '2021-06-19 15:26:01'),
(6, 641, 74, 'tentang-pkk', 'Tentang PKK', '<p style=\"text-align: justify;\">PKK adalah organisasi kemsyarakatan yang bertujuan untuk memberdayakan perempuan. Secara umum, tentunya kita tak asing bukan dengan sebutan ibu-ibu PKK. Istilah ini sudah begitu luas dan biasanya diasosiasikan dengan perkumpulan ibu-ibu yang memiliki berbagai kegiatan postif.</p>\r\n<p style=\"text-align: justify;\">Contohnya banyak.<br />Mulai dari kegiatan pelatihan UKM (Usaha Kecil Menengah), pengajian, sampai seminar-seminar kecil mengenai kesehatan reproduksi, KB (Keluarga Berencana), KDRT (Kekerasan dalam Rumah Tangga), dan kesehatan anak. Gerakan ini sampai sekarang masih dianggap sebagai salah satu gerakan yang positif meski tak selalu mendapat sorotan publik.</p>\r\n<p style=\"text-align: justify;\">Namun kenyataannya, gerakan inilah yang sampai sekarang memiliki andil besar yang secara pragmatis mampu membantu masyarakat terutama dalam hal keluarga, perempuan, dan anak. Hal ini sejalan dengan nama PKK yang punya kepanjangan Pemberdayaan dan Kesejahteraan Keluarga. Bukan hanya untuk ibu-ibu.</p>\r\n<p style=\"text-align: justify;\">PKK adalah gerakan yang hampir selalu dianggap sebagai gerakan yang hanya bisa dianggotai perempuan.</p>\r\n<p style=\"text-align: justify;\">Padahal sejatinya, Pemberdayaan dan Kesejahteraan Keluarga tak melulu harus dianggotai kaum hawa saja.</p>\r\n<p style=\"text-align: justify;\">Gerakan ini adalah gerakan masyarakat yang berakar dari bawah (down to top) dan diharapkan bisa membantu berbagai persoalan konkrit pada lapisan masyarakat tersebut.<br />Ia hadir dengan pelaku masyarakat itu sendiri yang secara bersama-sama kemudian menyelesaikan berbagai persoalannya.</p>\r\n<p style=\"text-align: justify;\">Jadi, pelakunya sebetulnya tak melulu harus wanita.</p>\r\n<p style=\"text-align: justify;\">Laki-laki pun juga bisa ikut serta dengan berbagai program Pemberdayaan dan Kesejahteraan Keluarga, baik untuk isu keluarga umum maupun isu perempuan yang sifatnya khusus, seperti hak-hak perempuan dalam rumah tangga.</p>\r\n<p style=\"text-align: justify;\">Bukankah pemberdayaan perempuan juga membutuhkan dukungan dari laki-laki terutama dari para suami yang menjadi mitra para istri?</p>\r\n<p style=\"text-align: justify;\">Mengenal Berbagai Fungsi PKK<br />Karena Pemberdayaan dan Kesejahteraan Keluarga adalah gerakan yang sifatnya pragmatis, ia tak lepas dari berbagai fungsi yang disematkan.</p>\r\n<p style=\"text-align: justify;\">Berikut ini adalah 10 fungsi dasar dari PKK:</p>\r\n<ol>\r\n<li style=\"text-align: justify;\">Penghayatan dan Pengamalan Pancasila</li>\r\n<li style=\"text-align: justify;\">Gotong Royong</li>\r\n<li style=\"text-align: justify;\">Pangan</li>\r\n<li style=\"text-align: justify;\">Sandang</li>\r\n<li style=\"text-align: justify;\">Perumahan serta Tatalaksana Rumah Tangga</li>\r\n<li style=\"text-align: justify;\">Pendidikan serta Ketrampilan</li>\r\n<li style=\"text-align: justify;\">Kesehatan</li>\r\n<li style=\"text-align: justify;\">Pengembangan Kehidupan Berkoperasi</li>\r\n<li style=\"text-align: justify;\">Kelestarian Lingkungan Hidup</li>\r\n<li style=\"text-align: justify;\">Perencanaan Sehat</li>\r\n</ol>', 'Profil', 'Publish', 'tentang-pkk.jpg', '2020-10-27 01:36:03', '2021-06-19 15:26:45'),
(13, 641, 81, 'pelatihan-pembuatan-bunga-dari-kain-perca', 'Pelatihan Pembuatan Bunga Dari Kain Perca', '<p style=\"text-align: justify;\">Negara Indonesia memiliki potensi berupa industri kreatif, salah satunya produk kerajian di Indonesia memiliki potensi besar untuk berkembang. Pembicaraan tentang produk hiasan dapat ditemukan diberbagai tempat disekitar kita. Bahan baku dari produk ini dapat berasal dari bahan baku baru ataupun bahan baku bekas (limbah). Pengertian limbah adalah sisa suatu usaha atau kegiatan. Industri Garment menghasilkan limbah berupa kain perca. Limbah ini dapat memiliki nilai ekonomis dengan cara membuatnya menjadi bunga-bunga cantik lalu dirangkai menjadi karangan bunga (buket) atau menjadi bros berbentuk bunga. Berdasarkan pengamatan sementara diketahui bahwa ibu-ibu PKK Desa Uma Beringin, Unter Iwes, Sumbawa Besar belum pernah melakukan kegiatan kerajinan tangan berbahan dasar kain perca untuk membuat berbagai aplikasi atau hiasan. Tujuan pengabdian kepada masyarakat untuk memberikan pelatihan keterampilan pembuatan produk dengan menggunakan bahan baku limbah kain perca menjadi produk bernilai ekonomis dan memberikan pengetahuan bagaimana menentukan harga jual produk. Kegiatan yang dilakukan bersama warga ibu-ibu PKK oleh ibu PKK, peserta antusias mempelajari dan memperhatikan serta mengikuti pelatihan dan praktek pembuatan karangan bunga (buket) dan bros bunga kecil yang diberikan. Peserta menyadari bahwa hasil yang diperoleh dari kreatifitas, inovasi dari pemanfaatan limbah kain perca yang dapat diubah bentuknya menjadi karya karangan bunga (buket) dan bros bunga unik dan berkualitas serta bernilai jual.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>', 'Berita', 'Publish', 'pelatihan-pembuatan-bunga-dari-kain-perca.jpg', '2020-11-07 07:42:43', '2021-06-19 15:28:35'),
(14, 641, 82, 'pelatihan-table-manner', 'Pelatihan Table Manner', '<p style=\"text-align: justify;\">Selain pembekalan&nbsp;<em>hard skill</em>&nbsp;berupa ilmu pengetahuan, Undiknas juga membekali para mahasiswa dengan&nbsp;<em>soft skill</em>. Sebagai salah satu upaya bagi peningkatan&nbsp;<em>soft skill</em>&nbsp;Ibu-Ibu PKK, PKK Uma Beringin kembali menggelar pelatihan&nbsp;<em>table manner</em>&nbsp;. Aturan&nbsp;<em>table manner</em>&nbsp;adalah seperangkat aturan dan prinsip yang mengatur bagimana proses dan tata cara yang sesuai dalam jamuan resmi.&nbsp;</p>\r\n<blockquote>\r\n<p style=\"text-align: justify;\">&rsquo;Tabel manner itu adalah aturan etika yang dipergunakan pada saat makan, yang mana memberikan petunjuk-petunjuk yang benar dalam penggunaan alat makan. Perbedaan budaya makan dapat membuat aturan tersebut berubah-ubah yang bertujuan menambah wawasan seseorang tentang etika budaya bangsa-bangsa lain,&rsquo;&rsquo;&nbsp;</p>\r\n</blockquote>\r\n<p style=\"text-align: justify;\">Pelatihan yang berlangsung hampir 4 jam tersebut, diawali dengan penjelasan tata cara makan dalam jamuan formal, mulai dari cara melipat serbet di meja, cara menggunakan peralatan makan di atas meja, hingga etika makan formal.&nbsp;</p>', 'Berita', 'Publish', 'pelatihan-table-manner.jpg', '2020-11-07 08:02:22', '2021-06-19 15:28:28'),
(15, 641, 82, 'gotong-royong-persiapan-bbgrn', 'Gotong Royong Persiapan BBGRN', '<p>Peringatan puncak Bulan Bakti Gotong Royong Masyarakat (BBGRM) XVI yang dipadukan dengan Hari Kesatuan Gerak (HKG) PKK Uma Beringin Tahun 2019,&nbsp; diselenggarakan Selasa (5/11/2019). Kegiatan tersebut, dilaksanakan sebagai upaya untuk meningkatkan budaya gotong royong dalam nilai-nilai kehidupan bermasyarakat.</p>\r\n<p>Dalam kesempatan ini, Ibu Ketua TP PKK Desa Uma Beringin dan Forkopimda juga memberikan penghargaan dan bantuan kepada 39 orang. Pencanangan BBGRM XVI Dan HKG PKK Ke-47 yang ditandai dengan pemukulan kentongan oleh Bupati dan diikuti Forkopimda, serta pelepasan balon oleh Ketua TP PKK Desa Uma Beringin.&nbsp;</p>', 'Berita', 'Publish', 'gotong-royong-persiapan-bbgrn.jpg', '2020-11-07 08:10:49', '2021-06-19 15:28:15'),
(16, 641, 86, 'lomba-posyandu-unter-iwes', 'Lomba Posyandu Unter Iwes ', '<p style=\"text-align: justify;\">osyandu merupakan salah satu bentuk upaya kesehatan &nbsp;bersumber daya masarakat, dari masarakat, oleh masarakat, &nbsp;untuk masyarakat dalam menyelenggarakan pembangunan kesehatan , guna memberdayakan masarakat dan memudahkan dalam memperoleh pelayanan kesehatan agar mencapai masarakat yang sehat.</p>\r\n<p style=\"text-align: justify;\">Seluruh kader dan desa antusiasnya sangat tinggi untuk meningkatkan kesehatan masarakatnya. Hal ini dibuktikan oleh keaktifan kader dalam membina posyandu di desa tersebut.</p>\r\n<p style=\"text-align: justify;\">Dengan diadakannnya lomba Posyandu ini dapat meningkatkan kepedulian seluruh lapisan masyarakat di kecamatan&nbsp; masing-masing sehingga keberadaan posyandu akan meningkat kinerjanya serta meningkat cakupan pelayanan yang diberikan kepada masyarakat sehingga tercapai tujuan akhirnya untuk meningkatkan pemberdayaan masyarakat dalam rangka nenurunkan AKI dan AKB.</p>\r\n<p style=\"text-align: justify;\">Penjurian untuk Posyandu yang mengikuti lomba ini dimulai bulan Februari 2018 dengan berkunjung langsung ke Posyandu sesuai dengan jadwal yang telah ditentukan hingga bulan April 2018. Kemudian dari penilaian tersebut, tim juri akan menentukan siapa yang menjadi Posyandu terbaik dalam pelaksanaan Lomba Posyandu Tahun 2018 ini.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>', 'Berita', 'Publish', 'lomba-posyandu-unter-iwes.jpg', '2020-11-07 08:17:36', '2021-06-19 15:55:33'),
(17, 641, 74, 'pkk-desa-uma-beringin-siap-untuk-menuju-desa-cerdas', 'PKK Desa Uma Beringin, Siap Untuk Menuju Desa Cerdas', '<p>10 november 2020, bertempat di aula Kantor desa Uma beringin PKK Desa Uma Beringin bersama Tim KKN Tematik Fak. Teknik UTS melakukan sosialisasi dan tranining penggunaan Website PKK desa.</p>\r\n<p>kegiatan ini bertujuan untuk mempermudah alur informasi dan pendataan PKK desa agar lebih mudah diakses oleh khalayak masyarakat khusunya Desa Uma Beringin.</p>\r\n<p>semoga kedepannya website ini mampu membawa manfaat bagi PKK khususnya dan masyarakat pada umunya agar segala macam arus informasi dapat diakses secara luas.</p>', 'Berita', 'Publish', 'pkk-desa-uma-beringin-siap-untuk-menuju-desa-cerdas.jpg', '2020-11-10 15:32:06', '2021-06-19 15:27:35'),
(19, 641, 75, 'pelatihan-penulisan-surat-menyurat', 'Pelatihan Penulisan Surat-menyurat', '<p style=\"text-align: justify;\"><strong>Kegiatan</strong> berlangsung dengan sangat antusias dari masyarakat.&nbsp;Kegiatan berlangsung dengan sangat antusias dari masyarakat.&nbsp;Kegiatan berlangsung dengan sangat antusias dari masyarakat.&nbsp;Kegiatan berlangsung dengan sangat antusias dari masyarakat.&nbsp;Kegiatan berlangsung dengan sangat antusias dari masyarakat.&nbsp;</p>', 'Berita', 'Publish', 'pelatihan-penulisan-surat-menyurat.jpg', '2020-11-10 15:34:44', '2021-06-19 15:27:28'),
(20, 641, 81, 'menuju-ekonomi-take-off-melalui-pengembangan-umkm', 'Menuju Ekonomi Take Off Melalui Pengembangan UMKM', '<p>mengaktualisasi segala program yang bersifat pengembangan industri rt guna mempercepat kesejahteraan</p>', 'Berita', 'Publish', 'menuju-ekonomi-take-off-melalui-pengembangan-umkm.jpg', '2020-11-10 15:49:46', '2021-06-19 15:24:10'),
(88310, 641, 74, 'gdc-developer7', 'GDC Developer7', '<p style=\"text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tincidunt consectetur massa, quis porta nibh ullamcorper nec. Suspendisse at ex erat. Etiam fermentum massa eu nulla consequat, eleifend ullamcorper risus venenatis. Integer ac ante et ex molestie ultrices vitae a leo. Etiam venenatis nisl et orci sagittis ornare. Pellentesque vel interdum nibh. Quisque tempus non ligula ac mattis. Proin lacinia massa ac mi convallis, et luctus eros aliquam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla dapibus erat nec venenatis pharetra. Aliquam consectetur, erat quis faucibus venenatis, nulla leo semper leo, at eleifend sem ligula et diam. Mauris gravida ultrices ligula, vitae sagittis ante cursus et. Proin nisi ante, cursus id dapibus a, ultricies ut lorem. Fusce tincidunt molestie eros in auctor. Sed dictum libero ornare, tincidunt orci et, hendrerit diam. Nullam ultricies sed ligula a rhoncus. Nam at dictum dui, in congue elit. Maecenas quis lacus et nunc mattis tincidunt sed ornare massa. Aenean dignissim vitae mi a cursus. Phasellus purus enim, tempor nec feugiat vitae, auctor eu odio. In sed lacus in nunc tempor fermentum. Morbi egestas massa vitae nisl porttitor sodales et sit amet tortor.</p>\r\n<p style=\"text-align: justify;\">Sed elementum mauris sit amet justo varius, vel eleifend est mollis. Duis tincidunt risus maximus pretium consectetur. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam tempus, lorem ut malesuada pharetra, leo purus bibendum purus, vitae ultricies dui mi id turpis. Donec dignissim ac ante non mattis. Sed at mollis felis. Mauris eu leo sem. Aliquam aliquam volutpat odio vel feugiat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla elit eros, lacinia ut tincidunt in, imperdiet ac quam. Sed pulvinar sem quam, eu molestie tortor consectetur ut. Ut consectetur pulvinar arcu et facilisis. Cras erat arcu, mollis imperdiet justo eget, ullamcorper tempus nunc. Vivamus aliquam metus eget elementum semper. Ut rhoncus vel leo id commodo. Quisque egestas, lorem eu aliquam hendrerit, eros tellus sodales felis, quis scelerisque orci urna in orci.</p>\r\n<p style=\"text-align: justify;\">Nullam dictum cursus varius. Phasellus eget lectus pulvinar, iaculis nisl ut, auctor nunc. Fusce egestas, felis id convallis pharetra, nulla nisl rutrum mauris, eu rhoncus sapien ipsum ultricies mi. Proin in posuere tortor. Nullam posuere nisi sed urna porttitor placerat. Donec sit amet vulputate dui. Integer finibus turpis nulla, ac consectetur sapien bibendum ut. Curabitur ipsum nulla, luctus id vehicula a, venenatis at nulla. Sed turpis orci, pretium in velit eget, semper elementum massa. Praesent et lectus aliquam, pretium tellus vel, eleifend velit. Mauris vel urna at massa euismod convallis. Fusce nunc magna, vestibulum sed dignissim at, viverra molestie neque.</p>\r\n<p style=\"text-align: justify;\">Thank you</p>\r\n<p style=\"text-align: justify;\">asd</p>\r\n<p style=\"text-align: justify;\">sa</p>\r\n<p style=\"text-align: justify;\">d</p>\r\n<p style=\"text-align: justify;\">as</p>\r\n<p style=\"text-align: justify;\">d</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>', 'Berita', 'Publish', 'gdc-developer.png', '2021-05-19 20:33:44', '2021-06-19 15:24:01'),
(88311, 641, 79, 'rekapitulasi-data-pkk', 'Rekapitulasi Data PKK', '<div>\r\n<p style=\"text-align: justify;\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<p style=\"text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>', 'Berita', 'Publish', 'lorem-ipsum.jpg', '2021-06-10 00:04:27', '2021-06-19 15:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `data_kas`
--

CREATE TABLE `data_kas` (
  `id_periode` int(11) NOT NULL,
  `id_pokja` int(11) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_kas`
--

INSERT INTO `data_kas` (`id_periode`, `id_pokja`, `nomor`, `keterangan`, `image`, `tanggal`, `jumlah`, `jenis`) VALUES
(13851, 74, '20210609001', 'Dana anggaran 2021', '', '2021-06-09', '41245000', 'masuk'),
(13851, 74, '20210620001', 'Dana hibah desa', '', '2021-06-20', '500000', 'masuk'),
(13851, 74, '20210621001', 'Dana Hibah Provinsi', '', '2021-06-21', '750000', 'masuk'),
(13851, 86, '20210625002', 'Beli obat', '202106250021.jpg', '2021-06-25', '665000', 'keluar'),
(13852, 74, '20210625006', 'Anggaran tahun 2020', '', '2021-06-25', '4500000', 'masuk'),
(13852, 75, '20210625007', 'asd', '20210625007.png', '2021-06-25', '1', 'keluar'),
(13852, 75, '20210625008', 'asddasdasdasdasd', '20210625008.jpg', '2021-06-25', '111111', 'keluar'),
(13851, 75, '20210626001', 'Biaya sewa gedung pertemuan', '20210626001.jpg', '2021-06-26', '3500000', 'keluar'),
(13851, 86, '20210626002', 'Belanja keperluan alat tulis', '20210626002.jpg', '2021-06-26', '245000', 'keluar'),
(13851, 81, '20210626003', 'Konsumsi Panitia dan Peserta', '20210626003.jpg', '2021-06-26', '5000000', 'keluar'),
(13851, 74, '20210628001', '55555', '', '2021-06-28', '55555', 'masuk'),
(13851, 75, '20210628002', 'Berkas-berkas', '20210628002.jpg', '2021-06-28', '45000', 'keluar'),
(13851, 75, '20210628003', 'Alat tulis, pulpen dan lain-lain', '20210628003.jpg', '2021-06-29', '79000', 'keluar'),
(13851, 79, '20210628004', 'Belanja pokja I dan dll', '20210628004.png', '2021-06-28', '345000', 'keluar'),
(13851, 81, '20210628005', 'Belanja pkoja II', '20210628005.png', '2021-06-28', '93800', 'keluar'),
(13851, 82, '20210628006', 'belanja pokja III tiga, beli alat medis', '20210628006.png', '2021-06-28', '750000', 'keluar'),
(13851, 86, '20210628007', 'Keperluan posyandu,', '20210628007.png', '2021-06-28', '760500', 'keluar'),
(13851, 86, '20210628008', 'Alat suntik, dan vaksin', '20210628008.png', '2021-06-28', '1500000', 'keluar');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `galeri_id` int(12) NOT NULL,
  `nomor` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`galeri_id`, `nomor`, `name`, `image`, `description`) VALUES
(9320, 10, 'Suntik Balita', 'GALERI60c7f210878a6.jpg', 'Kegiatan Posyandu'),
(9322, 24, 'Bu ibu rapat dewan', 'GALERI60c7f230ba427.jpg', 'Sekretaris PKK'),
(9327, 27, 'Pelatihan Pembuatan Bunga Dari Kain Perca', 'GALERI60ca2bec9523b.jpg', 'Kegiatan Pokja III'),
(9328, 32, 'Kantor Desa Uma Beringin', 'GALERI60ca2c2881595.jpg', 'Kantor Desa');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_user`
--

CREATE TABLE `jenis_user` (
  `id_jenis` int(6) NOT NULL,
  `nama_jenis` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_user`
--

INSERT INTO `jenis_user` (`id_jenis`, `nama_jenis`) VALUES
(232, 'admin_pkk'),
(233, 'sekret_pokja'),
(234, 'kades');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `slide_setting` varchar(20) NOT NULL,
  `namaweb` varchar(200) NOT NULL,
  `tagline` varchar(200) DEFAULT NULL,
  `tentang` varchar(500) DEFAULT NULL,
  `periode` int(11) NOT NULL,
  `welcome_say` text NOT NULL,
  `deskripsi_say` text NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` varchar(400) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `foto_sambutan` varchar(255) DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `slide_setting`, `namaweb`, `tagline`, `tentang`, `periode`, `welcome_say`, `deskripsi_say`, `email`, `alamat`, `telepon`, `hp`, `logo`, `icon`, `foto_sambutan`, `background`, `facebook`, `twitter`, `instagram`, `google_map`, `id_user`, `tanggal`) VALUES
(1, 'Fade', 'PKK Desa', 'Uma Beringin', 'Tim Penggerak (TP) Pemberdayaan dan Kesejahteraan Keluarga (PKK) Desa Uma Beringin', 13851, 'Selamat Datang Di PKK Desa Uma Beringin', '<blockquote>\r\n<p style=\"text-align: justify;\">Pemberdayaan dan Kesejahteraan Keluarga atau PKK adalah Organisasi kemasyarakatan yang memberdayakan wanita untuk turut berpartisipasi dalam pembangunan Indonesia. PKK sebagai gerakan pembangunan masyarakat bermula dari seminar <em>Home Economic</em> di Bogor tahun 1957. Sebagai tindak lanjut dari seminar tersebut, pada tahun 1961 panitia penyusunan tata susunan pelajaran pada Pendidikan Kesejahteraan Keluarga (PKK), Kementerian Pendidikan bersama kementerian-kementerian lainnya menyusun 10 segi kehidupan keluarga. Gerakan PKK dimasyarakatkan berawal dari kepedulian istri gubernur Jawa Tengah pada tahun 1967 (Ibu Isriati Moenadi) setelah melihat keadaan masyarakat yang menderita busung lapar.</p>\r\n</blockquote>\r\n<p style=\"text-align: justify;\"><strong><br />Salam,<br /></strong><strong>Ketua TP-PKK Desa Uma Beringin</strong></p>', 'pkk.desa@umaberingin.desa.id', 'Jalan Kerato, Kecamatan Unter Iwes, Kabupaten Sumbawa, Nusa Tenggara Barat. 84316', '021-8736162', '+62 813-3184-7725', 'main-logo.png', 'icon_resmi.png', 'sambutan_background.jpg', 'background.jpg', 'https://facebook.com/mfth12', 'https://twitter.com/mfth12s', 'https://instagram.com/mfth12s', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d986.5025979505724!2d117.41213782917971!3d-8.498369473238402!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dcb93257d72a773%3A0x62afa7e787164542!2sKantor%20Desa%20Uma%20Beringin!5e0!3m2!1sen!2sid!4v1603527755215!5m2!1sen!2sid\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 641, '2021-06-28 12:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int(11) NOT NULL,
  `periode_ke` int(11) NOT NULL,
  `pelaksanaan_umum` text NOT NULL,
  `hambatan` text NOT NULL,
  `pemecahan_masalah` text NOT NULL,
  `kesimpulan` text NOT NULL,
  `saran` text NOT NULL,
  `penutup` text NOT NULL,
  `nama_ttd` text NOT NULL,
  `tanggal_ttd` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `periode_ke`, `pelaksanaan_umum`, `hambatan`, `pemecahan_masalah`, `kesimpulan`, `saran`, `penutup`, `nama_ttd`, `tanggal_ttd`) VALUES
(9, 10, 'Dalam rangka menetapkan mekanisme gerakan PKK telah terbentuk kelompok kelompok PKK RW, PKK RT, dan Kelompok Dasawisma namun masih perlu diadakan pembinaan lebih lanjut, terutama dalam pengisian buku-buku catatan kelompok dan lainnya. Dengan adanya kelompok-kelompok tersebut memudahkan gerakan PKK dekat dengan masyarakat seperti pembinaan pada keluarga melalui kelompok Dasawisma. Adapun jumlah kelompok yang terbentuk adalah 30 kelompok Dasawisma, 17 kelompok PKK RT, dan 8 kelompok PKK RW.', 'Masih terdapat pengurus TP-PKK dan Kader yang belum mengetahui fungsi dan tugasnya namun pelaksanaan kegiatan PKK berjalan lancar sebagaimana yang diharapkan \r\nMasih banyak kader yang belum sepenuhnya memahami 10 program pokok PKK sehingga kegiatan PKK di masing-masing kelompok belum maksimal.\r\nKurangnya sarana dan prasarana serta dana untuk mendukung program kerja yang telah direncanakanan.\r\nMasih banyak kader yang merangkap tugas sebagai pengurus PKK maupun kader.\r\nKeterlambatan dana menyebabkan pelaksanaan kegiatan program yang direncanakan juga ikut terlambat.', 'Perlu pembinaan dan pelatihan secara terus menerus dan berkelanjutan terhadap kader-kader PKK Perlu diadakan peningkatan sarana dan prasarana serta dana yang memadai untuk menunjang 10 program pokok PKK Dana diharapkan agar dapat disalurkan pada awal Tahun agar pelaksanaan kegiatan program yang direncanakan dapat terlaksana tepat waktu.', 'Dari uraian diatas, pelaksanaan kegiatan TP-PKK Desa Uma Beringin Kecamatan Unter Iwes masih terdapat hambatan serta kendala yang dihadapi. Berkat kerjasama yang baik dari semua pihak yang membantu terutama dari Pengurus TP-PKK sendiri, instansi terkait maupun masyarakat untuk menunjang 10 program pokok PKK dalam berbagai kegiatan untuk dapat menjadi lebih baik ke depannya yang walaupun belum sepenuhnya merata keseluruh masyarakat.', 'Dengan memperhatikan pelaksanaan kegiatan Tim Penggerak PKK Desa Uma Beringin masih perlu penambahan frekuensi bimbingan dan binaan dari TP-PKK Kecamatan dari TP-PKK Kabupaten agar Desa Uma Beringin dapat lebih maju menuju Desa-Desa yang diharapkan.', 'Demikian Laporan Tahunan Tim Penggerak PKK Desa Uma Beringin ini dibuat sebagai pertanggung jawaban kami. Semoga Allah membalas semua kerja keras kita. Akhirnya kepada Allah SWT kita berserah diri semoga selalu dalam perlindungan-NYA untuk mengabdi kepada-NYA, bangsa dan negara. Aamiiin.', 'Ny. Nurmaningsih Suraiman (default)', '1997-01-01'),
(385, 13851, 'Dalam rangka menetapkan mekanisme gerakan PKK telah terbentuk kelompok kelompok PKK RW, PKK RT, dan Kelompok Dasawisma namun masih perlu diadakan pembinaan lebih lanjut, terutama dalam pengisian buku-buku catatan kelompok dan lainnya. Dengan adanya kelompok-kelompok tersebut memudahkan gerakan PKK dekat dengan masyarakat seperti pembinaan pada keluarga melalui kelompok Dasawisma. Adapun jumlah kelompok yang terbentuk adalah 30 kelompok Dasawisma, 17 kelompok PKK RT, dan 8 kelompok PKK RW.', 'Masih terdapat pengurus TP-PKK dan Kader yang belum mengetahui fungsi dan tugasnya namun pelaksanaan kegiatan PKK berjalan lancar sebagaimana yang diharapkan \r\nMasih banyak kader yang belum sepenuhnya memahami 10 program pokok PKK sehingga kegiatan PKK di masing-masing kelompok belum maksimal.\r\nKurangnya sarana dan prasarana serta dana untuk mendukung program kerja yang telah direncanakanan.\r\nMasih banyak kader yang merangkap tugas sebagai pengurus PKK maupun kader.\r\nKeterlambatan dana menyebabkan pelaksanaan kegiatan program yang direncanakan juga ikut terlambat.', 'Perlu pembinaan dan pelatihan secara terus menerus dan berkelanjutan terhadap kader-kader PKK Perlu diadakan peningkatan sarana dan prasarana serta dana yang memadai untuk menunjang 10 program pokok PKK Dana diharapkan agar dapat disalurkan pada awal Tahun agar pelaksanaan kegiatan program yang direncanakan dapat terlaksana tepat waktu.', 'Dari uraian diatas, pelaksanaan kegiatan TP-PKK Desa Uma Beringin Kecamatan Unter Iwes masih terdapat hambatan serta kendala yang dihadapi. Berkat kerjasama yang baik dari semua pihak yang membantu terutama dari Pengurus TP-PKK sendiri, instansi terkait maupun masyarakat untuk menunjang 10 program pokok PKK dalam berbagai kegiatan untuk dapat menjadi lebih baik ke depannya yang walaupun belum sepenuhnya merata keseluruh masyarakat.', 'Dengan memperhatikan pelaksanaan kegiatan Tim Penggerak PKK Desa Uma Beringin masih perlu penambahan frekuensi bimbingan dan binaan dari TP-PKK Kecamatan dari TP-PKK Kabupaten agar Desa Uma Beringin dapat lebih maju menuju Desa-Desa yang diharapkan.', 'Demikian Laporan Tahunan Tim Penggerak PKK Desa Uma Beringin ini dibuat sebagai pertanggung jawaban kami. Semoga Allah membalas semua kerja keras kita. Akhirnya kepada Allah SWT kita berserah diri semoga selalu dalam perlindungan-NYA untuk mengabdi kepada-NYA, bangsa dan negara. Aamiiin.', 'Ny. Nurmaningsih Suraiman', '2021-06-27'),
(387, 13852, 'Dalam rangka menetapkan mekanisme gerakan PKK telah terbentuk kelompok kelompok PKK RW, PKK RT, dan Kelompok Dasawisma namun masih perlu diadakan pembinaan lebih lanjut, terutama dalam pengisian buku-buku catatan kelompok dan lainnya. Dengan adanya kelompok-kelompok tersebut memudahkan gerakan PKK dekat dengan masyarakat seperti pembinaan pada keluarga melalui kelompok Dasawisma. Adapun jumlah kelompok yang terbentuk adalah 30 kelompok Dasawisma, 17 kelompok PKK RT, dan 8 kelompok PKK RW.', 'Masih terdapat pengurus TP-PKK dan Kader yang belum mengetahui fungsi dan tugasnya namun pelaksanaan kegiatan PKK berjalan lancar sebagaimana yang diharapkan \r\nMasih banyak kader yang belum sepenuhnya memahami 10 program pokok PKK sehingga kegiatan PKK di masing-masing kelompok belum maksimal.\r\nKurangnya sarana dan prasarana serta dana untuk mendukung program kerja yang telah direncanakanan.\r\nMasih banyak kader yang merangkap tugas sebagai pengurus PKK maupun kader.\r\nKeterlambatan dana menyebabkan pelaksanaan kegiatan program yang direncanakan juga ikut terlambat.', 'Perlu pembinaan dan pelatihan secara terus menerus dan berkelanjutan terhadap kader-kader PKK Perlu diadakan peningkatan sarana dan prasarana serta dana yang memadai untuk menunjang 10 program pokok PKK Dana diharapkan agar dapat disalurkan pada awal Tahun agar pelaksanaan kegiatan program yang direncanakan dapat terlaksana tepat waktu.', 'Dari uraian diatas, pelaksanaan kegiatan TP-PKK Desa Uma Beringin Kecamatan Unter Iwes masih terdapat hambatan serta kendala yang dihadapi. Berkat kerjasama yang baik dari semua pihak yang membantu terutama dari Pengurus TP-PKK sendiri, instansi terkait maupun masyarakat untuk menunjang 10 program pokok PKK dalam berbagai kegiatan untuk dapat menjadi lebih baik ke depannya yang walaupun belum sepenuhnya merata keseluruh masyarakat.', 'Dengan memperhatikan pelaksanaan kegiatan Tim Penggerak PKK Desa Uma Beringin masih perlu penambahan frekuensi bimbingan dan binaan dari TP-PKK Kecamatan dari TP-PKK Kabupaten agar Desa Uma Beringin dapat lebih maju menuju Desa-Desa yang diharapkan.', 'Demikian Laporan Tahunan Tim Penggerak PKK Desa Uma Beringin ini dibuat sebagai pertanggung jawaban kami. Semoga Allah membalas semua kerja keras kita. Akhirnya kepada Allah SWT kita berserah diri semoga selalu dalam perlindungan-NYA untuk mengabdi kepada-NYA, bangsa dan negara. Aamiiin.', 'Ny. Nurmaningsih Suraiman', '1997-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `masukan`
--

CREATE TABLE `masukan` (
  `masukan_id` int(12) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `keperluan` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masukan`
--

INSERT INTO `masukan` (`masukan_id`, `status`, `tanggal`, `nama_lengkap`, `email`, `keperluan`, `description`) VALUES
(518, 0, '2021-06-16 08:37:52', 'Miftahul Haq', 'ciftah12@gmail.com', 'Mau izin', 'assalamualaikum.. perkenalkan nama saya Miftahul Haq. Saya mahasiswa teknik informatika, Universitas Teknologi Sumbawa. Mau izin melakukan penelitian..\r\nBagaimana kira2 prosedurnya? terimakasih'),
(519, 0, '2021-06-16 08:39:28', 'asd', 'asdasd@sdas', 'asd', 'asdasda asd as'),
(520, 0, '2021-06-16 17:32:15', 'Goffar', 'gfr@wd.cs', 'Pinjam Aula', 'Assalamualaikum, saya mau pinjam aula. boleh saya minta nomor whatsapp penanggungjawab sarana dan prasarana nya.. terimakasih'),
(521, 0, '2021-06-24 10:13:46', 'sddas', 'ciftah12@gmail.com', 'asd', 'asdasdas asdasd asd a'),
(522, 0, '2021-06-26 22:09:58', 'Bachtiar', 'bach@out.com', 'Silaturahim', 'Assalamualaikum.. saya mau izin silaturahim. boleh saya minta nomor whatsapp yang bisa dihubungi? terimakasih');

-- --------------------------------------------------------

--
-- Table structure for table `periode`
--

CREATE TABLE `periode` (
  `id_periode` int(11) NOT NULL,
  `nama_periode` int(11) NOT NULL,
  `ket` enum('aktif','tidak') NOT NULL DEFAULT 'tidak'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `periode`
--

INSERT INTO `periode` (`id_periode`, `nama_periode`, `ket`) VALUES
(13840, 1989, 'tidak'),
(13841, 2008, 'tidak'),
(13842, 2010, 'tidak'),
(13843, 2017, 'tidak'),
(13845, 2009, 'tidak'),
(13846, 2011, 'tidak'),
(13847, 2016, 'tidak'),
(13848, 2019, 'tidak'),
(13849, 2018, 'tidak'),
(13851, 2021, 'aktif'),
(13852, 2020, 'tidak'),
(13853, 2015, 'tidak');

-- --------------------------------------------------------

--
-- Table structure for table `pokja`
--

CREATE TABLE `pokja` (
  `id_pokja` int(11) NOT NULL,
  `slug_pokja` varchar(255) NOT NULL,
  `nama_pokja` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pokja`
--

INSERT INTO `pokja` (`id_pokja`, `slug_pokja`, `nama_pokja`, `keterangan`, `urutan`) VALUES
(74, 'umum', 'Umum', 'Kegiatan yang bersifat umum PKK desa uma beringin\r\n', 1),
(75, 'sekretariat', 'Sekretariat', 'Kegiatan yang bersangkutan dengan kesekretariatan PKK desa uma beringin', 2),
(79, 'pokja-i', 'Pokja I', 'Kegiatan pokja I', 4),
(81, 'pokja-ii', 'Pokja II', 'Kegiatan pokja II', 5),
(82, 'pokja-iii', 'Pokja III', 'Kegiatan pokja III', 10),
(86, 'pokja-iv', 'Pokja IV', 'Kegiatan pokja IV', 12);

-- --------------------------------------------------------

--
-- Table structure for table `proker`
--

CREATE TABLE `proker` (
  `id_proker` int(11) NOT NULL,
  `id_proker_utama` int(11) NOT NULL,
  `nama_proker` varchar(255) NOT NULL,
  `keterangan_proker` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `tanggal_post` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proker`
--

INSERT INTO `proker` (`id_proker`, `id_proker_utama`, `nama_proker`, `keterangan_proker`, `status`, `tanggal_post`) VALUES
(3820, 42726, 'Melaksanakan pengadministrasian surat keluar dan surat masuk', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3821, 42726, 'Menerima surat-surat masuk dan mengagendakan surat masuk dan keluar', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3822, 42726, 'Mengajukan surat masuk dan surat keluar untuk didisposisikan dan ditandatangani ketua', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3823, 42726, 'Menyalurkan surat masuk ke pokja-pokja sesuai disposisi', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3824, 42727, 'Melaksanakan pemeliharaan ruang sekretariat', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3825, 42727, 'Memelihara inventaris kantor/sekretariat', 'Melaksanakan penggantian papan data kegiatan PKK', 'Terlaksana', '0000-00-00 00:00:00'),
(3826, 42727, 'Ongkos Kantor', '- Melaksanakan pembelian ATK\r\n- Melaksanakan rapat-rapat rutin (Rapat Rutin PKK Desa Uma Beringin tanggal 9 tiap bulan, Rapat koordinasi dengan instansi terkait, Rapat dengan PKK Kecamatan Unter Iwes)', 'Terlaksana', '0000-00-00 00:00:00'),
(3827, 42728, 'Pemantapan kelembagaan dan fungsi Tim Penggerak PKK serta kader lainnya', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3828, 42729, 'Melaksanakan penyusunan rencana program kerja', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3829, 42729, 'Menganalisa data dan menyusun program kerja', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3830, 42729, 'Mengikuti rapat musyawarah rencana pembangunan desa.', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3831, 42730, 'Melaksanakan pembinaan/ pelatihan dasawisma 3 dusun', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3832, 42730, 'Melaksanakan pembinaan/ pelatihan posyandu 3 dusun', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3833, 42731, 'Mengikuti lomba Qosidah Rebana Tingkat Kecamatan Unter Iwes dalam rangka STQ tingkat kecamatan Unter Iwes 2018 di Dusun Pungka', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3834, 42731, 'Menghadiri kegiatan kunjungan kerja Menteri Kominfo di Taman Kerato', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3835, 42731, 'Menghadiri pelaksanaan kegiatan BBGRM di Taman Kerato', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3836, 42732, 'Melaksanakan pengajian rutin tiap bulan pada tanggal 15', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3837, 42733, 'Melaksanakan gotong royong/ kerja bakti setiap hari minggu secara situasional', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3838, 42733, 'Melaksanakan kelompok arisan di pengajian dan dasawisma', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3839, 42733, 'Melaksanakan kelompok jempitan pengajian dan dasawisma', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3840, 42734, 'Melaksanakan pelatihan membuat baju adat Sumbawa', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3841, 42735, 'Melaksanakan pertemuan rutin KOPWAN setiap bulannya pada tanggal 7', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3842, 42736, 'Melaksanakan sosialisasi dan praktek menu B2SA', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3843, 42736, 'Melaksanakan sosialisasi hatinya PKK', '- Juara II Lomba membuat pangan dari bahan-bahan lokal dalam rangka ulang tahun kecamatan unter iwes', 'Terlaksana', '0000-00-00 00:00:00'),
(3844, 42737, 'Melestarikan busana khas daerah', '- Juara I Lomba pawai budaya dalam Festival Olat Ojong dalam rangka Ulang Tahun Kecamatan Unter Iwes ', 'Terlaksana', '0000-00-00 00:00:00'),
(3845, 42738, 'Melaksanakan kegiatan posyandu tiap bulannya', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3846, 42738, 'Melaksanakan pelatihan pengisian buku dasawisma', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3847, 42739, 'Melaksanakan lingkungan bersih dan sehat melalui penyuluhan tentang kebersihan lingkungan agar terhindar dari penyakit diare, ISPA, DBD, dan malaria', '', 'Terlaksana', '0000-00-00 00:00:00'),
(3848, 42741, 'Seminar Nasional 56', 'Belajar dari seminar nasional', 'Terlaksana', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `proker_utama`
--

CREATE TABLE `proker_utama` (
  `id_proker_utama` int(11) NOT NULL,
  `id_periode` int(11) NOT NULL,
  `id_pokja` int(11) NOT NULL,
  `nama_proker_utama` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proker_utama`
--

INSERT INTO `proker_utama` (`id_proker_utama`, `id_periode`, `id_pokja`, `nama_proker_utama`, `keterangan`) VALUES
(42726, 13851, 75, 'Urusan Tata Usaha 4', 'Tentang tata usaha PKK desa'),
(42727, 13851, 75, 'Urusan Rumah Tangga', 'Tentang urusan rumah tangga per dasa wisma'),
(42728, 13851, 75, 'Urusan Pengorganisasian', 'Tentang organisasi yang ada di dalam PKK Desa Uma Beringin'),
(42729, 13851, 75, 'Urusan Perencanaan', ''),
(42730, 13851, 75, 'Urusan Pembinaan', ''),
(42731, 13851, 75, 'Urusan Kehumasan', ''),
(42732, 13851, 79, 'Penghayatan dan Pengamalan Pancasila', 'Penghayatan pancasila kepada kehidupan sehari-hari masyarakat'),
(42733, 13851, 79, 'Gotong Royong ', ''),
(42734, 13851, 81, 'Pendidikan dan Keterampilan', ''),
(42735, 13851, 81, 'Pengembangan Kehidupan Berkoperasi', ''),
(42736, 13851, 82, 'Pangan', ''),
(42737, 13851, 82, 'Sandang', ''),
(42738, 13851, 86, 'Kesehatan', ''),
(42739, 13851, 86, 'Kelestarian Lingkungan Hidup', ''),
(42740, 13852, 75, 'Coba tahun 2020', 'asdasda'),
(42741, 13852, 81, 'Program dari pokja II', 'sabvmsdf afkjnskjn ');

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

CREATE TABLE `quote` (
  `quote_id` int(12) NOT NULL,
  `nomor` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quote`
--

INSERT INTO `quote` (`quote_id`, `nomor`, `name`, `jabatan`, `image`, `description`) VALUES
(9326, 1, 'Irfan Mubarok', '5sadsfs', 'QUOTE60c82652dbd0a.jpg', 'Saya sangat senang sekali dengan semua ini. Rasanya saya sepertia dasdsadsad sda'),
(9327, 17, 'Beruang Cokelat', 'Foto Ilustrasi', 'QUOTE60c82699419ea.png', 'Saya adalah beruang cokelat. Nama saya adalah bear'),
(9330, 2, 'Ramadhan', 'Mahasiswa Peneliti', 'QUOTE60c8317a80197.jpg', 'Saya adalah mahasiswa Saya adalah mahasiswa Saya adalah mahasiswa Saya adalah ma'),
(9331, 4, 'Rysha Apriani', 'Wakil Ketua I', 'QUOTE60c833e5d532d.jpg', 'namas asabsd a sad asndm sa d sad asd asdnuiansd as dasdianwd s asdanskdm s admk');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(12) NOT NULL,
  `nomor` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `nomor`, `name`, `image`, `description`) VALUES
(933, 1, 'Kantor Desa Uma Beringin3', 'SLIDE60c62e0b2ff05.jpg', 'Kecamatan Unter Iwes, Kabupaten Sumbawa'),
(934, 2, 'Kegiatan BBGRM 2018', 'SLIDE60c62e2a7814d.jpg', 'Bulan Bhakti Gotong Royong Masyarakat - Tahun 2018'),
(935, 3, 'Kegiatan Keterampilan Pokja II', 'SLIDE60c62e484dcbd.jpg', 'Kerajinan membuat sarung tissue dari kain flanel'),
(936, 4, 'Lomba Senam HUT Sumbawa', 'SLIDE60c62e9a39a55.jpg', 'Juara Lomba Senam Dalam Rangka Memperingati HUT Sumbawa'),
(937, 5, 'Pelatihan Table Manner - Pokja III', 'SLIDE60c62ec27dd8e.jpg', 'Kegiatan pelatihan table manner yang diselenggarakan Pokja III - Tahun 2018'),
(938, 6, 'Rapat Persiapan BBGRM', 'SLIDE60c62ee6dbc93.jpg', 'Rapat PKK bersama Camat Unter Iwes untuk persiapan BBGRN 2018'),
(939, 7, 'Sosialisasi PERDA Ketahanan dan Kesejahteraan Keluarga', 'SLIDE60c62f4ed07d3.jpg', 'Sosialisasi yang diselenggarakan oleh PERDA Ketahanan dan Kesejahteraan Keluarga - Tahun 2019'),
(940, 8, 'Sosialisasi Program Pemberdayaan Wanita', 'SLIDE60c62f7693b6b.jpg', 'Pra-Pelatihan Wirausaha Pekerja Migran Indonesia (PMI) Purna - Tahun 2019');

-- --------------------------------------------------------

--
-- Table structure for table `struktur`
--

CREATE TABLE `struktur` (
  `struktur_id` int(12) NOT NULL,
  `nomor` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `struktur`
--

INSERT INTO `struktur` (`struktur_id`, `nomor`, `name`, `image`, `description`) VALUES
(2957, 1, 'Ryhsa Apriani', 'PENGURUS60c62cd5e5d7e.jpg', 'Wakil Ketua I'),
(2958, 2, 'Ifran Mubarok', 'PENGURUS60c62d0f7a58a.jpg', 'Anggota KKN Uma Beringin'),
(2960, 5, 'Miftahul Haq', 'PENGURUS60ca203075893.jpg', 'Anggota KKN Uma Beringin'),
(2961, 6, 'Ustadz Hudaya', 'PENGURUS60ca20c07f779.jpg', 'Wakil Pengasuh Pondok Modern Darussalam Gontor Kampus 2'),
(2962, 4, 'Muhammad Daffa', 'PENGURUS60ca28f6e5674.jpg', 'Mahasiswa Universitas Teknologi Sumbawa'),
(2963, 8, 'Jati Imanulloh', 'PENGURUS60ca2adceeec5.jpg', 'Mahasiswa Universitas Teknologi Sumbawa');

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id_periode` int(11) NOT NULL,
  `id_pokja` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`id_periode`, `id_pokja`, `id_surat`, `nomor`, `keterangan`, `image`, `tanggal`, `jenis`) VALUES
(13852, 82, 551, '004/PKJ-3/TP.PKK/VI/2021', 'Surat pendaftaran', 'SURAT60d69c4b73bc7.pdf', '2021-06-24', 'keluar'),
(13852, 81, 552, '009/PKJ-1/TP.PKK/VI/2021', 'Surat jalan delegasi ke lomba provinsi', 'SURAT60d6a62babc28.doc', '2021-06-21', 'keluar'),
(13852, 79, 554, '034/VC/TP.PKK/I/2021', 'Surat kedatangan ibu walikota', 'SURAT60d6b565024dc.png', '2021-06-28', 'masuk'),
(13852, 86, 556, '00715s27917', 'sd sd sd sd sd s s', 'SURAT60d6b71b2ee7a.jpg', '2021-06-26', 'masuk'),
(13852, 75, 557, '031/VC/TP.PKK/III/2025', 'Authorize', 'SURAT60d6b87883d12.pdf', '2021-06-26', 'masuk'),
(13851, 82, 558, '111/PKJ3/TP.PKK/III/2021', 'Surat Perizinan Menggunakan Kantor Desa', 'SURAT60d6c419e47bb.jpg', '2021-06-26', 'masuk'),
(13851, 79, 559, '008/PKJ-I/TP.PKK/III/2021', 'Undangan Acara Lomba PKK Kelurahan', 'SURAT60d6c1107a352.jpg', '2021-06-28', 'keluar'),
(13851, 75, 560, '002/PKK/TP-PKK/V/2021', 'Surat Keputusan Naik Jabatan', 'SURAT60d6c1b018f66.jpg', '2021-06-25', 'keluar'),
(13851, 82, 561, '048/PKJ3/TP.PKK/III/2021c', 'Surat Peminjaman Ruangan Rapat', 'SURAT60d6c45172206.jpg', '2021-06-26', 'masuk'),
(13851, 75, 563, '035/SRT/TP.PKK/III/2025', 'Sertifikat Kegiatan', 'SURAT60d6c4a9834d5.jpg', '2021-06-26', 'keluar'),
(13851, 86, 565, '034/PKJIV/TP.PKK/IX/2021', 'Surat delegasi', 'SURAT60d91331c0e6b.jpg', '2021-06-28', 'keluar'),
(13851, 75, 566, '054/TP.PKK/III/2025', 'Surat Keputusan Umum', 'SURAT60d9134c325bb.jpg', '2021-06-28', 'keluar');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` enum('superadmin','sekret_pokja','kades','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`) VALUES
(641, 'Miftahul Haq', 'ciftah12@gmail.com', 'superadmin', 'desa', 'superadmin'),
(642, 'Miftaasdasdasda', 'cs@fk.co', 'kades', 'desa', 'kades'),
(643, 'Sekretaris Pokja PKK', 'sekret@gmail.com', 'sekret', 'desa', 'sekret_pokja');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD UNIQUE KEY `slug_berita` (`slug_berita`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_pokja` (`id_pokja`) USING BTREE;

--
-- Indexes for table `data_kas`
--
ALTER TABLE `data_kas`
  ADD PRIMARY KEY (`nomor`),
  ADD KEY `id_periode` (`id_periode`),
  ADD KEY `id_pokja` (`id_pokja`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`galeri_id`);

--
-- Indexes for table `jenis_user`
--
ALTER TABLE `jenis_user`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`),
  ADD KEY `periode` (`periode`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`),
  ADD UNIQUE KEY `periode_ke_2` (`periode_ke`);

--
-- Indexes for table `masukan`
--
ALTER TABLE `masukan`
  ADD PRIMARY KEY (`masukan_id`);

--
-- Indexes for table `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`id_periode`);

--
-- Indexes for table `pokja`
--
ALTER TABLE `pokja`
  ADD PRIMARY KEY (`id_pokja`),
  ADD UNIQUE KEY `slug_kategori_berita` (`slug_pokja`);

--
-- Indexes for table `proker`
--
ALTER TABLE `proker`
  ADD PRIMARY KEY (`id_proker`),
  ADD KEY `id_proker_utama` (`id_proker_utama`);

--
-- Indexes for table `proker_utama`
--
ALTER TABLE `proker_utama`
  ADD PRIMARY KEY (`id_proker_utama`),
  ADD KEY `id_periode` (`id_periode`),
  ADD KEY `id_pokja` (`id_pokja`);

--
-- Indexes for table `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`quote_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `struktur`
--
ALTER TABLE `struktur`
  ADD PRIMARY KEY (`struktur_id`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id_surat`) USING BTREE,
  ADD KEY `id_periode` (`id_periode`),
  ADD KEY `id_pokja` (`id_pokja`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88313;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `galeri_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9329;

--
-- AUTO_INCREMENT for table `jenis_user`
--
ALTER TABLE `jenis_user`
  MODIFY `id_jenis` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT for table `masukan`
--
ALTER TABLE `masukan`
  MODIFY `masukan_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=523;

--
-- AUTO_INCREMENT for table `periode`
--
ALTER TABLE `periode`
  MODIFY `id_periode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13854;

--
-- AUTO_INCREMENT for table `pokja`
--
ALTER TABLE `pokja`
  MODIFY `id_pokja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `proker`
--
ALTER TABLE `proker`
  MODIFY `id_proker` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3849;

--
-- AUTO_INCREMENT for table `proker_utama`
--
ALTER TABLE `proker_utama`
  MODIFY `id_proker_utama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42742;

--
-- AUTO_INCREMENT for table `quote`
--
ALTER TABLE `quote`
  MODIFY `quote_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9332;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=941;

--
-- AUTO_INCREMENT for table `struktur`
--
ALTER TABLE `struktur`
  MODIFY `struktur_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2964;

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=567;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=644;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `berita_ibfk_1` FOREIGN KEY (`id_pokja`) REFERENCES `pokja` (`id_pokja`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_kas`
--
ALTER TABLE `data_kas`
  ADD CONSTRAINT `data_kas_ibfk_1` FOREIGN KEY (`id_periode`) REFERENCES `periode` (`id_periode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `data_kas_ibfk_2` FOREIGN KEY (`id_pokja`) REFERENCES `pokja` (`id_pokja`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `proker`
--
ALTER TABLE `proker`
  ADD CONSTRAINT `proker_ibfk_1` FOREIGN KEY (`id_proker_utama`) REFERENCES `proker_utama` (`id_proker_utama`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `proker_utama`
--
ALTER TABLE `proker_utama`
  ADD CONSTRAINT `proker_utama_ibfk_1` FOREIGN KEY (`id_periode`) REFERENCES `periode` (`id_periode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proker_utama_ibfk_2` FOREIGN KEY (`id_pokja`) REFERENCES `pokja` (`id_pokja`);

--
-- Constraints for table `surat`
--
ALTER TABLE `surat`
  ADD CONSTRAINT `surat_ibfk_1` FOREIGN KEY (`id_periode`) REFERENCES `periode` (`id_periode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `surat_ibfk_2` FOREIGN KEY (`id_pokja`) REFERENCES `pokja` (`id_pokja`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `coba2`
--
CREATE DATABASE IF NOT EXISTS `coba2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `coba2`;

-- --------------------------------------------------------

--
-- Stand-in structure for view `bimbingan_dosen_v`
-- (See below for the actual view)
--
CREATE TABLE `bimbingan_dosen_v` (
`nip` varchar(30)
,`nama` varchar(100)
,`nomor_telepon` varchar(30)
,`email` varchar(100)
,`level` enum('1','2')
,`nim` varchar(50)
,`nama_mahasiswa` varchar(100)
,`nama_prodi` varchar(50)
,`mahasiswa_id` bigint(20)
,`id` bigint(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `dokumen_hasil`
--

CREATE TABLE `dokumen_hasil` (
  `id` bigint(20) NOT NULL,
  `mahasiswa_id` bigint(20) NOT NULL,
  `kegiatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` bigint(20) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `prodi_id` bigint(20) NOT NULL DEFAULT 1,
  `nama` varchar(100) NOT NULL,
  `nomor_telepon` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `level` enum('1','2') NOT NULL DEFAULT '2' COMMENT '1 = admin, 2 = dosen'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nip`, `prodi_id`, `nama`, `nomor_telepon`, `email`, `level`) VALUES
(1, '20201011', 1, 'Azhari Ali, M.Kom.', '00852254168', 'dosen@gmail.com', '2'),
(2, '20201015', 1, 'Superadmin', '082330538265', 'admin@admin.com', '1'),
(4, '20201017', 1, 'Ambarwati S. Kom', '08215674535786', 'ambarrannazwa@gmail.com', '2'),
(7, '20201018', 1, 'Binaga Sinaga, M.H', '0872928234', 'binaga@gmail.com', '2'),
(8, '20201019', 1, 'Nina Sulistyo, M.M', '083652776522', 'nina@gmail.com', '2'),
(9, '20201020', 1, 'Ateng, M.Ag', '083876329987', 'ateng@gmail.com', '2');

-- --------------------------------------------------------

--
-- Table structure for table `email_sender`
--

CREATE TABLE `email_sender` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_sender`
--

INSERT INTO `email_sender` (`id`, `email`, `password`, `smtp_port`, `smtp_host`) VALUES
(1, 'admin@imamdev.com', 'password', '465', 'ssl://mail.imamdev.com');

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `dekan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id`, `nama`, `dekan`) VALUES
(1, 'Fakultas Hukum', 'Marcelo Vierra'),
(2, 'Fakultas Ilmu Komputer', 'Luka Modric'),
(3, 'Fakultas Agama Islam', 'Karim Benzema'),
(5, 'Fakultas Ekonomi Dan Bisnis', 'Toni Kroos'),
(6, 'Fakultas Ilmu Keguruan dan Pendidikan', 'Lucas Vasquez'),
(7, 'Fakultas Ilmu Sosial dan Ilmu Politik', 'Marco Asensio'),
(8, 'Fakultas Teknik', 'Daniel Carvajal'),
(9, 'Fakultas Pertanian', 'Casemiro');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_kegiatan`
--

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
-- Stand-in structure for view `hasil_kegiatan_v`
-- (See below for the actual view)
--
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
-- Table structure for table `hasil_penelitian`
--

CREATE TABLE `hasil_penelitian` (
  `id` bigint(20) NOT NULL,
  `penelitian_id` bigint(20) NOT NULL,
  `berita_acara` varchar(50) NOT NULL,
  `masukan` varchar(50) NOT NULL,
  `status` enum('1','2') NOT NULL COMMENT '1 = lulus, 2 = tidak lulus'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hasil_seminar`
--

CREATE TABLE `hasil_seminar` (
  `id` bigint(20) NOT NULL,
  `seminar_id` bigint(20) NOT NULL,
  `berita_acara` text NOT NULL,
  `masukan` text NOT NULL COMMENT 'komentar pdf (pembimbing, penguji, catatan)',
  `status` enum('1','2','3') NOT NULL COMMENT '1 = lanjut, 2 = lanjut (perbaikan), 3 = ditolak'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_seminar`
--

INSERT INTO `hasil_seminar` (`id`, `seminar_id`, `berita_acara`, `masukan`, `status`) VALUES
(4, 0, '', '', '3'),
(8, 0, '', '', '3'),
(9, 7, '', '', '1'),
(17, 15, '', '', '3'),
(18, 16, '', '', '3');

-- --------------------------------------------------------

--
-- Table structure for table `home_template`
--

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
-- Dumping data for table `home_template`
--

INSERT INTO `home_template` (`id`, `carousel_bg1`, `carousel_subtitle1`, `carousel_title1`, `carousel_description1`, `carousel_btn_href1`, `carousel_btn_text1`, `carousel_bg2`, `carousel_subtitle2`, `carousel_title2`, `carousel_description2`, `carousel_btn_href2`, `carousel_btn_text2`, `carousel_bg3`, `carousel_subtitle3`, `carousel_title3`, `carousel_description3`, `carousel_btn_href3`, `carousel_btn_text3`, `tentang_kami_subtitle`, `tentang_kami_isi`, `social_description`, `link_fb`, `link_twitter`, `alamat`, `phone`, `email`, `kontak_subtitle`, `page_title`) VALUES
(1, 'banner1.jpg', 'Aplikasi', 'Monitoring Tugas Akhir Mahasiswa FKM UNTAD', 'Tujuan dari sistem ini adalah sebagai media pencatat, memonitoring dan penjadwalan tugas akhir. Media pencatat yaitu untuk mencatat setiap mahasiswa yang sedang mengerjakan tugas akhir. Memonitoring dalam hal ini diperuntukan untuk dosen agar dosen pembimbing dapat mengawasi mahasiswa bimbingannya agar mengetahui dan mengawasi perkembangan mahasiswa bimbingannya', 'http://localhost/skripsites/home/registrasi', 'Mulai', 'bg-1.jpg', 'Seminar', 'Seminar Proposal, Hasil, dan Skripsi', 'Setiap tahapan seminar, mahasiswa wajib melakukan pendaftaran melalui website ini', 'http://localhost/skripsites/home/registrasi', 'Mulai', 'bg-3.jpg', 'HK3', 'Dokumentasi Kegiatan Mahasiswa', 'Setiap Mahasiswa dapat mengupload semua kegiatan intra dan ekstra yang diikuti yang dibuktikan dengan SK atau sertifikat.', 'http://localhost/skripsites/home/registrasi', 'Mulai', 'Aplikasi Monitoring Tugas Akhir Mahasiswa Universitas Wakanda', 'Tujuan dari sistem ini adalah sebagai media pencatat, memonitoring dan penjadwalan tugas akhir. Media pencatat yaitu untuk mencatat setiap mahasiswa yang sedang mengerjakan tugas akhir. Memonitoring dalam hal ini diperuntukan untuk dosen agar dosen pembimbing dapat mengawasi mahasiswa bimbingannya agar mengetahui dan mengawasi perkembangan mahasiswa bimbingannya.', '', 'wakanda', 'wakanda', 'Jln. Rumambe Blok C5 No. 4 Wakanda', '0218728291', 'wakanda@gmail.com', '', 'Sistem Monitoring Skripsi dan Tugas Akhir');

-- --------------------------------------------------------

--
-- Table structure for table `konsultasi`
--

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
-- Dumping data for table `konsultasi`
--

INSERT INTO `konsultasi` (`id`, `proposal_mahasiswa_id`, `tanggal`, `jam`, `isi`, `bukti`, `sk_tim`, `persetujuan_pembimbing`, `persetujuan_kaprodi`, `komentar_pembimbing`, `komentar_kaprodi`) VALUES
(10, 33, '2022-04-26', '11:00:00', 'Bimbingan BAB 3 Metodologi Penelitian', '20220426060102.doc', NULL, '1', '1', NULL, NULL),
(11, 33, '2022-04-26', '11:05:00', 'Bimbingan Abstrak dan Latar Belakang', '20220426060601.doc', NULL, '1', '1', NULL, NULL),
(12, 32, '2022-04-26', '11:42:00', 'Bimbingan BAB 1 - BAB 2', '20220426064325.doc', NULL, '1', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

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
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `prodi_id`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `email`, `alamat_orang_tua`, `nomor_telepon_orang_tua`, `alamat`, `nomor_telepon`, `nomor_telepon_orang_dekat`, `ipk`, `foto`, `password`, `status`) VALUES
(1, '20201011', 'M. Dimas Trisandi', 1, 'laki-laki', 'Jember', '2004-02-07', 'achmad@gmail.com', 'Karanganyar Rt002 Rw008 Gumukmas', '082330538264', 'Karanganyar Rt002 Rw008 Gumukmas', '081233415715', '085214555215', '90', '20220421055550.png', '$2a$12$Fz4xEjXPx483mz3KfJcWCOYduQysutGc3dpz0RkUSKJrx/K.m8Elq', '1'),
(2, '20201012', 'Zainab', 4, 'perempuan', 'Jember', '2003-10-30', 'zainabzahra@gmail.com', 'Jl. Muria, Wunguan, Kencong', '08526536689', 'Jl. Muria, Wunguan, Kencong', '083446275638', '08123582673', '3.14', '20201012073212.png', '$2y$10$L5aa2RGrSevnjUJBTIrDLuSLgeB0r0Qb12S287NBTiD4HH4FKHdeK', '1'),
(3, '20170808', 'Alimuddin', 2, 'laki-laki', 'Palu', '1992-10-23', 'mahasiswa@gmail.com', 'Palu', '085224445667', 'Palu', '085212221445', '087665778989', '3,5', NULL, '$2a$12$IqfzGA59V3BBFyrNbY.lMuMpJZ7wNJvsSD0c/.WUVyh/VqqB2cH9.', '1'),
(4, '1500068', 'Kosim', 6, 'laki-laki', 'Sumedang', '1997-09-29', 'kozenk1997@gmail.com', 'Perum Jatihurip Blok 9', '082115258816', 'Dsn. Nyalindung RT 001 RW 007', '-', '082295398173', '3.15', '20201029111032.png', '$2y$10$L5aa2RGrSevnjUJBTIrDLuSLgeB0r0Qb12S287NBTiD4HH4FKHdeK', '1'),
(6, '21107021', 'Bohari', 2, 'laki-laki', 'MAKASSAR', '2000-01-03', 'bohari.gizi@gmail.com', 'palu', '085255777888', 'Palu', '085255778777', '085255777888', '3,5', '20201111084428.png', '$2y$10$0cKebn3deUCrntamA6ShlObhPJQmoGL5NQp9rLAtNAeySQPiXp/iG', '1'),
(7, '21180011', 'Ijanuri', 2, 'laki-laki', 'PALU', '1998-12-11', 'bohmks@gmail.com', 'Palu', '085255555555', 'Palu', '085255555555', '085255555555', '3,8', NULL, '$2y$10$De.l6iv0oALRCUNvGH5aCuhNjlDHlP7VGLh/30MII4y2Kr2CsWXNC', '1'),
(8, '987654321', 'Ucup Mancur', 5, 'laki-laki', 'banyuwangi', '2001-01-27', 'muhammadafif@qmail.id', 'banyuwangi', '083189966956', 'genteng banyuwangi', '082132620137', '-', '40', '20201111090112.png', '$2y$10$H6La4JN3/UIdhT5egAIcZ.Flp4LWvPLReXapUs9nDqfa27xiEfjzW', '1'),
(11, '10200099', 'Siti Isnaeni', 8, 'perempuan', 'Gorontalo', '2020-11-20', '123@gmail.com', 'Tasikmalaya, Jawa Barat', '08765452323', 'Tasikmalaya, Jawa Barat', '0821372164613', '0821372164613', '3.11', '20201120050406.png', '$2a$12$F4lXxs7LsFAG/VrAtQdOJ.FG83pKTCByZYZIlltM3FUoJpRLDaWY.', '1'),
(17, '10200055', 'Melody Laksani', 9, 'perempuan', 'Bandung', '2020-11-20', 'syogaadi75@gmail.com', 'Bogor, Jawa Barat', '083814305087', 'Bogor, Jawa Barat', '083814305087', '083814305087', '3.4', NULL, '$2y$10$SDV4DPEUtanNrdub2qvAmeAfF.7dBKp7h1XgN4O.DHpuQAbX2KLTC', '1');

-- --------------------------------------------------------

--
-- Stand-in structure for view `mahasiswa_v`
-- (See below for the actual view)
--
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
-- Table structure for table `penelitian`
--

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
-- Stand-in structure for view `penguji_dosen_v`
-- (See below for the actual view)
--
CREATE TABLE `penguji_dosen_v` (
`nip` varchar(30)
,`nama` varchar(100)
,`nomor_telepon` varchar(30)
,`email` varchar(100)
,`level` enum('1','2')
,`id` bigint(20)
,`mahasiswa_id` bigint(20)
,`nim` varchar(50)
,`nama_mahasiswa` varchar(100)
,`nama_prodi` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` bigint(20) NOT NULL,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `dosen_id` bigint(20) NOT NULL COMMENT 'ketua prodi (pembimbing)',
  `fakultas_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `kode`, `nama`, `dosen_id`, `fakultas_id`) VALUES
(1, '20201110', 'Ilmu Hukum', 1, 1),
(2, '20201017', 'Teknik Informatika', 1, 2),
(4, '20201112', 'Akuntansi', 2, 5),
(5, '20201113', 'Pendidikan Agama Islam', 1, 3),
(6, '20201114', 'Ilmu Komunikasi', 1, 7),
(7, '20201115', 'Teknik Industri', 1, 8),
(8, '20201116', 'Pendidikan Guru SD', 9, 6),
(9, '20201118', 'Ilmu Pertanian', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `proposal_mahasiswa`
--

CREATE TABLE `proposal_mahasiswa` (
  `id` bigint(20) NOT NULL,
  `mahasiswa_id` bigint(20) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `ringkasan` varchar(5000) NOT NULL,
  `dosen_id` bigint(20) NOT NULL COMMENT 'pembimbing',
  `transkip` varchar(255) NOT NULL COMMENT 'pembimbing 2',
  `krs` varchar(255) NOT NULL,
  `dosen_penguji_id` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0' COMMENT '1 = disetujui, 2 = tidak disetujui',
  `deadline` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proposal_mahasiswa`
--

INSERT INTO `proposal_mahasiswa` (`id`, `mahasiswa_id`, `judul`, `ringkasan`, `dosen_id`, `transkip`, `krs`, `dosen_penguji_id`, `status`, `deadline`) VALUES
(34, 3, 'Laravel', 'ini adalah outline', 1, '20221203072155.pdf', '20221203072155.pdf', NULL, '1', '2022-12-15 12:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `proposal_mahasiswa_v`
-- (See below for the actual view)
--
CREATE TABLE `proposal_mahasiswa_v` (
`id` bigint(20)
,`mahasiswa_id` bigint(20)
,`judul` varchar(100)
,`ringkasan` varchar(5000)
,`dosen_id` bigint(20)
,`dosen_penguji_id` int(11)
,`transkip` varchar(255)
,`krs` varchar(255)
,`status` enum('1','0')
,`nim` varchar(50)
,`nama_mahasiswa` varchar(100)
,`nama_prodi` varchar(50)
,`deadline` datetime
,`email` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `seminar`
--

CREATE TABLE `seminar` (
  `id` bigint(20) NOT NULL,
  `proposal_mahasiswa_id` bigint(20) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `tempat` text DEFAULT NULL,
  `file_proposal` varchar(50) NOT NULL,
  `syarat_seminar` varchar(50) NOT NULL,
  `surat_permohonan` varchar(50) DEFAULT NULL,
  `kartu_bimbingan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seminar`
--

INSERT INTO `seminar` (`id`, `proposal_mahasiswa_id`, `tanggal`, `jam`, `tempat`, `file_proposal`, `syarat_seminar`, `surat_permohonan`, `kartu_bimbingan`) VALUES
(15, 34, NULL, NULL, NULL, '20221203100831.pdf', '20221203100831.pdf', '20221203100831.pdf', '20221203100831.pdf'),
(16, 34, '2022-12-07', '16:00:00', 'Ruangan 3', '20221204095827.pdf', '20221204095827.pdf', '20221204095827.pdf', '20221204095827.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `skripsi`
--

CREATE TABLE `skripsi` (
  `id` int(11) NOT NULL,
  `judul_skripsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dosen_id` int(11) DEFAULT NULL,
  `dosen_penguji_id` int(11) DEFAULT NULL,
  `file_skripsi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mahasiswa_id` int(11) DEFAULT NULL,
  `jadwal_skripsi` datetime DEFAULT NULL,
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

--
-- Dumping data for table `skripsi`
--

INSERT INTO `skripsi` (`id`, `judul_skripsi`, `dosen_id`, `dosen_penguji_id`, `file_skripsi`, `mahasiswa_id`, `jadwal_skripsi`, `status`, `krs`, `formulir`, `kwitansi`, `lulus_mkWajib`, `kartu_bimbingan`, `transkip`, `sertifikat`, `lembar_persetujuan`, `bebas_bauk`) VALUES
(20, 'judul1', 2, 4, '20221204054334.pdf', 3, '2022-12-21 12:00:00', '1', '20221204054334.pdf', '20221204054334.pdf', '', '0', '', '', '', '0', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `skripsi_v`
-- (See below for the actual view)
--
CREATE TABLE `skripsi_v` (
`nim` varchar(50)
,`nama_prodi` varchar(50)
,`nama_mahasiswa` varchar(100)
,`mahasiswa_id` bigint(20)
,`judul_skripsi` varchar(100)
,`dosen_id` int(11)
,`dosen_penguji_id` int(11)
,`id` int(11)
,`nama_pembimbing` varchar(100)
,`jadwal_skripsi` datetime
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
-- Stand-in structure for view `skripsi_vl`
-- (See below for the actual view)
--
CREATE TABLE `skripsi_vl` (
`nim` varchar(50)
,`nama_prodi` varchar(50)
,`nama_mahasiswa` varchar(100)
,`id` int(11)
,`judul_skripsi` varchar(100)
,`dosen_id` int(11)
,`dosen_penguji_id` int(11)
,`mahasiswa_id` bigint(20)
,`nama_pembimbing` varchar(100)
,`nama_penguji` varchar(100)
,`jadwal_skripsi` datetime
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
-- Structure for view `bimbingan_dosen_v`
--
DROP TABLE IF EXISTS `bimbingan_dosen_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bimbingan_dosen_v`  AS SELECT `dosen`.`nip` AS `nip`, `dosen`.`nama` AS `nama`, `dosen`.`nomor_telepon` AS `nomor_telepon`, `dosen`.`email` AS `email`, `dosen`.`level` AS `level`, `proposal_mahasiswa_v`.`nim` AS `nim`, `proposal_mahasiswa_v`.`nama_mahasiswa` AS `nama_mahasiswa`, `proposal_mahasiswa_v`.`nama_prodi` AS `nama_prodi`, `proposal_mahasiswa_v`.`mahasiswa_id` AS `mahasiswa_id`, `dosen`.`id` AS `id` FROM (`dosen` join `proposal_mahasiswa_v` on(`dosen`.`id` = `proposal_mahasiswa_v`.`dosen_id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `hasil_kegiatan_v`
--
DROP TABLE IF EXISTS `hasil_kegiatan_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hasil_kegiatan_v`  AS SELECT `hasil_kegiatan`.`mahasiswa_id` AS `mahasiswa_id`, `hasil_kegiatan`.`id` AS `id`, `hasil_kegiatan`.`file` AS `file`, `hasil_kegiatan`.`kegiatan` AS `kegiatan`, `hasil_kegiatan`.`file_kegiatan` AS `file_kegiatan`, `mahasiswa_v`.`nim` AS `nim`, `mahasiswa_v`.`nama` AS `nama_mahasiswa`, `mahasiswa_v`.`nama_prodi` AS `nama_prodi`, `hasil_kegiatan`.`status` AS `status` FROM (`hasil_kegiatan` join `mahasiswa_v` on(`mahasiswa_v`.`id` = `hasil_kegiatan`.`mahasiswa_id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `mahasiswa_v`
--
DROP TABLE IF EXISTS `mahasiswa_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mahasiswa_v`  AS SELECT `prodi`.`nama` AS `nama_prodi`, `mahasiswa`.`id` AS `id`, `mahasiswa`.`nim` AS `nim`, `mahasiswa`.`nama` AS `nama`, `mahasiswa`.`prodi_id` AS `prodi_id`, `mahasiswa`.`jenis_kelamin` AS `jenis_kelamin`, `mahasiswa`.`tempat_lahir` AS `tempat_lahir`, `mahasiswa`.`tanggal_lahir` AS `tanggal_lahir`, `mahasiswa`.`email` AS `email`, `mahasiswa`.`alamat_orang_tua` AS `alamat_orang_tua`, `mahasiswa`.`nomor_telepon_orang_tua` AS `nomor_telepon_orang_tua`, `mahasiswa`.`alamat` AS `alamat`, `mahasiswa`.`nomor_telepon` AS `nomor_telepon`, `mahasiswa`.`nomor_telepon_orang_dekat` AS `nomor_telepon_orang_dekat`, `mahasiswa`.`ipk` AS `ipk`, `mahasiswa`.`foto` AS `foto`, `mahasiswa`.`password` AS `password`, `mahasiswa`.`status` AS `status` FROM (`mahasiswa` join `prodi` on(`mahasiswa`.`prodi_id` = `prodi`.`id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `penguji_dosen_v`
--
DROP TABLE IF EXISTS `penguji_dosen_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `penguji_dosen_v`  AS SELECT `dosen`.`nip` AS `nip`, `dosen`.`nama` AS `nama`, `dosen`.`nomor_telepon` AS `nomor_telepon`, `dosen`.`email` AS `email`, `dosen`.`level` AS `level`, `dosen`.`id` AS `id`, `proposal_mahasiswa_v`.`mahasiswa_id` AS `mahasiswa_id`, `proposal_mahasiswa_v`.`nim` AS `nim`, `proposal_mahasiswa_v`.`nama_mahasiswa` AS `nama_mahasiswa`, `proposal_mahasiswa_v`.`nama_prodi` AS `nama_prodi` FROM (`dosen` join `proposal_mahasiswa_v` on(`dosen`.`id` = `proposal_mahasiswa_v`.`dosen_penguji_id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `proposal_mahasiswa_v`
--
DROP TABLE IF EXISTS `proposal_mahasiswa_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `proposal_mahasiswa_v`  AS SELECT `proposal_mahasiswa`.`id` AS `id`, `proposal_mahasiswa`.`mahasiswa_id` AS `mahasiswa_id`, `proposal_mahasiswa`.`judul` AS `judul`, `proposal_mahasiswa`.`ringkasan` AS `ringkasan`, `proposal_mahasiswa`.`dosen_id` AS `dosen_id`, `proposal_mahasiswa`.`dosen_penguji_id` AS `dosen_penguji_id`, `proposal_mahasiswa`.`transkip` AS `transkip`, `proposal_mahasiswa`.`krs` AS `krs`, `proposal_mahasiswa`.`status` AS `status`, `mahasiswa_v`.`nim` AS `nim`, `mahasiswa_v`.`nama` AS `nama_mahasiswa`, `mahasiswa_v`.`nama_prodi` AS `nama_prodi`, `proposal_mahasiswa`.`deadline` AS `deadline`, `mahasiswa_v`.`email` AS `email` FROM (`proposal_mahasiswa` join `mahasiswa_v` on(`proposal_mahasiswa`.`mahasiswa_id` = `mahasiswa_v`.`id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `skripsi_v`
--
DROP TABLE IF EXISTS `skripsi_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `skripsi_v`  AS SELECT `mahasiswa_v`.`nim` AS `nim`, `mahasiswa_v`.`nama_prodi` AS `nama_prodi`, `mahasiswa_v`.`nama` AS `nama_mahasiswa`, `mahasiswa_v`.`id` AS `mahasiswa_id`, `skripsi`.`judul_skripsi` AS `judul_skripsi`, `skripsi`.`dosen_id` AS `dosen_id`, `skripsi`.`dosen_penguji_id` AS `dosen_penguji_id`, `skripsi`.`id` AS `id`, `dosen`.`nama` AS `nama_pembimbing`, `skripsi`.`jadwal_skripsi` AS `jadwal_skripsi`, `skripsi`.`file_skripsi` AS `file_skripsi`, `skripsi`.`status` AS `status`, `skripsi`.`krs` AS `krs`, `skripsi`.`formulir` AS `formulir`, `skripsi`.`kwitansi` AS `kwitansi`, `skripsi`.`lulus_mkWajib` AS `lulus_mkWajib`, `skripsi`.`kartu_bimbingan` AS `kartu_bimbingan`, `skripsi`.`transkip` AS `transkip`, `skripsi`.`sertifikat` AS `sertifikat`, `skripsi`.`lembar_persetujuan` AS `lembar_persetujuan`, `skripsi`.`bebas_bauk` AS `bebas_bauk`, `mahasiswa_v`.`email` AS `email` FROM ((`skripsi` join `mahasiswa_v` on(`skripsi`.`mahasiswa_id` = `mahasiswa_v`.`id`)) join `dosen` on(`skripsi`.`dosen_id` = `dosen`.`id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `skripsi_vl`
--
DROP TABLE IF EXISTS `skripsi_vl`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `skripsi_vl`  AS SELECT `skripsi_v`.`nim` AS `nim`, `skripsi_v`.`nama_prodi` AS `nama_prodi`, `skripsi_v`.`nama_mahasiswa` AS `nama_mahasiswa`, `skripsi_v`.`id` AS `id`, `skripsi_v`.`judul_skripsi` AS `judul_skripsi`, `skripsi_v`.`dosen_id` AS `dosen_id`, `skripsi_v`.`dosen_penguji_id` AS `dosen_penguji_id`, `skripsi_v`.`mahasiswa_id` AS `mahasiswa_id`, `skripsi_v`.`nama_pembimbing` AS `nama_pembimbing`, `dosen`.`nama` AS `nama_penguji`, `skripsi_v`.`jadwal_skripsi` AS `jadwal_skripsi`, `skripsi_v`.`file_skripsi` AS `file_skripsi`, `skripsi_v`.`status` AS `status`, `skripsi_v`.`krs` AS `krs`, `skripsi_v`.`formulir` AS `formulir`, `skripsi_v`.`kwitansi` AS `kwitansi`, `skripsi_v`.`lulus_mkWajib` AS `lulus_mkWajib`, `skripsi_v`.`kartu_bimbingan` AS `kartu_bimbingan`, `skripsi_v`.`transkip` AS `transkip`, `skripsi_v`.`sertifikat` AS `sertifikat`, `skripsi_v`.`lembar_persetujuan` AS `lembar_persetujuan`, `skripsi_v`.`bebas_bauk` AS `bebas_bauk`, `skripsi_v`.`email` AS `email` FROM (`skripsi_v` join `dosen` on(`skripsi_v`.`dosen_penguji_id` = `dosen`.`id`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokumen_hasil`
--
ALTER TABLE `dokumen_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_sender`
--
ALTER TABLE `email_sender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_kegiatan`
--
ALTER TABLE `hasil_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_penelitian`
--
ALTER TABLE `hasil_penelitian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_seminar`
--
ALTER TABLE `hasil_seminar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_template`
--
ALTER TABLE `home_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penelitian`
--
ALTER TABLE `penelitian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposal_mahasiswa`
--
ALTER TABLE `proposal_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seminar`
--
ALTER TABLE `seminar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skripsi`
--
ALTER TABLE `skripsi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokumen_hasil`
--
ALTER TABLE `dokumen_hasil`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `email_sender`
--
ALTER TABLE `email_sender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hasil_kegiatan`
--
ALTER TABLE `hasil_kegiatan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `hasil_penelitian`
--
ALTER TABLE `hasil_penelitian`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `hasil_seminar`
--
ALTER TABLE `hasil_seminar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `home_template`
--
ALTER TABLE `home_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `penelitian`
--
ALTER TABLE `penelitian`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `proposal_mahasiswa`
--
ALTER TABLE `proposal_mahasiswa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `seminar`
--
ALTER TABLE `seminar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `skripsi`
--
ALTER TABLE `skripsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Database: `default_sips`
--
CREATE DATABASE IF NOT EXISTS `default_sips` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `default_sips`;

-- --------------------------------------------------------

--
-- Stand-in structure for view `bimbingan_dosen_v`
-- (See below for the actual view)
--
CREATE TABLE `bimbingan_dosen_v` (
`nip` varchar(30)
,`nama` varchar(100)
,`nomor_telepon` varchar(30)
,`email` varchar(100)
,`level` enum('1','2')
,`nim` varchar(50)
,`nama_mahasiswa` varchar(100)
,`nama_prodi` varchar(50)
,`mahasiswa_id` bigint(20)
,`id` bigint(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `dokumen_hasil`
--

CREATE TABLE `dokumen_hasil` (
  `id` bigint(20) NOT NULL,
  `mahasiswa_id` bigint(20) NOT NULL,
  `kegiatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` bigint(20) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `prodi_id` bigint(20) NOT NULL DEFAULT 1,
  `nama` varchar(100) NOT NULL,
  `nomor_telepon` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `level` enum('1','2') NOT NULL DEFAULT '2' COMMENT '1 = admin, 2 = dosen'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nip`, `prodi_id`, `nama`, `nomor_telepon`, `email`, `level`) VALUES
(1, '20201011', 1, 'Azhari Ali, M.Kom.', '00852254168', 'dosen@gmail.com', '2'),
(2, '20201015', 1, 'Superadmin', '082330538265', 'admin@admin.com', '1'),
(4, '20201017', 1, 'Ambarwati S. Kom', '08215674535786', 'ambarrannazwa@gmail.com', '2'),
(7, '20201018', 1, 'Binaga Sinaga, M.H', '0872928234', 'binaga@gmail.com', '2'),
(8, '20201019', 1, 'Nina Sulistyo, M.M', '083652776522', 'nina@gmail.com', '2'),
(9, '20201020', 1, 'Ateng, M.Ag', '083876329987', 'ateng@gmail.com', '2');

-- --------------------------------------------------------

--
-- Table structure for table `email_sender`
--

CREATE TABLE `email_sender` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_sender`
--

INSERT INTO `email_sender` (`id`, `email`, `password`, `smtp_port`, `smtp_host`) VALUES
(1, 'admin@imamdev.com', 'password', '465', 'ssl://mail.imamdev.com');

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `dekan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id`, `nama`, `dekan`) VALUES
(1, 'Fakultas Hukum', 'Marcelo Vierra'),
(2, 'Fakultas Ilmu Komputer', 'Luka Modric'),
(3, 'Fakultas Agama Islam', 'Karim Benzema'),
(5, 'Fakultas Ekonomi Dan Bisnis', 'Toni Kroos'),
(6, 'Fakultas Ilmu Keguruan dan Pendidikan', 'Lucas Vasquez'),
(7, 'Fakultas Ilmu Sosial dan Ilmu Politik', 'Marco Asensio'),
(8, 'Fakultas Teknik', 'Daniel Carvajal'),
(9, 'Fakultas Pertanian', 'Casemiro');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_kegiatan`
--

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
-- Stand-in structure for view `hasil_kegiatan_v`
-- (See below for the actual view)
--
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
-- Table structure for table `hasil_penelitian`
--

CREATE TABLE `hasil_penelitian` (
  `id` bigint(20) NOT NULL,
  `penelitian_id` bigint(20) NOT NULL,
  `berita_acara` varchar(50) NOT NULL,
  `masukan` varchar(50) NOT NULL,
  `status` enum('1','2') NOT NULL COMMENT '1 = lulus, 2 = tidak lulus'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_penelitian`
--

INSERT INTO `hasil_penelitian` (`id`, `penelitian_id`, `berita_acara`, `masukan`, `status`) VALUES
(20, 20, '20220426035830.pdf', '20220426035830.pdf', '1');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_seminar`
--

CREATE TABLE `hasil_seminar` (
  `id` bigint(20) NOT NULL,
  `seminar_id` bigint(20) NOT NULL,
  `berita_acara` text NOT NULL,
  `masukan` text NOT NULL COMMENT 'komentar pdf (pembimbing, penguji, catatan)',
  `status` enum('1','2','3') NOT NULL COMMENT '1 = lanjut, 2 = lanjut (perbaikan), 3 = ditolak'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_seminar`
--

INSERT INTO `hasil_seminar` (`id`, `seminar_id`, `berita_acara`, `masukan`, `status`) VALUES
(4, 0, '', '', '3'),
(8, 0, '', '', '3'),
(9, 7, '', '', '1'),
(14, 12, '20220425053149.pdf', '20220425053149.pdf', '1');

-- --------------------------------------------------------

--
-- Table structure for table `home_template`
--

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
-- Dumping data for table `home_template`
--

INSERT INTO `home_template` (`id`, `carousel_bg1`, `carousel_subtitle1`, `carousel_title1`, `carousel_description1`, `carousel_btn_href1`, `carousel_btn_text1`, `carousel_bg2`, `carousel_subtitle2`, `carousel_title2`, `carousel_description2`, `carousel_btn_href2`, `carousel_btn_text2`, `carousel_bg3`, `carousel_subtitle3`, `carousel_title3`, `carousel_description3`, `carousel_btn_href3`, `carousel_btn_text3`, `tentang_kami_subtitle`, `tentang_kami_isi`, `social_description`, `link_fb`, `link_twitter`, `alamat`, `phone`, `email`, `kontak_subtitle`, `page_title`) VALUES
(1, 'banner1.jpg', 'Aplikasi', 'Monitoring Tugas Akhir Mahasiswa FKM UNTAD', 'Tujuan dari sistem ini adalah sebagai media pencatat, memonitoring dan penjadwalan tugas akhir. Media pencatat yaitu untuk mencatat setiap mahasiswa yang sedang mengerjakan tugas akhir. Memonitoring dalam hal ini diperuntukan untuk dosen agar dosen pembimbing dapat mengawasi mahasiswa bimbingannya agar mengetahui dan mengawasi perkembangan mahasiswa bimbingannya', 'http://localhost/skripsites/home/registrasi', 'Mulai', 'bg-1.jpg', 'Seminar', 'Seminar Proposal, Hasil, dan Skripsi', 'Setiap tahapan seminar, mahasiswa wajib melakukan pendaftaran melalui website ini', 'http://localhost/skripsites/home/registrasi', 'Mulai', 'bg-3.jpg', 'HK3', 'Dokumentasi Kegiatan Mahasiswa', 'Setiap Mahasiswa dapat mengupload semua kegiatan intra dan ekstra yang diikuti yang dibuktikan dengan SK atau sertifikat.', 'http://localhost/skripsites/home/registrasi', 'Mulai', 'Aplikasi Monitoring Tugas Akhir Mahasiswa Universitas Wakanda', 'Tujuan dari sistem ini adalah sebagai media pencatat, memonitoring dan penjadwalan tugas akhir. Media pencatat yaitu untuk mencatat setiap mahasiswa yang sedang mengerjakan tugas akhir. Memonitoring dalam hal ini diperuntukan untuk dosen agar dosen pembimbing dapat mengawasi mahasiswa bimbingannya agar mengetahui dan mengawasi perkembangan mahasiswa bimbingannya.', '', 'wakanda', 'wakanda', 'Jln. Rumambe Blok C5 No. 4 Wakanda', '0218728291', 'wakanda@gmail.com', '', 'Sistem Monitoring Skripsi dan Tugas Akhir');

-- --------------------------------------------------------

--
-- Table structure for table `konsultasi`
--

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
-- Dumping data for table `konsultasi`
--

INSERT INTO `konsultasi` (`id`, `proposal_mahasiswa_id`, `tanggal`, `jam`, `isi`, `bukti`, `sk_tim`, `persetujuan_pembimbing`, `persetujuan_kaprodi`, `komentar_pembimbing`, `komentar_kaprodi`) VALUES
(10, 33, '2022-04-26', '11:00:00', 'Bimbingan BAB 3 Metodologi Penelitian', '20220426060102.doc', NULL, '1', '1', NULL, NULL),
(11, 33, '2022-04-26', '11:05:00', 'Bimbingan Abstrak dan Latar Belakang', '20220426060601.doc', NULL, '1', '1', NULL, NULL),
(12, 32, '2022-04-26', '11:42:00', 'Bimbingan BAB 1 - BAB 2', '20220426064325.doc', NULL, '1', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

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
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `prodi_id`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `email`, `alamat_orang_tua`, `nomor_telepon_orang_tua`, `alamat`, `nomor_telepon`, `nomor_telepon_orang_dekat`, `ipk`, `foto`, `password`, `status`) VALUES
(1, '20201011', 'M. Dimas Trisandi', 1, 'laki-laki', 'Jember', '2004-02-07', 'achmad@gmail.com', 'Karanganyar Rt002 Rw008 Gumukmas', '082330538264', 'Karanganyar Rt002 Rw008 Gumukmas', '081233415715', '085214555215', '90', '20220421055550.png', '$2a$12$Fz4xEjXPx483mz3KfJcWCOYduQysutGc3dpz0RkUSKJrx/K.m8Elq', '1'),
(2, '20201012', 'Zainab', 4, 'perempuan', 'Jember', '2003-10-30', 'zainabzahra@gmail.com', 'Jl. Muria, Wunguan, Kencong', '08526536689', 'Jl. Muria, Wunguan, Kencong', '083446275638', '08123582673', '3.14', '20201012073212.png', '$2y$10$L5aa2RGrSevnjUJBTIrDLuSLgeB0r0Qb12S287NBTiD4HH4FKHdeK', '1'),
(3, '20170808', 'Alimuddin', 2, 'laki-laki', 'Palu', '1992-10-23', 'mahasiswa@gmail.com', 'Palu', '085224445667', 'Palu', '085212221445', '087665778989', '3,5', NULL, '$2a$12$IqfzGA59V3BBFyrNbY.lMuMpJZ7wNJvsSD0c/.WUVyh/VqqB2cH9.', '1'),
(4, '1500068', 'Kosim', 6, 'laki-laki', 'Sumedang', '1997-09-29', 'kozenk1997@gmail.com', 'Perum Jatihurip Blok 9', '082115258816', 'Dsn. Nyalindung RT 001 RW 007', '-', '082295398173', '3.15', '20201029111032.png', '$2y$10$L5aa2RGrSevnjUJBTIrDLuSLgeB0r0Qb12S287NBTiD4HH4FKHdeK', '1'),
(6, '21107021', 'Bohari', 2, 'laki-laki', 'MAKASSAR', '2000-01-03', 'bohari.gizi@gmail.com', 'palu', '085255777888', 'Palu', '085255778777', '085255777888', '3,5', '20201111084428.png', '$2y$10$0cKebn3deUCrntamA6ShlObhPJQmoGL5NQp9rLAtNAeySQPiXp/iG', '1'),
(7, '21180011', 'Ijanuri', 2, 'laki-laki', 'PALU', '1998-12-11', 'bohmks@gmail.com', 'Palu', '085255555555', 'Palu', '085255555555', '085255555555', '3,8', NULL, '$2y$10$De.l6iv0oALRCUNvGH5aCuhNjlDHlP7VGLh/30MII4y2Kr2CsWXNC', '1'),
(8, '987654321', 'Ucup Mancur', 5, 'laki-laki', 'banyuwangi', '2001-01-27', 'muhammadafif@qmail.id', 'banyuwangi', '083189966956', 'genteng banyuwangi', '082132620137', '-', '40', '20201111090112.png', '$2y$10$H6La4JN3/UIdhT5egAIcZ.Flp4LWvPLReXapUs9nDqfa27xiEfjzW', '1'),
(11, '10200099', 'Siti Isnaeni', 8, 'perempuan', 'Gorontalo', '2020-11-20', '123@gmail.com', 'Tasikmalaya, Jawa Barat', '08765452323', 'Tasikmalaya, Jawa Barat', '0821372164613', '0821372164613', '3.11', '20201120050406.png', '$2a$12$F4lXxs7LsFAG/VrAtQdOJ.FG83pKTCByZYZIlltM3FUoJpRLDaWY.', '1'),
(17, '10200055', 'Melody Laksani', 9, 'perempuan', 'Bandung', '2020-11-20', 'syogaadi75@gmail.com', 'Bogor, Jawa Barat', '083814305087', 'Bogor, Jawa Barat', '083814305087', '083814305087', '3.4', NULL, '$2y$10$SDV4DPEUtanNrdub2qvAmeAfF.7dBKp7h1XgN4O.DHpuQAbX2KLTC', '1');

-- --------------------------------------------------------

--
-- Stand-in structure for view `mahasiswa_v`
-- (See below for the actual view)
--
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
-- Table structure for table `penelitian`
--

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

--
-- Dumping data for table `penelitian`
--

INSERT INTO `penelitian` (`id`, `judul_penelitian`, `proposal_mahasiswa_id`, `pembimbing_id`, `penguji_id`, `bukti`, `persetujuan_pembimbing`, `persetujuan_penguji`, `komentar_pembimbing`, `komentar_penguji`, `sk_tim`, `file_seminar`, `bukti_konsultasi`) VALUES
(20, 'Rancang Bangun CMS Berbasi IT Service Menggunakan ITIL V3', 33, 8, 1, '20220426034134.pdf', '2', '2', NULL, NULL, '20220426034134.pdf', '20220426034134.pdf', '20220426034134.pdf');

-- --------------------------------------------------------

--
-- Stand-in structure for view `penguji_dosen_v`
-- (See below for the actual view)
--
CREATE TABLE `penguji_dosen_v` (
`nip` varchar(30)
,`nama` varchar(100)
,`nomor_telepon` varchar(30)
,`email` varchar(100)
,`level` enum('1','2')
,`id` bigint(20)
,`mahasiswa_id` bigint(20)
,`nim` varchar(50)
,`nama_mahasiswa` varchar(100)
,`nama_prodi` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` bigint(20) NOT NULL,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `dosen_id` bigint(20) NOT NULL COMMENT 'ketua prodi (pembimbing)',
  `fakultas_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `kode`, `nama`, `dosen_id`, `fakultas_id`) VALUES
(1, '20201110', 'Ilmu Hukum', 1, 1),
(2, '20201017', 'Teknik Informatika', 1, 2),
(4, '20201112', 'Akuntansi', 2, 5),
(5, '20201113', 'Pendidikan Agama Islam', 1, 3),
(6, '20201114', 'Ilmu Komunikasi', 1, 7),
(7, '20201115', 'Teknik Industri', 1, 8),
(8, '20201116', 'Pendidikan Guru SD', 9, 6),
(9, '20201118', 'Ilmu Pertanian', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `proposal_mahasiswa`
--

CREATE TABLE `proposal_mahasiswa` (
  `id` bigint(20) NOT NULL,
  `mahasiswa_id` bigint(20) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `ringkasan` varchar(5000) NOT NULL,
  `dosen_id` bigint(20) NOT NULL COMMENT 'pembimbing',
  `dosen2_id` int(11) NOT NULL DEFAULT 1 COMMENT 'pembimbing 2',
  `dosen_penguji_id` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0' COMMENT '1 = disetujui, 2 = tidak disetujui',
  `deadline` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proposal_mahasiswa`
--

INSERT INTO `proposal_mahasiswa` (`id`, `mahasiswa_id`, `judul`, `ringkasan`, `dosen_id`, `dosen2_id`, `dosen_penguji_id`, `status`, `deadline`) VALUES
(32, 11, 'Manajemen Keuangan Menggunakan Methode Gabungan', 'Metode ini digunakan untuk mengetahui rekapitulasi keuangan dengan menggunakan methode gabungan', 7, 8, 8, '1', '2030-04-29 12:00:00'),
(33, 3, 'Rancang Bangun CMS Berbasi IT Service Menggunakan ITIL V3', 'Pada penelitian akan diusulkan kerangka kerja ITIL untuk meninjau kembali praktek layananan pada IT Service\r\nManagement.', 1, 8, 1, '1', '2030-04-25 12:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `proposal_mahasiswa_v`
-- (See below for the actual view)
--
CREATE TABLE `proposal_mahasiswa_v` (
`id` bigint(20)
,`mahasiswa_id` bigint(20)
,`judul` varchar(100)
,`ringkasan` varchar(5000)
,`dosen_id` bigint(20)
,`dosen_penguji_id` int(11)
,`status` enum('1','0')
,`nim` varchar(50)
,`nama_mahasiswa` varchar(100)
,`nama_prodi` varchar(50)
,`deadline` datetime
,`email` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `seminar`
--

CREATE TABLE `seminar` (
  `id` bigint(20) NOT NULL,
  `proposal_mahasiswa_id` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tempat` text NOT NULL,
  `file_proposal` varchar(50) NOT NULL,
  `sk_tim` varchar(50) NOT NULL,
  `bukti_konsultasi` varchar(50) DEFAULT NULL,
  `persetujuan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seminar`
--

INSERT INTO `seminar` (`id`, `proposal_mahasiswa_id`, `tanggal`, `jam`, `tempat`, `file_proposal`, `sk_tim`, `bukti_konsultasi`, `persetujuan`) VALUES
(12, 33, '2022-04-25', '10:44:00', 'Aula Fakultas', '20220425044752.pdf', '20220425044752.pdf', '20220425044752.pdf', '20220425044752.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `skripsi`
--

CREATE TABLE `skripsi` (
  `id` int(11) NOT NULL,
  `judul_skripsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dosen_id` int(11) DEFAULT NULL,
  `dosen_penguji_id` int(11) DEFAULT NULL,
  `file_skripsi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sk_tim` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mahasiswa_id` int(11) DEFAULT NULL,
  `jadwal_skripsi` datetime DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `persetujuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukti_konsultasi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skripsi`
--

INSERT INTO `skripsi` (`id`, `judul_skripsi`, `dosen_id`, `dosen_penguji_id`, `file_skripsi`, `sk_tim`, `mahasiswa_id`, `jadwal_skripsi`, `status`, `persetujuan`, `bukti_konsultasi`) VALUES
(19, 'Rancang Bangun CMS Berbasi IT Service Menggunakan ITIL V3', 8, 1, '20220426040137.pdf', '20220426040137.pdf', 3, '2022-12-26 12:00:00', '1', '20220426040137.pdf', '20220426040137.pdf');

-- --------------------------------------------------------

--
-- Stand-in structure for view `skripsi_v`
-- (See below for the actual view)
--
CREATE TABLE `skripsi_v` (
`nim` varchar(50)
,`nama_prodi` varchar(50)
,`nama_mahasiswa` varchar(100)
,`id` bigint(20)
,`judul_skripsi` varchar(100)
,`dosen_id` int(11)
,`dosen_penguji_id` int(11)
,`sk_tim` varchar(50)
,`mahasiswa_id` int(11)
,`nama_pembimbing` varchar(100)
,`jadwal_skripsi` datetime
,`file_skripsi` varchar(50)
,`status` varchar(1)
,`persetujuan` varchar(50)
,`bukti_konsultasi` varchar(50)
,`email` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `skripsi_vl`
-- (See below for the actual view)
--
CREATE TABLE `skripsi_vl` (
`nim` varchar(50)
,`nama_prodi` varchar(50)
,`nama_mahasiswa` varchar(100)
,`id` bigint(20)
,`judul_skripsi` varchar(100)
,`dosen_id` int(11)
,`dosen_penguji_id` int(11)
,`sk_tim` varchar(50)
,`mahasiswa_id` int(11)
,`nama_pembimbing` varchar(100)
,`nama_penguji` varchar(100)
,`jadwal_skripsi` datetime
,`file_skripsi` varchar(50)
,`status` varchar(1)
,`persetujuan` varchar(50)
,`bukti_konsultasi` varchar(50)
,`email` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure for view `bimbingan_dosen_v`
--
DROP TABLE IF EXISTS `bimbingan_dosen_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bimbingan_dosen_v`  AS SELECT `dosen`.`nip` AS `nip`, `dosen`.`nama` AS `nama`, `dosen`.`nomor_telepon` AS `nomor_telepon`, `dosen`.`email` AS `email`, `dosen`.`level` AS `level`, `proposal_mahasiswa_v`.`nim` AS `nim`, `proposal_mahasiswa_v`.`nama_mahasiswa` AS `nama_mahasiswa`, `proposal_mahasiswa_v`.`nama_prodi` AS `nama_prodi`, `proposal_mahasiswa_v`.`mahasiswa_id` AS `mahasiswa_id`, `dosen`.`id` AS `id` FROM (`dosen` join `proposal_mahasiswa_v` on(`dosen`.`id` = `proposal_mahasiswa_v`.`dosen_id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `hasil_kegiatan_v`
--
DROP TABLE IF EXISTS `hasil_kegiatan_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hasil_kegiatan_v`  AS SELECT `hasil_kegiatan`.`mahasiswa_id` AS `mahasiswa_id`, `hasil_kegiatan`.`id` AS `id`, `hasil_kegiatan`.`file` AS `file`, `hasil_kegiatan`.`kegiatan` AS `kegiatan`, `hasil_kegiatan`.`file_kegiatan` AS `file_kegiatan`, `mahasiswa_v`.`nim` AS `nim`, `mahasiswa_v`.`nama` AS `nama_mahasiswa`, `mahasiswa_v`.`nama_prodi` AS `nama_prodi`, `hasil_kegiatan`.`status` AS `status` FROM (`hasil_kegiatan` join `mahasiswa_v` on(`mahasiswa_v`.`id` = `hasil_kegiatan`.`mahasiswa_id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `mahasiswa_v`
--
DROP TABLE IF EXISTS `mahasiswa_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mahasiswa_v`  AS SELECT `prodi`.`nama` AS `nama_prodi`, `mahasiswa`.`id` AS `id`, `mahasiswa`.`nim` AS `nim`, `mahasiswa`.`nama` AS `nama`, `mahasiswa`.`prodi_id` AS `prodi_id`, `mahasiswa`.`jenis_kelamin` AS `jenis_kelamin`, `mahasiswa`.`tempat_lahir` AS `tempat_lahir`, `mahasiswa`.`tanggal_lahir` AS `tanggal_lahir`, `mahasiswa`.`email` AS `email`, `mahasiswa`.`alamat_orang_tua` AS `alamat_orang_tua`, `mahasiswa`.`nomor_telepon_orang_tua` AS `nomor_telepon_orang_tua`, `mahasiswa`.`alamat` AS `alamat`, `mahasiswa`.`nomor_telepon` AS `nomor_telepon`, `mahasiswa`.`nomor_telepon_orang_dekat` AS `nomor_telepon_orang_dekat`, `mahasiswa`.`ipk` AS `ipk`, `mahasiswa`.`foto` AS `foto`, `mahasiswa`.`password` AS `password`, `mahasiswa`.`status` AS `status` FROM (`mahasiswa` join `prodi` on(`mahasiswa`.`prodi_id` = `prodi`.`id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `penguji_dosen_v`
--
DROP TABLE IF EXISTS `penguji_dosen_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `penguji_dosen_v`  AS SELECT `dosen`.`nip` AS `nip`, `dosen`.`nama` AS `nama`, `dosen`.`nomor_telepon` AS `nomor_telepon`, `dosen`.`email` AS `email`, `dosen`.`level` AS `level`, `dosen`.`id` AS `id`, `proposal_mahasiswa_v`.`mahasiswa_id` AS `mahasiswa_id`, `proposal_mahasiswa_v`.`nim` AS `nim`, `proposal_mahasiswa_v`.`nama_mahasiswa` AS `nama_mahasiswa`, `proposal_mahasiswa_v`.`nama_prodi` AS `nama_prodi` FROM (`dosen` join `proposal_mahasiswa_v` on(`dosen`.`id` = `proposal_mahasiswa_v`.`dosen_penguji_id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `proposal_mahasiswa_v`
--
DROP TABLE IF EXISTS `proposal_mahasiswa_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `proposal_mahasiswa_v`  AS SELECT `proposal_mahasiswa`.`id` AS `id`, `proposal_mahasiswa`.`mahasiswa_id` AS `mahasiswa_id`, `proposal_mahasiswa`.`judul` AS `judul`, `proposal_mahasiswa`.`ringkasan` AS `ringkasan`, `proposal_mahasiswa`.`dosen_id` AS `dosen_id`, `proposal_mahasiswa`.`dosen_penguji_id` AS `dosen_penguji_id`, `proposal_mahasiswa`.`status` AS `status`, `mahasiswa_v`.`nim` AS `nim`, `mahasiswa_v`.`nama` AS `nama_mahasiswa`, `mahasiswa_v`.`nama_prodi` AS `nama_prodi`, `proposal_mahasiswa`.`deadline` AS `deadline`, `mahasiswa_v`.`email` AS `email` FROM (`proposal_mahasiswa` join `mahasiswa_v` on(`proposal_mahasiswa`.`mahasiswa_id` = `mahasiswa_v`.`id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `skripsi_v`
--
DROP TABLE IF EXISTS `skripsi_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `skripsi_v`  AS SELECT `mahasiswa_v`.`nim` AS `nim`, `mahasiswa_v`.`nama_prodi` AS `nama_prodi`, `mahasiswa_v`.`nama` AS `nama_mahasiswa`, `mahasiswa_v`.`id` AS `id`, `skripsi`.`judul_skripsi` AS `judul_skripsi`, `skripsi`.`dosen_id` AS `dosen_id`, `skripsi`.`dosen_penguji_id` AS `dosen_penguji_id`, `skripsi`.`sk_tim` AS `sk_tim`, `skripsi`.`mahasiswa_id` AS `mahasiswa_id`, `dosen`.`nama` AS `nama_pembimbing`, `skripsi`.`jadwal_skripsi` AS `jadwal_skripsi`, `skripsi`.`file_skripsi` AS `file_skripsi`, `skripsi`.`status` AS `status`, `skripsi`.`persetujuan` AS `persetujuan`, `skripsi`.`bukti_konsultasi` AS `bukti_konsultasi`, `mahasiswa_v`.`email` AS `email` FROM ((`skripsi` join `mahasiswa_v` on(`skripsi`.`mahasiswa_id` = `mahasiswa_v`.`id`)) join `dosen` on(`skripsi`.`dosen_id` = `dosen`.`id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `skripsi_vl`
--
DROP TABLE IF EXISTS `skripsi_vl`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `skripsi_vl`  AS SELECT `skripsi_v`.`nim` AS `nim`, `skripsi_v`.`nama_prodi` AS `nama_prodi`, `skripsi_v`.`nama_mahasiswa` AS `nama_mahasiswa`, `skripsi_v`.`id` AS `id`, `skripsi_v`.`judul_skripsi` AS `judul_skripsi`, `skripsi_v`.`dosen_id` AS `dosen_id`, `skripsi_v`.`dosen_penguji_id` AS `dosen_penguji_id`, `skripsi_v`.`sk_tim` AS `sk_tim`, `skripsi_v`.`mahasiswa_id` AS `mahasiswa_id`, `skripsi_v`.`nama_pembimbing` AS `nama_pembimbing`, `dosen`.`nama` AS `nama_penguji`, `skripsi_v`.`jadwal_skripsi` AS `jadwal_skripsi`, `skripsi_v`.`file_skripsi` AS `file_skripsi`, `skripsi_v`.`status` AS `status`, `skripsi_v`.`persetujuan` AS `persetujuan`, `skripsi_v`.`bukti_konsultasi` AS `bukti_konsultasi`, `skripsi_v`.`email` AS `email` FROM (`skripsi_v` join `dosen` on(`skripsi_v`.`dosen_penguji_id` = `dosen`.`id`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokumen_hasil`
--
ALTER TABLE `dokumen_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_sender`
--
ALTER TABLE `email_sender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_kegiatan`
--
ALTER TABLE `hasil_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_penelitian`
--
ALTER TABLE `hasil_penelitian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_seminar`
--
ALTER TABLE `hasil_seminar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_template`
--
ALTER TABLE `home_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penelitian`
--
ALTER TABLE `penelitian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposal_mahasiswa`
--
ALTER TABLE `proposal_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seminar`
--
ALTER TABLE `seminar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skripsi`
--
ALTER TABLE `skripsi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokumen_hasil`
--
ALTER TABLE `dokumen_hasil`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `email_sender`
--
ALTER TABLE `email_sender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hasil_kegiatan`
--
ALTER TABLE `hasil_kegiatan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `hasil_penelitian`
--
ALTER TABLE `hasil_penelitian`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `hasil_seminar`
--
ALTER TABLE `hasil_seminar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `home_template`
--
ALTER TABLE `home_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `penelitian`
--
ALTER TABLE `penelitian`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `proposal_mahasiswa`
--
ALTER TABLE `proposal_mahasiswa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `seminar`
--
ALTER TABLE `seminar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `skripsi`
--
ALTER TABLE `skripsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Database: `dpm`
--
CREATE DATABASE IF NOT EXISTS `dpm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dpm`;
--
-- Database: `homestead`
--
CREATE DATABASE IF NOT EXISTS `homestead` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `homestead`;
--
-- Database: `olivera`
--
CREATE DATABASE IF NOT EXISTS `olivera` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `olivera`;

-- --------------------------------------------------------

--
-- Stand-in structure for view `bimbingan_dosen_v`
-- (See below for the actual view)
--
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
-- Table structure for table `daftar_judul`
--

CREATE TABLE `daftar_judul` (
  `id` int(11) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `judul_skripsi` varchar(500) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `abstrak` text NOT NULL,
  `tahun_lulus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftar_judul`
--

INSERT INTO `daftar_judul` (`id`, `nim`, `judul_skripsi`, `nama`, `abstrak`, `tahun_lulus`) VALUES
(9, '1801013044', 'Aplikasi Kamus Aksara Ende', 'Mimin', 'Aplikasi kamus aksara ende merupakan sebuah aplikas yang menerjemahkan aplikasi kamus', '2020'),
(10, '1801013056', 'Impelementasi Laravel Pada Sistem Informasi Akademik Berbasis Website', 'Ahmad', 'Aplikasi Siakaad', '2019');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen_hasil`
--

CREATE TABLE `dokumen_hasil` (
  `id` bigint(20) NOT NULL,
  `mahasiswa_id` bigint(20) NOT NULL,
  `kegiatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` bigint(20) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `prodi_id` bigint(20) NOT NULL DEFAULT 1,
  `nama` varchar(100) NOT NULL,
  `nomor_telepon` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `level` enum('1','2','4') NOT NULL DEFAULT '2' COMMENT '1 = admin, 2 = dosen, 4 = kaprodi',
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nip`, `prodi_id`, `nama`, `nomor_telepon`, `email`, `level`, `password`) VALUES
(1, '20201011', 1, 'Azhari Ali, M.Kom.', '00852254168', 'dosen@gmail.com', '2', 'dosen12345'),
(2, '20201015', 1, 'Superadmin', '082330538265', 'admin@admin.com', '1', 'percobaan'),
(4, '20201017', 1, 'Ambarwati S. Kom', '08215674535786', 'ambarrannazwa@gmail.com', '2', 'dosen12345'),
(7, '20201018', 1, 'Binaga Sinaga, M.H', '0872928234', 'binaga@gmail.com', '2', 'percobaan2'),
(8, '20201019', 1, 'Nina Sulistyo, M.M', '083652776522', 'nina@gmail.com', '2', 'dosen12345'),
(9, '20201020', 1, 'Ateng, M.Ag', '083876329987', 'ateng@gmail.com', '2', 'dosen12345'),
(10, '2011210', 1, 'Rizky Adi Ryanto', '085333411680', 'rizky14082000@gmail.com', '2', 'Rizky140820'),
(12, '2001013006', 1, 'wardatuljannah', '085333411680', 'wardatuljannah0707@gmail.com', '4', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `email_sender`
--

CREATE TABLE `email_sender` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_sender`
--

INSERT INTO `email_sender` (`id`, `email`, `password`, `smtp_port`, `smtp_host`) VALUES
(1, 'rizky@jaksparohserver.my.id', 'Rizky201121@', '465', 'ssl://mail.jaksparohserver.my.id');

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `dekan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id`, `nama`, `dekan`) VALUES
(2, 'Fakultas Rekayasa Sistem', 'Mietra Anggara'),
(8, 'Fakultas Teknik', 'Daniel Carvajal');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_kegiatan`
--

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
-- Stand-in structure for view `hasil_kegiatan_v`
-- (See below for the actual view)
--
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
-- Table structure for table `hasil_penelitian`
--

CREATE TABLE `hasil_penelitian` (
  `id` bigint(20) NOT NULL,
  `penelitian_id` bigint(20) NOT NULL,
  `berita_acara` varchar(50) NOT NULL,
  `masukan` varchar(50) NOT NULL,
  `status` enum('1','2') NOT NULL COMMENT '1 = lulus, 2 = tidak lulus'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hasil_seminar`
--

CREATE TABLE `hasil_seminar` (
  `id` bigint(20) NOT NULL,
  `seminar_id` bigint(20) NOT NULL,
  `masukan` text DEFAULT NULL COMMENT 'komentar pdf (pembimbing, penguji, catatan)',
  `status` enum('1','2','3') NOT NULL COMMENT '1 = lanjut, 2 = lanjut (perbaikan), 3 = ditolak'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_seminar`
--

INSERT INTO `hasil_seminar` (`id`, `seminar_id`, `masukan`, `status`) VALUES
(26, 24, '', '3');

-- --------------------------------------------------------

--
-- Table structure for table `home_template`
--

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
-- Dumping data for table `home_template`
--

INSERT INTO `home_template` (`id`, `carousel_bg1`, `carousel_subtitle1`, `carousel_title1`, `carousel_description1`, `carousel_btn_href1`, `carousel_btn_text1`, `carousel_bg2`, `carousel_subtitle2`, `carousel_title2`, `carousel_description2`, `carousel_btn_href2`, `carousel_btn_text2`, `carousel_bg3`, `carousel_subtitle3`, `carousel_title3`, `carousel_description3`, `carousel_btn_href3`, `carousel_btn_text3`, `timeline`, `panduanskripsi`, `tentang_kami_subtitle`, `tentang_kami_isi`, `social_description`, `link_fb`, `link_twitter`, `alamat`, `phone`, `email`, `kontak_subtitle`, `page_title`) VALUES
(1, 'download3.jpeg', 'Aplikasi', 'Monitoring Tugas Akhir Mahasiswa UTS Sumbawa', 'Tujuan dari sistem ini adalah sebagai media pencatat, memonitoring dan penjadwalan tugas akhir. Media pencatat yaitu untuk mencatat setiap mahasiswa yang sedang mengerjakan tugas akhir. Memonitoring dalam hal ini diperuntukan untuk dosen agar dosen pembimbing dapat mengawasi mahasiswa bimbingannya agar mengetahui dan mengawasi perkembangan mahasiswa bimbingannya', 'http://localhost/skripsites/home/registrasi', 'Mulai', 'download4.jpeg', 'Seminar', 'Seminar Proposal, Hasil, dan Skripsi', 'Setiap tahapan seminar, mahasiswa wajib melakukan pendaftaran melalui website ini', 'http://localhost/skripsites/home/registrasi', 'Mulai', 'uts3.jpg', 'Penjadwalan', 'Dokumentasi Kegiatan Mahasiswa', 'Setiap Mahasiswa dapat mengupload semua kegiatan intra dan ekstra yang diikuti yang dibuktikan dengan SK atau sertifikat.', 'http://localhost/skripsites/home/registrasi', 'Mulai', 'coba.jpeg', 'Pengembangan produk bioindustri.pdf', 'Aplikasi Monitoring Tugas Akhir Mahasiswa UTS Sumbawa', 'Tujuan dari sistem ini adalah sebagai media pencatat, memonitoring dan penjadwalan tugas akhir. Media pencatat yaitu untuk mencatat setiap mahasiswa yang sedang mengerjakan tugas akhir. Memonitoring dalam hal ini diperuntukan untuk dosen agar dosen pembimbing dapat mengawasi mahasiswa bimbingannya agar mengetahui dan mengawasi perkembangan mahasiswa bimbingannya.', '', '', '', 'Jl. Raya Olat Maras Batu Alang, Pernek, Kec. Moyo Hulu, Kabupaten Sumbawa, Nusa Tenggara Bar. 84371', '0218728291', 'uts@uts.ac.id', '', 'Sistem Monitoring Skripsi dan Tugas Akhir UTS');

-- --------------------------------------------------------

--
-- Table structure for table `konsultasi`
--

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
-- Dumping data for table `konsultasi`
--

INSERT INTO `konsultasi` (`id`, `proposal_mahasiswa_id`, `tanggal`, `jam`, `isi`, `bukti`, `sk_tim`, `persetujuan_pembimbing`, `persetujuan_kaprodi`, `komentar_pembimbing`, `komentar_kaprodi`) VALUES
(10, 33, '2022-04-26', '11:00:00', 'Bimbingan BAB 3 Metodologi Penelitian', '20220426060102.doc', NULL, '1', '1', NULL, NULL),
(11, 33, '2022-04-26', '11:05:00', 'Bimbingan Abstrak dan Latar Belakang', '20220426060601.doc', NULL, '1', '1', NULL, NULL),
(12, 32, '2022-04-26', '11:42:00', 'Bimbingan BAB 1 - BAB 2', '20220426064325.doc', NULL, '1', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

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
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `prodi_id`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `email`, `alamat_orang_tua`, `nomor_telepon_orang_tua`, `alamat`, `nomor_telepon`, `nomor_telepon_orang_dekat`, `ipk`, `foto`, `password`, `status`) VALUES
(18, '1901013044', 'Rizky Adi Ryanto', 2, 'laki-laki', 'Bima', '2000-08-14', 'adiryantorizky140820@gmail.com', 'bima', '085333411680', 'Bima', '085333411680', '085333411680', '4.0', '20221206040335.png', '$2y$10$mtTCUpTLPHcfyyJ7UWNgu.g5nTjGHuowml/y19/yz86jeC07so8wW', '1');

-- --------------------------------------------------------

--
-- Stand-in structure for view `mahasiswa_v`
-- (See below for the actual view)
--
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
-- Table structure for table `penelitian`
--

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
-- Stand-in structure for view `penguji_dosen_v`
-- (See below for the actual view)
--
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
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` bigint(20) NOT NULL,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `dosen_id` bigint(20) NOT NULL COMMENT 'ketua prodi (pembimbing)',
  `fakultas_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `kode`, `nama`, `dosen_id`, `fakultas_id`) VALUES
(2, '20201017', 'Teknik Informatika', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `proposal_mahasiswa`
--

CREATE TABLE `proposal_mahasiswa` (
  `id` bigint(20) NOT NULL,
  `mahasiswa_id` bigint(20) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `ringkasan` varchar(5000) NOT NULL,
  `dosen_id` bigint(20) NOT NULL COMMENT 'pembimbing',
  `dosen_penguji_id` varchar(11) DEFAULT NULL,
  `transkip` varchar(255) NOT NULL,
  `krs` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0' COMMENT '1 = disetujui, 0 = tidak disetujui'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `proposal_mahasiswa_v`
-- (See below for the actual view)
--
CREATE TABLE `proposal_mahasiswa_v` (
`id` bigint(20)
,`mahasiswa_id` bigint(20)
,`judul` varchar(100)
,`ringkasan` varchar(5000)
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
-- Table structure for table `seminar`
--

CREATE TABLE `seminar` (
  `id` bigint(20) NOT NULL,
  `proposal_mahasiswa_id` bigint(20) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `tempat` varchar(255) DEFAULT NULL,
  `file_proposal` varchar(50) NOT NULL,
  `syarat_seminar` varchar(50) NOT NULL,
  `surat_permohonan` varchar(50) NOT NULL,
  `kartu_bimbingan` varchar(50) NOT NULL,
  `tandatangan` varchar(200) DEFAULT NULL,
  `dosen_penguji_id` varchar(50) DEFAULT NULL,
  `dosen_penguji2_id` varchar(50) DEFAULT NULL,
  `dosen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `skripsi`
--

CREATE TABLE `skripsi` (
  `id` int(11) NOT NULL,
  `judul_skripsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dosen_id` int(11) DEFAULT NULL,
  `dosen_penguji_id` int(11) DEFAULT NULL,
  `file_skripsi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mahasiswa_id` int(11) DEFAULT NULL,
  `jadwal_skripsi` datetime DEFAULT NULL,
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
-- Stand-in structure for view `skripsi_v`
-- (See below for the actual view)
--
CREATE TABLE `skripsi_v` (
`nim` varchar(50)
,`nama_prodi` varchar(50)
,`nama_mahasiswa` varchar(100)
,`mahasiswa_id` bigint(20)
,`judul_skripsi` varchar(100)
,`dosen_id` int(11)
,`dosen_penguji_id` int(11)
,`id` int(11)
,`nama_pembimbing` varchar(100)
,`jadwal_skripsi` datetime
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
-- Stand-in structure for view `skripsi_vl`
-- (See below for the actual view)
--
CREATE TABLE `skripsi_vl` (
`nim` varchar(50)
,`nama_prodi` varchar(50)
,`nama_mahasiswa` varchar(100)
,`id` int(11)
,`judul_skripsi` varchar(100)
,`dosen_id` int(11)
,`dosen_penguji_id` int(11)
,`mahasiswa_id` bigint(20)
,`nama_pembimbing` varchar(100)
,`nama_penguji` varchar(100)
,`jadwal_skripsi` datetime
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
-- Structure for view `bimbingan_dosen_v`
--
DROP TABLE IF EXISTS `bimbingan_dosen_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bimbingan_dosen_v`  AS SELECT `dosen`.`nip` AS `nip`, `dosen`.`nama` AS `nama`, `dosen`.`nomor_telepon` AS `nomor_telepon`, `dosen`.`email` AS `email`, `dosen`.`level` AS `level`, `proposal_mahasiswa_v`.`nim` AS `nim`, `proposal_mahasiswa_v`.`nama_mahasiswa` AS `nama_mahasiswa`, `proposal_mahasiswa_v`.`nama_prodi` AS `nama_prodi`, `proposal_mahasiswa_v`.`mahasiswa_id` AS `mahasiswa_id`, `dosen`.`id` AS `id` FROM (`dosen` join `proposal_mahasiswa_v` on(`dosen`.`id` = `proposal_mahasiswa_v`.`dosen_id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `hasil_kegiatan_v`
--
DROP TABLE IF EXISTS `hasil_kegiatan_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hasil_kegiatan_v`  AS SELECT `hasil_kegiatan`.`mahasiswa_id` AS `mahasiswa_id`, `hasil_kegiatan`.`id` AS `id`, `hasil_kegiatan`.`file` AS `file`, `hasil_kegiatan`.`kegiatan` AS `kegiatan`, `hasil_kegiatan`.`file_kegiatan` AS `file_kegiatan`, `mahasiswa_v`.`nim` AS `nim`, `mahasiswa_v`.`nama` AS `nama_mahasiswa`, `mahasiswa_v`.`nama_prodi` AS `nama_prodi`, `hasil_kegiatan`.`status` AS `status` FROM (`hasil_kegiatan` join `mahasiswa_v` on(`mahasiswa_v`.`id` = `hasil_kegiatan`.`mahasiswa_id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `mahasiswa_v`
--
DROP TABLE IF EXISTS `mahasiswa_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mahasiswa_v`  AS SELECT `prodi`.`nama` AS `nama_prodi`, `mahasiswa`.`id` AS `id`, `mahasiswa`.`nim` AS `nim`, `mahasiswa`.`nama` AS `nama`, `mahasiswa`.`prodi_id` AS `prodi_id`, `mahasiswa`.`jenis_kelamin` AS `jenis_kelamin`, `mahasiswa`.`tempat_lahir` AS `tempat_lahir`, `mahasiswa`.`tanggal_lahir` AS `tanggal_lahir`, `mahasiswa`.`email` AS `email`, `mahasiswa`.`alamat_orang_tua` AS `alamat_orang_tua`, `mahasiswa`.`nomor_telepon_orang_tua` AS `nomor_telepon_orang_tua`, `mahasiswa`.`alamat` AS `alamat`, `mahasiswa`.`nomor_telepon` AS `nomor_telepon`, `mahasiswa`.`nomor_telepon_orang_dekat` AS `nomor_telepon_orang_dekat`, `mahasiswa`.`ipk` AS `ipk`, `mahasiswa`.`foto` AS `foto`, `mahasiswa`.`password` AS `password`, `mahasiswa`.`status` AS `status` FROM (`mahasiswa` join `prodi` on(`mahasiswa`.`prodi_id` = `prodi`.`id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `penguji_dosen_v`
--
DROP TABLE IF EXISTS `penguji_dosen_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `penguji_dosen_v`  AS SELECT `dosen`.`nip` AS `nip`, `dosen`.`nama` AS `nama`, `dosen`.`nomor_telepon` AS `nomor_telepon`, `dosen`.`email` AS `email`, `dosen`.`level` AS `level`, `dosen`.`id` AS `id`, `proposal_mahasiswa_v`.`mahasiswa_id` AS `mahasiswa_id`, `proposal_mahasiswa_v`.`nim` AS `nim`, `proposal_mahasiswa_v`.`nama_mahasiswa` AS `nama_mahasiswa`, `proposal_mahasiswa_v`.`nama_prodi` AS `nama_prodi` FROM (`dosen` join `proposal_mahasiswa_v` on(`dosen`.`id` = `proposal_mahasiswa_v`.`dosen_penguji_id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `proposal_mahasiswa_v`
--
DROP TABLE IF EXISTS `proposal_mahasiswa_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `proposal_mahasiswa_v`  AS SELECT `proposal_mahasiswa`.`id` AS `id`, `proposal_mahasiswa`.`mahasiswa_id` AS `mahasiswa_id`, `proposal_mahasiswa`.`judul` AS `judul`, `proposal_mahasiswa`.`ringkasan` AS `ringkasan`, `proposal_mahasiswa`.`dosen_id` AS `dosen_id`, `proposal_mahasiswa`.`dosen_penguji_id` AS `dosen_penguji_id`, `proposal_mahasiswa`.`transkip` AS `transkip`, `proposal_mahasiswa`.`krs` AS `krs`, `proposal_mahasiswa`.`status` AS `status`, `mahasiswa_v`.`nim` AS `nim`, `mahasiswa_v`.`nama` AS `nama_mahasiswa`, `mahasiswa_v`.`nama_prodi` AS `nama_prodi`, `mahasiswa_v`.`email` AS `email` FROM (`proposal_mahasiswa` join `mahasiswa_v` on(`proposal_mahasiswa`.`mahasiswa_id` = `mahasiswa_v`.`id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `skripsi_v`
--
DROP TABLE IF EXISTS `skripsi_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `skripsi_v`  AS SELECT `mahasiswa_v`.`nim` AS `nim`, `mahasiswa_v`.`nama_prodi` AS `nama_prodi`, `mahasiswa_v`.`nama` AS `nama_mahasiswa`, `mahasiswa_v`.`id` AS `mahasiswa_id`, `skripsi`.`judul_skripsi` AS `judul_skripsi`, `skripsi`.`dosen_id` AS `dosen_id`, `skripsi`.`dosen_penguji_id` AS `dosen_penguji_id`, `skripsi`.`id` AS `id`, `dosen`.`nama` AS `nama_pembimbing`, `skripsi`.`jadwal_skripsi` AS `jadwal_skripsi`, `skripsi`.`tempat` AS `tempat`, `skripsi`.`file_skripsi` AS `file_skripsi`, `skripsi`.`status` AS `status`, `skripsi`.`krs` AS `krs`, `skripsi`.`formulir` AS `formulir`, `skripsi`.`kwitansi` AS `kwitansi`, `skripsi`.`lulus_mkWajib` AS `lulus_mkWajib`, `skripsi`.`kartu_bimbingan` AS `kartu_bimbingan`, `skripsi`.`transkip` AS `transkip`, `skripsi`.`sertifikat` AS `sertifikat`, `skripsi`.`lembar_persetujuan` AS `lembar_persetujuan`, `skripsi`.`bebas_bauk` AS `bebas_bauk`, `mahasiswa_v`.`email` AS `email` FROM ((`skripsi` join `mahasiswa_v` on(`skripsi`.`mahasiswa_id` = `mahasiswa_v`.`id`)) join `dosen` on(`skripsi`.`dosen_id` = `dosen`.`id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `skripsi_vl`
--
DROP TABLE IF EXISTS `skripsi_vl`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `skripsi_vl`  AS SELECT `skripsi_v`.`nim` AS `nim`, `skripsi_v`.`nama_prodi` AS `nama_prodi`, `skripsi_v`.`nama_mahasiswa` AS `nama_mahasiswa`, `skripsi_v`.`id` AS `id`, `skripsi_v`.`judul_skripsi` AS `judul_skripsi`, `skripsi_v`.`dosen_id` AS `dosen_id`, `skripsi_v`.`dosen_penguji_id` AS `dosen_penguji_id`, `skripsi_v`.`mahasiswa_id` AS `mahasiswa_id`, `skripsi_v`.`nama_pembimbing` AS `nama_pembimbing`, `dosen`.`nama` AS `nama_penguji`, `skripsi_v`.`jadwal_skripsi` AS `jadwal_skripsi`, `skripsi_v`.`tempat` AS `tempat`, `skripsi_v`.`file_skripsi` AS `file_skripsi`, `skripsi_v`.`status` AS `status`, `skripsi_v`.`krs` AS `krs`, `skripsi_v`.`formulir` AS `formulir`, `skripsi_v`.`kwitansi` AS `kwitansi`, `skripsi_v`.`lulus_mkWajib` AS `lulus_mkWajib`, `skripsi_v`.`kartu_bimbingan` AS `kartu_bimbingan`, `skripsi_v`.`transkip` AS `transkip`, `skripsi_v`.`sertifikat` AS `sertifikat`, `skripsi_v`.`lembar_persetujuan` AS `lembar_persetujuan`, `skripsi_v`.`bebas_bauk` AS `bebas_bauk`, `skripsi_v`.`email` AS `email` FROM (`skripsi_v` join `dosen` on(`skripsi_v`.`dosen_penguji_id` = `dosen`.`id`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_judul`
--
ALTER TABLE `daftar_judul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokumen_hasil`
--
ALTER TABLE `dokumen_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_sender`
--
ALTER TABLE `email_sender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_kegiatan`
--
ALTER TABLE `hasil_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_penelitian`
--
ALTER TABLE `hasil_penelitian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_seminar`
--
ALTER TABLE `hasil_seminar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seminar_id` (`seminar_id`);

--
-- Indexes for table `home_template`
--
ALTER TABLE `home_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penelitian`
--
ALTER TABLE `penelitian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposal_mahasiswa`
--
ALTER TABLE `proposal_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seminar`
--
ALTER TABLE `seminar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skripsi`
--
ALTER TABLE `skripsi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_judul`
--
ALTER TABLE `daftar_judul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dokumen_hasil`
--
ALTER TABLE `dokumen_hasil`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `email_sender`
--
ALTER TABLE `email_sender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hasil_kegiatan`
--
ALTER TABLE `hasil_kegiatan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `hasil_penelitian`
--
ALTER TABLE `hasil_penelitian`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `hasil_seminar`
--
ALTER TABLE `hasil_seminar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `home_template`
--
ALTER TABLE `home_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `penelitian`
--
ALTER TABLE `penelitian`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `proposal_mahasiswa`
--
ALTER TABLE `proposal_mahasiswa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `seminar`
--
ALTER TABLE `seminar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `skripsi`
--
ALTER TABLE `skripsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Database: `pemilihan`
--
CREATE DATABASE IF NOT EXISTS `pemilihan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pemilihan`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_role` int(1) NOT NULL DEFAULT 0 COMMENT '0 untuk admin biasa 1 untuk superadmin',
  `no_telpon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`, `id_role`, `no_telpon`) VALUES
(1, 'aku', 'hasan', 'hasan', 0, '48274839743289'),
(2, 'kepsek', 'admin', 'admin123', 0, '111'),
(5, 'baru', 'abdul', 'abdul', 1, '2'),
(7, 'kepsek00', 'adminsajaoke', 'adminsajaoke', 0, '111');

-- --------------------------------------------------------

--
-- Table structure for table `calon_bem`
--

CREATE TABLE `calon_bem` (
  `id_calon` int(11) NOT NULL,
  `nama_calon` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `moto` varchar(255) NOT NULL,
  `visi` varchar(255) NOT NULL,
  `nim` int(11) NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calon_bem`
--

INSERT INTO `calon_bem` (`id_calon`, `nama_calon`, `foto`, `moto`, `visi`, `nim`, `total`) VALUES
(17, 'bem dua', '17-2022-12-15-11-11-45.jpg', 'fewfewfew3234', 'dfwddsfd', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `calon_dpm`
--

CREATE TABLE `calon_dpm` (
  `id_calon` int(11) NOT NULL,
  `nama_calon` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `moto` varchar(255) NOT NULL,
  `visi` varchar(255) NOT NULL,
  `nim` int(11) NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `prodi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calon_dpm`
--

INSERT INTO `calon_dpm` (`id_calon`, `nama_calon`, `foto`, `moto`, `visi`, `nim`, `total`, `prodi`) VALUES
(22, 'hasan', '23143-2022-12-15-15-00-44.jpg', 'wdwd', 'qwdwd', 23143, 2, 'Teknik Informatika'),
(23, 'abdul', '23143-2022-12-15-15-00-44.jpg', 'dwdq', 'qwdwdwfeewf', 23143, 5, 'Teknik Informatika'),
(24, 'dalsan', '23143-2022-12-15-15-00-44.jpg', 'wdwd', 'qwdwd', 23143, 2, 'Sastra'),
(25, 'sasdul', '23143-2022-12-15-15-00-44.jpg', 'dwdq', 'qwdwdwfeewf', 23143, 5, 'Sastra'),
(26, '345', '456345-2022-12-19-08-20-46.jpg', '54', '345', 456345, 0, 'Teknik Informatika'),
(27, 'sdfswd', '234-2022-12-19-08-21-10.jpg', 'wfefewfew', 'fwfwfw', 234, 0, '1'),
(28, 'weee', '111111-2022-12-19-14-21-29.jpg', 'sdfsdf', 'sdfsdfds', 111111, 1, '3');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(30) NOT NULL,
  `nim` varchar(60) NOT NULL,
  `angkatan` varchar(60) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `prodi` varchar(60) NOT NULL,
  `jenis_kelamin` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `angkatan`, `nama`, `prodi`, `jenis_kelamin`) VALUES
(1, '1901014001', '2019', 'APRIZAL RIZKI', 'TEKNIK ELEKTRO', 'L'),
(2, '1901014002', '2019', 'GHUFRON AWLIYA SYAHRONI', 'TEKNIK ELEKTRO', 'L'),
(3, '1901014003', '2019', 'DANDI AZHARI', 'TEKNIK ELEKTRO', 'L'),
(4, '1901014004', '2019', 'ANDRY SHAPUTRA', 'TEKNIK ELEKTRO', 'L'),
(5, '1901014005', '2019', 'MNOVAL DAFFA SYAHBANI', 'TEKNIK ELEKTRO', 'L'),
(6, '1901014006', '2019', 'CHANDRA KUSUMA', 'TEKNIK ELEKTRO', 'L'),
(7, '1901014007', '2019', 'YOGI FEBRIANSYAH', 'TEKNIK ELEKTRO', 'L'),
(8, '1901014008', '2019', 'SYAMSUL HIDAYAT', 'TEKNIK ELEKTRO', 'L'),
(9, '1901014009', '2019', 'SHANDIVA AQSA JULIO', 'TEKNIK ELEKTRO', 'L'),
(10, '1901014010', '2019', 'DZIL KAMALI', 'TEKNIK ELEKTRO', 'L'),
(11, '1901014011', '2019', 'DEWI JUITA SAFITRI', 'TEKNIK ELEKTRO', 'P'),
(12, '1901014012', '2019', 'DAFFA AKBAR NAGIB', 'TEKNIK ELEKTRO', 'L'),
(13, '1901014013', '2019', 'MUHAMMAD FEBRIAJI', 'TEKNIK ELEKTRO', 'L'),
(14, '1901014014', '2019', 'TANTOWI ALWI', 'TEKNIK ELEKTRO', 'L'),
(15, '1901014015', '2019', 'PADILAH WANDA HASIBUAN', 'TEKNIK ELEKTRO', 'P'),
(16, '1901014016', '2019', 'AZMAN MBAWA', 'TEKNIK ELEKTRO', 'L'),
(17, '1901014017', '2019', 'SUAEDIN INDRA PERMATU ADI', 'TEKNIK ELEKTRO', 'L'),
(18, '1901014018', '2019', 'CHAIRIL UMAM', 'TEKNIK ELEKTRO', 'L'),
(19, '1901014019', '2019', 'ARIZALUL WATHAN', 'TEKNIK ELEKTRO', 'L'),
(20, '1901014020', '2019', 'M RUDI SUMBIAN', 'TEKNIK ELEKTRO', 'L'),
(21, '1901014021', '2019', 'SAHADA', 'TEKNIK ELEKTRO', 'P'),
(22, '1901014022', '2019', 'EVA PEBRIANTI', 'TEKNIK ELEKTRO', 'P'),
(23, '1901014023', '2019', 'RIHAN ADLILLAH', 'TEKNIK ELEKTRO', 'L'),
(24, '1901014024', '2019', 'SARWAN HAMID HASIBUAN', 'TEKNIK ELEKTRO', 'L'),
(25, '1901014025', '2019', 'FARHAN', 'TEKNIK ELEKTRO', 'L'),
(26, '1901014026', '2019', 'CARLI I IBRAHIM', 'TEKNIK ELEKTRO', 'L'),
(27, '1901014027', '2019', 'RIFKI WIKRA WARDANA', 'TEKNIK ELEKTRO', 'L'),
(28, '1901014028', '2019', 'IBRAHIM', 'TEKNIK ELEKTRO', 'L'),
(29, '1901014029', '2019', 'FERNANDO SAPUTRA', 'TEKNIK ELEKTRO', 'L'),
(30, '1901014030', '2019', 'JENAL', 'TEKNIK ELEKTRO', 'L'),
(31, '1901014031', '2019', 'LA ODE MUHAMAD RAHMAN', 'TEKNIK ELEKTRO', 'L'),
(32, '1901014032', '2019', 'NURBAYA HARUN', 'TEKNIK ELEKTRO', 'P'),
(33, '1901014033', '2019', 'MUHAMMAD LUTFI RAMADHAN', 'TEKNIK ELEKTRO', 'L'),
(34, '1901014034', '2019', 'MUHAMMAD YUSUF KARIM', 'TEKNIK ELEKTRO', 'L'),
(35, '1901014035', '2019', 'MUHAMAD SIDIK', 'TEKNIK ELEKTRO', 'L'),
(36, '1901014036', '2019', 'MOH ANFASYAHBIL', 'TEKNIK ELEKTRO', 'L'),
(37, '1901014037', '2019', 'SUHARDIN', 'TEKNIK ELEKTRO', 'L'),
(38, '1901014038', '2019', 'CANDRA ADE PRASETIA', 'TEKNIK ELEKTRO', 'L'),
(39, '1901014039', '2019', 'VIAN VALAS', 'TEKNIK ELEKTRO', 'L'),
(40, '1901014040', '2019', 'ALDI RAMDANI', 'TEKNIK ELEKTRO', 'L'),
(41, '1901014041', '2019', 'RIDHO PRAMUDYA', 'TEKNIK ELEKTRO', 'L'),
(42, '1901014042', '2019', 'MUHAMMAD BAGAS PRASETYO', 'TEKNIK ELEKTRO', 'L'),
(43, '1901014043', '2019', 'RAIYADI MIFTAH ULUMUDDIN', 'TEKNIK ELEKTRO', 'L'),
(44, '1901014044', '2019', 'ALDI PEBRIANSAH', 'TEKNIK ELEKTRO', 'L'),
(45, '1901014045', '2019', 'IQBAL NURROHMAN', 'TEKNIK ELEKTRO', 'L'),
(46, '1901014046', '2019', 'NANDA SOFYAN', 'TEKNIK ELEKTRO', 'L'),
(47, '1901014047', '2019', 'SYAMSUL BAHRI', 'TEKNIK ELEKTRO', 'L'),
(48, '1901014048', '2019', 'MUHAMMAD FADILLAH', 'TEKNIK ELEKTRO', 'L'),
(49, '2001014001', '2020', 'AGUS HERMANSYAH', 'TEKNIK ELEKTRO', 'L'),
(50, '2001014002', '2020', 'AGUS SOFYAN', 'TEKNIK ELEKTRO', 'L'),
(51, '2001014003', '2020', 'BAYAN RABBANI RAIHAN', 'TEKNIK ELEKTRO', 'L'),
(52, '2001014004', '2020', 'DAWAM AHSAN TAQWIM', 'TEKNIK ELEKTRO', 'L'),
(53, '2001014005', '2020', 'FANDY ARDIANSAH', 'TEKNIK ELEKTRO', 'L'),
(54, '2001014006', '2020', 'FAUZI HIKMAWAN', 'TEKNIK ELEKTRO', 'L'),
(55, '2001014007', '2020', 'ISTI NOPIANTI', 'TEKNIK ELEKTRO', 'P'),
(56, '2001014008', '2020', 'LUTFHIE KARANZIE', 'TEKNIK ELEKTRO', 'L'),
(57, '2001014009', '2020', 'MAULIDYA RAHMI AULIA', 'TEKNIK ELEKTRO', 'P'),
(58, '2001014010', '2020', 'RIZKIANO FAHRIANSYAH', 'TEKNIK ELEKTRO', 'L'),
(59, '2001014011', '2020', 'SYAIFUL HIDAYAT', 'TEKNIK ELEKTRO', 'L'),
(60, '2001014012', '2020', 'ERNAWATI', 'TEKNIK ELEKTRO', 'P'),
(61, '2001014013', '2020', 'FAJAR MAHARDA PUTRA', 'TEKNIK ELEKTRO', 'L'),
(62, '2001014014', '2020', 'RADI SALFIANTO', 'TEKNIK ELEKTRO', 'L'),
(63, '2001014015', '2020', 'MUHAMMAD AGUNG APRILIANDO', 'TEKNIK ELEKTRO', 'L'),
(64, '2001014016', '2020', 'RANDI HAMDANI', 'TEKNIK ELEKTRO', 'L'),
(65, '2001014017', '2020', 'SOFYAN SURYA PRATAMA', 'TEKNIK ELEKTRO', 'L'),
(66, '2001014018', '2020', 'RADY MAULUDIN', 'TEKNIK ELEKTRO', 'L'),
(67, '2001014019', '2020', 'WIDHIYANTO THIRTA DARMA', 'TEKNIK ELEKTRO', 'L'),
(68, '2001014020', '2020', 'AHMAD MUNTAHA', 'TEKNIK ELEKTRO', 'L'),
(69, '2001014021', '2020', 'MUHAMMAD MANCA IKLAS', 'TEKNIK ELEKTRO', 'L'),
(70, '2001014022', '2020', 'IMAM NANDRIANTARA', 'TEKNIK ELEKTRO', 'L'),
(71, '2001014023', '2020', 'ADRI KURNIAWAN', 'TEKNIK ELEKTRO', 'L'),
(72, '2001014024', '2020', 'ERO WAHYU JUNIKA', 'TEKNIK ELEKTRO', 'L'),
(73, '2001014025', '2020', 'ANGGI ZENTA TWINCAHYO', 'TEKNIK ELEKTRO', 'L'),
(74, '2001014026', '2020', 'ANGGA ZENTA TWINCAHYO', 'TEKNIK ELEKTRO', 'L'),
(75, '2001014027', '2020', 'ARIYO BANJARDANA', 'TEKNIK ELEKTRO', 'L'),
(76, '2001014028', '2020', 'NOVIRA ANGGRAINI ZULIRA PUTRI', 'TEKNIK ELEKTRO', 'P'),
(77, '2001014029', '2020', 'FEBY PUTRI ANDINI', 'TEKNIK ELEKTRO', 'P'),
(78, '2001014030', '2020', 'RIFQI ZUHRIAN PRATAMA', 'TEKNIK ELEKTRO', 'L'),
(79, '2001014031', '2020', 'SEMBARA SAKTI SADEWA', 'TEKNIK ELEKTRO', 'L'),
(80, '2001014032', '2020', 'LALU PUTRANSE PERMANA', 'TEKNIK ELEKTRO', 'L'),
(81, '2001014033', '2020', 'REZA PEBRIAN', 'TEKNIK ELEKTRO', 'L'),
(82, '2001014034', '2020', 'ARJUNA SATRIAWANSYAH', 'TEKNIK ELEKTRO', 'L'),
(83, '2001014035', '2020', 'KURNIAWAN RAHMAN HAKIM', 'TEKNIK ELEKTRO', 'L'),
(84, '2001014036', '2020', 'AHMAD', 'TEKNIK ELEKTRO', 'L'),
(85, '2001014037', '2020', 'ALIMIN', 'TEKNIK ELEKTRO', 'L'),
(86, '2001014038', '2020', 'NOFITA PEBRIANI', 'TEKNIK ELEKTRO', 'L'),
(87, '2001014039', '2020', 'MUHAMMAD ADIL ARESONA', 'TEKNIK ELEKTRO', 'L'),
(88, '2001014040', '2020', 'AHMAD FATONA', 'TEKNIK ELEKTRO', 'L'),
(89, '2001014041', '2020', 'DIMAS UTOMO', 'TEKNIK ELEKTRO', 'L'),
(90, '2001014042', '2020', 'MUH FAIZIN', 'TEKNIK ELEKTRO', 'L'),
(91, '2001014043', '2020', 'ANDHIKA DIVA DWI SANDI', 'TEKNIK ELEKTRO', 'L'),
(92, '2001014044', '2020', 'ALDIANSYAH HIDAYAT', 'TEKNIK ELEKTRO', 'L'),
(93, '2001014045', '2020', 'BAGUS SAPUTRA', 'TEKNIK ELEKTRO', 'L'),
(94, '2001014046', '2020', 'MUHAMAD TAUFAN', 'TEKNIK ELEKTRO', 'L'),
(95, '2001014047', '2020', 'FERY BUDI SUYITNO', 'TEKNIK ELEKTRO', 'L'),
(96, '2001014048', '2020', 'GIAN FEBRIANSYAH', 'TEKNIK ELEKTRO', 'L'),
(97, '2001014049', '2020', 'MUH RIFQI RAHMATULLAH', 'TEKNIK ELEKTRO', 'L'),
(98, '2001014050', '2020', 'IDHOM SURODI', 'TEKNIK ELEKTRO', 'L'),
(99, '2001014051', '2020', 'AGUS SETIAWAN', 'TEKNIK ELEKTRO', 'L'),
(100, '2001014052', '2020', 'MUHAMAD ZUHFAHRI FAUZAN', 'TEKNIK ELEKTRO', 'L'),
(101, '2001014053', '2020', 'M BUHAIRI', 'TEKNIK ELEKTRO', 'L'),
(102, '2001014054', '2020', 'THOHAR AHMAD HSB', 'TEKNIK ELEKTRO', 'L'),
(103, '2001014055', '2020', 'FATHIA JAMA AWIL HASSAN', 'TEKNIK ELEKTRO', 'P'),
(104, '211013001', '2021', 'ALIMUDDIN', 'TEKNIK ELEKTRO', 'L'),
(105, '211013002', '2021', 'AGUS SETIAWAN', 'TEKNIK ELEKTRO', 'L'),
(106, '211013003', '2021', 'ALDIAN MUKADDANI', 'TEKNIK ELEKTRO', 'L'),
(107, '211013004', '2021', 'SAHRI DIAN SUANDY', 'TEKNIK ELEKTRO', 'L'),
(108, '211013005', '2021', 'FAISAL SYAMSUDDIN', 'TEKNIK ELEKTRO', 'L'),
(109, '211013006', '2021', 'ANDREAS FEBRIAN WANGU', 'TEKNIK ELEKTRO', 'L'),
(110, '211013007', '2021', 'IKHWAN BAGUS SAPUTRA', 'TEKNIK ELEKTRO', 'L'),
(111, '211013008', '2021', 'VIGA APRIATMA', 'TEKNIK ELEKTRO', 'L'),
(112, '211013009', '2021', 'WAWAN DWI RAMDANI', 'TEKNIK ELEKTRO', 'L'),
(113, '211013010', '2021', 'IRFAN FAJARDIANSYAH', 'TEKNIK ELEKTRO', 'L'),
(114, '211013011', '2021', 'RAFID DZULFIKAR FAUZAN', 'TEKNIK ELEKTRO', 'L'),
(115, '211013012', '2021', 'SYAHDEWA CHANDRA KIRANA', 'TEKNIK ELEKTRO', 'L'),
(116, '211013013', '2021', 'ADE PUTRA PRATAMA', 'TEKNIK ELEKTRO', 'L'),
(117, '211013014', '2021', 'LAILI SAGITA', 'TEKNIK ELEKTRO', 'P'),
(118, '211013015', '2021', 'MUHAMMAD IQBAL DARUSSALAM', 'TEKNIK ELEKTRO', 'L'),
(119, '211013016', '2021', 'RAFLY AKBAR HIKMAWAN', 'TEKNIK ELEKTRO', 'L'),
(120, '211013017', '2021', 'FU - ADUL IKHSAN', 'TEKNIK ELEKTRO', 'L'),
(121, '211013018', '2021', 'YANUAR PUTRA TUKITA', 'TEKNIK ELEKTRO', 'L'),
(122, '211013019', '2021', 'TONI SAPUTRA', 'TEKNIK ELEKTRO', 'L'),
(123, '211013021', '2021', 'HERFAN KANTARI', 'TEKNIK ELEKTRO', 'L'),
(124, '211013022', '2021', 'MOH POHIRI WAHYUDI', 'TEKNIK ELEKTRO', 'L'),
(125, '211013023', '2021', 'MUHAMAD NUR EHSAN', 'TEKNIK ELEKTRO', 'L'),
(126, '211013024', '2021', 'AZHAR BASIR', 'TEKNIK ELEKTRO', 'L'),
(127, '211013025', '2021', 'RIFQI RISKULLAH GUHIR', 'TEKNIK ELEKTRO', 'L'),
(128, '211013026', '2021', 'RUSLAN ELANU', 'TEKNIK ELEKTRO', 'L'),
(129, '211013027', '2021', 'MOHAMAD SHAFIYUL', 'TEKNIK ELEKTRO', 'L'),
(130, '211013028', '2021', 'RIDWAN AWAL', 'TEKNIK ELEKTRO', 'L'),
(131, '211013029', '2021', 'IQBAL RAMADHAN', 'TEKNIK ELEKTRO', 'L'),
(132, '211013030', '2021', 'MUHAMMAD FAIZAL', 'TEKNIK ELEKTRO', 'L'),
(133, '211013031', '2021', 'YASYFIN NUR MUHAMMAD', 'TEKNIK ELEKTRO', 'L'),
(134, '211013032', '2021', 'HABIBURRAHMAN', 'TEKNIK ELEKTRO', 'L'),
(135, '211013033', '2021', 'DIAN ULFATURROHIDAH', 'TEKNIK ELEKTRO', 'P'),
(136, '221013001', '2022', 'RANU DHIANATA BAQGHAZ', 'TEKNIK ELEKTRO', 'L'),
(137, '221013002', '2022', 'ARIEL ILHAM HIDAYAT', 'TEKNIK ELEKTRO', 'L'),
(138, '221013003', '2022', 'LALU ABDUL SUKARAH ABI PUTRA', 'TEKNIK ELEKTRO', 'L'),
(139, '221013004', '2022', 'DICKY PUTRA PRATAMA', 'TEKNIK ELEKTRO', 'L'),
(140, '221013005', '2022', 'FIRA YUNITA', 'TEKNIK ELEKTRO', 'P'),
(141, '221013006', '2022', 'HAMDANI', 'TEKNIK ELEKTRO', 'L'),
(142, '221013007', '2022', 'ARMAN MUHAIMIN AHMAD', 'TEKNIK ELEKTRO', 'L'),
(143, '221013008', '2022', 'AGUNG RUDIYANTO', 'TEKNIK ELEKTRO', 'L'),
(144, '221013009', '2022', 'DIANA SARI ARITONANG', 'TEKNIK ELEKTRO', 'P'),
(145, '221013010', '2022', 'AINUN MAGFIRA M IBA', 'TEKNIK ELEKTRO', 'P'),
(146, '221013011', '2022', 'FAISAL WARDI', 'TEKNIK ELEKTRO', 'L'),
(147, '221013012', '2022', 'ARYANTO', 'TEKNIK ELEKTRO', 'L'),
(148, '221013013', '2022', 'M RAFLY AR', 'TEKNIK ELEKTRO', 'L'),
(149, '221013014', '2022', 'NANANG SAMUDRA', 'TEKNIK ELEKTRO', 'L'),
(150, '221013015', '2022', 'DENIS PRIO HARTANTO', 'TEKNIK ELEKTRO', 'L'),
(151, '221013016', '2022', 'MUHAMMAD PRIMA', 'TEKNIK ELEKTRO', 'L'),
(152, '221013017', '2022', 'FAJRI ZULFIKAR', 'TEKNIK ELEKTRO', 'L'),
(153, '221013018', '2022', 'FU\'AD ASHAR ANSYORI', 'TEKNIK ELEKTRO', 'L'),
(154, '221013019', '2022', 'YUDA ARDIANSYAH PUTRA', 'TEKNIK ELEKTRO', 'L'),
(155, '221013020', '2022', 'ABDULLAH SALAM', 'TEKNIK ELEKTRO', 'L'),
(156, '221013021', '2022', 'SAMUEL UMBU EZAR', 'TEKNIK ELEKTRO', 'L'),
(157, '221013022', '2022', 'WAHYU LIBRIAN SAPUTRA', 'TEKNIK ELEKTRO', 'L'),
(158, '221013023', '2022', 'REZA AKBAR PRATAMA', 'TEKNIK ELEKTRO', 'L'),
(159, '221013024', '2022', 'ALFIN FADLI HAKIM', 'TEKNIK ELEKTRO', 'L'),
(160, '221013025', '2022', 'GUNTUR DARMAWAN', 'TEKNIK ELEKTRO', 'L'),
(161, '221013026', '2022', 'RESTU AJI SAPUTRA HASIBUAN', 'TEKNIK ELEKTRO', 'L'),
(162, '221013027', '2022', 'AHMAD WAFA FATHIULHAQ', 'TEKNIK ELEKTRO', 'L'),
(163, '221013028', '2022', 'RYAN SETIAWAN', 'TEKNIK ELEKTRO', 'L'),
(164, '221013029', '2022', 'ANANDA INGGADISAH', 'TEKNIK ELEKTRO', 'L'),
(165, '221013030', '2022', 'OKY ARYA PUTRA', 'TEKNIK ELEKTRO', 'L'),
(166, '221013031', '2022', 'ARDA SUYANDI', 'TEKNIK ELEKTRO', 'L'),
(167, '221013032', '2022', 'MOHAMMAD NUR ARASY IMRAN', 'TEKNIK ELEKTRO', 'L'),
(168, '221013033', '2022', 'RIZKI ARIANSYAH', 'TEKNIK ELEKTRO', 'L'),
(169, '1901012002', '2019', 'DANDI DWI PUTRA', 'TEKNIK MESIN', 'L'),
(170, '1901012003', '2019', 'AMRIADI', 'TEKNIK MESIN', 'L'),
(171, '1901012004', '2019', 'IKSAN WIRA YUDA', 'TEKNIK MESIN', 'L'),
(172, '1901012005', '2019', 'HASBY', 'TEKNIK MESIN', 'L'),
(173, '1901012006', '2019', 'M RIZAL HADIANSYAH', 'TEKNIK MESIN', 'L'),
(174, '1901012007', '2019', 'WIRA FEBRIAN', 'TEKNIK MESIN', 'L'),
(175, '1901012008', '2019', 'MAGRABI', 'TEKNIK MESIN', 'L'),
(176, '1901012009', '2019', 'FITRAH RAMANDA WINATA', 'TEKNIK MESIN', 'L'),
(177, '1901012010', '2019', 'IRFAN MAULANA', 'TEKNIK MESIN', 'L'),
(178, '1901012011', '2019', 'ABDUL RAHMAN', 'TEKNIK MESIN', 'L'),
(179, '1901012012', '2019', 'SABRAN', 'TEKNIK MESIN', 'L'),
(180, '1901012013', '2019', 'AYUDHIA GINA MAWADDHA', 'TEKNIK MESIN', 'P'),
(181, '1901012014', '2019', 'DEDI IKHSAN PRAYADI', 'TEKNIK MESIN', 'L'),
(182, '1901012015', '2019', 'GALIH ARSHAL ANTYASHORI', 'TEKNIK MESIN', 'L'),
(183, '1901012016', '2019', 'SONI ADEKA SAPUTRA', 'TEKNIK MESIN', 'L'),
(184, '1901012017', '2019', 'IRWANSYAH', 'TEKNIK MESIN', 'L'),
(185, '1901012018', '2019', 'RESTU AZALI', 'TEKNIK MESIN', 'L'),
(186, '1901012019', '2019', 'RAUF INDIARTO', 'TEKNIK MESIN', 'L'),
(187, '1901012020', '2019', 'JANUAR DIANSYAH', 'TEKNIK MESIN', 'L'),
(188, '1901012021', '2019', 'FAHMI FAJAR', 'TEKNIK MESIN', 'L'),
(189, '1901012022', '2019', 'SYAHRUL MAHENDRY', 'TEKNIK MESIN', 'L'),
(190, '1901012023', '2019', 'SUNARTO SALILAMA', 'TEKNIK MESIN', 'L'),
(191, '1901012024', '2019', 'HIMDA AGOES PRATAMA', 'TEKNIK MESIN', 'L'),
(192, '1901012025', '2019', 'ABDUL MAJID', 'TEKNIK MESIN', 'L'),
(193, '1901012026', '2019', 'ABDUL MAJID RAHMAN', 'TEKNIK MESIN', 'L'),
(194, '1901012027', '2019', 'KASNO MAJALUNA', 'TEKNIK MESIN', 'L'),
(195, '1901012028', '2019', 'LA ODE MUHAMMAD SYARIF', 'TEKNIK MESIN', 'P'),
(196, '1901012029', '2019', 'HAIKAL ASWIN', 'TEKNIK MESIN', 'L'),
(197, '1901012030', '2019', 'ARDIAN SYAH', 'TEKNIK MESIN', 'L'),
(198, '1901012031', '2019', 'RAFIK QADURI', 'TEKNIK MESIN', 'L'),
(199, '1901012032', '2019', 'HERI', 'TEKNIK MESIN', 'L'),
(200, '1901012033', '2019', 'IVAN RUSDIANTO', 'TEKNIK MESIN', 'L'),
(201, '1901012034', '2019', 'KHOIRUL IKHSAN', 'TEKNIK MESIN', 'L'),
(202, '1901012035', '2019', 'ARIF BASTIAN DANI', 'TEKNIK MESIN', 'L'),
(203, '1901012036', '2019', 'OKKY ADHITYA', 'TEKNIK MESIN', 'L'),
(204, '1901012037', '2019', 'BILLYI SUNGKAR', 'TEKNIK MESIN', 'L'),
(205, '1901012038', '2019', 'ISMAN RAHARJO', 'TEKNIK MESIN', 'L'),
(206, '1901012039', '2019', 'MUHAMMAD SAYID SABILILLAH', 'TEKNIK MESIN', 'L'),
(207, '1901012040', '2019', 'MUHAMMAD ASRI HABIBY', 'TEKNIK MESIN', 'L'),
(208, '1901012041', '2019', 'MHD SUNANDAR SIREGAR', 'TEKNIK MESIN', 'L'),
(209, '1901012042', '2019', 'MUHAMMAD RIFA\'I', 'TEKNIK MESIN', 'L'),
(210, '1901012043', '2019', 'MUH JEFRI', 'TEKNIK MESIN', 'L'),
(211, '1901012044', '2019', 'MOCHAMMAD ZEINY EKA PRASETYA', 'TEKNIK MESIN', 'L'),
(212, '1901012045', '2019', 'RAHMAD MOLANA SAID', 'TEKNIK MESIN', 'L'),
(213, '1901012046', '2019', 'M DANIL FADILLAH', 'TEKNIK MESIN', 'L'),
(214, '1901012047', '2019', 'NOVAN RAHMATUN IMAN', 'TEKNIK MESIN', 'L'),
(215, '1901012048', '2019', 'BAGUS SEJAGAT', 'TEKNIK MESIN', 'L'),
(216, '1901012049', '2019', 'MISKIN PRANATA', 'TEKNIK MESIN', 'L'),
(217, '1901012050', '2019', 'AHMAD', 'TEKNIK MESIN', 'L'),
(218, '1901012051', '2019', 'SYAHRUL MAULIDIN', 'TEKNIK MESIN', 'L'),
(219, '1901012052', '2019', 'NANDY RAKHMAN SAPUTRA', 'TEKNIK MESIN', 'L'),
(220, '1901012053', '2019', 'ALWI', 'TEKNIK MESIN', 'L'),
(221, '1901012054', '2019', 'HARIZAL MUHAMMAD', 'TEKNIK MESIN', 'L'),
(222, '1901012055', '2019', 'ORI ALPIANSYAH', 'TEKNIK MESIN', 'L'),
(223, '1901012056', '2019', 'ALIF FIRMAN MALIKA', 'TEKNIK MESIN', 'L'),
(224, '1901012057', '2019', 'MUHAMMAD WIRADANU', 'TEKNIK MESIN', 'L'),
(225, '1901012058', '2019', 'ALEK SADRA', 'TEKNIK MESIN', 'L'),
(226, '1901512001', '2019', 'TRI BAKTI SUCI', 'TEKNIK MESIN', 'L'),
(227, '2001012001', '2020', 'ANDI SAFUTRA', 'TEKNIK MESIN', 'L'),
(228, '2001012002', '2020', 'DEWA PUTU SUKERTA YASA', 'TEKNIK MESIN', 'L'),
(229, '2001012003', '2020', 'DWI NURKOLIS', 'TEKNIK MESIN', 'L'),
(230, '2001012004', '2020', 'FATIHURROYYAN', 'TEKNIK MESIN', 'L'),
(231, '2001012005', '2020', 'FITRA RIDANDY', 'TEKNIK MESIN', 'L'),
(232, '2001012006', '2020', 'PERIAN MAULANA', 'TEKNIK MESIN', 'L'),
(233, '2001012007', '2020', 'RIZKI ANJAR KUSUMA', 'TEKNIK MESIN', 'L'),
(234, '2001012008', '2020', 'SULTAN MUZZAKI', 'TEKNIK MESIN', 'L'),
(235, '2001012009', '2020', 'SIGIT PURBOYO', 'TEKNIK MESIN', 'L'),
(236, '2001012010', '2020', 'I KADEK WIDIASA', 'TEKNIK MESIN', 'L'),
(237, '2001012011', '2020', 'MUHAMMAD YAZ RASYID', 'TEKNIK MESIN', 'L'),
(238, '2001012012', '2020', 'RIVAL RAHMAN', 'TEKNIK MESIN', 'L'),
(239, '2001012013', '2020', 'DWI BUDIMAN', 'TEKNIK MESIN', 'L'),
(240, '2001012014', '2020', 'RIAN MAHESA PRATAMA', 'TEKNIK MESIN', 'L'),
(241, '2001012015', '2020', 'TOMMY GUNAWAN', 'TEKNIK MESIN', 'L'),
(242, '2001012016', '2020', 'AHMAD MASAGENA', 'TEKNIK MESIN', 'L'),
(243, '2001012017', '2020', 'SAMSUL BAHRI', 'TEKNIK MESIN', 'L'),
(244, '2001012018', '2020', 'AGIL UANG SAPUTRA', 'TEKNIK MESIN', 'L'),
(245, '2001012019', '2020', 'MUH RAMLAN RUSADY', 'TEKNIK MESIN', 'L'),
(246, '2001012020', '2020', 'M ARHAMDI', 'TEKNIK MESIN', 'L'),
(247, '2001012021', '2020', 'ANUGRAH ARAFAH', 'TEKNIK MESIN', 'L'),
(248, '2001012022', '2020', 'IVANI ASPIRANSYAH', 'TEKNIK MESIN', 'L'),
(249, '2001012023', '2020', 'YUSRON ALPIANSYAH', 'TEKNIK MESIN', 'L'),
(250, '2001012024', '2020', 'M ARIEF SIREGAR', 'TEKNIK MESIN', 'L'),
(251, '2001012025', '2020', 'DAYU BAGAS BASKORO', 'TEKNIK MESIN', 'L'),
(252, '2001012026', '2020', 'MUHAMAD HAMZAH MUBAROK', 'TEKNIK MESIN', 'L'),
(253, '2001012027', '2020', 'ANDY PRATAMA NAMI SAPUTRA HASIBUAN', 'TEKNIK MESIN', 'L'),
(254, '2001012028', '2020', 'MUHAMMAD ARIFIN S', 'TEKNIK MESIN', 'L'),
(255, '2001012029', '2020', 'DIDI JULIAN SYAPUTRA', 'TEKNIK MESIN', 'L'),
(256, '2001012030', '2020', 'MOHAMED ALMOGTABA ABDELRAHMAN YOUSIF IBRAHIM', 'TEKNIK MESIN', 'L'),
(257, '2001012031', '2020', 'MAQBUL R ABD BARRI', 'TEKNIK MESIN', 'L'),
(258, '211003001', '2021', 'ILHAMSYAH', 'TEKNIK MESIN', 'L'),
(259, '211003002', '2021', 'LA ODE ALIJUFRI', 'TEKNIK MESIN', 'L'),
(260, '211003005', '2021', 'MUHAMMAD SURYA DANUARTA', 'TEKNIK MESIN', 'L'),
(261, '211003006', '2021', 'MIFTAHUL RIZKI', 'TEKNIK MESIN', 'L'),
(262, '211003007', '2021', 'MUHAMMAD IRHAS GUNAWAN', 'TEKNIK MESIN', 'L'),
(263, '211003009', '2021', 'RENDI LANDRI', 'TEKNIK MESIN', 'L'),
(264, '211003010', '2021', 'JASMIN', 'TEKNIK MESIN', 'L'),
(265, '211003011', '2021', 'NILAM JUNIARTA WIDURI', 'TEKNIK MESIN', 'P'),
(266, '211003012', '2021', 'ABIMANYU RIZKY ADEMULA', 'TEKNIK MESIN', 'L'),
(267, '211003013', '2021', 'ARMAN AZUBRI', 'TEKNIK MESIN', 'L'),
(268, '211003014', '2021', 'ZABIB ZAINAL HARDIANTO', 'TEKNIK MESIN', 'L'),
(269, '211003015', '2021', 'FARIQ HAIDAR PASHA', 'TEKNIK MESIN', 'L'),
(270, '211003016', '2021', 'MUHAMMAD IHSAN SAPUTRA', 'TEKNIK MESIN', 'L'),
(271, '211003017', '2021', 'IKHLAS KARNANDA', 'TEKNIK MESIN', 'L'),
(272, '211003018', '2021', 'JIMI ARDIANSYA', 'TEKNIK MESIN', 'L'),
(273, '211003019', '2021', 'INDRA ZULKARNAEN', 'TEKNIK MESIN', 'L'),
(274, '211003020', '2021', 'MISROFI', 'TEKNIK MESIN', 'L'),
(275, '211003021', '2021', 'EDI HERMAWAN', 'TEKNIK MESIN', 'L'),
(276, '211003022', '2021', 'BAYU PRANATA', 'TEKNIK MESIN', 'L'),
(277, '211003023', '2021', 'SATRIA CAHYA PRANATA', 'TEKNIK MESIN', 'L'),
(278, '211003024', '2021', 'HAIZAN', 'TEKNIK MESIN', 'L'),
(279, '211003025', '2021', 'ISMA INDRA WIJAYA', 'TEKNIK MESIN', 'L'),
(280, '211003026', '2021', 'ARIYA BERLIANSYAH', 'TEKNIK MESIN', 'L'),
(281, '211003027', '2021', 'SULFA DWIPUTRA', 'TEKNIK MESIN', 'L'),
(282, '211003028', '2021', 'IWAN ANDRIYASA', 'TEKNIK MESIN', 'L'),
(283, '211003029', '2021', 'MOH IMAM SATRIA PRATAMA', 'TEKNIK MESIN', 'L'),
(284, '211003030', '2021', 'AKBAR AGUSTIANSYAH', 'TEKNIK MESIN', 'L'),
(285, '211003031', '2021', 'AL HAJJAD', 'TEKNIK MESIN', 'L'),
(286, '211003032', '2021', 'SASTRA AFRIANSA', 'TEKNIK MESIN', 'L'),
(287, '211003033', '2021', 'GUNAWAN GILANG ANUGRAH', 'TEKNIK MESIN', 'L'),
(288, '211003034', '2021', 'SANDRI', 'TEKNIK MESIN', 'L'),
(289, '211003035', '2021', 'KARLAN GUHYR', 'TEKNIK MESIN', 'L'),
(290, '211003036', '2021', 'JULFIKAR DASING', 'TEKNIK MESIN', 'L'),
(291, '211003037', '2021', 'AWALUDIN S LAMAWULO', 'TEKNIK MESIN', 'L'),
(292, '211003038', '2021', 'FIRNANDA ZAINAL ABIDIN', 'TEKNIK MESIN', 'L'),
(293, '211003039', '2021', 'AHSANI TAKWIM', 'TEKNIK MESIN', 'L'),
(294, '211003040', '2021', 'BUDI PRAYOGI', 'TEKNIK MESIN', 'L'),
(295, '211003041', '2021', 'RAMDANI ARYO NUGROHO', 'TEKNIK MESIN', 'L'),
(296, '211003042', '2021', 'MSEPTYANDI ARYA KUSUMAH', 'TEKNIK MESIN', 'L'),
(297, '211003043', '2021', 'WAWAN EKA SAKTIAWAN', 'TEKNIK MESIN', 'L'),
(298, '211003044', '2021', 'SAPRI DAULAY', 'TEKNIK MESIN', 'L'),
(299, '211003045', '2021', 'MUHAMMAD FAJAR SHIDIQ ARRASYID', 'TEKNIK MESIN', 'L'),
(300, '211003046', '2021', 'RIDHO RAHMATULLAH', 'TEKNIK MESIN', 'L'),
(301, '211003047', '2021', 'RODI MARDHA', 'TEKNIK MESIN', 'L'),
(302, '211003049', '2021', 'WAWAN HERMAWAN', 'TEKNIK MESIN', 'L'),
(303, '211003050', '2021', 'AGUNG WAHYUDI', 'TEKNIK MESIN', 'L'),
(304, '211003051', '2021', 'ERI IRAWANSYAH', 'TEKNIK MESIN', 'L'),
(305, '221003001', '2022', 'MUHAMMAD RIZAL FAUZI', 'TEKNIK MESIN', 'L'),
(306, '221003002', '2022', 'JULIANSYAH', 'TEKNIK MESIN', 'L'),
(307, '221003003', '2022', 'MOH REZA Z', 'TEKNIK MESIN', 'L'),
(308, '221003004', '2022', 'ZHIDAN RIZKI RAMADHAN', 'TEKNIK MESIN', 'L'),
(309, '221003005', '2022', 'SYAHRULLIYANSYAH', 'TEKNIK MESIN', 'L'),
(310, '221003006', '2022', 'RUSDI YANSYAH', 'TEKNIK MESIN', 'L'),
(311, '221003007', '2022', 'SOPIAN ISMA PRATAMA', 'TEKNIK MESIN', 'L'),
(312, '221003008', '2022', 'ALWAN FAJRI ABDULLAH', 'TEKNIK MESIN', 'L'),
(313, '221003009', '2022', 'RAHMAT DEVANO', 'TEKNIK MESIN', 'L'),
(314, '221003010', '2022', 'RAHMAN BIN AKRIM', 'TEKNIK MESIN', 'L'),
(315, '221003011', '2022', 'BAYU LASKA SAPUTRA', 'TEKNIK MESIN', 'L'),
(316, '221003012', '2022', 'ANDHIKA SAPUTRA', 'TEKNIK MESIN', 'L'),
(317, '221003013', '2022', 'FADILLAH NURUL HUSNAWATI', 'TEKNIK MESIN', 'P'),
(318, '221003014', '2022', 'SYAH ADITYA', 'TEKNIK MESIN', 'L'),
(319, '221003015', '2022', 'M FAKHRI JUNANDI', 'TEKNIK MESIN', 'L'),
(320, '221003016', '2022', 'IQRA FIRMANSYAH', 'TEKNIK MESIN', 'L'),
(321, '221003017', '2022', 'NICOLAS SAPUTRA', 'TEKNIK MESIN', 'L'),
(322, '221003018', '2022', 'RUSMAN HADI', 'TEKNIK MESIN', 'L'),
(323, '221003019', '2022', 'MUHAMMAD ROQIYUL AZMI', 'TEKNIK MESIN', 'L'),
(324, '221003020', '2022', 'ADIN', 'TEKNIK MESIN', 'L'),
(325, '221003021', '2022', 'PRASETYO', 'TEKNIK MESIN', 'L'),
(326, '221003022', '2022', 'MEISIN SAPUTRI HANDAYANI', 'TEKNIK MESIN', 'P'),
(327, '221003023', '2022', 'KAMARUDDIN', 'TEKNIK MESIN', 'L'),
(328, '221003024', '2022', 'IRAWAN RAMDANI', 'TEKNIK MESIN', 'L'),
(329, '221003025', '2022', 'FAISAL', 'TEKNIK MESIN', 'L'),
(330, '221003026', '2022', 'VINA MAULIDYA AGIFA', 'TEKNIK MESIN', 'P'),
(331, '221003027', '2022', 'HAMRATUL AISYAH DHANASMARA', 'TEKNIK MESIN', 'P'),
(332, '221003028', '2022', 'MUHAMMAD ZIDAN', 'TEKNIK MESIN', 'L'),
(333, '221003029', '2022', 'ILHAM JAELANI', 'TEKNIK MESIN', 'L'),
(334, '221003030', '2022', 'GILANG PRADITYA PRATAMA', 'TEKNIK MESIN', 'L'),
(335, '221003031', '2022', 'FAROZI ANSOR JANUARI IMRAN', 'TEKNIK MESIN', 'L'),
(336, '221003032', '2022', 'INDRAWAN SAPUTRA', 'TEKNIK MESIN', 'L'),
(337, '221003033', '2022', 'FATHI BAHAUDDIN SUPRIADI', 'TEKNIK MESIN', 'L'),
(338, '221003034', '2022', 'ARJUN RANGGADANO', 'TEKNIK MESIN', 'L'),
(339, '221003035', '2022', 'ADE SULTAN JAYA', 'TEKNIK MESIN', 'L'),
(340, '221003036', '2022', 'LYSY OKTA RYANTY', 'TEKNIK MESIN', 'P'),
(341, '1901015001', '2019', 'HAJRIA', 'TEKNIK INDUSTRI', 'P'),
(342, '1901015002', '2019', 'PITRI HANDAYANI', 'TEKNIK INDUSTRI', 'P'),
(343, '1901015003', '2019', 'ERINDA CAHYA HERANI', 'TEKNIK INDUSTRI', 'P'),
(344, '1901015004', '2019', 'DWI ARMAYANI', 'TEKNIK INDUSTRI', 'P'),
(345, '1901015005', '2019', 'I GUSTI AGUNG NGURAH P', 'TEKNIK INDUSTRI', 'L'),
(346, '1901015006', '2019', 'DESI ROHMANDANI PUTRI', 'TEKNIK INDUSTRI', 'P'),
(347, '1901015007', '2019', 'SELAMAT', 'TEKNIK INDUSTRI', 'L'),
(348, '1901015008', '2019', 'SEPTI YULINDA NASUTION', 'TEKNIK INDUSTRI', 'P'),
(349, '1901015009', '2019', 'RESA OVIANTI', 'TEKNIK INDUSTRI', 'P'),
(350, '1901015010', '2019', 'IKHTIAR MAULANA SAPUTRA', 'TEKNIK INDUSTRI', 'L'),
(351, '1901015011', '2019', 'IWAN AHMAD JUMARI', 'TEKNIK INDUSTRI', 'L'),
(352, '1901015012', '2019', 'HASAN BASRI ZUHRI LUBIS', 'TEKNIK INDUSTRI', 'L'),
(353, '1901015013', '2019', 'WIRABUANA GUSTI AL-ARSY', 'TEKNIK INDUSTRI', 'L'),
(354, '1901015014', '2019', 'ARYA MUCHNAS RAMA SANGAJI', 'TEKNIK INDUSTRI', 'L'),
(355, '1901015015', '2019', 'UMMI KALSUM HARAHAP', 'TEKNIK INDUSTRI', 'P'),
(356, '1901015016', '2019', 'JUMARIAH SRI NELLA', 'TEKNIK INDUSTRI', 'P'),
(357, '1901015017', '2019', 'RAPNI YEPEIKENE', 'TEKNIK INDUSTRI', 'P'),
(358, '1901015018', '2019', 'RISKA ANDILA', 'TEKNIK INDUSTRI', 'P'),
(359, '1901015019', '2019', 'ANDI MUHAMMAD AL FARIZHY', 'TEKNIK INDUSTRI', 'L'),
(360, '1901015020', '2019', 'ANDI MUSTIKA IRAHAYU ASRAN', 'TEKNIK INDUSTRI', 'P'),
(361, '1901015021', '2019', 'WAHYU SAILAMA', 'TEKNIK INDUSTRI', 'L'),
(362, '1901015022', '2019', 'RIVAL FAUZI', 'TEKNIK INDUSTRI', 'L'),
(363, '1901015023', '2019', 'RAHMAT HIDAYAT KATILI', 'TEKNIK INDUSTRI', 'L'),
(364, '1901015024', '2019', 'HAFIZ ABU RIDO', 'TEKNIK INDUSTRI', 'L'),
(365, '1901015025', '2019', 'AINUL NIZHA FITRI', 'TEKNIK INDUSTRI', 'P'),
(366, '1901015026', '2019', 'SRI AYU', 'TEKNIK INDUSTRI', 'P'),
(367, '1901015027', '2019', 'FIKRAN S MAINGGAL', 'TEKNIK INDUSTRI', 'L'),
(368, '1901015028', '2019', 'FAZRIANSYAH', 'TEKNIK INDUSTRI', 'L'),
(369, '1901015029', '2019', 'IMAM TAQWA', 'TEKNIK INDUSTRI', 'L'),
(370, '1901015030', '2019', 'DIDI RAHMAN', 'TEKNIK INDUSTRI', 'L'),
(371, '1901015031', '2019', 'NUSAIBAH ALI', 'TEKNIK INDUSTRI', 'P'),
(372, '1901015032', '2019', 'SARIANA', 'TEKNIK INDUSTRI', 'P'),
(373, '1901015033', '2019', 'TENING', 'TEKNIK INDUSTRI', 'P'),
(374, '1901015034', '2019', 'PUTRI ANANDA ZAMAN', 'TEKNIK INDUSTRI', 'P'),
(375, '1901015035', '2019', 'RENALDI YANSYAH', 'TEKNIK INDUSTRI', 'L'),
(376, '1901015036', '2019', 'AFRA ISTI\'AANAH', 'TEKNIK INDUSTRI', 'P'),
(377, '1901015037', '2019', 'SARTIKA', 'TEKNIK INDUSTRI', 'P'),
(378, '1901015038', '2019', 'RYAN LISSABILLA', 'TEKNIK INDUSTRI', 'L'),
(379, '1901015039', '2019', 'PUPUT SRI UTAMI', 'TEKNIK INDUSTRI', 'P'),
(380, '1901015040', '2019', 'NURUL MUTMAINAH', 'TEKNIK INDUSTRI', 'P'),
(381, '1901015041', '2019', 'NURHAYANTI H MATUGES', 'TEKNIK INDUSTRI', 'P'),
(382, '1901015042', '2019', 'MIRA G SUGALA', 'TEKNIK INDUSTRI', 'P'),
(383, '1901015043', '2019', 'NISA SARI HIDAYAH WAU', 'TEKNIK INDUSTRI', 'P'),
(384, '1901015044', '2019', 'NANI', 'TEKNIK INDUSTRI', 'P'),
(385, '1901015045', '2019', 'MEGANTORO RAFI NUGROHO', 'TEKNIK INDUSTRI', 'L'),
(386, '1901015046', '2019', 'MOH FARLAN', 'TEKNIK INDUSTRI', 'L'),
(387, '1901015047', '2019', 'MUHAMMAD ZIKRI KAUTSAR', 'TEKNIK INDUSTRI', 'L'),
(388, '1901015048', '2019', 'YUSRIL IHSYA MAHENDRA', 'TEKNIK INDUSTRI', 'L'),
(389, '1901015049', '2019', 'IKHSAN WASIR RISKI', 'TEKNIK INDUSTRI', 'L'),
(390, '1901015050', '2019', 'LEONARDO JULIANTINO', 'TEKNIK INDUSTRI', 'L'),
(391, '1901015051', '2019', 'QIRANDA SURMA SATRIYO W', 'TEKNIK INDUSTRI', 'L'),
(392, '1901015052', '2019', 'IQRAMAN GUSPIANDR', 'TEKNIK INDUSTRI', 'L'),
(393, '1901015053', '2019', 'SILVI YUNINGSIH', 'TEKNIK INDUSTRI', 'P'),
(394, '1901015054', '2019', 'MARZUKI', 'TEKNIK INDUSTRI', 'L'),
(395, '1901015055', '2019', 'INDRAWAN PRATAMA', 'TEKNIK INDUSTRI', 'L'),
(396, '1901015056', '2019', 'SITI NURAISAH A MANAAP', 'TEKNIK INDUSTRI', 'P'),
(397, '1901015057', '2019', 'ISLAMIYATHUL RIZKY S IMAM', 'TEKNIK INDUSTRI', 'P'),
(398, '1901015058', '2019', 'OLA ROSITA', 'TEKNIK INDUSTRI', 'P'),
(399, '1901015059', '2019', 'ODIE RIZKI SYAHBANI', 'TEKNIK INDUSTRI', 'L'),
(400, '2001015001', '2020', 'AWIFTRI NOVI ANTI', 'TEKNIK INDUSTRI', 'P'),
(401, '2001015002', '2020', 'BAGAS AFIF BUDIANTO', 'TEKNIK INDUSTRI', 'L'),
(402, '2001015003', '2020', 'INTAN FRATIKA SARI', 'TEKNIK INDUSTRI', 'P'),
(403, '2001015004', '2020', 'ISMAYANTI', 'TEKNIK INDUSTRI', 'P'),
(404, '2001015005', '2020', 'LALU TAUFIK KURRAHMAN', 'TEKNIK INDUSTRI', 'L'),
(405, '2001015006', '2020', 'RANI NUR UTAMI', 'TEKNIK INDUSTRI', 'P'),
(406, '2001015007', '2020', 'RISKA YANTI', 'TEKNIK INDUSTRI', 'P'),
(407, '2001015008', '2020', 'MAULANA IBRAHIM', 'TEKNIK INDUSTRI', 'L'),
(408, '2001015009', '2020', 'WINDA LISKAYANTI', 'TEKNIK INDUSTRI', 'P'),
(409, '2001015010', '2020', 'YENA KURNIA', 'TEKNIK INDUSTRI', 'P'),
(410, '2001015011', '2020', 'SRI HARTATI', 'TEKNIK INDUSTRI', 'P'),
(411, '2001015012', '2020', 'ISFADLI', 'TEKNIK INDUSTRI', 'L'),
(412, '2001015013', '2020', 'CICI PUTRI SAKINA', 'TEKNIK INDUSTRI', 'P'),
(413, '2001015014', '2020', 'TAMARA EXANTI OLIFIA', 'TEKNIK INDUSTRI', 'P'),
(414, '2001015015', '2020', 'MARISA DESITA RAMDANI', 'TEKNIK INDUSTRI', 'P'),
(415, '2001015016', '2020', 'NURLAELA', 'TEKNIK INDUSTRI', 'P'),
(416, '2001015017', '2020', 'HILDA MARDALINA SAPITRI', 'TEKNIK INDUSTRI', 'P'),
(417, '2001015018', '2020', 'ASSRUL IPANDI', 'TEKNIK INDUSTRI', 'L'),
(418, '2001015019', '2020', 'MUHAMMAD IQBAL', 'TEKNIK INDUSTRI', 'L'),
(419, '2001015020', '2020', 'FITRI HIDAYA', 'TEKNIK INDUSTRI', 'P'),
(420, '2001015021', '2020', 'DARA HIDAYATULLAH', 'TEKNIK INDUSTRI', 'P'),
(421, '2001015022', '2020', 'RIVHI ARILFIANSYAH', 'TEKNIK INDUSTRI', 'L'),
(422, '2001015023', '2020', 'JODI IRWANSYAH', 'TEKNIK INDUSTRI', 'L'),
(423, '2001015024', '2020', 'HASBULLAH', 'TEKNIK INDUSTRI', 'L'),
(424, '2001015025', '2020', 'RISKY PRATAMA', 'TEKNIK INDUSTRI', 'L'),
(425, '2001015026', '2020', 'SYAEPUL RAHMAN', 'TEKNIK INDUSTRI', 'L'),
(426, '2001015027', '2020', 'ARUM AGRUS MARSIWAH', 'TEKNIK INDUSTRI', 'P'),
(427, '2001015028', '2020', 'NABILLA SAFARANI', 'TEKNIK INDUSTRI', 'P'),
(428, '2001015029', '2020', 'YULIANTI', 'TEKNIK INDUSTRI', 'P'),
(429, '2001015031', '2020', 'ERWIN MAHENDRA', 'TEKNIK INDUSTRI', 'L'),
(430, '2001015032', '2020', 'SULISTIYAWATI', 'TEKNIK INDUSTRI', 'P'),
(431, '2001015033', '2020', 'ZULKIFLI', 'TEKNIK INDUSTRI', 'L'),
(432, '2001015034', '2020', 'ANDRIAN ANWAR', 'TEKNIK INDUSTRI', 'L'),
(433, '2001015035', '2020', 'RIFALDI', 'TEKNIK INDUSTRI', 'L'),
(434, '2001015036', '2020', 'INDAR NUGRAHANI RAMLI', 'TEKNIK INDUSTRI', 'P'),
(435, '2001015037', '2020', 'FITRI LESTARI', 'TEKNIK INDUSTRI', 'P'),
(436, '2001015038', '2020', 'M NIJAM HARAHAP', 'TEKNIK INDUSTRI', 'L'),
(437, '2001015039', '2020', 'MUHAMMAD FIRDAUS FADHLULLAH', 'TEKNIK INDUSTRI', 'L'),
(438, '2001015040', '2020', 'ANDIKA PRATAMA', 'TEKNIK INDUSTRI', 'L'),
(439, '2001915030', '2020', 'SUHERMANSYAH', 'TEKNIK INDUSTRI', 'L'),
(440, '211004001', '2021', 'SUTINI', 'TEKNIK INDUSTRI', 'P'),
(441, '211004002', '2021', 'WIDYA SEPTIANA', 'TEKNIK INDUSTRI', 'P'),
(442, '211004003', '2021', 'ADRIAND AGUSPRIATAMA', 'TEKNIK INDUSTRI', 'L'),
(443, '211004005', '2021', 'INDAH MULYANA HASIBUAN', 'TEKNIK INDUSTRI', 'P'),
(444, '211004007', '2021', 'BASRI', 'TEKNIK INDUSTRI', 'L'),
(445, '211004008', '2021', 'RAHMA NUR ASZARA', 'TEKNIK INDUSTRI', 'P'),
(446, '211004009', '2021', 'SRI AINUN MUSLIMAH', 'TEKNIK INDUSTRI', 'P'),
(447, '211004010', '2021', 'ANDIEK SAMALANGI PADDILAU', 'TEKNIK INDUSTRI', 'L'),
(448, '211004011', '2021', 'YENI KURNIA', 'TEKNIK INDUSTRI', 'P'),
(449, '211004012', '2021', 'SUSI ASMASARI', 'TEKNIK INDUSTRI', 'P'),
(450, '211004013', '2021', 'RINA MERI ANDANI', 'TEKNIK INDUSTRI', 'P'),
(451, '211004014', '2021', 'M ARYA KURNIAWAN', 'TEKNIK INDUSTRI', 'L'),
(452, '211004015', '2021', 'RADI PRATAMA', 'TEKNIK INDUSTRI', 'L'),
(453, '211004016', '2021', 'AGUNG SATRIA JAYA', 'TEKNIK INDUSTRI', 'L'),
(454, '211004017', '2021', 'SURI PANGASIH ALFATIHAH', 'TEKNIK INDUSTRI', 'P'),
(455, '211004018', '2021', 'DEBI JULIA SARI', 'TEKNIK INDUSTRI', 'P'),
(456, '211004019', '2021', 'MUHAMMAD NUR FAUZAN', 'TEKNIK INDUSTRI', 'L'),
(457, '211004020', '2021', 'ELDIRAH FEBRINA MARISA', 'TEKNIK INDUSTRI', 'P'),
(458, '211004021', '2021', 'MOCH LAHMUDIN', 'TEKNIK INDUSTRI', 'L'),
(459, '211004022', '2021', 'NADIATUN NAJIHAH', 'TEKNIK INDUSTRI', 'P'),
(460, '211004023', '2021', 'MERI SADITA ADEKAYANTI', 'TEKNIK INDUSTRI', 'P'),
(461, '211004024', '2021', 'ALFIANSYAH', 'TEKNIK INDUSTRI', 'L'),
(462, '211004025', '2021', 'MUHAMMAD FEBRIAN', 'TEKNIK INDUSTRI', 'L'),
(463, '211004026', '2021', 'ROMI ARIANSYA', 'TEKNIK INDUSTRI', 'L'),
(464, '211004027', '2021', 'DILA OKTARIANI', 'TEKNIK INDUSTRI', 'P'),
(465, '211004028', '2021', 'MUHAMMAD BASRIK SYAPUTRA', 'TEKNIK INDUSTRI', 'L'),
(466, '211004029', '2021', 'ASHABUL ABUBEKAR', 'TEKNIK INDUSTRI', 'L'),
(467, '211004030', '2021', 'FATIN FARAH ATIRA', 'TEKNIK INDUSTRI', 'P'),
(468, '211004031', '2021', 'MARKIA', 'TEKNIK INDUSTRI', 'P'),
(469, '211004032', '2021', 'MALI KARDI', 'TEKNIK INDUSTRI', 'L'),
(470, '211004033', '2021', 'FARHAN TSANI', 'TEKNIK INDUSTRI', 'L'),
(471, '211004034', '2021', 'FITRI FADHILAH', 'TEKNIK INDUSTRI', 'P'),
(472, '221004001', '2022', 'WAHIDAH JUNIARTI', 'TEKNIK INDUSTRI', 'P'),
(473, '221004002', '2022', 'DINDA PERMATA', 'TEKNIK INDUSTRI', 'P'),
(474, '221004003', '2022', 'NUR FITRIA NINGSIH', 'TEKNIK INDUSTRI', 'P'),
(475, '221004004', '2022', 'SOPIA RAHMIANTI', 'TEKNIK INDUSTRI', 'P'),
(476, '221004005', '2022', 'RIZQI NOVI KAYANTI', 'TEKNIK INDUSTRI', 'P'),
(477, '221004006', '2022', 'NURIA RAHMI M LAHEMMA', 'TEKNIK INDUSTRI', 'P'),
(478, '221004007', '2022', 'KURNIA', 'TEKNIK INDUSTRI', 'P'),
(479, '221004008', '2022', 'RANGGA INDRA SAPUTRA', 'TEKNIK INDUSTRI', 'L'),
(480, '221004009', '2022', 'HIKMA SENGKUL', 'TEKNIK INDUSTRI', 'P'),
(481, '221004010', '2022', 'DWITA HAERANI', 'TEKNIK INDUSTRI', 'P'),
(482, '221004011', '2022', 'SUSI SUSANTI', 'TEKNIK INDUSTRI', 'P'),
(483, '221004012', '2022', 'ABERINA MABEL', 'TEKNIK INDUSTRI', 'P'),
(484, '221004013', '2022', 'DIKA RISKI OKTAPIANA', 'TEKNIK INDUSTRI', 'P'),
(485, '221004014', '2022', 'TITIN ASMAWATI', 'TEKNIK INDUSTRI', 'P'),
(486, '221004015', '2022', 'AHMAD FATHONI', 'TEKNIK INDUSTRI', 'L'),
(487, '221004016', '2022', 'IFAN JAYADI', 'TEKNIK INDUSTRI', 'L'),
(488, '221004017', '2022', 'GILANG SURYA AGOESAH', 'TEKNIK INDUSTRI', 'L'),
(489, '221004018', '2022', 'M IMAM SYABANI', 'TEKNIK INDUSTRI', 'L'),
(490, '221004019', '2022', 'PAHRUR ROJI HASIBUAN', 'TEKNIK INDUSTRI', 'L'),
(491, '221004020', '2022', 'PUTRI EKA INDRA NINGSIH M', 'TEKNIK INDUSTRI', 'P'),
(492, '221004021', '2022', 'MUHAMMAD FAUZI', 'TEKNIK INDUSTRI', 'L'),
(493, '221004022', '2022', 'MUHAMMAD SADAM', 'TEKNIK INDUSTRI', 'L'),
(494, '221004023', '2022', 'RIAN RAHMAN YUDISTIRA', 'TEKNIK INDUSTRI', 'L'),
(495, '221004024', '2022', 'ANDI TENRI CAHYAZNI', 'TEKNIK INDUSTRI', 'P'),
(496, '221004025', '2022', 'ILHAM SAFANA', 'TEKNIK INDUSTRI', 'L'),
(497, '221004026', '2022', 'AFRI RAHMANSYAH', 'TEKNIK INDUSTRI', 'L'),
(498, '221004027', '2022', 'JIHAN AULIYA', 'TEKNIK INDUSTRI', 'P'),
(499, '221004028', '2022', 'ALIVIA CITRA WIDURI', 'TEKNIK INDUSTRI', 'P'),
(500, '1901013001', '2019', 'WARDA WULANDARI', 'INFORMATIKA', 'P'),
(501, '1901013002', '2019', 'ALIEF ALFATH AKBAR', 'INFORMATIKA', 'L'),
(502, '1901013003', '2019', 'FEBBI WIDIA SASMAWARDANI', 'INFORMATIKA', 'P'),
(503, '1901013004', '2019', 'ZAINUR MINULLAH PUTRA', 'INFORMATIKA', 'L'),
(504, '1901013005', '2019', 'LINDA MUTIARA', 'INFORMATIKA', 'P'),
(505, '1901013006', '2019', 'MUHAMMAD FAIZAL', 'INFORMATIKA', 'L'),
(506, '1901013007', '2019', 'MALIK BAYU AJI', 'INFORMATIKA', 'L'),
(507, '1901013008', '2019', 'LUSI ANASTASIA', 'INFORMATIKA', 'P'),
(508, '1901013009', '2019', 'MALIK FAJAR', 'INFORMATIKA', 'L'),
(509, '1901013010', '2019', 'FETI ALSEPIANINGSIH', 'INFORMATIKA', 'P'),
(510, '1901013011', '2019', 'ABI AULIA', 'INFORMATIKA', 'P'),
(511, '1901013012', '2019', 'JULIAN RISKANDI', 'INFORMATIKA', 'L'),
(512, '1901013013', '2019', 'ALDIANSYAH', 'INFORMATIKA', 'P'),
(513, '1901013014', '2019', 'MUHAMMAD ISRO', 'INFORMATIKA', 'L'),
(514, '1901013015', '2019', 'AGUS SIRHANDANI', 'INFORMATIKA', 'L'),
(515, '1901013016', '2019', 'DAHALIA SUSANTI', 'INFORMATIKA', 'P'),
(516, '1901013017', '2019', 'MARSA PRAYUDA', 'INFORMATIKA', 'L'),
(517, '1901013018', '2019', 'DODY PRANATA', 'INFORMATIKA', 'L'),
(518, '1901013019', '2019', 'WAHYU EKA TAPARANA', 'INFORMATIKA', 'L'),
(519, '1901013020', '2019', 'SETIAWAN JODI', 'INFORMATIKA', 'L'),
(520, '1901013021', '2019', 'ISMA NURKHOLIS TARMIZI', 'INFORMATIKA', 'L'),
(521, '1901013022', '2019', 'HAFIIZHAN MUHAMMAD', 'INFORMATIKA', 'L'),
(522, '1901013023', '2019', 'YUHAL MUDSAMIL', 'INFORMATIKA', 'L'),
(523, '1901013024', '2019', 'SATRIA WIRAWAN', 'INFORMATIKA', 'L'),
(524, '1901013025', '2019', 'KHAERUL INSHAN SAPHUTRA', 'INFORMATIKA', 'L'),
(525, '1901013026', '2019', 'YUDIANTO', 'INFORMATIKA', 'L'),
(526, '1901013027', '2019', 'SHANIA AINNAYAH ALFATIHA', 'INFORMATIKA', 'P'),
(527, '1901013028', '2019', 'ZETYO WINARNO', 'INFORMATIKA', 'L'),
(528, '1901013029', '2019', 'NIKI JULIANTI', 'INFORMATIKA', 'P'),
(529, '1901013030', '2019', 'RYO HADI PRATAMA', 'INFORMATIKA', 'L'),
(530, '1901013031', '2019', 'REZA ARI PRADANA', 'INFORMATIKA', 'L'),
(531, '1901013032', '2019', 'KHOFIFAH DELIA', 'INFORMATIKA', 'P'),
(532, '1901013033', '2019', 'IRNA DWI GUSTIANA', 'INFORMATIKA', 'P'),
(533, '1901013034', '2019', 'ASRI RAMDANI', 'INFORMATIKA', 'P'),
(534, '1901013035', '2019', 'SOFIA ARDINA', 'INFORMATIKA', 'P'),
(535, '1901013036', '2019', 'JIHAN FARIDA', 'INFORMATIKA', 'P'),
(536, '1901013037', '2019', 'AMINAH', 'INFORMATIKA', 'P'),
(537, '1901013038', '2019', 'SYAHRUL RAMADHAN', 'INFORMATIKA', 'L'),
(538, '1901013039', '2019', 'EGIS ALFIAS', 'INFORMATIKA', 'L'),
(539, '1901013040', '2019', 'ISMAIL', 'INFORMATIKA', 'L'),
(540, '1901013041', '2019', 'IKRAMANSYAH', 'INFORMATIKA', 'L'),
(541, '1901013042', '2019', 'NURUL AZMI', 'INFORMATIKA', 'P'),
(542, '1901013043', '2019', 'YAHYA AYASY ABDURRAHMAN', 'INFORMATIKA', 'L'),
(543, '1901013044', '2019', 'RIZKY ADI RYANTO', 'INFORMATIKA', 'L'),
(544, '1901013045', '2019', 'WULAN PURNAMA PUTRI', 'INFORMATIKA', 'P'),
(545, '1901013046', '2019', 'MUHAMMAD BAGUS', 'INFORMATIKA', 'L'),
(546, '1901013047', '2019', 'MAHESA RIZKI ARDIANSA', 'INFORMATIKA', 'L'),
(547, '1901013048', '2019', 'MUHAMMAD FIRMANSYAH', 'INFORMATIKA', 'L'),
(548, '1901013049', '2019', 'AKBAR RIDHO AIMAN', 'INFORMATIKA', 'L'),
(549, '1901013050', '2019', 'WIKI NASMANSYAH', 'INFORMATIKA', 'L'),
(550, '1901013051', '2019', 'TRI UTAMI', 'INFORMATIKA', 'P'),
(551, '1901013052', '2019', 'LESI LELA SARI', 'INFORMATIKA', 'P'),
(552, '1901013053', '2019', 'AULIA FITRIASARI', 'INFORMATIKA', 'P'),
(553, '1901013054', '2019', 'IQBAL ALAM RIDWAN', 'INFORMATIKA', 'L'),
(554, '1901013055', '2019', 'DIANA PUTRI', 'INFORMATIKA', 'P'),
(555, '1901013056', '2019', 'NURMI SANTI', 'INFORMATIKA', 'P'),
(556, '1901013057', '2019', 'LALU LUKMAN DIANSAH', 'INFORMATIKA', 'L'),
(557, '1901013058', '2019', 'RISKA YULIANA', 'INFORMATIKA', 'P'),
(558, '1901013059', '2019', 'YANDIEGA PRAGASTA', 'INFORMATIKA', 'P'),
(559, '1901013060', '2019', 'ALFIN BAROKAH', 'INFORMATIKA', 'L'),
(560, '1901013061', '2019', 'NIKEN SETIAWATI', 'INFORMATIKA', 'P'),
(561, '1901013062', '2019', 'IMANOLLAH', 'INFORMATIKA', 'L'),
(562, '1901013063', '2019', 'CANDRA KURNIAWAN', 'INFORMATIKA', 'L'),
(563, '1901013064', '2019', 'VINNA JARDYAGUSTIN', 'INFORMATIKA', 'P'),
(564, '1901013065', '2019', 'MUHAMMAD FAUZI', 'INFORMATIKA', 'L'),
(565, '1901013066', '2019', 'FIRA PERMATASARI', 'INFORMATIKA', 'P'),
(566, '1901013068', '2019', 'WAWA MARISA', 'INFORMATIKA', 'P'),
(567, '1901013069', '2019', 'ADITYA YAHYA', 'INFORMATIKA', 'L'),
(568, '1901013070', '2019', 'YIYI ANANDA RIZKIA', 'INFORMATIKA', 'P'),
(569, '1901013071', '2019', 'SALAHUDDIN DAFFA AZZAMI', 'INFORMATIKA', 'L'),
(570, '1901013072', '2019', 'MUHAMMAD YADISA', 'INFORMATIKA', 'L'),
(571, '1901013073', '2019', 'GUNAWAN SUGIHARTO', 'INFORMATIKA', 'L'),
(572, '1901013074', '2019', 'IHRATUN', 'INFORMATIKA', 'P'),
(573, '1901013075', '2019', 'SAMSURYA', 'INFORMATIKA', 'L'),
(574, '1901013076', '2019', 'MUHAMMAD ILHAM AKBAR', 'INFORMATIKA', 'L'),
(575, '1901013077', '2019', 'BAYU FAJRIN', 'INFORMATIKA', 'L'),
(576, '1901013078', '2019', 'CAHYO MULYO ANUGRAH', 'INFORMATIKA', 'L'),
(577, '1901013079', '2019', 'ABDULLAH AFIF TAQIYYUDDIN', 'INFORMATIKA', 'L'),
(578, '1901013080', '2019', 'NOVIA RISKA AULIA', 'INFORMATIKA', 'P'),
(579, '1901013081', '2019', 'ARJUNA RAMADHAN', 'INFORMATIKA', 'L'),
(580, '1901013082', '2019', 'APRIAN CLARA JULISTIAN', 'INFORMATIKA', 'L'),
(581, '1901013083', '2019', 'QOLBI NURWANDI YUNUS', 'INFORMATIKA', 'L'),
(582, '1901013084', '2019', 'MUHAMMAD AZZAM AL FAUZIE', 'INFORMATIKA', 'L'),
(583, '1901013085', '2019', 'MOHAMMAD REZHA FEBRIANSAH', 'INFORMATIKA', 'L'),
(584, '1901013086', '2019', 'MUHAMMAD YAHYA AYYAS', 'INFORMATIKA', 'L'),
(585, '1901013087', '2019', 'MUHAMMAD BAHARUN', 'INFORMATIKA', 'L'),
(586, '1901013088', '2019', 'EDI CAHYADI', 'INFORMATIKA', 'L'),
(587, '1901013089', '2019', 'M REINALDI NAVIALBARR', 'INFORMATIKA', 'L'),
(588, '1901013090', '2019', 'ADITYA APRIANSYAH', 'INFORMATIKA', 'L'),
(589, '1901013091', '2019', 'REYNALDO ROMERO', 'INFORMATIKA', 'L'),
(590, '1901013092', '2019', 'ANDI MASTASYA', 'INFORMATIKA', 'P'),
(591, '1901013093', '2019', 'ULFA WAHIDA ANDINI', 'INFORMATIKA', 'P'),
(592, '1901013094', '2019', 'ADIT MAULANA HIKMAWAN', 'INFORMATIKA', 'L'),
(593, '1901013095', '2019', 'ARIF SUTRIANTO', 'INFORMATIKA', 'L'),
(594, '1901013096', '2019', 'PERWIRA RIZKI JULIANSYAH', 'INFORMATIKA', 'L'),
(595, '1901013097', '2019', 'MAKDUM IBRAHIM', 'INFORMATIKA', 'L'),
(596, '1901013098', '2019', 'JUNIANTO SAPUTRA', 'INFORMATIKA', 'L'),
(597, '1901013099', '2019', 'MAULANA HELMI AKBAR', 'INFORMATIKA', 'L'),
(598, '1901013100', '2019', 'IRA ALSYAH', 'INFORMATIKA', 'P'),
(599, '1901013101', '2019', 'MERI ANJARSARI', 'INFORMATIKA', 'P'),
(600, '1901013102', '2019', 'ERMA SURYANI', 'INFORMATIKA', 'P'),
(601, '1901013103', '2019', 'DUWI KARTINIAPRILIA', 'INFORMATIKA', 'P'),
(602, '1901013104', '2019', 'NOVI DWI PUTRA', 'INFORMATIKA', 'L'),
(603, '1901013105', '2019', 'TRI RESKI', 'INFORMATIKA', 'P'),
(604, '1901013106', '2019', 'ROSY BAESY SHAMANTHA', 'INFORMATIKA', 'L'),
(605, '1901013107', '2019', 'DESLIN SARMITHA B', 'INFORMATIKA', 'P'),
(606, '1901013108', '2019', 'TARA RIZKAYANTI', 'INFORMATIKA', 'P'),
(607, '1901013109', '2019', 'ANDHIKA SEPTIAN PRATAMA', 'INFORMATIKA', 'L'),
(608, '1901013110', '2019', 'ANGGIA PURBADHANTI', 'INFORMATIKA', 'P'),
(609, '1901013111', '2019', 'MUHAMMAD RIFKAH', 'INFORMATIKA', 'L'),
(610, '1901013112', '2019', 'LISKA DELLA ERLANDA', 'INFORMATIKA', 'P'),
(611, '1901013113', '2019', 'MUHAMAD DONNY MDQ', 'INFORMATIKA', 'L'),
(612, '1901013114', '2019', 'A M SETIAWAN', 'INFORMATIKA', 'L'),
(613, '1901013115', '2019', 'OLVIRA NANDA', 'INFORMATIKA', 'P'),
(614, '1901013116', '2019', 'RIZKA IRJIBA', 'INFORMATIKA', 'P'),
(615, '1901013117', '2019', 'NUR FADHILLAH', 'INFORMATIKA', 'P'),
(616, '1901013118', '2019', 'KARMILA', 'INFORMATIKA', 'P'),
(617, '1901013119', '2019', 'GHIFRON AKHIRU SYAHRONI', 'INFORMATIKA', 'L'),
(618, '1901013120', '2019', 'ARFAN FEBRIAZAL', 'INFORMATIKA', 'L'),
(619, '1901013121', '2019', 'KINTA DEWANY AZIZAH', 'INFORMATIKA', 'P'),
(620, '1901013122', '2019', 'WIDIANI MARSYAMIA PATANA', 'INFORMATIKA', 'P'),
(621, '1901013123', '2019', 'CITRA AMELIA DYERA MILENIA', 'INFORMATIKA', 'P'),
(622, '1901013124', '2019', 'TIS ASY ARIA', 'INFORMATIKA', 'P'),
(623, '1901013125', '2019', 'RIKA SAFIRA', 'INFORMATIKA', 'P'),
(624, '1901013126', '2019', 'IHZA ABDIAN TARDHO', 'INFORMATIKA', 'L'),
(625, '2001013001', '2020', 'AMBAR WATI', 'INFORMATIKA', 'P'),
(626, '2001013002', '2020', 'ARMANITA ANING', 'INFORMATIKA', 'P'),
(627, '2001013003', '2020', 'ASTI OKTAVIANI', 'INFORMATIKA', 'P'),
(628, '2001013004', '2020', 'DEANA PUTRI KAYANTI', 'INFORMATIKA', 'P'),
(629, '2001013005', '2020', 'ELVIN JULIANSYAH', 'INFORMATIKA', 'L'),
(630, '2001013006', '2020', 'HADIJATOL KADRI', 'INFORMATIKA', 'P'),
(631, '2001013007', '2020', 'JUFRIADI', 'INFORMATIKA', 'L'),
(632, '2001013008', '2020', 'MAGFIRA MEILANI PUTRI', 'INFORMATIKA', 'P'),
(633, '2001013009', '2020', 'MAR\'I YUSTIARDIN', 'INFORMATIKA', 'L'),
(634, '2001013010', '2020', 'MUHAMMAD FAHROJI', 'INFORMATIKA', 'L'),
(635, '2001013011', '2020', 'NIZAR MULYAWAN', 'INFORMATIKA', 'L'),
(636, '2001013012', '2020', 'NOVITASARI', 'INFORMATIKA', 'P'),
(637, '2001013013', '2020', 'NUR ISLAMIA', 'INFORMATIKA', 'P'),
(638, '2001013014', '2020', 'NURUL MUFLIHA PUASA', 'INFORMATIKA', 'P'),
(639, '2001013015', '2020', 'SULASTRI', 'INFORMATIKA', 'P'),
(640, '2001013016', '2020', 'VENI SEPTIANI', 'INFORMATIKA', 'P'),
(641, '2001013017', '2020', 'VIRNA FEBRI ANDINI', 'INFORMATIKA', 'P'),
(642, '2001013018', '2020', 'WAHYU AGUSTINA', 'INFORMATIKA', 'P'),
(643, '2001013019', '2020', 'WULANDARI', 'INFORMATIKA', 'P'),
(644, '2001013020', '2020', 'ANDINI WULANDARI', 'INFORMATIKA', 'P'),
(645, '2001013021', '2020', 'FITRAH RAMDANI', 'INFORMATIKA', 'L'),
(646, '2001013022', '2020', 'RIMA FAHRANA', 'INFORMATIKA', 'P'),
(647, '2001013023', '2020', 'ZUHRY ARYANSYAH PUTRA', 'INFORMATIKA', 'L'),
(648, '2001013024', '2020', 'ERNA PUTRI ATI', 'INFORMATIKA', 'P'),
(649, '2001013025', '2020', 'RISMAYANTI', 'INFORMATIKA', 'P'),
(650, '2001013026', '2020', 'OSAMA FAJAR ANGGARA', 'INFORMATIKA', 'L'),
(651, '2001013027', '2020', 'TRI YUDHA PRAWIRO', 'INFORMATIKA', 'L'),
(652, '2001013028', '2020', 'HILMY ADRIZUL RIFQI HIDAYAT', 'INFORMATIKA', 'L'),
(653, '2001013029', '2020', 'JUN ARNINDA', 'INFORMATIKA', 'L'),
(654, '2001013030', '2020', 'ZAKIYAH', 'INFORMATIKA', 'P'),
(655, '2001013031', '2020', 'YUNI SUKANA', 'INFORMATIKA', 'P'),
(656, '2001013032', '2020', 'CECE LISTIANA UMBARA', 'INFORMATIKA', 'P'),
(657, '2001013033', '2020', 'MURNI ANITA WULANDARI', 'INFORMATIKA', 'P'),
(658, '2001013034', '2020', 'MUHAMMAD FIQAR RAMADHAN', 'INFORMATIKA', 'L'),
(659, '2001013035', '2020', 'ADITYA FA\'ATHIR BARKHANI', 'INFORMATIKA', 'L'),
(660, '2001013036', '2020', 'AZRUL ROCHMAD RIFAI', 'INFORMATIKA', 'L'),
(661, '2001013037', '2020', 'M DIMAS SAKTI MAULANA', 'INFORMATIKA', 'L'),
(662, '2001013038', '2020', 'INTAN SUHARTINA', 'INFORMATIKA', 'P'),
(663, '2001013039', '2020', 'HIFZI RAHMATULLAH', 'INFORMATIKA', 'L'),
(664, '2001013040', '2020', 'BAYU SEPTIAN', 'INFORMATIKA', 'L'),
(665, '2001013041', '2020', 'SHAKIRA AZ ZAHRA HADI PUTRI', 'INFORMATIKA', 'P'),
(666, '2001013042', '2020', 'ULFA NOVIANDA', 'INFORMATIKA', 'P'),
(667, '2001013043', '2020', 'JZIDAN MUHAMMAD RUSDWIAN NURFAUZAN', 'INFORMATIKA', 'L'),
(668, '2001013044', '2020', 'ANANDA FAJRIANSYAH', 'INFORMATIKA', 'L'),
(669, '2001013045', '2020', 'ARIF ANNURSIDA', 'INFORMATIKA', 'L'),
(670, '2001013046', '2020', 'DIMAS ARYA MUKHTI', 'INFORMATIKA', 'L'),
(671, '2001013047', '2020', 'MITHA SAPITRI', 'INFORMATIKA', 'P'),
(672, '2001013048', '2020', 'ADE LILIS APRIANTI', 'INFORMATIKA', 'P'),
(673, '2001013049', '2020', 'GUSLINA TRI SANTIKA', 'INFORMATIKA', 'P'),
(674, '2001013050', '2020', 'JAHRAWATI', 'INFORMATIKA', 'P'),
(675, '2001013051', '2020', 'FATHIYA ROHALI', 'INFORMATIKA', 'P'),
(676, '2001013052', '2020', 'ARMELIA PUTRIANJANI', 'INFORMATIKA', 'P'),
(677, '2001013053', '2020', 'NELY HARYANINGSI', 'INFORMATIKA', 'P'),
(678, '2001013054', '2020', 'IRSA LESTARI', 'INFORMATIKA', 'P'),
(679, '2001013055', '2020', 'FAUZAN RUSLAN', 'INFORMATIKA', 'L'),
(680, '2001013056', '2020', 'ZADDWI JIWA ILMIAH', 'INFORMATIKA', 'P'),
(681, '2001013057', '2020', 'NURUL HIDAYAT', 'INFORMATIKA', 'P'),
(682, '2001013058', '2020', 'INTAN PERMATASARI', 'INFORMATIKA', 'P'),
(683, '2001013059', '2020', 'ISMED QALYUBI', 'INFORMATIKA', 'L'),
(684, '2001013060', '2020', 'JUSMAN EPENDI', 'INFORMATIKA', 'L'),
(685, '2001013061', '2020', 'WAHYUDI', 'INFORMATIKA', 'L'),
(686, '2001013062', '2020', 'REINALDY ADIWIJAYA', 'INFORMATIKA', 'L'),
(687, '2001013063', '2020', 'FAJRI ALFARIZI', 'INFORMATIKA', 'L'),
(688, '2001013064', '2020', 'ABIGAIL PERKASA', 'INFORMATIKA', 'L'),
(689, '2001013065', '2020', 'NATASYA AWRA FADILAH', 'INFORMATIKA', 'P'),
(690, '2001013066', '2020', 'M ALIF ALDIANSYAH', 'INFORMATIKA', 'L'),
(691, '2001013067', '2020', 'SAHARA HASIBUAN', 'INFORMATIKA', 'P'),
(692, '2001013068', '2020', 'LA HARIS', 'INFORMATIKA', 'L'),
(693, '2001013069', '2020', 'NURMALA', 'INFORMATIKA', 'P'),
(694, '2001013070', '2020', 'AZLAM WAHYUDIN', 'INFORMATIKA', 'L'),
(695, '2001013071', '2020', 'JODI JARDIANSYAH', 'INFORMATIKA', 'L'),
(696, '2001013072', '2020', 'SATMIRAEN', 'INFORMATIKA', 'L'),
(697, '2001013073', '2020', 'SALMAN AGA KHAN', 'INFORMATIKA', 'L'),
(698, '2001013074', '2020', 'MHD ALWI SYAPUTRA PULUNGAN', 'INFORMATIKA', 'L'),
(699, '2001013075', '2020', 'ABDULLAH AZZAM', 'INFORMATIKA', 'L'),
(700, '2001013076', '2020', 'MUHAMMAD UMAR AL FAJRI', 'INFORMATIKA', 'L'),
(701, '2001013077', '2020', 'WILDAN NAJIN FIDDIN', 'INFORMATIKA', 'L'),
(702, '2001013078', '2020', 'TYREENIA', 'INFORMATIKA', 'P'),
(703, '2001013079', '2020', 'YAYA PRIHANDOYO', 'INFORMATIKA', 'L'),
(704, '2001013080', '2020', 'ZAINUL HASAN', 'INFORMATIKA', 'L'),
(705, '2001013082', '2020', 'MIFTAHUL KHOIR BAJURI', 'INFORMATIKA', 'L'),
(706, '2001013083', '2020', 'DAVID TAMBA NDOMAINA', 'INFORMATIKA', 'L'),
(707, '2001913081', '2020', 'DENI BOY SAGITA', 'INFORMATIKA', 'L'),
(708, '211001001', '2021', 'MUHAMMAD FUAD ASLAM', 'INFORMATIKA', 'L'),
(709, '211001002', '2021', 'WIDIYA LIS SUSANA', 'INFORMATIKA', 'P'),
(710, '211001003', '2021', 'FATIHURROYYAN', 'INFORMATIKA', 'L'),
(711, '211001004', '2021', 'DEDE SETIAWAN', 'INFORMATIKA', 'L'),
(712, '211001005', '2021', 'ABY APRILIANSYAH', 'INFORMATIKA', 'L'),
(713, '211001006', '2021', 'ARYA BAGUS PANUNTUN', 'INFORMATIKA', 'L'),
(714, '211001007', '2021', 'ASTUTI NOVITA WULANDARI', 'INFORMATIKA', 'P'),
(715, '211001008', '2021', 'DEDE CAHYADI KURNIANSYAH', 'INFORMATIKA', 'L'),
(716, '211001009', '2021', 'MARLIANA', 'INFORMATIKA', 'P'),
(717, '211001010', '2021', 'NISRINA NISYAH', 'INFORMATIKA', 'P'),
(718, '211001011', '2021', 'RADHIMAS AUDISYAH RAHMANA', 'INFORMATIKA', 'L'),
(719, '211001012', '2021', 'RALLY RAYMANDA', 'INFORMATIKA', 'P'),
(720, '211001013', '2021', 'SHINDYKA SYALU QANITA', 'INFORMATIKA', 'P'),
(721, '211001014', '2021', 'ZAKARIA', 'INFORMATIKA', 'L'),
(722, '211001015', '2021', 'JELITA TRISYAWIDIA', 'INFORMATIKA', 'P'),
(723, '211001016', '2021', 'NURHIDAYAH KARTINI', 'INFORMATIKA', 'P'),
(724, '211001017', '2021', 'CINTYA ASTRI YUNDARI', 'INFORMATIKA', 'P'),
(725, '211001019', '2021', 'KUKUH IMANURA BAGASKARA', 'INFORMATIKA', 'L'),
(726, '211001020', '2021', 'JULIANINGSIH', 'INFORMATIKA', 'P'),
(727, '211001021', '2021', 'MUH SYAHRUL', 'INFORMATIKA', 'L'),
(728, '211001022', '2021', 'MOHZULFIKAR RLATIKA', 'INFORMATIKA', 'L'),
(729, '211001023', '2021', 'LILIS S AMRULLAH', 'INFORMATIKA', 'P'),
(730, '211001024', '2021', 'NILAM', 'INFORMATIKA', 'P'),
(731, '211001025', '2021', 'RESTI AGUSTINA UTAMI', 'INFORMATIKA', 'P'),
(732, '211001026', '2021', 'LINDA AZZAHRATUN JANNAH', 'INFORMATIKA', 'P'),
(733, '211001027', '2021', 'DINA MAYADA', 'INFORMATIKA', 'P');
INSERT INTO `mahasiswa` (`id`, `nim`, `angkatan`, `nama`, `prodi`, `jenis_kelamin`) VALUES
(734, '211001028', '2021', 'MULANA BELLA SAFITRI', 'INFORMATIKA', 'P'),
(735, '211001029', '2021', 'SOFIA WULANDHANI', 'INFORMATIKA', 'P'),
(736, '211001030', '2021', 'ISALMAN AL-FARIZI', 'INFORMATIKA', 'L'),
(737, '211001031', '2021', 'DINDI SAFITRI', 'INFORMATIKA', 'P'),
(738, '211001032', '2021', 'ANDINA UYUNI AULIA', 'INFORMATIKA', 'P'),
(739, '211001033', '2021', 'MUHAMMAD IQBAL PRATAMA', 'INFORMATIKA', 'L'),
(740, '211001034', '2021', 'MARIA ROSMIATI MIDAS', 'INFORMATIKA', 'P'),
(741, '211001035', '2021', 'EMILIA SANTINI', 'INFORMATIKA', 'P'),
(742, '211001036', '2021', 'LISA WAHYUNI', 'INFORMATIKA', 'P'),
(743, '211001037', '2021', 'ADE KURNIAWATI', 'INFORMATIKA', 'P'),
(744, '211001038', '2021', 'FIRZA MAULANA', 'INFORMATIKA', 'L'),
(745, '211001039', '2021', 'NESSA KARTIKA', 'INFORMATIKA', 'P'),
(746, '211001040', '2021', 'RAUHUN NABISA', 'INFORMATIKA', 'P'),
(747, '211001041', '2021', 'RIZKATTY ADINDA PUTRI', 'INFORMATIKA', 'P'),
(748, '211001042', '2021', 'NURUL AISYAH', 'INFORMATIKA', 'P'),
(749, '211001043', '2021', 'KRISNA HADI SAPUTRA', 'INFORMATIKA', 'L'),
(750, '211001044', '2021', 'PUTRI RUSTIANI SARI DEWI', 'INFORMATIKA', 'P'),
(751, '211001045', '2021', 'ERNITA DWI JULIANI', 'INFORMATIKA', 'P'),
(752, '211001046', '2021', 'VERI FERDIANSYAH', 'INFORMATIKA', 'L'),
(753, '211001047', '2021', 'PUTRY CHAERUNNISA MUDMAINNAH', 'INFORMATIKA', 'P'),
(754, '211001048', '2021', 'JIHAN FADILA AFRILIA', 'INFORMATIKA', 'P'),
(755, '211001049', '2021', 'CITRA MAULIDYA', 'INFORMATIKA', 'P'),
(756, '211001050', '2021', 'WIDIYA QAIDAH', 'INFORMATIKA', 'P'),
(757, '211001051', '2021', 'SINTA LESTARI', 'INFORMATIKA', 'P'),
(758, '211001052', '2021', 'DADANG ZUBAEDY', 'INFORMATIKA', 'L'),
(759, '211001053', '2021', 'AFIF SAHIDAN', 'INFORMATIKA', 'L'),
(760, '211001054', '2021', 'JODY SABDA PRATAMA', 'INFORMATIKA', 'L'),
(761, '211001055', '2021', 'DHEDE ANANDA SETIYA MUDITA', 'INFORMATIKA', 'L'),
(762, '211001056', '2021', 'RISKA', 'INFORMATIKA', 'P'),
(763, '211001057', '2021', 'TIRTA HIDAYAT', 'INFORMATIKA', 'L'),
(764, '211001058', '2021', 'MTARUNA FITRAH RAMDHANI', 'INFORMATIKA', 'L'),
(765, '211001059', '2021', 'TEGAR RASYA PRATAMA', 'INFORMATIKA', 'L'),
(766, '211001060', '2021', 'AAGIL SAPUTRA', 'INFORMATIKA', 'L'),
(767, '211001061', '2021', 'M FAHRUL ROSY', 'INFORMATIKA', 'L'),
(768, '211001062', '2021', 'BAYU IBRAHIM', 'INFORMATIKA', 'L'),
(769, '211001063', '2021', 'YULIANA TISYA KANTARI', 'INFORMATIKA', 'P'),
(770, '211001064', '2021', 'SHINTYA HABIBATUL FITRIA', 'INFORMATIKA', 'P'),
(771, '211001065', '2021', 'MUTIARA ADE KANTARI', 'INFORMATIKA', 'P'),
(772, '211001066', '2021', 'RAHMAT BUDI HARYONO', 'INFORMATIKA', 'L'),
(773, '211001067', '2021', 'I NENGAH ARIYA SUBAWA', 'INFORMATIKA', 'L'),
(774, '211001068', '2021', 'SUPRIYADI PRATAMA PUTRA', 'INFORMATIKA', 'L'),
(775, '211001069', '2021', 'IKAM HIDAYAT', 'INFORMATIKA', 'L'),
(776, '211001070', '2021', 'MSANJAYA DIWANI GUSTI', 'INFORMATIKA', 'L'),
(777, '211001071', '2021', 'M ARSY HASYIM', 'INFORMATIKA', 'L'),
(778, '211001072', '2021', 'LAELY RISQI AMALIA', 'INFORMATIKA', 'P'),
(779, '211001073', '2021', 'SEDRI SELLA JUMENI', 'INFORMATIKA', 'P'),
(780, '211001074', '2021', 'ROSA LARASATI', 'INFORMATIKA', 'P'),
(781, '211001075', '2021', 'NOVA ALFAIZA ZAFITRI', 'INFORMATIKA', 'P'),
(782, '211001076', '2021', 'ERLINA JUNIANTARI', 'INFORMATIKA', 'P'),
(783, '211001077', '2021', 'OBBY RISKI RAMDANI', 'INFORMATIKA', 'L'),
(784, '211001078', '2021', 'RADHITYA ARYANSYAH', 'INFORMATIKA', 'L'),
(785, '211001079', '2021', 'SAMSUL', 'INFORMATIKA', 'L'),
(786, '211001080', '2021', 'ALDIANSYAH', 'INFORMATIKA', 'L'),
(787, '211001081', '2021', 'ANDI SAPUTRA', 'INFORMATIKA', 'L'),
(788, '211001082', '2021', 'ANDRY WIJAYA SAPUTRA', 'INFORMATIKA', 'L'),
(789, '211001083', '2021', 'NIRMALASARI', 'INFORMATIKA', 'P'),
(790, '211001084', '2021', 'NURRATI', 'INFORMATIKA', 'P'),
(791, '211001085', '2021', 'MIFTA HULJANNAH', 'INFORMATIKA', 'P'),
(792, '211001086', '2021', 'MARIFA NGGANGGE', 'INFORMATIKA', 'P'),
(793, '211001087', '2021', 'SANTI BULAN', 'INFORMATIKA', 'P'),
(794, '211001088', '2021', 'FACHRURROZY AS MADILAO', 'INFORMATIKA', 'L'),
(795, '211001089', '2021', 'ARDIKA SANJAYA', 'INFORMATIKA', 'L'),
(796, '211001090', '2021', 'ILHAM ALKADRI', 'INFORMATIKA', 'L'),
(797, '211001091', '2021', 'MAMING', 'INFORMATIKA', 'L'),
(798, '211001092', '2021', 'YOFI SYAFRUDIN', 'INFORMATIKA', 'L'),
(799, '211001093', '2021', 'WAHYU ANDI SAPUTRA', 'INFORMATIKA', 'L'),
(800, '211001094', '2021', 'RUDI ANGGARA', 'INFORMATIKA', 'L'),
(801, '211001095', '2021', 'MUHAMMAD ISHA WAHIDIANTO SANG', 'INFORMATIKA', 'L'),
(802, '211001096', '2021', 'ADIRISMAN LANGKABA', 'INFORMATIKA', 'L'),
(803, '211001097', '2021', 'ABDUL RAHIM', 'INFORMATIKA', 'L'),
(804, '211001098', '2021', 'KAMSIA NOLE', 'INFORMATIKA', 'P'),
(805, '211001099', '2021', 'ANDRI PUTRAEDI', 'INFORMATIKA', 'L'),
(806, '211001100', '2021', 'ADNIA TUJAHIDAH', 'INFORMATIKA', 'P'),
(807, '211001101', '2021', 'FAYZA SHABILLA', 'INFORMATIKA', 'P'),
(808, '211001102', '2021', 'BAHMID SALLO', 'INFORMATIKA', 'L'),
(809, '211001103', '2021', 'RAJID ANDI TUNTANTRI SUSANTO', 'INFORMATIKA', 'L'),
(810, '211001104', '2021', 'RINI MUSTIKA DEWI SUSANTI', 'INFORMATIKA', 'P'),
(811, '211001105', '2021', 'FERI IRAWAN', 'INFORMATIKA', 'L'),
(812, '211001106', '2021', 'USWATUN HASANAH', 'INFORMATIKA', 'P'),
(813, '211001107', '2021', 'MAHYUDINSYAH', 'INFORMATIKA', 'L'),
(814, '211001108', '2021', 'AMSYAR ARIF NST', 'INFORMATIKA', 'L'),
(815, '211001109', '2021', 'ARZIKMAN', 'INFORMATIKA', 'L'),
(816, '211001110', '2021', 'MUHAMMAD FAQIH AL FARUQ', 'INFORMATIKA', 'L'),
(817, '211001111', '2021', 'WIDARMAN', 'INFORMATIKA', 'L'),
(818, '211001112', '2021', 'IKMAL', 'INFORMATIKA', 'L'),
(819, '211001113', '2021', 'RIZKI', 'INFORMATIKA', 'L'),
(820, '211001114', '2021', 'RIZKI NURHAFIZD ACHMAD', 'INFORMATIKA', 'L'),
(821, '211001115', '2021', 'FATIMAH DAMAYANTI', 'INFORMATIKA', 'P'),
(822, '211001116', '2021', 'RIKI ARDIANTO', 'INFORMATIKA', 'L'),
(823, '211001117', '2021', 'HAMZAH NASRULLOH', 'INFORMATIKA', 'L'),
(824, '211001118', '2021', 'ISMAYATI', 'INFORMATIKA', 'P'),
(825, '211001119', '2021', 'RAHMAWATILLAHWATI KARIM', 'INFORMATIKA', 'P'),
(826, '211001120', '2021', 'MUHAMMAD NUR HIDAYATULLAH', 'INFORMATIKA', 'L'),
(827, '211001121', '2021', 'SUFIANDI', 'INFORMATIKA', 'L'),
(828, '211001122', '2021', 'YUYUN WAHYUNINGSIH', 'INFORMATIKA', 'P'),
(829, '211001123', '2021', 'ANGGA DWI WIBOWO', 'INFORMATIKA', 'L'),
(830, '211001124', '2021', 'FANI AULIAS FURQAN', 'INFORMATIKA', 'L'),
(831, '211001125', '2021', 'FEBRIANISA BAJRI', 'INFORMATIKA', 'P'),
(832, '211001126', '2021', 'RIKI SUSAINANDA', 'INFORMATIKA', 'L'),
(833, '221001001', '2022', 'RIAN JULIADI', 'INFORMATIKA', 'L'),
(834, '221001002', '2022', 'FITRI ADE KAYANTI', 'INFORMATIKA', 'P'),
(835, '221001003', '2022', 'HESFIRA SEPTIANA AWALIA', 'INFORMATIKA', 'P'),
(836, '221001004', '2022', 'ALDY', 'INFORMATIKA', 'L'),
(837, '221001005', '2022', 'ANDIKA PUTRA LISANO', 'INFORMATIKA', 'L'),
(838, '221001006', '2022', 'ARUM JUNIARTI', 'INFORMATIKA', 'P'),
(839, '221001007', '2022', 'RAHMAWATI', 'INFORMATIKA', 'P'),
(840, '221001008', '2022', 'SONIA', 'INFORMATIKA', 'P'),
(841, '221001009', '2022', 'YAMLIKO ASKABUL KAFI', 'INFORMATIKA', 'L'),
(842, '221001010', '2022', 'TRI ERMAYANTI', 'INFORMATIKA', 'P'),
(843, '221001011', '2022', 'SAEFUL RIZKY', 'INFORMATIKA', 'L'),
(844, '221001012', '2022', 'VIRA SALEHA', 'INFORMATIKA', 'P'),
(845, '221001013', '2022', 'WAHYU FIRMANSYAH', 'INFORMATIKA', 'L'),
(846, '221001014', '2022', 'DODY PRIAMITRA', 'INFORMATIKA', 'L'),
(847, '221001015', '2022', 'NANO ALFARISTA', 'INFORMATIKA', 'L'),
(848, '221001016', '2022', 'WIDHA SYAFITRI', 'INFORMATIKA', 'P'),
(849, '221001017', '2022', 'IKHSAN MAULANA', 'INFORMATIKA', 'L'),
(850, '221001018', '2022', 'LUTFIA AGUSTINA', 'INFORMATIKA', 'P'),
(851, '221001019', '2022', 'MUHAMMAD YUSRI', 'INFORMATIKA', 'L'),
(852, '221001020', '2022', 'UMMI KALSUM', 'INFORMATIKA', 'P'),
(853, '221001021', '2022', 'YUYUN SAFITRI', 'INFORMATIKA', 'L'),
(854, '221001022', '2022', 'ASMAWATI', 'INFORMATIKA', 'P'),
(855, '221001023', '2022', 'ARSY ANDRIANI SAFITRI', 'INFORMATIKA', 'P'),
(856, '221001024', '2022', 'TIA JANNATUL MARWANDA', 'INFORMATIKA', 'P'),
(857, '221001025', '2022', 'REZHA FATHURRAHMAN', 'INFORMATIKA', 'L'),
(858, '221001026', '2022', 'ERLYNI ROSALINA', 'INFORMATIKA', 'P'),
(859, '221001027', '2022', 'RENITA AYU ANDANI', 'INFORMATIKA', 'P'),
(860, '221001028', '2022', 'ELTA APRILIANI', 'INFORMATIKA', 'P'),
(861, '221001029', '2022', 'DEVI INDRIANI', 'INFORMATIKA', 'P'),
(862, '221001030', '2022', 'DONI WIJAYA SAPUTRA', 'INFORMATIKA', 'L'),
(863, '221001031', '2022', 'HADDAD ALWI', 'INFORMATIKA', 'L'),
(864, '221001032', '2022', 'NURLAELA', 'INFORMATIKA', 'P'),
(865, '221001033', '2022', 'TANTI HARYANI', 'INFORMATIKA', 'P'),
(866, '221001034', '2022', 'ADITYA RIZALDI', 'INFORMATIKA', 'L'),
(867, '221001035', '2022', 'DWI MARYANI', 'INFORMATIKA', 'P'),
(868, '221001036', '2022', 'FITRAH QOYYUMI AMIR', 'INFORMATIKA', 'P'),
(869, '221001037', '2022', 'RANIS SYIANA', 'INFORMATIKA', 'P'),
(870, '221001038', '2022', 'NANDA PASOLONGI', 'INFORMATIKA', 'L'),
(871, '221001039', '2022', 'LULU NADIA PUTRI', 'INFORMATIKA', 'P'),
(872, '221001040', '2022', 'YUDI JUANSA', 'INFORMATIKA', 'L'),
(873, '221001041', '2022', 'WAHYU RHAMDANI', 'INFORMATIKA', 'L'),
(874, '221001042', '2022', 'LINA ANGGRAENI', 'INFORMATIKA', 'P'),
(875, '221001043', '2022', 'M IBNU ARIEF', 'INFORMATIKA', 'L'),
(876, '221001044', '2022', 'NUR FAUZIAH', 'INFORMATIKA', 'P'),
(877, '221001045', '2022', 'IRSYA NURFADILA', 'INFORMATIKA', 'P'),
(878, '221001046', '2022', 'MAEMUN HANIATI', 'INFORMATIKA', 'P'),
(879, '221001047', '2022', 'MASTARI', 'INFORMATIKA', 'P'),
(880, '221001048', '2022', 'RABIYATUNNISAH', 'INFORMATIKA', 'P'),
(881, '221001049', '2022', 'CITRA ISTIQOMAH', 'INFORMATIKA', 'P'),
(882, '221001050', '2022', 'RITA SUGITA', 'INFORMATIKA', 'P'),
(883, '221001051', '2022', 'GITA OKVIADIANA', 'INFORMATIKA', 'P'),
(884, '221001052', '2022', 'SAVITRI SUNARIANY UTAMI', 'INFORMATIKA', 'P'),
(885, '221001053', '2022', 'MEY WULANDARI', 'INFORMATIKA', 'P'),
(886, '221001054', '2022', 'SYAFIRA GESTIANA', 'INFORMATIKA', 'P'),
(887, '221001056', '2022', 'SUAN SEPLARA', 'INFORMATIKA', 'P'),
(888, '221001057', '2022', 'RENY WAHYUNI', 'INFORMATIKA', 'P'),
(889, '221001058', '2022', 'MAGFIRATUL JANNAH', 'INFORMATIKA', 'P'),
(890, '221001059', '2022', 'NINA SASMITA AZZAHRA', 'INFORMATIKA', 'P'),
(891, '221001060', '2022', 'ADE ERMA JUNIANSARI', 'INFORMATIKA', 'P'),
(892, '221001061', '2022', 'SEPTIA SALBUANDA', 'INFORMATIKA', 'P'),
(893, '221001062', '2022', 'DETHA PUTRI SAIFUNNIDA', 'INFORMATIKA', 'L'),
(894, '221001063', '2022', 'ANDRI APRIZAL', 'INFORMATIKA', 'L'),
(895, '221001064', '2022', 'FADEL MUHAMMAD ABROR AS SIDDIQ', 'INFORMATIKA', 'L'),
(896, '221001065', '2022', 'AZIZATUN SHOLIHAT', 'INFORMATIKA', 'P'),
(897, '221001066', '2022', 'SITTI NAJWA', 'INFORMATIKA', 'P'),
(898, '221001067', '2022', 'ALFIANTO', 'INFORMATIKA', 'L'),
(899, '221001068', '2022', 'HERMITA', 'INFORMATIKA', 'P'),
(900, '221001069', '2022', 'ARYATI', 'INFORMATIKA', 'P'),
(901, '221001070', '2022', 'RIZKA MARGARIATUL JANNAH', 'INFORMATIKA', 'P'),
(902, '221001071', '2022', 'ZUL FAJRI', 'INFORMATIKA', 'L'),
(903, '221001072', '2022', 'BRYAN OKTOVIANO RAMADHAN', 'INFORMATIKA', 'L'),
(904, '221001073', '2022', 'TITHA ARTHA TANDAYU', 'INFORMATIKA', 'P'),
(905, '221001074', '2022', 'NURUL NOVA SAFITRI', 'INFORMATIKA', 'P'),
(906, '221001075', '2022', 'DELVA AGUSTINI', 'INFORMATIKA', 'P'),
(907, '221001076', '2022', 'LIRA AULIA RAHMANI', 'INFORMATIKA', 'P'),
(908, '221001077', '2022', 'MUHAMMAD GUMILANG JAHIDAN', 'INFORMATIKA', 'L'),
(909, '221001078', '2022', 'AMELIAH FITRIANI', 'INFORMATIKA', 'P'),
(910, '221001079', '2022', 'WARDA AISTYANINGSIH', 'INFORMATIKA', 'P'),
(911, '221001080', '2022', 'SATRIA ALFIRA MANGUN KUSUMA', 'INFORMATIKA', 'L'),
(912, '221001081', '2022', 'DINAR RIYATI', 'INFORMATIKA', 'P'),
(913, '221001082', '2022', 'MAWARDI ALVIANSYAH', 'INFORMATIKA', 'L'),
(914, '221001083', '2022', 'SATRIA ALIF ABDULLAH ARFAIN', 'INFORMATIKA', 'L'),
(915, '221001084', '2022', 'PERI IRAWAN', 'INFORMATIKA', 'L'),
(916, '221001085', '2022', 'SAMSUL RIZAL', 'INFORMATIKA', 'L'),
(917, '221001086', '2022', 'DEWANI INTAN SOFYANITA', 'INFORMATIKA', 'P'),
(918, '221001087', '2022', 'LALU GILANG ARDIANSYAH', 'INFORMATIKA', 'L'),
(919, '221001088', '2022', 'M AFIF RIZALDI', 'INFORMATIKA', 'L'),
(920, '221001089', '2022', 'TEEJA RAY KURNIAWAN', 'INFORMATIKA', 'L'),
(921, '221001090', '2022', 'MAULANA YUSUP', 'INFORMATIKA', 'L'),
(922, '221001091', '2022', 'SUKARTI', 'INFORMATIKA', 'P'),
(923, '221001092', '2022', 'JANUARDI HADI FIRMANSYAH', 'INFORMATIKA', 'L'),
(924, '221001093', '2022', 'NURIYATUL AINUN NISA', 'INFORMATIKA', 'P'),
(925, '221001094', '2022', 'ALIYAH FATIMAH', 'INFORMATIKA', 'P'),
(926, '221001095', '2022', 'ABDI RAHMANTO', 'INFORMATIKA', 'L'),
(927, '221001096', '2022', 'AHMAD KASRAWI', 'INFORMATIKA', 'L'),
(928, '221001097', '2022', 'HADID ALFAYIET', 'INFORMATIKA', 'L'),
(929, '221001098', '2022', 'RESTY SUSWITA', 'INFORMATIKA', 'P'),
(930, '221001099', '2022', 'FITRA RAMDANI', 'INFORMATIKA', 'L'),
(931, '221001100', '2022', 'ALDI MU\'MIN', 'INFORMATIKA', 'L'),
(932, '221001101', '2022', 'MUHAMMAD ALIF HIDAYAT', 'INFORMATIKA', 'L'),
(933, '221001102', '2022', 'AHMAD FAIZ MUBAROK', 'INFORMATIKA', 'L'),
(934, '221001103', '2022', 'ELSYAH FITRIANINGSIH', 'INFORMATIKA', 'P'),
(935, '221001104', '2022', 'MUHAMMAD AMIR ADZDZAKIR KASMADI', 'INFORMATIKA', 'L'),
(936, '221001105', '2022', 'M NURYADIN', 'INFORMATIKA', 'L'),
(937, '221001106', '2022', 'M ZILAS FEBRIANSYAH', 'INFORMATIKA', 'L'),
(938, '221001107', '2022', 'PUTRI AMEYLIA', 'INFORMATIKA', 'P'),
(939, '221001108', '2022', 'ADIT GUSFIAN MAHMUDDIN', 'INFORMATIKA', 'L'),
(940, '221001109', '2022', 'M KHAIRIL IMAM', 'INFORMATIKA', 'L'),
(941, '221001110', '2022', 'GALANG PUTRA RISTA', 'INFORMATIKA', 'L'),
(942, '221001111', '2022', 'LEPI YUSMAN OKTAMAORI', 'INFORMATIKA', 'L'),
(943, '221001112', '2022', 'JUNIA SUMA PINTARI', 'INFORMATIKA', 'P'),
(944, '221001113', '2022', 'MUHAMMAD IKSAN', 'INFORMATIKA', 'L'),
(945, '221001114', '2022', 'SARMAWAN DANI', 'INFORMATIKA', 'L'),
(946, '221001115', '2022', 'NURUL HIDAYATI', 'INFORMATIKA', 'P'),
(947, '221001116', '2022', 'LUTFA HAYATUN NUFUS', 'INFORMATIKA', 'P'),
(948, '221001117', '2022', 'PUTRI ARUM CAHYANTI', 'INFORMATIKA', 'P'),
(949, '221001118', '2022', 'ERNA KUSUMAWATI WULANDARI', 'INFORMATIKA', 'P'),
(950, '221001119', '2022', 'MOCH AS\'AD HOLIL', 'INFORMATIKA', 'L'),
(951, '221001120', '2022', 'ILHAM MAULANA SHAKTI', 'INFORMATIKA', 'L'),
(952, '221001121', '2022', 'BINTANG', 'INFORMATIKA', 'L'),
(953, '221001122', '2022', 'MELATI SUKMA PERTIWI', 'INFORMATIKA', 'P'),
(954, '221001123', '2022', 'INDAH LAELA SALSABILAH', 'INFORMATIKA', 'P'),
(955, '221001124', '2022', 'WAHYU RUSDIYANSAH', 'INFORMATIKA', 'L'),
(956, '221001125', '2022', 'IDHAR', 'INFORMATIKA', 'L'),
(957, '221001126', '2022', 'ZAITUN USWATUN', 'INFORMATIKA', 'P'),
(958, '221001127', '2022', 'AKHMAD RESTU AZIZ', 'INFORMATIKA', 'L'),
(959, '221001128', '2022', 'IQBAAL HIBATUL WAFI', 'INFORMATIKA', 'L'),
(960, '221024018', '2022', 'MUHAMMAD MURSYID JUNDULLAH', 'INFORMATIKA', 'L'),
(961, '221024001', '2022', 'AQTHAF ABDI PURANA', 'TEKNIK SISTEM ENERGI', 'L'),
(962, '221024002', '2022', 'SELIFIA MARCELINA', 'TEKNIK SISTEM ENERGI', 'P'),
(963, '221024003', '2022', 'TEDI HENDARTA', 'TEKNIK SISTEM ENERGI', 'L'),
(964, '221024004', '2022', 'IKA ALYA INDRI PUTRI', 'TEKNIK SISTEM ENERGI', 'P'),
(965, '221024005', '2022', 'RANGGA PRADAMA SAPUTRA', 'TEKNIK SISTEM ENERGI', 'L'),
(966, '221024006', '2022', 'MUHAMMAD ZUHRI', 'TEKNIK SISTEM ENERGI', 'L'),
(967, '221024007', '2022', 'WARDA FADILLA LESTARI', 'TEKNIK SISTEM ENERGI', 'P'),
(968, '221024008', '2022', 'HENDRI KURNIAWAN', 'TEKNIK SISTEM ENERGI', 'L'),
(969, '221024009', '2022', 'SYAMSUDDIN', 'TEKNIK SISTEM ENERGI', 'L'),
(970, '221024010', '2022', 'SATRIA ADHA', 'TEKNIK SISTEM ENERGI', 'L'),
(971, '221024011', '2022', 'YUSRIL ANANDA PRATAMA', 'TEKNIK SISTEM ENERGI', 'L'),
(972, '221024012', '2022', 'RINI NIRMALA HIDAYAH', 'TEKNIK SISTEM ENERGI', 'P'),
(973, '221024013', '2022', 'AJENG AULIA ANANDA PUTRI', 'TEKNIK SISTEM ENERGI', 'P'),
(974, '221024014', '2022', 'MUHAMMAD AGUNG PRASETIO', 'TEKNIK SISTEM ENERGI', 'L'),
(975, '221024015', '2022', 'ATIKA ANANDA PUTRI', 'TEKNIK SISTEM ENERGI', 'P'),
(976, '221024016', '2022', 'ANDI ALPIAN', 'TEKNIK SISTEM ENERGI', 'L'),
(977, '221024017', '2022', 'MUHAMMAD AGIL FADHLAN MIRRABBI', 'TEKNIK SISTEM ENERGI', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(11) NOT NULL,
  `nama_prodi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nama_prodi`) VALUES
(1, 'Teknik Informatika'),
(2, 'Sastra'),
(3, 'Teknologi katulistiwa');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `mulai` datetime DEFAULT NULL,
  `akhir` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `mulai`, `akhir`) VALUES
(1, '2022-12-13 16:19:00', '2023-01-13 16:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(6) NOT NULL,
  `nim` char(8) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `angkatan` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `foto_ktm` varchar(255) NOT NULL,
  `foto_diri` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pilih_bem` int(11) NOT NULL DEFAULT 0,
  `sudah_milih_bem` int(1) NOT NULL DEFAULT 0,
  `waktu_milih_bem` datetime DEFAULT NULL,
  `pilih_dpm` int(11) DEFAULT NULL,
  `sudah_milih_dpm` int(11) DEFAULT NULL,
  `waktu_milih_dpm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nim`, `nama`, `angkatan`, `prodi`, `foto_ktm`, `foto_diri`, `password`, `pilih_bem`, `sudah_milih_bem`, `waktu_milih_bem`, `pilih_dpm`, `sudah_milih_dpm`, `waktu_milih_dpm`) VALUES
(60, '1', 'terisi', '', '', '', '', 'siswa1', 12, 1, '2021-09-04 01:47:18', NULL, NULL, NULL),
(61, '2', 'siswa2', '', '', '', '', 'siswa2', 11, 1, '2021-09-04 01:48:07', NULL, NULL, NULL),
(62, '3', 'siswa3', '', '', '', '', 'siswa3', 13, 1, '2021-09-04 01:50:40', NULL, NULL, NULL),
(63, '4', 'siswa4', '', '', '', '', 'siswa4', 0, 0, NULL, NULL, NULL, NULL),
(64, '5', 'siswa5', '', '', '', '', 'siswa5', 0, 0, NULL, NULL, NULL, NULL),
(65, '6', 'siswa6', '', '', '', '', 'siswa6', 0, 0, NULL, NULL, NULL, NULL),
(66, '7', 'siswa7', '', '', '', '', 'siswa7', 0, 0, NULL, NULL, NULL, NULL),
(67, '8', 'siswa8', '', '', '', '', 'siswa8', 0, 0, NULL, NULL, NULL, NULL),
(68, '9', 'siswa9', '', '', '', '', 'siswa9', 0, 0, NULL, NULL, NULL, NULL),
(70, '1233', 'wado', '', '', '', '', 'abdul', 0, 0, NULL, NULL, NULL, NULL),
(71, '12345', 'adi', '', '', '', '', '12345', 12, 1, '2021-09-04 02:37:52', NULL, NULL, NULL),
(73, '313544', 'Tes', '', '', '', '', '1', 0, 0, NULL, NULL, NULL, NULL),
(74, '6qwr', 'terisi', 'terisi', 'wd', 'coverwR9RPkCXNz.jpg', 'coverD8zo8nq5oj.jpg', 'MTUxMjIwMjJ2UjI4VG01R00yTm5QVDA9Mjk1MzA5', 0, 0, NULL, NULL, NULL, NULL),
(75, '12345234', 'terisi', 'terisi', 'wd2343', 'coverB3m8MIYmAc.jpg', 'coverw7F9qWNaJA.jpg', 'MTUxMjIwMjJISllQVFZSSmVrNUVWWGxOZWxGNVRYcFJQUT09MjUwMjEw', 0, 0, NULL, NULL, NULL, NULL),
(76, '19010130', 'ini adalah nama', '2020', '3', 'coverNoVZNaPCgn.png', 'cover4mIQMVrAtA.jpeg', 'MTkxMjIwMjJkWHJsVFZScmQwMVVRWGhOZWtGM1RuYzlQUT09MTMyNDE0', 0, 0, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calon_bem`
--
ALTER TABLE `calon_bem`
  ADD PRIMARY KEY (`id_calon`);

--
-- Indexes for table `calon_dpm`
--
ALTER TABLE `calon_dpm`
  ADD PRIMARY KEY (`id_calon`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_siswa_2` (`id_siswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `calon_bem`
--
ALTER TABLE `calon_bem`
  MODIFY `id_calon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `calon_dpm`
--
ALTER TABLE `calon_dpm`
  MODIFY `id_calon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=978;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

--
-- Dumping data for table `pma__central_columns`
--

INSERT INTO `pma__central_columns` (`db_name`, `col_name`, `col_type`, `col_length`, `col_collation`, `col_isNull`, `col_extra`, `col_default`) VALUES
('olivera', 'dosen_penguji_id', 'int', '11', '', 1, ',', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'olivera', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"bimbingan_dosen_v\",\"daftar_judul\",\"dokumen_hasil\",\"dosen\",\"email_sender\",\"fakultas\",\"hasil_kegiatan\",\"hasil_kegiatan_v\",\"hasil_penelitian\",\"hasil_seminar\",\"home_template\",\"konsultasi\",\"mahasiswa\",\"mahasiswa_v\",\"penelitian\",\"penguji_dosen_v\",\"prodi\",\"proposal_mahasiswa\",\"proposal_mahasiswa_v\",\"seminar\",\"skripsi\",\"skripsi_v\",\"skripsi_vl\"],\"table_structure[]\":[\"bimbingan_dosen_v\",\"daftar_judul\",\"dokumen_hasil\",\"dosen\",\"email_sender\",\"fakultas\",\"hasil_kegiatan\",\"hasil_kegiatan_v\",\"hasil_penelitian\",\"hasil_seminar\",\"home_template\",\"konsultasi\",\"mahasiswa\",\"mahasiswa_v\",\"penelitian\",\"penguji_dosen_v\",\"prodi\",\"proposal_mahasiswa\",\"proposal_mahasiswa_v\",\"seminar\",\"skripsi\",\"skripsi_v\",\"skripsi_vl\"],\"table_data[]\":[\"bimbingan_dosen_v\",\"daftar_judul\",\"dokumen_hasil\",\"dosen\",\"email_sender\",\"fakultas\",\"hasil_kegiatan\",\"hasil_kegiatan_v\",\"hasil_penelitian\",\"hasil_seminar\",\"home_template\",\"konsultasi\",\"mahasiswa\",\"mahasiswa_v\",\"penelitian\",\"penguji_dosen_v\",\"prodi\",\"proposal_mahasiswa\",\"proposal_mahasiswa_v\",\"seminar\",\"skripsi\",\"skripsi_v\",\"skripsi_vl\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'server', 'olivera', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"bade_manager\",\"brangrea\",\"coba2\",\"default_sips\",\"dpm\",\"homestead\",\"olivera\",\"pemilihan\",\"phpmyadmin\",\"test\",\"voting_dpm\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"olivera\",\"table\":\"konsultasi\"},{\"db\":\"olivera\",\"table\":\"proposal_mahasiswa\"},{\"db\":\"olivera\",\"table\":\"seminar\"},{\"db\":\"pemilihan\",\"table\":\"siswa\"},{\"db\":\"pemilihan\",\"table\":\"calon_dpm\"},{\"db\":\"pemilihan\",\"table\":\"prodi\"},{\"db\":\"dpm\",\"table\":\"mahasiswa\"},{\"db\":\"pemilihan\",\"table\":\"calon_bem\"},{\"db\":\"pemilihan\",\"table\":\"admin\"},{\"db\":\"olivera\",\"table\":\"dosen\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('olivera', 'seminar', 'tempat');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-12-19 13:31:49', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":263}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;
--
-- Database: `voting_dpm`
--
CREATE DATABASE IF NOT EXISTS `voting_dpm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `voting_dpm`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nim`, `nama`, `photo`, `created_on`) VALUES
(1, 'dpm', '$2y$10$QBIvbXWCIwy03f8j0e.A1O6V/p8zEH8LnbdClXkQrkjZtK2bYNhEG', '1901013044', 'Rizky', 'rizky.jpg', '2018-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(18, 8, 'vib', 'dsfsd', 'rizky.jpg', 'sdfsdfsdfsdf'),
(19, 9, 'dsa', 'asdasd', 'desa-rarak-brang-rea.jpg', 'sadasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'ketua dpm', 400, 1),
(9, 'Ketua Bem', 300, 2);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `nim` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `angkatan` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `prodi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `nim`, `nama`, `angkatan`, `jenis_kelamin`, `photo`, `prodi`) VALUES
(8, 'E3HFosf6YQVXAez', '$2y$10$4LusKfpPG5DRsXPAvyh.BOjE1VwQUqrZ5LxyP/3VUXtkvF37iA5Zq', '19.01.013.044', 'Rizky Adi Ryanto', '2019', 'Laki-Laki', 'rizky.jpg', 'Teknik Informatika'),
(9, 'cSn5fDzgLm26peC', '$2y$10$.hhhpDc.uSh4KLFV3JsNvuEa9eWj5TsGYvAqeg5xi8AnkW.TKd08O', '19.01.013.045', 'Angga', '2020', 'Laki-Laki', 'brang reaq.jpg', 'Teknik Mesin');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(81, 3, 18, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
