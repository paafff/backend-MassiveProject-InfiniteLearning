-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 19 Des 2023 pada 12.11
-- Versi server: 10.5.23-MariaDB
-- Versi PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hairhubi_dbhairhub`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `business`
--

CREATE TABLE `business` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `typeBusiness` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `schedule` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `addressId` text DEFAULT NULL,
  `imageURL` text DEFAULT NULL,
  `imageName` text DEFAULT NULL,
  `socialMedia` text DEFAULT NULL,
  `subscription` varchar(255) DEFAULT NULL,
  `subscriptionAt` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `business`
--

INSERT INTO `business` (`id`, `uuid`, `userId`, `typeBusiness`, `name`, `email`, `phone`, `description`, `schedule`, `address`, `addressId`, `imageURL`, `imageName`, `socialMedia`, `subscription`, `subscriptionAt`, `createdAt`, `updatedAt`) VALUES
(1, 'eca55b04-d81b-41dd-afdb-d671101280a6', 4, 'barbershop', 'Javanese Barbershop', 'javanese@barber.mail.com', '034171730328', '- Berdiri sejak 2015\r\n- Alamat lengkap Sawojajar 2 RT 2 RW 19, Kec. Kedungkandang, Kel. Sawojajar, Kota Malang\r\n\r\nSelamat datang di \"Javanese Barbershop\"! Kami adalah destinasi terkini bagi para pria yang menghargai gaya dan kualitas dalam perawatan rambut mereka. Dengan sentuhan modern dan layanan berkualitas tinggi, kami berkomitmen memberikan pengalaman grooming yang tak terlupakan.\r\n\r\nTim berpengalaman kami tidak hanya ahli dalam seni potong rambut terkini, tetapi juga memahami kebutuhan individual setiap pelanggan. Kami menawarkan beragam layanan, mulai dari potongan klasik hingga tren terkini, menciptakan tampilan yang sesuai dengan kepribadian dan gaya hidup Anda.\r\n\r\nDi Javanese Barbershop, kami memahami bahwa kunjungan ke barbershop adalah lebih dari sekadar perawatan rambut. Ini adalah momen pribadi di mana Anda dapat bersantai, menikmati obrolan santai, dan merawat diri. Suasana kami yang hangat dan ramah menciptakan lingkungan yang sempurna untuk melarikan diri sejenak dari rutinitas sehari-hari.\r\n\r\nKami menjamin kepuasan pelanggan dengan kombinasi antara keterampilan profesional, produk perawatan rambut berkualitas tinggi, dan layanan pelanggan yang ramah. Jadi, mari bergabung dengan kami di Gentlemen\'s Haven Barbershop, tempat di mana gaya dan kenyamanan bertemu!', '[\"18:00\",\"01:00\"]', '[\"JAWA BARAT\",\"KOTA DEPOK\",\"Sukmajaya\",\"Baktijaya\"]', '[\"32\",\"32.76\",\"32.76.05\",\"32.76.05.1005\"]', '[\"https://api.hairhub.id/business/1702820428713.png\",\"https://api.hairhub.id/business/1702820428715.png\",\"https://api.hairhub.id/business/1702820428716.png\",\"https://api.hairhub.id/business/1702820428718.png\",\"https://api.hairhub.id/business/1702820428720.png\"]', '[\"1702820428713.png\",\"1702820428715.png\",\"1702820428716.png\",\"1702820428718.png\",\"1702820428720.png\"]', '[\"https://www.instagram.com/ilhamsoejud/\",\"https://www.instagram.com/ilhamsoejud/\",\"https://www.instagram.com/ilhamsoejud/\",\"https://www.instagram.com/ilhamsoejud/\",\"https://maps.app.goo.gl/bv5ybrJCaFs5DZZc6\"]', 'yes', NULL, '2023-12-17 07:23:08', '2023-12-18 14:26:28'),
(2, '1a027d79-2ff3-4361-986f-2f169427a80e', 3, 'barbershop', 'The Gentlemen\'s Haven Barbershop', NULL, NULL, 'The Gentlemen\'s Haven Barbershop adalah tempat eksklusif bagi para pria yang menghargai gaya dan tampilan terbaik. Dengan kombinasi keterampilan tukang cukur profesional dan suasana yang nyaman, kami menawarkan pengalaman potong rambut yang tidak hanya memberikan hasil terbaik, tetapi juga membuat Anda merasa dihargai dan diperhatikan.', '[\"08:00\",\"21:00\"]', '[\"DKI JAKARTA\",\"KOTA ADM. JAKARTA SELATAN\",\"Tebet\",\"Menteng Dalam\",\"001/001\"]', '[\"31\",\"31.74\",\"31.74.01\",\"31.74.01.1003\",\"001/001\"]', '[\"https://api.hairhub.id/business/1702798034074.png\",\"https://api.hairhub.id/business/1702798034075.png\",\"https://api.hairhub.id/business/1702798034078.png\",\"https://api.hairhub.id/business/1702798034079.png\",\"https://api.hairhub.id/business/1702798034080.png\"]', '[\"1702798034074.png\",\"1702798034075.png\",\"1702798034078.png\",\"1702798034079.png\",\"1702798034080.png\"]', '[\"undefined\",\"undefined\",\"undefined\",\"https://www.youtube.com/watch?v=Jmx27PRd8y4\",\"https://www.google.com/maps/place/Hairnerds+Studio+Kebayoran/@-6.2431291,106.7889151,17z/data=!3m1!4b1!4m6!3m5!1s0x2e69f11488bca27f:0x2dea983a0f2a47a8!8m2!3d-6.2431344!4d106.79149!16s%2Fg%2F11g9q8w7qb?\"]', 'yes', '2023-12-17 08:05:54', '2023-12-17 07:23:14', '2023-12-17 08:05:54'),
(3, '7b5fb124-f965-4963-9453-04adf591a8de', 4, 'salon', 'Hairmanner', 'hairmanner@hairdo.com', '0341123123', 'Hair manner adalah salon yang berdiri sejak 2010. Melayani berbagai perawatan rambut anda\r\n\r\nSelamat datang di \"Hairmanner\"! Kami adalah destinasi kecantikan yang menyediakan layanan unggulan untuk merayakan keindahan setiap pelanggan. Di Hairmanner, kami memahami bahwa kecantikan adalah manifestasi dari rasa percaya diri, dan kami berkomitmen untuk meningkatkan kepercayaan diri Anda melalui layanan berkualitas tinggi.\r\n\r\nTim profesional kami terdiri dari ahli kecantikan berpengalaman yang siap memberikan layanan yang dipersonalisasi sesuai dengan kebutuhan dan keinginan Anda. Mulai dari perawatan rambut, perawatan wajah, hingga manikur dan pedikur, kami menawarkan rangkaian layanan yang komprehensif untuk memenuhi semua kebutuhan kecantikan Anda.\r\n\r\n\"Hairmanner\" bukan hanya tempat untuk merayakan kecantikan fisik, tetapi juga untuk bersantai dan meresapi pengalaman spa yang menyegarkan. Suasana santai dan mewah di dalam salon kami menciptakan lingkungan yang cocok untuk melarikan diri sejenak dari kehidupan sehari-hari yang sibuk.\r\n\r\nKami memahami bahwa setiap pelanggan memiliki keunikan mereka sendiri, dan itulah mengapa kami mengutamakan konsultasi pribadi untuk memastikan bahwa setiap layanan yang kami berikan sesuai dengan preferensi dan kebutuhan individual Anda.\r\n\r\nJadi, mari bergabung dengan kami di \"Hairmanner\" dan berikan diri Anda momen kecantikan yang tak terlupakan!', '[\"09:00\",\"18:00\"]', '[\"JAWA BARAT\",\"KOTA BOGOR\",\"Bogor Barat\",\"Sindang Barang\"]', '[\"32\",\"32.71\",\"32.71.04\",\"32.71.04.1002\"]', '[\"https://api.hairhub.id/business/1702820667748.png\",\"https://api.hairhub.id/business/1702820667749.png\",\"https://api.hairhub.id/business/1702820667750.png\",\"https://api.hairhub.id/business/1702820667751.png\",\"https://api.hairhub.id/business/1702820667752.png\"]', '[\"1702820667748.png\",\"1702820667749.png\",\"1702820667750.png\",\"1702820667751.png\",\"1702820667752.png\"]', '[\"https://www.instagram.com/ilhamsoejud/\",\"https://www.instagram.com/ilhamsoejud/\",\"https://www.instagram.com/ilhamsoejud/\",\"https://www.instagram.com/ilhamsoejud/\",\"https://www.instagram.com/ilhamsoejud/\"]', 'yes', NULL, '2023-12-17 07:32:15', '2023-12-18 15:59:04'),
(4, 'b4e1b960-0bf7-471b-a1ca-f75f6d9f0b78', 3, 'salon', 'GlamourStyle Salon', NULL, NULL, 'GlamourStyle Salon adalah destinasi kecantikan eksklusif yang menawarkan layanan salon berkualitas tinggi untuk memenuhi kebutuhan kecantikan dan perawatan rambut Anda. Dengan kombinasi antara atmosfer yang nyaman dan tenaga profesional kami, kami berkomitmen untuk memberikan pengalaman salon yang tak terlupakan.', '[\"09:00\",\"22:00\"]', '[\"DKI JAKARTA\",\"KOTA ADM. JAKARTA PUSAT\",\"Kemayoran\",\"Kemayoran\",\"003/003\"]', '[\"31\",\"31.71\",\"31.71.03\",\"31.71.03.1001\",\"003/003\"]', '[\"https://api.hairhub.id/business/1702799609551.png\",\"https://api.hairhub.id/business/1702799609553.png\",\"https://api.hairhub.id/business/1702799609556.png\",\"https://api.hairhub.id/business/1702799609558.png\",\"https://api.hairhub.id/business/1702799609560.png\"]', '[\"1702799609551.png\",\"1702799609553.png\",\"1702799609556.png\",\"1702799609558.png\",\"1702799609560.png\"]', '[\"\",\"\",\"\",\"\",\"\"]', 'yes', '2023-12-17 08:06:33', '2023-12-17 07:46:16', '2023-12-17 08:06:33'),
(5, '66931ad7-3e24-4151-a654-1856d829984b', 5, 'barbershop', 'Pafbershop', 'pafbershop@mail.com', NULL, 'Tentukan gaya Anda di Pafbershop, tempat di mana keahlian bertemu dengan ketenangan. Kami menawarkan lebih dari sekadar potongan rambut, kami menciptakan pengalaman yang tak terlupakan sambil menghadirkan kepercayaan diri melalui setiap sentuhan gunting kami. Dengan tim profesional yang peduli terhadap detail dan pemahaman yang mendalam akan tren terbaru, kami berkomitmen untuk memberikan hasil terbaik yang cocok dengan gaya dan kepribadian Anda. Sambut hari Anda dengan semangat dan tampil segar setelah kunjungan ke Pafbershop, di mana keahlian, kenyamanan, dan pelayanan yang hangat selalu kami utamakan.', '[\"08:00\",\"15:00\"]', '[\"JAWA BARAT\",\"KAB. BOGOR\",\"Citeureup\",\"Citeureup\"]', '[\"32\",\"32.01\",\"32.01.03\",\"32.01.03.2002\"]', '[\"https://api.hairhub.id/business/1702800186274.png\",\"https://api.hairhub.id/business/1702800186342.png\",\"https://api.hairhub.id/business/1702800186396.png\",\"https://api.hairhub.id/business/1702800186422.png\",\"https://api.hairhub.id/business/1702800186437.png\"]', '[\"1702800186274.png\",\"1702800186342.png\",\"1702800186396.png\",\"1702800186422.png\",\"1702800186437.png\"]', '[\"https://www.instagram.com/paafff/?hl=id\",\"https://www.instagram.com/paafff/?hl=id\",\"https://www.instagram.com/paafff/?hl=id\",\"https://www.instagram.com/paafff/?hl=id\",\"\"]', 'yes', '2023-12-17 13:50:21', '2023-12-17 07:46:28', '2023-12-18 14:47:59'),
(6, '347e81ad-cee7-4c79-bd48-2303078f71de', 5, 'salon', 'Pafsalon', 'pafsalon@mail.com', NULL, 'Selamat datang di Pafsalon, tempat di mana kecantikan Anda dipahami secara unik dan diperjuangkan dengan penuh kelembutan dan keahlian. Di Pafsalon, kami menghadirkan lebih dari sekadar perawatan; kami membawa visi kecantikan Anda menjadi kenyataan dengan koleksi layanan yang inovatif dan terkini. Dengan tim ahli yang penuh semangat dan berpengalaman, kami berkomitmen untuk memberikan perawatan rambut, perawatan kulit, dan layanan spa terbaik, menawarkan pengalaman yang menyenangkan, memanjakan, dan menginspirasi. Sambut kepercayaan diri baru dan penampilan yang memukau, bersama Pafsalon, tempat di mana keindahan Anda menjadi prioritas utama.', '[\"08:00\",\"20:00\"]', '[\"JAWA BARAT\",\"KAB. BEKASI\",\"Cibitung\",\"Kertamukti\"]', '[\"32\",\"32.16\",\"32.16.07\",\"32.16.07.2003\"]', '[\"https://api.hairhub.id/business/1702800658336.png\",\"https://api.hairhub.id/business/1702800658337.png\",\"https://api.hairhub.id/business/1702800658338.png\",\"https://api.hairhub.id/business/1702800658339.png\",\"https://api.hairhub.id/business/1702800658339.png\"]', '[\"1702800658336.png\",\"1702800658337.png\",\"1702800658338.png\",\"1702800658339.png\",\"1702800658339.png\"]', '[\"https://www.instagram.com/paafff/?hl=id\",\"https://www.instagram.com/paafff/?hl=id\",\"https://www.instagram.com/paafff/?hl=id\",\"https://www.instagram.com/paafff/?hl=id\",\"\"]', 'yes', '2023-12-17 13:50:32', '2023-12-17 08:09:21', '2023-12-18 14:48:47'),
(8, '7390ce1c-ba36-4902-b3af-7c2b58c11ce7', 6, 'barbershop', 'BarberStyle Studeo', 'syitayaraioni@gmail.com', '0895351358095', 'BarberStyle Studeo adalah barbershop yang menghadirkan pengalaman potong rambut pria yang unik dan berkualitas tinggi. Dengan gaya modern dan suasana yang santai, kami menawarkan layanan potong rambut dan perawatan khusus untuk memenuhi kebutuhan gaya hidup pria urban.', '[\"08:00\",\"22:00\"]', '[\"DKI JAKARTA\",\"KOTA ADM. JAKARTA BARAT\",\"Kebon Jeruk\",\"Kebon Jeruk\"]', '[\"31\",\"31.73\",\"31.73.05\",\"31.73.05.1001\"]', '[\"https://api.hairhub.id/business/1702822993033.png\",\"https://api.hairhub.id/business/1702822993034.png\",\"https://api.hairhub.id/business/1702822993035.png\",\"https://api.hairhub.id/business/1702822993037.png\",\"https://api.hairhub.id/business/1702822993038.png\"]', '[\"1702822993033.png\",\"1702822993034.png\",\"1702822993035.png\",\"1702822993037.png\",\"1702822993038.png\"]', '[\"\",\"\",\"\",\"\",\"\"]', 'yes', NULL, '2023-12-17 14:18:20', '2023-12-18 14:53:09'),
(9, '8bea7a9f-dcf5-4d89-a83e-f161f345c4dc', 8, 'barbershop', 'MachoMane Barbershop', NULL, NULL, 'MachoMane Barbershop adalah tempat eksklusif yang menggabungkan keahlian tradisional dengan sentuhan modern untuk memberikan pengalaman potong rambut pria yang unik dan penuh gaya. Dengan atmosfer yang maskulin namun ramah, MachoMane Barbershop menyediakan layanan potong rambut dan perawatan grooming yang memenuhi standar kualitas tertinggi. Kami memahami bahwa setiap pelanggan memiliki kebutuhan dan gaya yang berbeda, itulah mengapa tim ahli kami selalu siap memberikan saran dan layanan yang disesuaikan dengan keinginan Anda.', '[\"10:00\",\"20:00\"]', '[\"JAWA BARAT\",\"KAB. BOGOR\",\"Sukamakmur\",\"Sukamakmur\",\"002/003\"]', '[\"32\",\"32.01\",\"32.01.09\",\"32.01.09.2010\",\"002/003\"]', '[\"https://api.hairhub.id/business/1702830086356.png\",\"https://api.hairhub.id/business/1702830086358.png\",\"https://api.hairhub.id/business/1702830086359.png\",\"https://api.hairhub.id/business/1702830086360.png\",\"https://api.hairhub.id/business/1702830086362.png\"]', '[\"1702830086356.png\",\"1702830086358.png\",\"1702830086359.png\",\"1702830086360.png\",\"1702830086362.png\"]', '[\"https://www.instagram.com/dwi_ika30?igshid=OGQ5ZDc2ODk2ZA==\",\"\",\"\",\"\",\"\"]', 'yes', NULL, '2023-12-17 15:50:30', '2023-12-17 16:21:26'),
(10, '9d5384a2-9170-4943-9609-18d7dfb7226c', 8, 'salon', 'EternalChic Salon', NULL, NULL, 'EternalChic Salon adalah tempat yang menyajikan keindahan yang tak pernah membosankan. Di sini, kami merayakan keunikan setiap pelanggan dan menyediakan layanan kecantikan yang selalu segar dan menarik. Kami berkomitmen untuk menghadirkan pengalaman salon yang menyenangkan dan menghibur, sehingga setiap kunjungan Anda adalah momen yang tak terlupakan.', '[\"09:00\",\"20:00\"]', '[\"BANTEN\",\"KAB. TANGERANG\",\"Pasar Kemis\",\"Kuta Baru\",\"001/002\"]', '[\"36\",\"36.03\",\"36.03.12\",\"36.03.12.1014\",\"001/002\"]', '[\"https://api.hairhub.id/business/1702833794940.png\",\"https://api.hairhub.id/business/1702833794941.png\",\"https://api.hairhub.id/business/1702833794942.png\",\"https://api.hairhub.id/business/1702833794943.png\",\"https://api.hairhub.id/business/1702833794944.png\"]', '[\"1702833794940.png\",\"1702833794941.png\",\"1702833794942.png\",\"1702833794943.png\",\"1702833794944.png\"]', '[\"https://www.instagram.com/dwi_ika30?igshid=OGQ5ZDc2ODk2ZA==\",\"\",\"\",\"\",\"\"]', 'yes', NULL, '2023-12-17 17:08:17', '2023-12-17 17:23:14'),
(11, '9b729a74-39c3-4117-bbc3-4ded2afad076', 7, 'barbershop', 'MachoMane Barbers', 'itsme123@gmail.com', '85303371343', 'Selamat datang di MachoMane Barbers, destinasi potong rambut pilihan pria modern dengan pengalaman unik. Tim profesional kami terampil mengikuti tren terbaru dan menciptakan potongan rambut yang stylish, mencerminkan kepribadian unik setiap pelanggan. Di sini, Anda dapat menikmati berbagai layanan, dari potongan rambut klasik hingga desain jenggot trendi, dalam suasana barbershop yang hangat dan ramah. Temukan perbedaan di MachoMane Barbers, di mana gaya bertemu keahlian, dan kepercayaan diri dibangun satu potongan rambut. Datang dan raih potongan rambut yang meningkatkan gaya hidup Anda. MachoMane Barbers, where style meets confidence!', '[\"10:00\",\"22:00\"]', '[\"DKI JAKARTA\",\"KOTA ADM. JAKARTA TIMUR\",\"Jatinegara\",\"Kampung Melayu\"]', '[\"31\",\"31.75\",\"31.75.03\",\"31.75.03.1001\"]', '[\"https://api.hairhub.id/business/1702861512913.png\",\"https://api.hairhub.id/business/1702861512915.png\",\"https://api.hairhub.id/business/1702861512916.png\",\"https://api.hairhub.id/business/1702861512917.png\",\"https://api.hairhub.id/business/1702861512918.png\"]', '[\"1702861512913.png\",\"1702861512915.png\",\"1702861512916.png\",\"1702861512917.png\",\"1702861512918.png\"]', '[\"https://www.instagram.com/ismi.jm?igshid=OGQ5ZDc2ODk2ZA==\",\"\",\"\",\"\",\"\"]', 'yes', NULL, '2023-12-18 00:29:05', '2023-12-18 01:05:12'),
(12, '3f0c93ba-0c67-4c7a-800d-576f0ab52cc7', 7, 'salon', 'Elegance Haven Salon', NULL, NULL, 'Elegance Haven Salon adalah destinasi kecantikan yang menghadirkan sentuhan elegan dan layanan berkualitas tinggi di dunia styling rambut dan perawatan kecantikan. Dengan tim profesional kami yang berpengalaman, Elegance Haven Salon menawarkan potongan rambut trendi, pewarnaan rambut kreatif, perawatan kulit yang menyegarkan, serta manikur-pedikur terbaik. Suasana nyaman dan mewah di salon kami menciptakan lingkungan yang cocok untuk relaksasi dan transformasi kecantikan. Kami berkomitmen untuk memberikan pengalaman pelanggan yang tak terlupakan dengan menyatukan kreativitas, keahlian, dan produk kecantikan terbaik. Jadikan setiap kunjungan Anda sebagai perjalanan kecantikan yang penuh gaya di Elegance Haven Salon.', '[\"09:00\",\"21:00\"]', '[\"DKI JAKARTA\",\"KOTA ADM. JAKARTA BARAT\",\"Taman Sari\",\"Taman Sari\",\"RT.05/RW.01\"]', '[\"31\",\"31.73\",\"31.73.03\",\"31.73.03.1001\",\"RT.05/RW.01\"]', '[\"https://api.hairhub.id/business/1702864569565.png\",\"https://api.hairhub.id/business/1702864569567.png\",\"https://api.hairhub.id/business/1702864569591.png\",\"https://api.hairhub.id/business/1702864569592.png\",\"https://api.hairhub.id/business/1702864569593.png\"]', '[\"1702864569565.png\",\"1702864569567.png\",\"1702864569591.png\",\"1702864569592.png\",\"1702864569593.png\"]', '[\"https://www.instagram.com/ismi.jm?igshid=OGQ5ZDc2ODk2ZA==\",\"\",\"\",\"\",\"\"]', 'yes', NULL, '2023-12-18 01:40:03', '2023-12-18 01:56:09'),
(13, '49b171bf-9075-43de-b381-672fddcaa6c7', 6, 'salon', ' Zen Harmony Hair & Beauty', 'syitayaraioni@gmail.com', '0895351358095', 'Zen Harmony Hair & Beauty adalah tempat di mana kecantikan dan ketenangan bergandengan tangan. Nikmati suasana santai kami sambil mendapatkan layanan kecantikan berkualitas tinggi yang dirancang untuk menyegarkan tubuh dan pikiran Anda.', '[\"09:00\",\"18:00\"]', '[\"DKI JAKARTA\",\"KOTA ADM. JAKARTA PUSAT\",\"Kemayoran\",\"Kemayoran\"]', '[\"31\",\"31.71\",\"31.71.03\",\"31.71.03.1001\"]', '[\"https://api.hairhub.id/business/ecd99cb6-cf34-48e0-b9db-de2bdf4d2764-1702910083676.png\",\"https://api.hairhub.id/business/72d906c9-58a2-49ff-9f2d-ef302e49f625-1702910083677.png\",\"https://api.hairhub.id/business/23912f20-d23b-4163-a218-9b451d921a66-1702910083677.png\",\"https://api.hairhub.id/business/06a70205-6840-4ec7-a5a0-98c8dc78e870-1702910083677.png\",\"https://api.hairhub.id/business/6bcc489a-a554-4727-b8b9-c4b9b90ea839-1702910083678.png\"]', '[\"ecd99cb6-cf34-48e0-b9db-de2bdf4d2764-1702910083676.png\",\"72d906c9-58a2-49ff-9f2d-ef302e49f625-1702910083677.png\",\"23912f20-d23b-4163-a218-9b451d921a66-1702910083677.png\",\"06a70205-6840-4ec7-a5a0-98c8dc78e870-1702910083677.png\",\"6bcc489a-a554-4727-b8b9-c4b9b90ea839-1702910083678.png\"]', '[\"https://www.instagram.com/im.syiii_/?igshid=MmVlMjlkMTBhMg\",\"https://www.facebook.com/syiran.yara?mibextid=ZbWKwL\",\"https://www.twitter.com/syitayaraioni\",\"https://www.youtube.com/@syitayaraioni9777?si=ehwx3yJ5oV0PvdK0\",\"\"]', 'yes', NULL, '2023-12-18 10:14:20', '2023-12-18 14:34:43'),
(15, 'e2b1f3da-ea08-4fa5-a4e6-bfd05f25a649', 10, 'barbershop', 'Andreas Barbershop', NULL, NULL, 'Layanan barbershop yang menawarkan jasa potong rambut, pijat kepala dan sebagainya. Melayani berbagai request model potongan rambut.', '[\"10:00\",\"18:00\"]', '[\"JAWA BARAT\",\"KAB. BEKASI\",\"Tambun Utara\",\"Sriamur\",\"02/03\"]', '[\"32\",\"32.16\",\"32.16.05\",\"32.16.05.2004\",\"02/03\"]', '[\"https://api.hairhub.id/business/08ebe008-abfe-456b-8b01-30d0b6972239-1702909292421.png\",\"https://api.hairhub.id/business/ea28f2d7-2be7-4178-ba75-d6ce911561c3-1702909292422.png\",\"https://api.hairhub.id/business/3c04a569-35da-4d5b-9c65-f23d032035aa-1702909292423.png\",\"https://api.hairhub.id/business/6aa78157-f268-4b39-8e6c-3fc67cea5b9d-1702909292424.png\",\"https://api.hairhub.id/business/8d98dd04-212d-47ea-96de-6ac78e98008c-1702909292424.png\"]', '[\"08ebe008-abfe-456b-8b01-30d0b6972239-1702909292421.png\",\"ea28f2d7-2be7-4178-ba75-d6ce911561c3-1702909292422.png\",\"3c04a569-35da-4d5b-9c65-f23d032035aa-1702909292423.png\",\"6aa78157-f268-4b39-8e6c-3fc67cea5b9d-1702909292424.png\",\"8d98dd04-212d-47ea-96de-6ac78e98008c-1702909292424.png\"]', '[\"\",\"\",\"\",\"\",\"\"]', 'yes', NULL, '2023-12-18 14:09:53', '2023-12-18 14:21:32'),
(16, 'ff6f3bd6-2513-4397-83fb-453c0f8ec53e', 11, 'salon', 'Laurent\'s Salon and Spa', NULL, NULL, 'Lauren\'t Salon and Spa sudah berdiri sejak 2015. Sudah melayani lebih dari 10.000 pelanggan. Kami menawarkan berbagai macam layanan seperti haircut, styling, spa, nail art, pedicure dan manicure. ', '[\"09:00\",\"20:00\"]', '[\"DKI JAKARTA\",\"KOTA ADM. JAKARTA PUSAT\",\"Kemayoran\",\"Harapan Mulia\",\"07/08\"]', '[\"31\",\"31.71\",\"31.71.03\",\"31.71.03.1003\",\"07/08\"]', '[\"https://api.hairhub.id/business/0bc3d662-1e02-44b9-93f3-aacbf8223926-1702910386357.png\",\"https://api.hairhub.id/business/d85a3dbe-ea60-450e-a024-b7244709bfa9-1702910386358.png\",\"https://api.hairhub.id/business/d71a72e3-a897-4c2e-a017-08106754a75d-1702910386358.png\",\"https://api.hairhub.id/business/fafa30a7-a8f6-469d-af92-5cfd314b44fc-1702910386358.png\",\"https://api.hairhub.id/business/3bb14216-87bc-4213-94ac-e6d798d289a2-1702910386360.png\"]', '[\"0bc3d662-1e02-44b9-93f3-aacbf8223926-1702910386357.png\",\"d85a3dbe-ea60-450e-a024-b7244709bfa9-1702910386358.png\",\"d71a72e3-a897-4c2e-a017-08106754a75d-1702910386358.png\",\"fafa30a7-a8f6-469d-af92-5cfd314b44fc-1702910386358.png\",\"3bb14216-87bc-4213-94ac-e6d798d289a2-1702910386360.png\"]', '[\"\",\"\",\"\",\"\",\"\"]', 'yes', NULL, '2023-12-18 14:35:40', '2023-12-18 14:39:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `imageName` varchar(255) DEFAULT NULL,
  `imageURL` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `businessId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `feedback`
--

INSERT INTO `feedback` (`id`, `uuid`, `description`, `rating`, `imageName`, `imageURL`, `userId`, `businessId`, `createdAt`, `updatedAt`) VALUES
(2, 'd0b4aef8-634f-4813-a32e-700387687ff9', 'Saya biasa dengan mas danang ramah  dan service excellent\r\n', 5, '1d1cd037-6293-4d7c-824c-86aed8259dff-1702912658094.png', 'https://api.hairhub.id/feedbackPhotos/1d1cd037-6293-4d7c-824c-86aed8259dff-1702912658094.png', 12, 11, '2023-12-18 15:17:38', '2023-12-18 15:17:38'),
(3, '453f53f4-33b4-4441-88da-48f7e133350c', 'Karyawan y sangat profesional, saya suka dengan interior salonnya', 5, '3fab0bce-9e04-453f-a1b9-fd7f60c09308-1702913062171.png', 'https://api.hairhub.id/feedbackPhotos/3fab0bce-9e04-453f-a1b9-fd7f60c09308-1702913062171.png', 16, 4, '2023-12-18 15:24:22', '2023-12-18 15:24:22'),
(4, '1772d4bd-ff18-4023-8b1c-eaf375c34007', 'Sudah langganan disini dan hasilnya ga pernah mengecewakan. Kali ini coba potongan baru yang disaranin sama kakaknya. Dan ternyata bagus puolll. Bakal jadi hairstyle favorite aku iniiii. Big thanks to Laurent\'s salon!??', 5, 'ebff4de2-89b1-4e3e-b9a0-220488eaba87-1702913094949.png', 'https://api.hairhub.id/feedbackPhotos/ebff4de2-89b1-4e3e-b9a0-220488eaba87-1702913094949.png', 14, 16, '2023-12-18 15:24:54', '2023-12-18 15:24:54'),
(5, '439ae52c-7694-40e3-862e-ac2d312776c0', 'Pelayanan bagus dan memuaskan. Jadi tambah cakep deh saya :D ', 5, '4277ac48-166f-4680-ba5e-f2782b4e5902-1702913229190.png', 'https://api.hairhub.id/feedbackPhotos/4277ac48-166f-4680-ba5e-f2782b4e5902-1702913229190.png', 15, 15, '2023-12-18 15:27:09', '2023-12-18 15:27:09'),
(6, '9aad61ab-c560-4a26-99e0-5f8c01a01f9c', 'Highly recommeded! Pelayanan ramah dan sangat memuaskan. Jadi tambah ganteng deh saya :D', 5, '0a2c5c33-a66b-47b8-a56d-5279489dd92b-1702913367653.png', 'https://api.hairhub.id/feedbackPhotos/0a2c5c33-a66b-47b8-a56d-5279489dd92b-1702913367653.png', 15, 11, '2023-12-18 15:29:27', '2023-12-18 15:29:27'),
(7, '59abd57b-9f5e-4648-b803-db7e9c21aa45', 'Jujur ini first time aku kesini dan hasilnya sesuai ekspetasi aku! Karyawan ramah dan pelayanan sangat baikk. Thanks GlamourStyle Salon! ', 5, 'a3dec4e8-15ba-4420-bb85-06a88d2b1d95-1702913554623.png', 'https://api.hairhub.id/feedbackPhotos/a3dec4e8-15ba-4420-bb85-06a88d2b1d95-1702913554623.png', 14, 4, '2023-12-18 15:32:34', '2023-12-18 15:32:34'),
(8, '24bbc343-eeed-4540-99ca-d6cbe7823134', 'Hasil cukur yang rapi dan sesuai ekspektasi, thanks untuk pelayanan dari kak Asmali, sayang antrinya sedikit lama jadi saya kasih bintang 4', 4, '9ecae4cc-d1c8-4d6b-86e3-fcc935bd0dc8-1702913592478.png', 'https://api.hairhub.id/feedbackPhotos/9ecae4cc-d1c8-4d6b-86e3-fcc935bd0dc8-1702913592478.png', 13, 11, '2023-12-18 15:33:12', '2023-12-18 15:33:12'),
(9, '4b70fb92-1fc0-4cdb-865d-5512b51b28a5', 'Hanya bisa tersenyum :)', 2, '5209867f-93d2-4844-b7f8-dee985ba4ebe-1702914078224.png', 'https://api.hairhub.id/feedbackPhotos/5209867f-93d2-4844-b7f8-dee985ba4ebe-1702914078224.png', 17, 11, '2023-12-18 15:41:18', '2023-12-18 15:41:18'),
(10, '79c1d373-c23b-4b3d-82ed-510fd4cf07ca', 'Menyesal ke salon ini, sangat tidak sesuai ekspektasi, rambut saya menjadi lebih buruk dari sebelumnya, huhhhh ?', 1, '6edf958d-9abd-4a2d-b654-5354215af169-1702914125985.png', 'https://api.hairhub.id/feedbackPhotos/6edf958d-9abd-4a2d-b654-5354215af169-1702914125985.png', 18, 4, '2023-12-18 15:42:06', '2023-12-18 15:42:06'),
(11, '1b48b440-daf0-4adf-b46a-5d987977d97b', 'Cukup oke dan sesuai keinginan, overall mantap lah...', 3, 'e45c9b1e-a4d7-4bfc-aa86-ec5fd067c934-1702914842328.png', 'https://api.hairhub.id/feedbackPhotos/e45c9b1e-a4d7-4bfc-aa86-ec5fd067c934-1702914842328.png', 20, 4, '2023-12-18 15:54:02', '2023-12-18 15:54:02'),
(12, '414b005d-f8e7-4f15-a97d-c8989fa2d845', 'Keren banget hasil potongan rambut disini, aku jadi makin ganteng dan rapi, bakal langganan deh ini :)', 5, 'bbdbbd95-c838-4244-bab9-69da165dc97e-1702916226830.png', 'https://api.hairhub.id/feedbackPhotos/bbdbbd95-c838-4244-bab9-69da165dc97e-1702916226830.png', 23, 11, '2023-12-18 16:17:06', '2023-12-18 16:17:06'),
(13, 'eeb63054-ec69-4dc9-8d82-63ce794c6e37', 'Untuk barber sekitar Bekasi , cukup rekomend  si disini. Padahal nyampein rapihin aja tapi bisa sebagus ini .  Btw titip salam buat mbak kasir nya ?', 4, '1c1a0952-6a09-4fab-91c2-7a72abcbf0c5-1702916385064.png', 'https://api.hairhub.id/feedbackPhotos/1c1a0952-6a09-4fab-91c2-7a72abcbf0c5-1702916385064.png', 21, 15, '2023-12-18 16:19:45', '2023-12-18 16:19:45'),
(14, '7b0de337-1a3d-452b-9974-f4d83796417d', 'Aku gak ekspetasi tinggi dengan salon ini, awalnya cuma coba-coba warnain rambut. Tapiiiii hasilnya diluar ekspetasi, ini rambutku jadi cucok meong banget gak si??? Syukaaa banget sama hasilnya', 5, '6ac521ac-617a-404f-ad21-99f7e8e84ec7-1702916618128.png', 'https://api.hairhub.id/feedbackPhotos/6ac521ac-617a-404f-ad21-99f7e8e84ec7-1702916618128.png', 25, 4, '2023-12-18 16:23:38', '2023-12-18 16:23:38'),
(15, '5350c7b3-2c72-4611-8d02-302e2133b2a6', 'Barbershop disini cukup memuaskan dari segi karyawan dan hasil yang cukup bagus , hanya saja masyarakat kurang mengetahui dengan adanya barbershop ini. dan temen-temen sangat recomend disini!!', 4, '15e3272a-b74e-4f92-922c-9fd29bfd69e9-1702916942446.png', 'https://api.hairhub.id/feedbackPhotos/15e3272a-b74e-4f92-922c-9fd29bfd69e9-1702916942446.png', 22, 11, '2023-12-18 16:29:02', '2023-12-18 16:29:02'),
(16, 'c184cd28-fd86-43d8-a324-4ef7dbb71f3b', 'Style pemotongan di salon ini sangat bagus dan menarik , karyawan yang bekerja juga ramah dan sopan. Sehingga saya merekomendasikan untuk datang lagi ke salon ini.', 5, '62ac435b-4c9d-4209-8bb1-a60fe522da5f-1702917236382.png', 'https://api.hairhub.id/feedbackPhotos/62ac435b-4c9d-4209-8bb1-a60fe522da5f-1702917236382.png', 26, 4, '2023-12-18 16:33:56', '2023-12-18 16:33:56'),
(17, '79a2bf3a-ef04-4596-a8af-8dc07626e263', 'ini keren bgt sihh!! baru pertama kali udh cocok bgt di aku worth it dengan harga yang terjangkau... 10/10 deh!!', 5, 'eae6bcb2-0819-4fbf-ab00-0e5e2ae5f2cf-1702918222673.png', 'https://api.hairhub.id/feedbackPhotos/eae6bcb2-0819-4fbf-ab00-0e5e2ae5f2cf-1702918222673.png', 24, 4, '2023-12-18 16:50:22', '2023-12-18 16:50:22'),
(18, '5a59f20e-a25c-44f1-9394-3ca6a068a7e5', 'worth it bgt dengan harga segitu dapet potongan sebagus ini.... kece bgt sesuai dengan keinginan... inti nya puas bgt deh!!!!!', 5, '4cc16a59-402a-441e-acfe-613b5645d376-1702919419408.png', 'https://api.hairhub.id/feedbackPhotos/4cc16a59-402a-441e-acfe-613b5645d376-1702919419408.png', 27, 11, '2023-12-18 17:10:19', '2023-12-18 17:10:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hairs`
--

CREATE TABLE `hairs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `imageName` varchar(255) DEFAULT NULL,
  `imageURL` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `listServices`
--

CREATE TABLE `listServices` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `listServices`
--

INSERT INTO `listServices` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Coloring', '2023-12-17 07:32:19', '2023-12-17 07:32:19'),
(2, 'Styling', '2023-12-17 07:33:01', '2023-12-17 07:33:01'),
(3, 'Manicure', '2023-12-17 07:33:14', '2023-12-17 07:33:14'),
(4, 'Pedicure', '2023-12-17 07:33:26', '2023-12-17 07:33:26'),
(5, 'Haircut', '2023-12-17 07:34:06', '2023-12-17 07:34:06'),
(6, 'Perm', '2023-12-17 07:34:13', '2023-12-17 07:34:13'),
(7, 'Smoothing', '2023-12-17 07:34:24', '2023-12-17 07:34:24'),
(8, 'Shave', '2023-12-17 07:34:37', '2023-12-17 07:34:37'),
(9, 'Creambath', '2023-12-17 07:35:39', '2023-12-17 07:35:39'),
(10, 'Hair Spa', '2023-12-17 07:36:30', '2023-12-17 07:36:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `workerSelected` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `businessId` int(11) DEFAULT NULL,
  `responseBusiness` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `reservations`
--

INSERT INTO `reservations` (`id`, `uuid`, `name`, `workerSelected`, `description`, `time`, `day`, `phone`, `userId`, `businessId`, `responseBusiness`, `createdAt`, `updatedAt`) VALUES
(1, '177e39b9-845b-4a01-a905-ad1185a2df9b', 'Kiraa', NULL, 'Potong rambung a', '05:00', 'Senin', '08334577373', 3, 4, NULL, '2023-12-17 07:58:27', '2023-12-17 07:58:27'),
(2, '310df352-af5f-403c-9ebe-3dfdd1dd6f83', 'Adzra Haura', NULL, 'Saya ingin coloring dengan kak tiara', '13:00', 'Jumat', '085178889567', 16, 4, NULL, '2023-12-18 15:59:42', '2023-12-18 15:59:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `price` text DEFAULT NULL,
  `businessId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`id`, `name`, `price`, `businessId`, `createdAt`, `updatedAt`) VALUES
(1, '[\"Haircut\",\"Coloring\",\"Perm\",\"Smoothing\",\"Creambath\"]', '[\"55000\",\"45000\",\"40000\",\"50000\",\"35000\"]', 2, '2023-12-17 07:40:43', '2023-12-17 07:40:43'),
(2, '[\"Haircut\",\"Creambath\",\"Perm\",\"Coloring\",\"Styling\"]', '[\"12000\",\"10000\",\"25000\",\"30000\",\"45000\"]', 1, '2023-12-17 07:49:25', '2023-12-17 07:49:25'),
(3, '[\"Manicure\",\"Pedicure\",\"Haircut\",\"Creambath\",\"Hair Spa\"]', '[\"35000\",\"35000\",\"65000\",\"45000\",\"50000\"]', 4, '2023-12-17 07:54:06', '2023-12-17 07:54:06'),
(4, '[\"Manicure\",\"Pedicure\",\"Smoothing\",\"Hair Spa\",\"Styling\"]', '[\"10000\",\"20000\",\"30000\",\"40000\",\"50000\"]', 3, '2023-12-17 07:55:52', '2023-12-17 07:55:52'),
(5, '[\"Coloring\",\"Styling\",\"Haircut\",\"Smoothing\",\"Creambath\"]', '[\"75000\",\"60000\",\"70000\",\"80000\",\"45000\"]', 8, '2023-12-17 14:24:08', '2023-12-17 14:24:08'),
(8, '[\"Coloring\",\"Manicure\",\"Smoothing\",\"Creambath\",\"Hair Spa\"]', '[\"98000\",\"75000\",\"80000\",\"50000\",\"90000\"]', 10, '2023-12-17 17:27:04', '2023-12-17 17:27:04'),
(9, '[\"Styling\",\"Haircut\",\"Coloring\",\"Perm\",\"Shave\"]', '[\"30000\",\"50000\",\"90000\",\"150000\",\"25000\"]', 11, '2023-12-18 01:15:57', '2023-12-18 01:15:57'),
(10, '[\"Coloring\",\"Smoothing\",\"Manicure\",\"Pedicure\",\"Hair Spa\"]', '[\"150000\",\"200000\",\"250000\",\"230000\",\"150000\"]', 12, '2023-12-18 02:02:47', '2023-12-18 02:02:47'),
(18, '[\"Smoothing\",\"Manicure\",\"Pedicure\",\"Haircut\",\"Hair Spa\"]', '[\"280000\",\"150000\",\"150000\",\"180000\",\"250000\"]', 13, '2023-12-18 12:00:26', '2023-12-18 12:00:26'),
(19, '[\"Coloring\",\"Styling\",\"Haircut\",\"Smoothing\",\"Perm\"]', '[\"98000\",\"90000\",\"75000\",\"80000\",\"50000\"]', 9, '2023-12-18 13:20:24', '2023-12-18 13:20:24'),
(20, '[\"Coloring\",\"Haircut\",\"Shave\",\"Styling\",\"Perm\"]', '[\"50000\",\"30000\",\"20000\",\"55000\",\"75000\"]', 5, '2023-12-18 13:45:14', '2023-12-18 13:45:14'),
(21, '[\"Smoothing\",\"Manicure\",\"Coloring\",\"Styling\",\"Hair Spa\"]', '[\"25000\",\"30000\",\"65000\",\"75000\",\"95000\"]', 6, '2023-12-18 13:53:24', '2023-12-18 13:53:24'),
(22, '[\"Styling\",\"Haircut\",\"Shave\",\"Coloring\",\"\"]', '[\"20000\",\"20000\",\"15000\",\"50000\",\"\"]', 15, '2023-12-18 14:22:12', '2023-12-18 14:22:12'),
(23, '[\"Hair Spa\",\"Smoothing\",\"Manicure\",\"Pedicure\",\"Haircut\"]', '[\"100000\",\"85000\",\"150000\",\"150000\",\"35000\"]', 16, '2023-12-18 14:40:52', '2023-12-18 14:40:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Sessions`
--

CREATE TABLE `Sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `Sessions`
--

INSERT INTO `Sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('-6jJFthh75h36j76Iar-iD7PS7WUd2gq', '2023-12-19 16:06:47', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:06:47.678Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:06:47', '2023-12-18 16:06:47'),
('-C5sJOtRmcOzoo3GkGR_QOuSb1l-wKN4', '2023-12-19 10:59:47', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:59:47.017Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:59:47', '2023-12-18 10:59:47'),
('-QkLTYQksI_Hv3JZhQbLSiqSmgs1xRQ5', '2023-12-19 15:34:02', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:34:02.883Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:34:02', '2023-12-18 15:34:02'),
('-u8mnQw2_OU5Q8Nmpuiu8ngl5ZZ4_p5U', '2023-12-19 16:31:10', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:31:10.503Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:31:10', '2023-12-18 16:31:10'),
('-xkUg8hZ0Mzph0mBBeDotjUeDJn1D6yd', '2023-12-19 14:32:59', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:32:59.324Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:32:59', '2023-12-18 14:32:59'),
('04n8cF6y1QxcfxxKWJ1eZ2srpoCsv9vJ', '2023-12-19 15:01:45', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:01:45.129Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:01:45', '2023-12-18 15:01:45'),
('0AKVbb9vDUtSu8IBpq9xtcABi-hwl6mH', '2023-12-19 12:32:15', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:32:15.396Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:32:15', '2023-12-18 12:32:15'),
('0nMiWj0PrGWvbs-CdPObQGOCyauSqZlL', '2023-12-19 15:19:42', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:19:42.243Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:19:42', '2023-12-18 15:19:42'),
('0olVwFiQukZkIsy9wWI4lAemy-w25Caj', '2023-12-19 15:53:53', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:39:35.046Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:39:35', '2023-12-18 15:53:53'),
('0RgG3_WpyHJpxK43BFVX0eNbm1xJdiDA', '2023-12-19 14:31:34', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:31:34.900Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:31:34', '2023-12-18 14:31:34'),
('0RHNMcH2vydYq2YdC6_iY4vF-0eYIaNE', '2023-12-19 15:42:45', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:42:45.109Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:42:45', '2023-12-18 15:42:45'),
('0YDyqNAbSsw-8Q8SwsG6ExVROhhGgjVi', '2023-12-19 15:42:12', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:42:12.225Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:42:12', '2023-12-18 15:42:12'),
('1cUU_Q3aRPUViaDJKtxKiCNNlyH7eS18', '2023-12-19 15:18:46', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:18:46.101Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:18:46', '2023-12-18 15:18:46'),
('1fJ0gAB4zFJpgxRqxk05__OlcvaN_xwp', '2023-12-19 16:27:25', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:27:25.055Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:27:25', '2023-12-18 16:27:25'),
('1I0J3lAlTPzqa8zbKCsx8COYI-_Y6ghK', '2023-12-19 09:23:31', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T09:23:31.925Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 09:23:31', '2023-12-18 09:23:31'),
('1lvo2iH7PMYCgspsbLHy1LKCs6Y_CLTi', '2023-12-19 16:40:15', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:40:14.871Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:40:14', '2023-12-18 16:40:15'),
('1PQQN0rSbOvaR2WO0FSP-iWFlKEcBNGS', '2023-12-19 10:37:40', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:37:40.879Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:37:40', '2023-12-18 10:37:40'),
('1r_A1D4jYcqZuJ0u4_-1pYwpjyL6zKsF', '2023-12-19 11:06:49', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:06:49.538Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:06:49', '2023-12-18 11:06:49'),
('1z3aw9g1u0HLsCG4nZ3zPrL4sSOtXxUX', '2023-12-19 14:09:53', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:09:53.562Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:09:53', '2023-12-18 14:09:53'),
('20OPwVg5R8Si35Nyem50GXsAHRy_yfig', '2023-12-19 17:01:07', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T17:01:07.152Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 17:01:07', '2023-12-18 17:01:07'),
('2bq82F_bSXsOnGhaOxb2aBzMTNKHyhiN', '2023-12-19 16:27:58', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:27:58.636Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"},\"temporarySessionUUID\":\"6a641be0-ecfa-4f74-9199-6e72ce191f3f\"}', '2023-12-18 16:27:27', '2023-12-18 16:27:58'),
('2zqIRrnrvoqIgDjqMnlx_CQTUOdn_8eh', '2023-12-19 15:45:03', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:45:03.152Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:45:03', '2023-12-18 15:45:03'),
('3dgL1VpkxPhUVpy_-20N22MsQabqTQPn', '2023-12-19 15:09:57', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:09:57.990Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:09:57', '2023-12-18 15:09:57'),
('3PKdQtOY7sx2QLusxc0TcV6R-1FxnIjN', '2023-12-19 16:29:32', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:29:32.393Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:29:32', '2023-12-18 16:29:32'),
('3RoKE9mjgGYMzRHNpEr29C_ApczmIEf0', '2023-12-19 16:02:51', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:02:51.093Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:02:51', '2023-12-18 16:02:51'),
('46A3p3eS-3IANAuYwONMnrciPOTQGmTS', '2023-12-19 11:07:44', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:07:44.886Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:07:44', '2023-12-18 11:07:44'),
('4l6s7JJStO8NRgevpoHgGiAgOO2eKkQ6', '2023-12-19 16:01:02', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:01:02.055Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:01:02', '2023-12-18 16:01:02'),
('4lCeLbI74qQHlaW5iBgJfzLJwaedZ3vH', '2023-12-19 14:42:35', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:42:35.027Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:42:35', '2023-12-18 14:42:35'),
('4PkkppCOVsR0XnMzsVAbIGVXfkAI3DfX', '2023-12-19 16:06:57', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:06:57.389Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:06:57', '2023-12-18 16:06:57'),
('4RXed5S4N9SoIPljgCOfcW3o9hMtjzfT', '2023-12-19 16:04:52', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:04:52.997Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:04:53', '2023-12-18 16:04:53'),
('4z55-rpnEEr8bZWE6oBWRad10IGfc-El', '2023-12-19 15:42:53', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:42:53.180Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:42:53', '2023-12-18 15:42:53'),
('52utgmLZzFgNvnak0wd600jGAyT21jhf', '2023-12-19 16:07:14', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:07:14.784Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:07:14', '2023-12-18 16:07:14'),
('57saoQETPNuATzcDqBHfsaXqrwbaHp33', '2023-12-19 14:25:16', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:25:16.677Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:25:16', '2023-12-18 14:25:16'),
('5nQ1wRzoXiK1GXG3WKmbAwFqMnPh1IUh', '2023-12-19 11:17:44', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:17:44.728Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:17:44', '2023-12-18 11:17:44'),
('5pvrPouVebwlSu_HTzO9uBjb8LiLiRB5', '2023-12-19 10:22:13', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:22:13.775Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:22:13', '2023-12-18 10:22:13'),
('60RQkAg5jJzEZyb3L7GFoQnJ9qoAvjyy', '2023-12-19 15:50:31', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:50:31.961Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:50:31', '2023-12-18 15:50:31'),
('61TkcgQS6MbD8LZVZLONaXREsLRICoGt', '2023-12-20 02:49:54', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-20T02:49:54.040Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-19 02:49:54', '2023-12-19 02:49:54'),
('6HI1UQtqOz7UKgdftrfEmGJdqdOacGvg', '2023-12-19 14:28:18', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:28:18.663Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:28:18', '2023-12-18 14:28:18'),
('6yPPi0TPowWrWTcDhccT3X8ksSXDyeTK', '2023-12-19 10:39:10', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:39:10.693Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:39:10', '2023-12-18 10:39:10'),
('7-WnuZIacPAhb_y2LvhzqVuhkMPHr5xv', '2023-12-19 11:10:53', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:10:53.036Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:10:53', '2023-12-18 11:10:53'),
('74n-liSLLU_iqGdOhrU5gSiolLJqCDQ0', '2023-12-19 15:29:44', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:29:44.177Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:29:44', '2023-12-18 15:29:44'),
('7G2ah6_rALgKBMrp4WKS7ixYWLy5ar3c', '2023-12-19 10:42:25', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:42:25.681Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:42:25', '2023-12-18 10:42:25'),
('7GjRG2GpFHQgclqu_92AT3NP7DEVzhLn', '2023-12-19 14:53:08', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:53:08.564Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:53:08', '2023-12-18 14:53:08'),
('7KZK5Rh-O8D5ZWaU6i6N-sKFafQmuKsZ', '2023-12-19 15:44:01', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:44:01.354Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:44:01', '2023-12-18 15:44:01'),
('7MAHuSmQ-A8pw69NDSheUBFM5VKfnrac', '2023-12-19 16:06:59', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:06:59.318Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:06:59', '2023-12-18 16:06:59'),
('7MB28KjNpKSm6174g-glWv4FmJ8incWx', '2023-12-19 12:13:40', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:13:40.285Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:13:40', '2023-12-18 12:13:40'),
('9-70xLX6tAj7WrMfKYXii-MQYp_JcZB_', '2023-12-19 09:22:59', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T09:22:55.249Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 09:22:55', '2023-12-18 09:22:59'),
('9d0he12CjaaBGetu0jq88LP1Wqzd3sGp', '2023-12-19 16:30:19', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:30:19.530Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:30:19', '2023-12-18 16:30:19'),
('9KOPPzOBGJV9LKhfoaFbt_wMRsE-0-va', '2023-12-19 15:30:12', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:30:12.265Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:30:12', '2023-12-18 15:30:12'),
('9Xjcsq7o6jYfnZLc6Nq1yzcycAUspz9E', '2023-12-19 15:27:41', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:27:41.202Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:27:41', '2023-12-18 15:27:41'),
('a26VTgL_j6rMzk9BJognu6-mIOguLEqX', '2023-12-19 10:44:38', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:44:38.334Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:44:38', '2023-12-18 10:44:38'),
('A4tdAl8DSXUzCKtU7d5xtHQWEJUsNkm9', '2023-12-19 11:58:07', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:58:07.293Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:58:07', '2023-12-18 11:58:07'),
('a7MzeBWOL3_hN6fhPJ5zqKnDJu4sRWbE', '2023-12-19 16:01:52', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:01:52.133Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:01:52', '2023-12-18 16:01:52'),
('A97rNDcrmK_f5aVXWd5ep3rFIx4orUZr', '2023-12-19 15:25:16', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:25:16.443Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:25:19', '2023-12-18 15:25:19'),
('aGVejPd-hZbgqo_NO8ves8gpTioiD8zw', '2023-12-19 10:46:19', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:46:19.102Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:46:19', '2023-12-18 10:46:19'),
('aJutAuKbEqZZfQeupT_DvjALGAkYdL1u', '2023-12-19 14:25:40', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:25:40.826Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:25:40', '2023-12-18 14:25:40'),
('aKrJkCzgh9Cv19U8umCci23Oj_7gnsF3', '2023-12-19 15:17:59', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:17:59.910Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:17:59', '2023-12-18 15:17:59'),
('AVs2MF-wWiTD5iNUz-uIYVY_x0ne87jc', '2023-12-19 15:18:19', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:18:19.467Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:18:19', '2023-12-18 15:18:19'),
('axUHlz01gag1KN7A4J1zGcnpalPzIxji', '2023-12-19 15:42:31', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:42:31.172Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:42:31', '2023-12-18 15:42:31'),
('A_QYdAEa3FOeyVhCO1lxsM96x4169zqk', '2023-12-19 15:35:55', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:35:55.073Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:35:55', '2023-12-18 15:35:55'),
('b1_5C1VC0H_YwJQwgFNGd-RV5gpWjUhA', '2023-12-19 15:25:18', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:25:18.154Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:25:19', '2023-12-18 15:25:19'),
('BB23HdZ95uk2Mny5x97u84VpCCIl6-Hz', '2023-12-19 11:07:20', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:07:20.219Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:07:20', '2023-12-18 11:07:20'),
('bfSybjvXCTxIe4x04q-bniEl2L1Rk6ms', '2023-12-19 14:22:11', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:22:11.959Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:22:11', '2023-12-18 14:22:11'),
('BFUwMkOsTDZ2BX9hi0fa9raXKbmT8BqG', '2023-12-19 10:46:54', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:46:54.035Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:46:54', '2023-12-18 10:46:54'),
('BGD2HKkvaDEsoPbNgL2qtb0XaDwjacV1', '2023-12-19 11:10:54', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:10:54.791Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:10:54', '2023-12-18 11:10:54'),
('bgdYqEvu_4TVjY1uIuhxcPKacwJo76S6', '2023-12-19 10:49:26', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:49:26.151Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:49:26', '2023-12-18 10:49:26'),
('bg_eQ_CKykjJBjAVqHdiuh88mTJT7itF', '2023-12-19 15:39:35', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:39:35.040Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:39:35', '2023-12-18 15:39:35'),
('Bis9lbgcC-2jLIZpVb6z_KPdtED_i95i', '2023-12-19 15:35:11', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:35:09.760Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:35:09', '2023-12-18 15:35:11'),
('bJiYCijJxs4lS5hZ_lDYNzQyUpewtpNv', '2023-12-19 12:49:26', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:49:26.121Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:49:26', '2023-12-18 12:49:26'),
('BpKBysQtL29gL3FwUOVnozC4uDTWPYRI', '2023-12-19 10:48:22', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:48:22.074Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:48:22', '2023-12-18 10:48:22'),
('BPW--tF5vRyvHyYQs81Zq5SqZX3K8KVU', '2023-12-19 12:51:46', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:51:46.215Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:51:46', '2023-12-18 12:51:46'),
('bsNY5dMdeyP4C8ZlNPA1rTeGx7ffS9Yc', '2023-12-19 10:49:24', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:49:24.108Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:49:24', '2023-12-18 10:49:24'),
('bxmgybzWBg-nBLhVSKQIjHaZxpf46AFc', '2023-12-19 14:06:42', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:06:42.723Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:06:42', '2023-12-18 14:06:42'),
('BzjB-U5z0Ty382TF6patOTe8RsBp4VBr', '2023-12-19 15:53:35', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:51:02.555Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:51:02', '2023-12-18 15:53:35'),
('cI1UgV8JasjnQyYYZ3xWdvsUdqDedkwQ', '2023-12-19 10:14:20', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:14:20.751Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:14:20', '2023-12-18 10:14:20'),
('CiarfVaFQ_XWwRKLm4uxvn1fYmoRLkP4', '2023-12-19 11:01:18', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:01:18.682Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:01:18', '2023-12-18 11:01:18'),
('CL3knfWLyrFQPzvPBwGE8-BcycBSWXKe', '2023-12-19 12:49:39', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:49:39.274Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:49:39', '2023-12-18 12:49:39'),
('cLXSO_9E2iWzm_KGSHHkvOvNDitVSR5F', '2023-12-19 13:57:27', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T13:57:27.571Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 13:57:27', '2023-12-18 13:57:27'),
('cl_5pU4t3C8IOxFjCmBZd5UEGfbxxwNZ', '2023-12-19 14:32:13', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:32:13.767Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:32:13', '2023-12-18 14:32:13'),
('C_j5Mos3ynbeMsYwcxWt73O_H_ajwzNO', '2023-12-19 12:52:39', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:52:39.075Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:52:39', '2023-12-18 12:52:39'),
('d59q6Bh8cD9Ynb6VryGJ87nEnj54Ul-C', '2023-12-19 09:23:35', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T09:23:35.371Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 09:23:35', '2023-12-18 09:23:35'),
('d6FotHwDGRsPPVxvdfSmoVrGpN676BoQ', '2023-12-19 14:28:15', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:28:15.791Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:28:15', '2023-12-18 14:28:15'),
('dC7F59vBF4wjeAYeRYfI98jij88C8bMe', '2023-12-19 06:03:10', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T06:03:10.386Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 06:03:10', '2023-12-18 06:03:10'),
('dhVb_euTeJcrVrHQYhTNZ2-3fS4ziBn0', '2023-12-19 16:01:59', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:36:09.294Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:36:09', '2023-12-18 16:01:59'),
('Dkn05EPTjE3EECrZY-fw26305iLpO_I6', '2023-12-19 15:29:55', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:29:55.572Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:29:55', '2023-12-18 15:29:55'),
('DueYscstdljukip9qWvXvKdekPyU6Q7N', '2023-12-19 15:16:02', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:16:02.742Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:16:02', '2023-12-18 15:16:02'),
('EBWPoM541uKQExZLkxqdWQAeUUOCUFJ5', '2023-12-19 16:38:30', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:35:12.464Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:35:12', '2023-12-18 16:38:30'),
('eJxbGVz59U1o467l-prqQjUELk6pm-LL', '2023-12-19 15:19:01', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:19:01.883Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:19:01', '2023-12-18 15:19:01'),
('EZpbN543639uDsgO2ZE_bEiy9uPgs7zh', '2023-12-19 09:12:18', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-18T14:40:07.809Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-17 14:40:07', '2023-12-18 09:12:18'),
('FFPL6H7n0_71jPyNtfLzDe2OgPfJNjex', '2023-12-19 14:47:59', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:47:59.170Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:47:59', '2023-12-18 14:47:59'),
('fHh0q0v8G2vAbxGBB9Q8vXXrmtjPn6CU', '2023-12-19 11:23:04', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:23:04.273Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:23:04', '2023-12-18 11:23:04'),
('FiQfq5GzEXgW7wfWoegGxGblVFBCJzPp', '2023-12-19 11:09:11', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:09:11.053Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:09:11', '2023-12-18 11:09:11'),
('FK0bfUqgR18w1jMEe981DlHJ095_9Oa5', '2023-12-19 10:59:42', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:59:42.872Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:59:42', '2023-12-18 10:59:42'),
('FlJFNGmsuCIbmcDqB38xGAeV7IcPlKfB', '2023-12-19 13:45:14', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T13:45:14.546Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 13:45:14', '2023-12-18 13:45:14'),
('fMM6SsYR0j1o1MVugiZJXFr6PQo8TPOB', '2023-12-19 15:30:12', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:30:12.275Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:30:12', '2023-12-18 15:30:12'),
('FQhzHsf8iElzB1ifrM8US9JxHmgnR9gA', '2023-12-19 16:14:53', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:01:52.226Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"},\"temporarySessionUUID\":\"368b9a0f-1803-4003-90b4-d1c72d0a943c\"}', '2023-12-18 16:01:03', '2023-12-18 16:14:53'),
('ftEjihzpeeWk0SRe4voa-c9CFXaxjBt5', '2023-12-19 15:59:42', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:59:42.438Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:59:42', '2023-12-18 15:59:42'),
('FXCMQ2il4uB4LJkfwhjWOo0WajaY3xSV', '2023-12-20 03:01:13', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-20T02:32:36.498Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"},\"temporarySessionUUID\":\"65e3380d-a97a-4ea4-8183-a5e5f2b5657e\"}', '2023-12-19 02:32:07', '2023-12-19 03:01:13'),
('G2q1ufiDGdmJ8je4vp7JxokvmldfYS3u', '2023-12-19 16:19:09', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:19:09.080Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:19:09', '2023-12-18 16:19:09'),
('GC3odA_4yxTRLeCtwDeDDXLvvbENjZoz', '2023-12-19 16:01:41', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:01:41.099Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:01:41', '2023-12-18 16:01:41'),
('gf8q4k6CbO98p90gDH34JEv-mnrTPokx', '2023-12-19 15:18:05', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:18:05.662Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:18:05', '2023-12-18 15:18:05'),
('GirD5Bx4Q2pGMAXiQ63FaNjZTDezq0vq', '2023-12-20 02:32:07', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-20T02:32:07.370Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-19 02:32:07', '2023-12-19 02:32:07'),
('GsSYBH5UjFrauLlmbZ-bKSIyS34RXH5J', '2023-12-19 15:25:14', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:25:14.474Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:25:19', '2023-12-18 15:25:19'),
('GtQY5e7I5TzwXvaLtqtntAKSrB1yl3N6', '2023-12-19 15:09:58', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:09:58.251Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:09:58', '2023-12-18 15:09:58'),
('GY9_jWJmZoBImYDO1rw9DnNtbd2o8knP', '2023-12-19 15:58:37', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:58:37.483Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:58:37', '2023-12-18 15:58:37'),
('HeKfUOWu82x4fO2J4VZhl2rm9lm4kisH', '2023-12-19 12:18:14', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:18:14.145Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:18:14', '2023-12-18 12:18:14'),
('Hh9o50So1XraDdBhcPrNwFhdvK91WSXJ', '2023-12-19 16:08:05', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:08:05.463Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:08:05', '2023-12-18 16:08:05'),
('hhl_7nbOOM2N6dhHbFOCySodOXSfrFBw', '2023-12-19 15:44:52', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:44:52.252Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:44:52', '2023-12-18 15:44:52'),
('HK-jBN4_kJnbFDqaOFeYyxEThWcnFxm9', '2023-12-19 08:13:26', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T08:13:26.519Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 08:13:26', '2023-12-18 08:13:26'),
('hkMmc3DHgs0FgYOtBOSMkFU6rDwUpJIQ', '2023-12-19 15:32:22', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:32:22.658Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:32:22', '2023-12-18 15:32:22'),
('HOqN9_GGU-OCg3N_tnPKwJ36BIOun_AD', '2023-12-19 11:20:19', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:20:19.038Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:20:19', '2023-12-18 11:20:19'),
('Hsp9xm8X1MZoqkW0TGk3Lj8htPj1_2lk', '2023-12-19 17:04:15', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T17:04:15.009Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 17:04:15', '2023-12-18 17:04:15'),
('hva5bWPP0Tlku2a1BsUliWA4tDtXiAbu', '2023-12-19 15:35:13', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:35:13.229Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:35:13', '2023-12-18 15:35:13'),
('hXMJeKfkNvrys7PPwG-R5eIuZB96rh0H', '2023-12-19 11:22:37', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:22:37.341Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:22:37', '2023-12-18 11:22:37'),
('h_6eP6NCF6dwlQYoygJ-xCiszTDDVWZT', '2023-12-20 00:34:48', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:58:46.194Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"},\"temporarySessionUUID\":\"3bf2f548-8b94-459f-b4ab-42439d52c3ee\"}', '2023-12-18 15:58:38', '2023-12-19 00:34:48'),
('i3Bum5mxZB-hPBJxsPVsY1w5mtUubC_b', '2023-12-19 11:03:38', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:03:38.199Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:03:38', '2023-12-18 11:03:38'),
('I6Y7kDqz_toGu2yRDBHbmJkwU_n9ZHpp', '2023-12-19 15:04:17', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:04:17.083Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:04:17', '2023-12-18 15:04:17'),
('I7YP26i2Ljj7YGvjanA1qatRn0sJ_Y-R', '2023-12-19 12:25:29', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:25:29.043Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:25:29', '2023-12-18 12:25:29'),
('Ibi8RvvC0zVPLVEEziC9EkU1TVzt_tNk', '2023-12-19 10:36:59', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:36:59.772Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:36:59', '2023-12-18 10:36:59'),
('If-Ew9KDJxNQow2lX97ofDKLPEjLMfJ5', '2023-12-19 15:41:37', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:41:37.370Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:41:37', '2023-12-18 15:41:37'),
('IFRwJQuDFdlJ1SkCkdsdBAVB26NNsxFA', '2023-12-19 10:43:43', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:43:43.411Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:43:43', '2023-12-18 10:43:43'),
('IgKOmzj4PEqxueps9rrIr6W47Zp6ukBs', '2023-12-19 14:47:44', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:47:44.457Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:47:44', '2023-12-18 14:47:44'),
('Imh-E-HxmWW9mD_9cdwq5xq0XLTJeKGK', '2023-12-19 14:31:53', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:31:53.160Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:31:53', '2023-12-18 14:31:53'),
('isk-6mHMsXayLhw24baC-cSo30yel3Yp', '2023-12-19 15:13:24', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:10:40.819Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:10:40', '2023-12-18 15:13:24'),
('IyxDvfOpZ8rIMAg_83Z3dR9Yth4nYeX0', '2023-12-20 02:36:05', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-20T02:36:05.758Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-19 02:36:05', '2023-12-19 02:36:05'),
('j2MoAPWWVse8ox1-6Jzi916pK0yvNVp7', '2023-12-19 10:48:34', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:48:34.100Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:48:34', '2023-12-18 10:48:34'),
('JaBr3BszcEz5lpHj-oixnmci6aqEl5cC', '2023-12-19 15:14:39', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:14:39.225Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:14:39', '2023-12-18 15:14:39'),
('jazX0hHD4gH0hG5xOqAzgDovRsHdfSsd', '2023-12-19 16:01:16', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:01:16.803Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:01:16', '2023-12-18 16:01:16'),
('JcBjRdPrTk2Ah451h86VQ0nXSacYY0H3', '2023-12-19 15:33:26', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:33:26.819Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:33:26', '2023-12-18 15:33:26'),
('jFzbSI2X6hI-efWgzJD8gHhGovXkRDgR', '2023-12-19 13:19:27', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T13:19:27.593Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 13:19:27', '2023-12-18 13:19:27'),
('JH1Kpl9jlGlMGSFtg8_s5EjkekQ72X0p', '2023-12-19 09:23:35', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T09:23:35.380Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 09:23:35', '2023-12-18 09:23:35'),
('JL2bAyfCKh3uNkmHhNbL93fZRDqA3K1L', '2023-12-19 16:05:29', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:05:29.386Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:05:29', '2023-12-18 16:05:29'),
('JLfBZq1J3w_aywxGc1EI_zJlwxzHBJ6I', '2023-12-19 17:11:18', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T17:11:17.500Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 17:11:17', '2023-12-18 17:11:18'),
('jrQNdJKRlsBhn2JjXUTLKeKbalVth2h-', '2023-12-19 15:35:03', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:35:03.433Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:35:03', '2023-12-18 15:35:03'),
('jXKkYJpGbqMXzl5J4IPuhKZzfyYh5liA', '2023-12-19 10:40:27', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:40:27.385Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:40:32', '2023-12-18 10:40:32'),
('JZqQCy92bVVsIMSLKfiPLfHly3HrV2lT', '2023-12-19 14:39:45', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:39:45.920Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:39:45', '2023-12-18 14:39:45'),
('J_0cec8nVU-oREYyF3n-AEfy20GFK9gN', '2023-12-19 12:12:12', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:12:12.286Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:12:12', '2023-12-18 12:12:12'),
('kjNPtv2Uk3X4UFGa2jExnzOWNMn_lhXP', '2023-12-19 15:10:56', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:10:56.087Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:10:56', '2023-12-18 15:10:56'),
('KlbDKHkfhos-d6xPmUSq0MNeFdkbgrbf', '2023-12-19 14:09:52', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:09:52.882Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:09:52', '2023-12-18 14:09:52'),
('KlfsTZKRJCoIPJmkEy7Np0-Orgwji-ke', '2023-12-20 02:18:49', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-20T02:18:46.885Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-19 02:18:46', '2023-12-19 02:18:49'),
('kljJUEn3yt5c7ewrD_XpKzADxtj3mTTy', '2023-12-19 10:50:15', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:50:15.685Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:50:15', '2023-12-18 10:50:15'),
('KS17USi72ztaP9jO_w1uFHD4C0KH5s5b', '2023-12-19 16:05:59', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:05:59.453Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:05:59', '2023-12-18 16:05:59'),
('kttb2CL2bG17l-pBxv9tK9Yxxy3eXKj_', '2023-12-20 02:18:46', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-20T02:18:46.814Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-19 02:18:46', '2023-12-19 02:18:46'),
('KUwl2UYJyXLyYNOVLQiXX9WnVTDru4hb', '2023-12-19 15:13:36', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:13:36.471Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:13:36', '2023-12-18 15:13:36'),
('KvFVwF_0M9KuUH2HW6OhmHn5AF-acJks', '2023-12-19 12:58:59', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:58:59.020Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:58:59', '2023-12-18 12:58:59'),
('kXqrtPOJJumb0vJUmNESZt1eAJelc1wE', '2023-12-19 16:24:12', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:24:12.520Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:24:12', '2023-12-18 16:24:12'),
('L2UauZfzYqSDM7tbeMJPeFdwF5Poui_W', '2023-12-19 13:04:48', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T13:04:48.415Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 13:04:48', '2023-12-18 13:04:48'),
('l3JPneyZEGGPyuG7wvNf6PT8D8CINEaV', '2023-12-19 10:42:23', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:42:23.782Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:42:23', '2023-12-18 10:42:23'),
('l4yNwQvUdJPTyuKqegeAEkOndz-PJjH2', '2023-12-19 14:05:27', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:05:27.230Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:05:27', '2023-12-18 14:05:27'),
('L5EtwUMJYtXYgd7r24pW04Jfj8LgeaZh', '2023-12-19 14:42:35', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:42:35.030Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:42:35', '2023-12-18 14:42:35'),
('l7mDTNvDBC1MZJYN9pvvuC4nMB2-PkaU', '2023-12-19 15:50:00', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:50:00.145Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:50:00', '2023-12-18 15:50:00'),
('lARSgiY6aEvZCCfHBwNMGRqGm909r61J', '2023-12-19 14:29:37', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:29:37.922Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:29:37', '2023-12-18 14:29:37'),
('lLmE0uxXHLEmU80c8yw-ANwpLmOF_H5s', '2023-12-19 16:40:14', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:40:14.863Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:40:14', '2023-12-18 16:40:14'),
('LN4DnsankyndFy4f8qq_cyKzKvJQRoHi', '2023-12-19 16:17:44', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:17:44.928Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:17:44', '2023-12-18 16:17:44'),
('lpHJbtj9oAkGTUoX5k4wLLB1niLvRoU7', '2023-12-19 15:18:28', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:18:28.103Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:18:28', '2023-12-18 15:18:28'),
('lvB4ahhPxZGhlMob093XU0DzO6FKgndw', '2023-12-19 15:08:43', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:08:43.711Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:08:43', '2023-12-18 15:08:43'),
('LymvK-V0apqpqBK7PmlWh7eBYbcNvo6R', '2023-12-19 16:19:15', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:19:15.359Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:19:15', '2023-12-18 16:19:15'),
('m8KNxAE47PZACcVZYlSoHkblcLy_zkhu', '2023-12-19 16:29:29', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:29:29.699Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:29:29', '2023-12-18 16:29:29'),
('mgSHkm3nR-wM-Wuf24M8PejTPaqiGDih', '2023-12-20 03:16:51', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:04:53.106Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"},\"temporarySessionUUID\":\"a415134f-719d-447e-b16f-12050fb8cbf8\"}', '2023-12-18 16:02:51', '2023-12-19 03:16:51'),
('MjgSqAQOQ9A96G5An3MzK49_E2k858Q7', '2023-12-19 16:31:26', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:31:26.848Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:31:26', '2023-12-18 16:31:26'),
('mLtwxVNbd5exiP90kPkxOKZxjWcwREuh', '2023-12-20 02:32:04', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-20T02:32:04.019Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-19 02:32:04', '2023-12-19 02:32:04'),
('mNbp7VExXBoIeFTJjlcErBqAG7q1Z1rC', '2023-12-19 16:11:30', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:11:30.396Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:11:30', '2023-12-18 16:11:30'),
('mnwXopXfKEo_f1AnzMqlqlypYjvfcbRF', '2023-12-19 16:35:00', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:35:00.127Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:35:00', '2023-12-18 16:35:00'),
('mVqRCpaQujCxFJHmHq-v70GVNr-ULait', '2023-12-19 15:09:50', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:09:50.293Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:09:50', '2023-12-18 15:09:50'),
('MzG0MP4wjQaHC6BYLgBkZt00AiaQmN-8', '2023-12-19 16:20:19', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:20:19.036Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:20:19', '2023-12-18 16:20:19'),
('n11gV36ihIBUVNP-UuQ2na3-DU1XoWEO', '2023-12-19 10:29:12', '{\"cookie\":{\"originalMaxAge\":86399999,\"expires\":\"2023-12-19T10:29:12.287Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:29:12', '2023-12-18 10:29:12'),
('N6lLbZFb-tXK2tx7ypIaXRqGroTs8mrS', '2023-12-19 16:19:48', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:19:09.201Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"},\"temporarySessionUUID\":\"368b9a0f-1803-4003-90b4-d1c72d0a943c\"}', '2023-12-18 16:15:16', '2023-12-18 16:19:48'),
('N8vUQVjUFW-MNJJ_m5G5OabfHuIvPdU5', '2023-12-19 15:04:01', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:04:01.374Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:04:01', '2023-12-18 15:04:01'),
('naFWYywExXcUyqeRg3IDn9kf_BJIs_cI', '2023-12-19 15:19:42', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:19:42.250Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:19:42', '2023-12-18 15:19:42'),
('nBazdsVY4erYcTquTD06GzQVsgxAeRtm', '2023-12-19 13:19:25', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T13:19:25.765Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 13:19:25', '2023-12-18 13:19:25'),
('neVkkJgAGPSJO-1DDYF2kv327uHuM50y', '2023-12-19 16:11:43', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:11:43.148Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:11:43', '2023-12-18 16:11:43'),
('ni0azruFsSXlrt_C8ZYTy0AlBSpHdw5U', '2023-12-19 16:51:40', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:51:40.794Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:51:40', '2023-12-18 16:51:40'),
('NKBcGAT-Rvm6YUVRryfmAP2CPBErop7E', '2023-12-19 09:24:02', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T09:24:02.696Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 09:24:02', '2023-12-18 09:24:02'),
('NKSWPu84hYZOc1mVDEfyhuYmy--Nt9Fx', '2023-12-19 15:25:18', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:25:18.930Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:25:19', '2023-12-18 15:25:19'),
('NlVFEXBTcfWI1makdpIDvfesaALT2L5y', '2023-12-19 12:49:24', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:49:24.921Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:49:24', '2023-12-18 12:49:24'),
('nmzqUdfSU0J03gmn0Y4Xkfb6iQfOCRRf', '2023-12-19 10:40:31', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:40:31.593Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:40:32', '2023-12-18 10:40:32'),
('nO0ZfljXfWjhe2D_RRH7zgzeK9LZymXV', '2023-12-19 11:03:16', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:03:16.078Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:03:16', '2023-12-18 11:03:16'),
('NqqHkUDodTdy8B6VOFWC2ttyIxbZW7dU', '2023-12-19 15:30:12', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:30:12.341Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:30:12', '2023-12-18 15:30:12'),
('nVYigrxzIVPteKrbQBMWuWrJ9syyjADb', '2023-12-19 13:53:24', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T13:53:24.250Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 13:53:24', '2023-12-18 13:53:24'),
('nykG2eE_qmcf0MsCTAYGv1p2wMioJ31p', '2023-12-19 16:10:07', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:10:07.469Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:10:07', '2023-12-18 16:10:07'),
('n_bR6D46Z5LxbffUSb5u2gmzFLvLCkZl', '2023-12-19 10:38:10', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:38:10.766Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:38:10', '2023-12-18 10:38:10'),
('O1RQtCOHSIn51EICDW3S5xPzWgErqQfl', '2023-12-19 06:39:09', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T06:03:28.231Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"},\"temporarySessionUUID\":\"3822fa6a-1a0c-43a4-803e-fd75a8b543cf\"}', '2023-12-18 06:03:10', '2023-12-18 06:39:09'),
('O2hHy2mYcyLlZ05s6Gm1LkNo3U1RJhXo', '2023-12-19 14:06:35', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:06:35.582Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:06:35', '2023-12-18 14:06:35'),
('o2zansbR85Liv7pBaW0ZhQZexq73XEu-', '2023-12-19 15:16:49', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:16:49.682Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:16:49', '2023-12-18 15:16:49'),
('O6MNvN9QUJ7V5JcgkWVqkwj8B4eQTP9m', '2023-12-19 11:24:24', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:24:24.873Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:24:24', '2023-12-18 11:24:24'),
('o8ELlcq66y430EttQbbNgKQYk9nIUUYZ', '2023-12-19 15:30:23', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:30:23.134Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:30:23', '2023-12-18 15:30:23'),
('OAu_Q0GfmFyX6KhDMv6zl6pbyjuu2lzi', '2023-12-19 13:34:10', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-18T14:39:31.944Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"},\"temporarySessionUUID\":\"e8048180-0839-4599-9e32-3d5be561265c\"}', '2023-12-17 14:37:23', '2023-12-18 13:34:10');
INSERT INTO `Sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('OAVkJcm2imUq_byZjCgL5KvgAiEs-pAr', '2023-12-19 14:34:42', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:34:42.685Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:34:42', '2023-12-18 14:34:42'),
('odmVVHTDhkyrpLFz9Jl_dCpt_-FIJ8bq', '2023-12-19 15:43:00', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:43:00.752Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:43:00', '2023-12-18 15:43:00'),
('oIH6Tf5r_JV9IB85COethGL5nwEK-KKp', '2023-12-19 10:37:57', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:37:57.634Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:37:57', '2023-12-18 10:37:57'),
('ojcWn9BT9GKfJWlSyyzsJZATVpWCWQnF', '2023-12-19 16:02:52', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:02:52.034Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:02:52', '2023-12-18 16:02:52'),
('owzT11x9qPN6Z8CqRwfF8yMmI0ySBovR', '2023-12-19 14:21:31', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:21:31.999Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:21:32', '2023-12-18 14:21:32'),
('ozSg-gG5p53we6JUUkQiPiC43zmXeTig', '2023-12-19 15:35:07', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:35:07.384Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:35:07', '2023-12-18 15:35:07'),
('P1omUbN6YKa8BOvP3_g5i7PrLERzoqUY', '2023-12-19 14:06:54', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:06:54.622Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:06:54', '2023-12-18 14:06:54'),
('pCIUM_LN4VPqfGsFY1-SushvwqRCa0Ep', '2023-12-19 09:24:06', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T09:24:06.043Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 09:24:06', '2023-12-18 09:24:06'),
('pf0-C7BsJVLuAHCW08Thu4-eDvwO8nvD', '2023-12-19 14:42:35', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:42:35.207Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:42:35', '2023-12-18 14:42:35'),
('PjuVOq_OSjZaoFPgroIKY45ZhCRIcYlL', '2023-12-19 11:00:01', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:00:01.921Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:00:01', '2023-12-18 11:00:01'),
('Pka6qks3I76UU66moK6FntLWwlnOT2Vt', '2023-12-19 19:35:02', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T19:35:02.901Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 19:35:02', '2023-12-18 19:35:02'),
('pMi9ONmbUaZzqWE2KJVwgKT6i22hSLVJ', '2023-12-19 15:21:59', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:21:59.319Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:21:59', '2023-12-18 15:21:59'),
('pPOz2bFzuacwhqpQ7SFZxt22W8fSaTQi', '2023-12-19 14:32:47', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:32:47.414Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:32:47', '2023-12-18 14:32:47'),
('pSP3bXN0jptgxaFOR2rv4ugEGAwcYxb2', '2023-12-19 15:35:09', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:35:09.735Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:35:09', '2023-12-18 15:35:09'),
('q4TbMIKzFf5lIFK5VUrEh586cIPgXsmR', '2023-12-19 11:29:53', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:29:53.944Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:29:53', '2023-12-18 11:29:53'),
('qCVuW8E7CmIxBdzGhAdjJ8ncwLvRLM1C', '2023-12-19 14:48:47', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:48:47.219Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:48:47', '2023-12-18 14:48:47'),
('QFb6VkatadaWJowJQjfXULhLfHkHeEXu', '2023-12-19 14:33:02', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:33:02.220Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:33:02', '2023-12-18 14:33:02'),
('qfJxyTyz8rn3Gdpvu85Heex-BjX-EgWk', '2023-12-19 12:49:31', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:49:31.963Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:49:31', '2023-12-18 12:49:31'),
('qMXS7b7o576_g_D4U_TIGY7i61S18tzq', '2023-12-19 12:26:32', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:26:32.222Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:26:32', '2023-12-18 12:26:32'),
('qOvIcTsMsq11wv1tj0xqo2_ozOesgVNP', '2023-12-19 15:19:15', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:19:15.491Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:19:15', '2023-12-18 15:19:15'),
('Qp1Yvbdb-vIBQ3IMOAnJdvmb7pM8LX2i', '2023-12-19 14:29:26', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:29:26.270Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:29:26', '2023-12-18 14:29:26'),
('qpGv6z3VOD1yEFSI4ULvk4BMYNavbBzU', '2023-12-19 15:29:41', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:29:41.364Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:29:41', '2023-12-18 15:29:41'),
('QQDs8Gh83TBGGghZhZ-2KLlq0jggJOnx', '2023-12-19 15:18:07', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:18:07.446Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:18:07', '2023-12-18 15:18:07'),
('QTsIxEj_rSR4Y5O3c5UcCmActLN46zWo', '2023-12-19 16:07:10', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:07:10.080Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:07:10', '2023-12-18 16:07:10'),
('qtWVkHuLRYgtudeUuGPy01_wqVI14Jg8', '2023-12-19 11:13:20', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:13:20.880Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:13:20', '2023-12-18 11:13:20'),
('qvSz7CSce-DZkje2_oRuKbcIHnMDGlOA', '2023-12-19 11:03:46', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:03:46.418Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:03:46', '2023-12-18 11:03:46'),
('q_KmuiPNhURdsgwo1xpWIUfbDVzcBxFY', '2023-12-19 12:51:29', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:51:29.155Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:51:29', '2023-12-18 12:51:29'),
('r1bvuxOWllkXmmQ0lYxGpRR29CEy6oOw', '2023-12-19 15:48:14', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:48:14.208Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:48:14', '2023-12-18 15:48:14'),
('r7SEZh9iPcTBauKHnzYnqdWrC9ki0e9W', '2023-12-19 06:03:27', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T06:03:27.957Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 06:03:27', '2023-12-18 06:03:27'),
('ra6Ik4Dke2GRZ8xTtkGR8Q5Jw0MTupCw', '2023-12-19 16:07:00', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:07:00.983Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:07:00', '2023-12-18 16:07:00'),
('rABwQclnqRL8O--MSsPT6kh3z2tBAeMU', '2023-12-19 16:01:03', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:01:03.530Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:01:03', '2023-12-18 16:01:03'),
('Rah1BJZ5J0ndfPScpMDh5ApKBfs_YW1b', '2023-12-19 15:34:50', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:34:50.911Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:34:50', '2023-12-18 15:34:50'),
('raRdycshFCYK9-MEbIoT5JLdGxkCN20-', '2023-12-19 16:27:43', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:27:43.227Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:27:43', '2023-12-18 16:27:43'),
('RLl5uBj4-dXmwOxe7SaCyD9ap-ljr58w', '2023-12-19 14:31:55', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:31:55.208Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:31:55', '2023-12-18 14:31:55'),
('RM743V1LLXj4zF8a82D_1olkiQqGkL3Q', '2023-12-19 15:59:04', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:59:04.416Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:59:04', '2023-12-18 15:59:04'),
('rOUkLMnftP7jlAD3I8S7dzFOuJmPHY7L', '2023-12-19 11:11:39', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:11:39.845Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:11:39', '2023-12-18 11:11:39'),
('RPRldbs4rxoyXWAVmoCZ3ktXFMCjdWFx', '2023-12-19 16:11:08', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:11:08.041Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:11:08', '2023-12-18 16:11:08'),
('RWYepTj54G0jJz_-DMmq20W6xF4A0g98', '2023-12-19 12:26:33', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:26:33.711Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:26:33', '2023-12-18 12:26:33'),
('S4OXe-Lt5C81odAGX4IT_GMJoCrDzG1f', '2023-12-19 15:51:02', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:51:02.552Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:51:02', '2023-12-18 15:51:02'),
('s6VRI90prk8M6VvML8qplRPhl2p5Wow5', '2023-12-19 14:35:39', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:35:39.873Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:35:39', '2023-12-18 14:35:39'),
('S7F4w_YGBvTpUYkjrrtwuhIKcAS7kqDJ', '2023-12-19 14:35:40', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:35:40.113Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:35:40', '2023-12-18 14:35:40'),
('S7nHDPtjNmaby2z49Fkg-uvf95OIf8Ki', '2023-12-19 17:15:48', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T17:15:48.215Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 17:15:48', '2023-12-18 17:15:48'),
('s8z-SggjK7I6_5urz9uU7CJQ4_rUcsJ9', '2023-12-19 15:16:30', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:16:30.022Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:16:30', '2023-12-18 15:16:30'),
('S9alfuG5zn0UkXAg-5tlTkoPKHklyKhi', '2023-12-19 09:22:55', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T09:22:55.239Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 09:22:55', '2023-12-18 09:22:55'),
('s9bZ87rb6XmeZKHN0QUt9DuGLP_HOGED', '2023-12-19 14:32:40', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:32:40.707Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:32:40', '2023-12-18 14:32:40'),
('sABsK12HsUnbA9LGkKUwo0HoGq8EzWcH', '2023-12-19 15:58:38', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:58:38.759Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:58:38', '2023-12-18 15:58:38'),
('ScN38rdC6AKJtWQkvawzABqaYA2ZWzGb', '2023-12-19 14:43:31', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:43:31.869Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:43:31', '2023-12-18 14:43:31'),
('sgWrWTIlIrD58j9a4Tfv2UUl09XMVOoo', '2023-12-19 16:27:27', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:27:27.797Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:27:27', '2023-12-18 16:27:27'),
('SkzSXK_bSBeh0R7deuP6CtZAc7xPjfit', '2023-12-19 10:40:31', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:40:31.860Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:40:32', '2023-12-18 10:40:32'),
('sNRTS7wA3ealzRIgFa8lV_D0U65wwxoj', '2023-12-19 14:06:44', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:06:44.897Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:06:44', '2023-12-18 14:06:44'),
('SPoaY0kU3qnHVIgVPSxb9UIkTC7yrZxL', '2023-12-19 15:01:43', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:01:43.817Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:01:43', '2023-12-18 15:01:43'),
('sScj6erYtEgxO4mV1q_HIaE-xn5A5vLS', '2023-12-19 15:30:07', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:30:07.721Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:30:07', '2023-12-18 15:30:07'),
('SwZAba5PoS8q5SSJCh9wkn0hmvyY-un6', '2023-12-19 15:25:21', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:25:21.920Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:25:21', '2023-12-18 15:25:21'),
('T37awBsXS1hyumvB_0_pPtEXU9oG33Z-', '2023-12-19 15:58:46', '{\"cookie\":{\"originalMaxAge\":86399999,\"expires\":\"2023-12-19T15:58:46.094Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:58:46', '2023-12-18 15:58:46'),
('t3gd_nBaRMq12-WMh3Bwuio5Zppra3Bq', '2023-12-19 17:15:52', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T17:15:52.629Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 17:15:52', '2023-12-18 17:15:52'),
('TfefScuNjtCTnjqPZ2DbEWGAqkEVndPh', '2023-12-19 16:05:21', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:05:21.593Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:05:21', '2023-12-18 16:05:21'),
('tFKM6JfKH1UjuZgAFmi7ti-tyhRqv_di', '2023-12-19 16:32:42', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:32:42.679Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:32:42', '2023-12-18 16:32:42'),
('TIAiR6jl77r1Jz4pCDthLk24bG5J9aBQ', '2023-12-19 17:01:43', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T17:01:43.876Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 17:01:43', '2023-12-18 17:01:43'),
('TJPyCutMvBNowMH6NqPgSOfPZ_PWkOLZ', '2023-12-19 11:21:23', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:21:23.739Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:21:23', '2023-12-18 11:21:23'),
('tLccapz_eCfjZ-BhWqP2e8wDw-5Tk2su', '2023-12-19 12:59:05', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:59:05.892Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:59:05', '2023-12-18 12:59:05'),
('tNtI6b-oD-IG1E8vfWCjiBS3bQsKhSgI', '2023-12-19 16:24:45', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:24:45.499Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:24:45', '2023-12-18 16:24:45'),
('TpiZ788Xb9Mq6qhIC7-l2NfNRb0eoYNV', '2023-12-19 15:19:15', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:19:15.671Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:19:15', '2023-12-18 15:19:15'),
('trleh2WHxOcgqvjgMDKMu3_sark4txii', '2023-12-19 10:39:22', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:39:22.638Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:39:22', '2023-12-18 10:39:22'),
('Tt2iEvSkwVHn6xT9HYh7gXufdEzNGzDf', '2023-12-19 06:03:10', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T06:03:10.444Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 06:03:10', '2023-12-18 06:03:10'),
('TUmotSW8tpA1jlg3hZMLtP4F8iaNGa_s', '2023-12-19 16:15:16', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:15:16.043Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:15:16', '2023-12-18 16:15:16'),
('uA9IJTaswFAwdhUN3UPnCuhUTqWeBeHv', '2023-12-19 15:39:26', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:39:26.879Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:39:26', '2023-12-18 15:39:26'),
('UBdwngG2k7QQXLnwJMozPjmerv7wYdzJ', '2023-12-19 16:08:16', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:08:16.382Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:08:16', '2023-12-18 16:08:16'),
('Ufl-PtMwQeY8vFOigd_XCucrn68OaP2O', '2023-12-19 15:19:33', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:19:33.169Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:19:33', '2023-12-18 15:19:33'),
('uLtotOnGIN_is7jmsrsjDfLzYvrj3tge', '2023-12-19 20:25:54', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T20:25:54.713Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 20:25:54', '2023-12-18 20:25:54'),
('um4HzUBoHXOhPNI2chKVSWaiBBNbC_la', '2023-12-19 11:25:46', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:25:46.128Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:25:46', '2023-12-18 11:25:46'),
('uqbsNCQuVHLKchhhBJd3mbwFXa-uOQta', '2023-12-19 16:27:58', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:27:58.232Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:27:58', '2023-12-18 16:27:58'),
('UxtgEU1B1A9PLQPj9fy9iDS1Bn5elMGl', '2023-12-19 13:20:23', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T13:20:23.582Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 13:20:23', '2023-12-18 13:20:23'),
('uYm4ylsppXPB9CtCWqEqBqjOiYifbgEF', '2023-12-19 10:47:53', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:47:53.686Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:47:53', '2023-12-18 10:47:53'),
('v5iBQs3P2Wj2EOEmTJHDLrwuVAKIpKFL', '2023-12-19 15:15:53', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:15:53.383Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:15:53', '2023-12-18 15:15:53'),
('Va6X0fH3HRAIHMXHNi0KNToMgvKY9QVd', '2023-12-19 10:54:52', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:54:52.757Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:54:52', '2023-12-18 10:54:52'),
('vdMViqCOmyDUJHJDXGY-ZcoF4P3XwszH', '2023-12-19 15:00:04', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:00:04.029Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:00:04', '2023-12-18 15:00:04'),
('VFA2nCNwRvAZpVnVULYONhu-5aD3JPUu', '2023-12-19 16:05:57', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:05:57.257Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:05:57', '2023-12-18 16:05:57'),
('VlNT2BzB2y69fQBNWW8w2eUQPdtS6ZAV', '2023-12-19 12:49:37', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:49:37.915Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:49:37', '2023-12-18 12:49:37'),
('VmHxIpsoMcfZYW1pKbqQ4FMT90_8bl5i', '2023-12-19 12:00:26', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:00:26.516Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:00:26', '2023-12-18 12:00:26'),
('VMz5pw5W6bztjkpWQcBeCXeOek9HHdqG', '2023-12-20 05:10:01', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:43:00.894Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"},\"temporarySessionUUID\":\"c2c54112-40f4-4860-9b27-75803fafa3dd\"}', '2023-12-18 15:41:37', '2023-12-19 05:10:01'),
('VnG4ReoQZ96hCUosj44rM5cXK3QAfpq1', '2023-12-19 11:03:45', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:03:45.938Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:03:45', '2023-12-18 11:03:45'),
('VnjJ1PTtq_MC_bmVAmBEeXV-jUD1alA4', '2023-12-19 15:15:06', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:15:06.526Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:15:06', '2023-12-18 15:15:06'),
('vVAYE4bxjGvjTJKtCNPbbrAL3SeIh9jU', '2023-12-20 02:25:20', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-20T02:25:20.264Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-19 02:25:20', '2023-12-19 02:25:20'),
('VVPFfGAYAraFX-khDShHGDEY-zSe_qMq', '2023-12-19 15:49:55', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:49:55.017Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:49:55', '2023-12-18 15:49:55'),
('vxWH_ghSaU4uZ4bsafvERUMJQULWWKZW', '2023-12-19 16:08:13', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:08:13.930Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:08:13', '2023-12-18 16:08:13'),
('vYoY7uoNEhV8CBuu8KlRmdPcQ9jRP9I3', '2023-12-19 15:25:17', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:25:17.946Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:25:19', '2023-12-18 15:25:19'),
('VZx56Wnk8-eYrPngtH6spRi4BNVvcfg4', '2023-12-19 15:08:44', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:08:44.924Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:08:44', '2023-12-18 15:08:44'),
('w3vEpUlx9JVdzEJJgtZYOqQbY6T5ZFCX', '2023-12-19 17:11:15', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T17:11:15.438Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 17:11:15', '2023-12-18 17:11:15'),
('w8n5VwNR-Iv4SZpgLWrMSNXKYkdq885v', '2023-12-19 15:34:52', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:34:52.385Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:34:52', '2023-12-18 15:34:52'),
('WAgTjP51Vv7aqi0pagNYw64SJ6zPbtwX', '2023-12-19 15:18:26', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:18:26.169Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:18:26', '2023-12-18 15:18:26'),
('wFh2Ohps85XKhtmLkIs0z9ymS7UkRaC6', '2023-12-19 10:14:21', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:14:21.082Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:14:21', '2023-12-18 10:14:21'),
('wh4ou0xBpumpH6nj5Au23rdlATr6WUVG', '2023-12-19 10:43:25', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:43:25.445Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:43:25', '2023-12-18 10:43:25'),
('WhGWbQplYk-2XNNv6YNMFjoBWe8ojqqT', '2023-12-19 16:09:23', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:09:23.655Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:09:23', '2023-12-18 16:09:23'),
('WHUaHE4hKXQFIBJWLBL3tkg4fRsXi7jP', '2023-12-19 16:19:39', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:19:39.528Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:19:39', '2023-12-18 16:19:39'),
('wKnez4rDMwgVQTAI0k2zlswM7Den9oQC', '2023-12-19 16:29:33', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:29:33.399Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:29:33', '2023-12-18 16:29:33'),
('wLoVhuG_5BYYlyIfyd6U0rgN4_udbJpd', '2023-12-19 09:24:05', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T09:24:05.989Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 09:24:06', '2023-12-18 09:24:06'),
('wpQ_Fr5sA72Pwxd5SrKRyqqR8iiYOUUq', '2023-12-19 10:27:55', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:27:55.052Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:27:55', '2023-12-18 10:27:55'),
('x23krGcwZWZOvn8z2DLI94gKoXi8w_Kd', '2023-12-19 11:16:55', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:16:55.436Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:16:55', '2023-12-18 11:16:55'),
('X3nhjrX2xyOtQhL4Dcau1jEnAl7PJoYB', '2023-12-19 16:18:22', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:18:22.504Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:18:22', '2023-12-18 16:18:22'),
('x65_7kwP95K-4LPHukBe5FruD-ywlTWS', '2023-12-19 12:53:39', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:53:39.311Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:53:39', '2023-12-18 12:53:39'),
('xa65lG3EDGXboH06yHAiDkc0AL3NwtAt', '2023-12-19 09:24:14', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T09:24:14.133Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 09:24:14', '2023-12-18 09:24:14'),
('XfH3xUzPm-QWE1KqPQohrs1C5OJgzsh7', '2023-12-19 15:35:55', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:35:55.928Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:35:55', '2023-12-18 15:35:55'),
('xhv5TYVz3KcH6N3-rN5D5D4LyUTP3Y3m', '2023-12-19 10:42:44', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:42:44.916Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:42:44', '2023-12-18 10:42:44'),
('xKgL1oHgevPv6S4hnjMn1vwUI5-YQ8kx', '2023-12-19 15:41:36', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:41:36.139Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:41:36', '2023-12-18 15:41:36'),
('xLsWKE_bs7BTV9bvC5Gl0Z2A2_quG7ji', '2023-12-19 15:42:18', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:42:18.747Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:42:18', '2023-12-18 15:42:18'),
('XM5WaYI4AbShVyEZeiCHFYuT2APQ362d', '2023-12-19 14:32:06', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:32:06.461Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:32:06', '2023-12-18 14:32:06'),
('xTemgHr13kfO6iaRrE-Z6LvHTG6JBnxy', '2023-12-20 02:50:36', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-20T02:49:54.043Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-19 02:49:54', '2023-12-19 02:50:36'),
('xVbdZHmTAfprrV3PRy21usnysL5XDDLG', '2023-12-19 07:36:50', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T07:36:50.519Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 07:36:50', '2023-12-18 07:36:50'),
('XVhR-i8s8E0Qo6xAQ6aXmy_4oY9g07O0', '2023-12-19 14:40:52', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:40:52.061Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:40:52', '2023-12-18 14:40:52'),
('xX4pfFhRiBvypi-T-JCPAZwFyX1usfMA', '2023-12-19 16:35:12', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:35:12.456Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:35:12', '2023-12-18 16:35:12'),
('XXrO9QQML_l7TUMj_rzOEpBuLGkP7SMm', '2023-12-19 14:44:57', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-18T15:03:54.143Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"},\"temporarySessionUUID\":\"6a641be0-ecfa-4f74-9199-6e72ce191f3f\"}', '2023-12-17 14:17:54', '2023-12-18 14:44:57'),
('Y4CzqhXbMA7irXggaPPN1qv0cTtXo9yY', '2023-12-19 10:42:55', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:42:55.260Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:42:55', '2023-12-18 10:42:55'),
('YMTWAS6C6l-9JtVxmP7fu2kEGKKNW-_z', '2023-12-19 09:23:59', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T09:23:59.284Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 09:23:59', '2023-12-18 09:23:59'),
('yrf0wL9dd3VEa3g4kH3Id4QoZDNO3QTP', '2023-12-20 02:32:24', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-20T02:32:24.740Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-19 02:32:24', '2023-12-19 02:32:24'),
('YtHjJooG7sqqKOpHKXhSyf68E_1A1jaL', '2023-12-19 11:04:39', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:04:39.012Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:04:39', '2023-12-18 11:04:39'),
('Yvce3YtgXibFRnGhTiiMWVt0yu3-nSrO', '2023-12-20 02:32:36', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-20T02:32:36.164Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-19 02:32:36', '2023-12-19 02:32:36'),
('YYxa9AgOYD2NSkEzHUUgLbdtkIOn9U2M', '2023-12-19 06:09:20', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-18T07:21:02.435Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"},\"temporarySessionUUID\":\"3bf2f548-8b94-459f-b4ab-42439d52c3ee\"}', '2023-12-17 07:20:51', '2023-12-18 06:09:20'),
('Z2wIZOwOBZ-iUWRTcBU7XuyoO5QyI0Jx', '2023-12-19 14:42:22', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:42:22.092Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:42:22', '2023-12-18 14:42:22'),
('Z6_lQ1qIvwbuRLqMHC5nNxs1QqOvSox0', '2023-12-19 17:11:17', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T17:11:17.707Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 17:11:17', '2023-12-18 17:11:17'),
('Z7H1PJkchT7BPf4NXELAMBtsPp8C3JMi', '2023-12-19 15:19:03', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:19:03.772Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:19:03', '2023-12-18 15:19:03'),
('ZAI4VdfA-wmm-erOsPzPJeA6nZkJjMFm', '2023-12-19 15:25:34', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:25:34.853Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:25:34', '2023-12-18 15:25:34'),
('zbGOgmnZUp2zykYNCljGw55eVtr3mbbN', '2023-12-19 16:07:44', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:07:15.792Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"},\"temporarySessionUUID\":\"e50fdf1c-7df5-4e90-8719-14cd6bdcae6b\"}', '2023-12-18 16:06:59', '2023-12-18 16:07:44'),
('ZI1S1wfc6Y1VDdo0qfB4WHBDLRAu3qt0', '2023-12-19 11:25:59', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T11:25:59.307Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 11:25:59', '2023-12-18 11:25:59'),
('zl7UV1NR93aYAgjSNqqxXjcnR48YNOYP', '2023-12-19 10:51:10', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T10:51:10.889Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 10:51:10', '2023-12-18 10:51:10'),
('zLpJbMD3sPW-NQGhVn059KHhhXzuuam7', '2023-12-19 16:51:36', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T16:51:36.217Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 16:51:36', '2023-12-18 16:51:36'),
('zYB0wo12Er_HtISDK92pJS87DN5cx66q', '2023-12-19 08:20:00', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T08:20:00.073Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 08:20:00', '2023-12-18 08:20:00'),
('zYBXkdwwWneM5Z7oUPxHo3F1l4Hyl5bF', '2023-12-19 15:16:04', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:16:04.626Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:16:04', '2023-12-18 15:16:04'),
('_7470HftIxcvfaADmJC-73wng1WRmsRU', '2023-12-19 12:58:57', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T12:58:57.730Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 12:58:57', '2023-12-18 12:58:57'),
('_QL7X638QKk8zHySG2g3tpXgeTVzSD7k', '2023-12-19 14:26:28', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T14:26:28.364Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 14:26:28', '2023-12-18 14:26:28'),
('_VuUTbqmqGrn3Xg9JvNvdrfZs1pFY8QP', '2023-12-19 15:32:24', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-12-19T15:32:24.193Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"None\"}}', '2023-12-18 15:32:24', '2023-12-18 15:32:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT 'guest',
  `uuid` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `cardId` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `profileName` varchar(255) DEFAULT 'unsetProfile.png',
  `profileURL` varchar(255) DEFAULT 'https://api.hairhub.id/profiles/unsetProfile.png',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role`, `uuid`, `email`, `password`, `username`, `cardId`, `address`, `phone`, `gender`, `profileName`, `profileURL`, `createdAt`, `updatedAt`) VALUES
(1, 'Admin', 'bf31dce1-e2dc-4cc0-be9a-77cb044a3ddf', 'admin@mail.com', '$argon2id$v=19$m=65536,t=3,p=4$Jea2ElJtNGzvIpbbKB5SCw$8Fb+xNwyJp4ZH0UfBhWeXSXGcDEf5/n+tRjt+/oCkJ0', 'admin', NULL, NULL, NULL, NULL, 'unsetProfile.png', 'https://api.hairhub.id/profiles/unsetProfile.png', '2023-12-17 06:57:28', '2023-12-17 06:57:28'),
(2, 'Admin', 'e50fdf1c-7df5-4e90-8719-14cd6bdcae6b', 'admin@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$oFWuothwEj66RlDZkV0jxA$mniLXyfhZY1OpGOnfTbFslNSrJwaikY8d8hPWJ57XiE', 'admin', NULL, NULL, NULL, NULL, 'unsetProfile.png', 'https://api.hairhub.id/profiles/unsetProfile.png', '2023-12-17 06:58:06', '2023-12-17 06:58:06'),
(3, 'Superuser', 'a415134f-719d-447e-b16f-12050fb8cbf8', 'raizel@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$NTDkvugF0PvoYxIW3VAuOg$aYw+E20eHG+LO5ERQ/l6C4LYc0Ab63uIWxv2LNVbjvM', 'raizel', NULL, '[null,null,null,null,null]', NULL, NULL, '1702799799767.png', 'https://api.hairhub.id/profiles/1702799799767.png', '2023-12-17 07:03:18', '2023-12-17 08:16:35'),
(4, 'Superuser', '3bf2f548-8b94-459f-b4ab-42439d52c3ee', 'ilham@mail.com', '$argon2id$v=19$m=65536,t=3,p=4$naEbZOExHaVMlBhZQJNRwA$oy2boEhzk1gGNz7yAB9+UtNIjeQA0+NNXZkJ1AHflZg', 'alkahfiardy', NULL, '[\"JAWA TIMUR\",\"KOTA MALANG\",\"Kedungkandang\",\"Sawojajar\",null]', '08983474756', 'man', '1702799911352.png', 'https://api.hairhub.id/profiles/1702799911352.png', '2023-12-17 07:03:52', '2023-12-17 07:58:31'),
(5, 'Superuser', '3822fa6a-1a0c-43a4-803e-fd75a8b543cf', 'danang050402@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$mZYwKDCifsN068RTDNvZ1Q$Kx0VCjMkGsmYddDwaurPSculY6Po9MBAboKlO/cMk9s', 'danangr', NULL, '[\"JAWA TENGAH\",\"KAB. SRAGEN\",\"Plupuh\",\"Dari\",null]', '089503773770', NULL, 'fbc3f235-2f52-48ce-918b-e37c57ef22ad-1702901620956.png', 'https://api.hairhub.id/profiles/fbc3f235-2f52-48ce-918b-e37c57ef22ad-1702901620956.png', '2023-12-17 07:08:45', '2023-12-18 12:13:40'),
(6, 'Superuser', '65e3380d-a97a-4ea4-8183-a5e5f2b5657e', 'syitayaraioni@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$nFAEfeZ8Z2OdJTXQ3FSm0w$S8u8qncjym5HpIZJw/Svbt+5ljoqCKiUNQMoEG9rUiA', 'Syita', NULL, '[\"SUMATERA UTARA\",\"KOTA MEDAN\",\"Medan Deli\",\"Tanjung Mulya\",null]', '081213792551', 'woman', '1702823907533.png', 'https://api.hairhub.id/profiles/1702823907533.png', '2023-12-17 14:16:02', '2023-12-18 10:14:21'),
(7, 'Superuser', 'e8048180-0839-4599-9e32-3d5be561265c', 'itsme123@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$UejWK04zMgTlwtejwhS9eg$2YXwv/sjYrNnxSWsoz+uSFGknZviJxRq44H4yKDaakg', 'Ismi', NULL, '[\"DKI JAKARTA\",\"KOTA ADM. JAKARTA TIMUR\",\"Matraman\",\"Pisangan Baru\",null]', '085303371342', 'woman', '1702858935315.png', 'https://api.hairhub.id/profiles/1702858935315.png', '2023-12-17 14:39:02', '2023-12-18 01:40:03'),
(8, 'Superuser', '6a641be0-ecfa-4f74-9199-6e72ce191f3f', 'ariskaika99.yo@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$Wbj26VlXr3TDagVsT7PKBw$eSzhONWSxApNRSsLXxgNJbRud9Yz8GfdLgCI31hCStE', 'Ariska Dwi ', NULL, '[\"JAWA BARAT\",\"KOTA BOGOR\",\"Bogor Timur\",\"Sukasari\",null]', '083184957178', 'woman', '1702825727570.png', 'https://api.hairhub.id/profiles/1702825727570.png', '2023-12-17 14:46:26', '2023-12-17 17:08:17'),
(9, 'Superuser', 'bb12c7d8-2c2b-4062-86bf-073153ac0a70', 'ariska99.yo@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$k5aPQ0eBuSuRzY0vWj/AHQ$Tha1BN3Btq2Fr4/kmQ8IfqJQgKghLETLlBmCjCG+VM0', 'Ariska Dwi A', NULL, NULL, NULL, NULL, 'unsetProfile.png', 'https://api.hairhub.id/profiles/unsetProfile.png', '2023-12-17 14:58:08', '2023-12-17 14:58:08'),
(10, 'Superuser', 'da58d708-8e8e-4154-8c6c-4f1b1011cdca', 'ptiraaaa.01@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$jP9BOk+Svv/YDWGmlNrGHQ$hpkQCXA/V3YjpLnePSaPh9xgJMoYwDPb+0ksh/Y5NWQ', 'Putu', NULL, '[\"JAWA BARAT\",\"KAB. BEKASI\",\"Tambun Utara\",\"Sriamur\",\"02/03\"]', '0812345678', 'male', 'd6c0ab6f-496a-437c-b919-04aa5c9d9ec3-1702904019651.png', 'https://api.hairhub.id/profiles/d6c0ab6f-496a-437c-b919-04aa5c9d9ec3-1702904019651.png', '2023-12-18 12:51:29', '2023-12-18 15:00:04'),
(11, 'Superuser', '60ae00fb-a575-4617-be30-0c386f85893e', 'vivi@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$jw4Ond9TiBjPCfpdBoUw2w$U60VgjfPMO0g2NBNCDIN1dmulYSbJuDczkUfNClKrQI', 'Viora Laurent', NULL, '[\"DKI JAKARTA\",\"KOTA ADM. JAKARTA PUSAT\",\"Kemayoran\",\"Harapan Mulia\",\"07/01\"]', '0812345678', 'female', '86e77804-078b-48d3-aaac-71a021496837-1702909895608.png', 'https://api.hairhub.id/profiles/86e77804-078b-48d3-aaac-71a021496837-1702909895608.png', '2023-12-18 14:29:26', '2023-12-18 14:35:40'),
(12, 'user', 'b57593c3-f8d8-4116-bf91-1150dff681a1', 'abdi@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$1jbSB4LFxC+NZBhy3UsvAg$CDdqQ7JSPL2pVkRtQm6LnbxfM5CGmZktsh1cpIpAT+8', 'Abdi Kurniawan', NULL, '[null,null,null,null,null]', NULL, NULL, '72600eb3-3355-497d-b4dd-aabacd5d2020-1702912416491.png', 'https://api.hairhub.id/profiles/72600eb3-3355-497d-b4dd-aabacd5d2020-1702912416491.png', '2023-12-18 15:04:01', '2023-12-18 15:13:36'),
(13, 'user', 'd8da98f3-a524-4724-9ae8-0ff37773b1bb', 'jhonatan@mail.com', '$argon2id$v=19$m=65536,t=3,p=4$SOmoX6yBohJOxTS7JMNbDQ$TXA0GIOuVqPzZqRKOekZYwwpBTtryaGu2CWtgDuWG6g', 'jhonatan7', NULL, '[null,null,null,null,null]', NULL, 'man', '732c6f36-116f-4279-bfcb-fae2e6b929df-1702913261388.png', 'https://api.hairhub.id/profiles/732c6f36-116f-4279-bfcb-fae2e6b929df-1702913261388.png', '2023-12-18 15:09:50', '2023-12-18 15:27:41'),
(14, 'user', 'e7987abd-80e4-4090-b6e2-006a47674070', 'una@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$YBfXhN4xVmxxrgZcgHCySQ$jnZo47til0aNmcHZpmoGSUbEGQd+qkIbDGi5FEeIeY8', 'Una', NULL, '[\"DKI JAKARTA\",\"KOTA ADM. JAKARTA UTARA\",\"Kelapa Gading\",\"Kelapa Gading Timur\",null]', '83412345674', 'woman', '67a1d9eb-ba8a-4d61-b27f-f98874a45708-1702912553686.png', 'https://api.hairhub.id/profiles/67a1d9eb-ba8a-4d61-b27f-f98874a45708-1702912553686.png', '2023-12-18 15:14:39', '2023-12-18 15:15:53'),
(15, 'user', '69fa618f-be8e-4e11-8e05-515c66154691', 'ethaniel@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$U/IUK46d9z8uAkOjlghLcA$M1JW3m3VPrzld+wICnzaTWelqw3yLeOq98uguzhTyfs', 'Ethaniel', NULL, '[\"DKI JAKARTA\",\"KOTA ADM. JAKARTA SELATAN\",\"Tebet\",\"Tebet Timur\",null]', '081198765432', 'man', 'f359c077-d80a-4e5d-94a0-074ec88b4014-1702912699772.png', 'https://api.hairhub.id/profiles/f359c077-d80a-4e5d-94a0-074ec88b4014-1702912699772.png', '2023-12-18 15:16:30', '2023-12-18 15:18:19'),
(16, 'user', '8dce9495-cfe9-4ffe-972f-cdf1b5159aea', 'adzra@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$mVfVLEEr0eH2ZSWPhjEbjQ$84igQxWjCUDbhkABCeA1ZFvSdC80XCVU6p+icY+X10s', 'Adzra Haura', NULL, '[null,null,null,null,null]', NULL, 'woman', '47c00022-fb13-45fb-a570-ed2edc726033-1702912919451.png', 'https://api.hairhub.id/profiles/47c00022-fb13-45fb-a570-ed2edc726033-1702912919451.png', '2023-12-18 15:19:15', '2023-12-18 15:21:59'),
(17, 'user', 'd6b3adcc-9b62-4859-8df2-8cdd1cd929c0', 'anton@mail.com', '$argon2id$v=19$m=65536,t=3,p=4$x8u6M71hRvUK3fPsNl2JLQ$PST8QHaYdtwNe9iG7YmLrnDIAqppvmpdBCJ9qvBoFlg', 'Anton Siganteng', NULL, '[null,null,null,null,null]', NULL, NULL, '05f32233-c137-412c-aebc-d8f2540eafee-1702913756371.png', 'https://api.hairhub.id/profiles/05f32233-c137-412c-aebc-d8f2540eafee-1702913756371.png', '2023-12-18 15:33:27', '2023-12-18 15:35:56'),
(18, 'user', '65a98725-94db-47aa-a52f-f0d9909a2a32', 'valerie@mail.com', '$argon2id$v=19$m=65536,t=3,p=4$Wg0wYjq6PmcnJVisGMMjKQ$RRMcE27KXitRjQGZ71BTVe3Wvx3YxHXTh4SKN2Ahfns', 'Valerie', NULL, '[null,null,null,null,null]', NULL, 'man', '96afadb5-a5c9-4685-b670-06521e9051cb-1702913755146.png', 'https://api.hairhub.id/profiles/96afadb5-a5c9-4685-b670-06521e9051cb-1702913755146.png', '2023-12-18 15:35:03', '2023-12-18 15:35:55'),
(19, 'user', '872594d3-af5a-4fa8-aa0d-f99cd65031c6', 'vaneshaclara20@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$p/W14trQGl7zYamMgrlPpA$1B6omo9n01C59ukrQhHzE7YzNyWfqcyw8xQ6GdRSNe0', 'Nesha', NULL, '[null,null,null,null,null]', NULL, 'woman', 'unsetProfile.png', 'https://api.hairhub.id/profiles/unsetProfile.png', '2023-12-18 15:42:18', '2023-12-18 15:48:14'),
(20, 'user', 'c2c54112-40f4-4860-9b27-75803fafa3dd', 'elaina@mail.com', '$argon2id$v=19$m=65536,t=3,p=4$hFs/a1eXy3mjsS6Ken03GA$u5Vqwy6m/DpvynKYaLxUd/fWDLID74oBHayuBVfOGaw', 'Elaina-Chan', NULL, '[null,null,null,null,null]', NULL, NULL, '92f978c2-e410-4651-a8fe-6e3aa15e4c8c-1702914292798.png', 'https://api.hairhub.id/profiles/92f978c2-e410-4651-a8fe-6e3aa15e4c8c-1702914292798.png', '2023-12-18 15:42:45', '2023-12-18 15:45:03'),
(21, 'user', '368b9a0f-1803-4003-90b4-d1c72d0a943c', 'sandidian221@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$HVMJ20B/pdAwAObJBYOtCA$IwqdRXlANBxyOyvZNloM3sn78Acq4Ix0QopX36YsgOg', 'Dera', NULL, '[null,null,null,null,null]', NULL, NULL, 'unsetProfile.png', 'https://api.hairhub.id/profiles/unsetProfile.png', '2023-12-18 16:01:41', '2023-12-18 16:08:05'),
(22, 'user', '3b6785dc-2b44-41ac-a118-869b2ef3b511', 'ismail12@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$23DGMCrUuyG4+wWBgBXcbA$jm9bUsKgk+jaG42tetLqTKzri9ekisRRh7mCZa1SczY', 'Muhammad Ismail', NULL, '[\"DKI JAKARTA\",\"KAB. ADM. KEP. SERIBU\",\"Kepulauan Seribu Utara\",\"Pulau Panggang\",null]', '85418421232', 'man', '7d30bc36-7168-4e72-ad86-0eb3dca0342c-1702916863450.png', 'https://api.hairhub.id/profiles/7d30bc36-7168-4e72-ad86-0eb3dca0342c-1702916863450.png', '2023-12-18 16:06:47', '2023-12-18 16:27:43'),
(23, 'user', '21d146a0-e07b-46ca-bdd8-86c4e7aa7384', 'jungkook01@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$qZvBlte384CWorzjO33/5g$fXaCCHz4HFa2U+mWHdU65cd3STRy3Qx05IvZ6JpizvI', 'My Kookie ', NULL, '[null,null,null,null,null]', NULL, 'man', '8c65458d-d666-429c-b4f6-e446ed597c24-1702915870910.png', 'https://api.hairhub.id/profiles/8c65458d-d666-429c-b4f6-e446ed597c24-1702915870910.png', '2023-12-18 16:09:27', '2023-12-18 16:11:10'),
(24, 'user', 'dbf2de45-9113-46de-8555-731cfe34486c', 'khoiriminqolby@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$UinHxccqiKBukWxCCpdJng$o4e5aq7p51VOl5/WnLgjpY49IVg1yP108YPrTsxUWb0', 'khoiri', NULL, '[\"DKI JAKARTA\",\"KOTA ADM. JAKARTA PUSAT\",\"Kemayoran\",\"Harapan Mulia\",null]', '082299351225', 'woman', 'c8220867-b5d3-4293-b302-de8f5af90d29-1702917019807.png', 'https://api.hairhub.id/profiles/c8220867-b5d3-4293-b302-de8f5af90d29-1702917019807.png', '2023-12-18 16:11:30', '2023-12-18 16:30:19'),
(25, 'user', 'a167a0e0-1e32-496d-8684-66e1dc27da48', 'Lisa01@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$8PEFLfTD5Dmhqh3SaHLoqA$G+0n1aNrIbwV5EQD2LCpKIxUduTQP7wEFyyzmjUh4j0', 'Lalisa Loli', NULL, '[null,null,null,null,null]', NULL, 'woman', 'f65cf124-4c0d-4daf-a5e2-3de078c60378-1702916423474.png', 'https://api.hairhub.id/profiles/f65cf124-4c0d-4daf-a5e2-3de078c60378-1702916423474.png', '2023-12-18 16:19:18', '2023-12-18 16:20:23'),
(26, 'user', '4b52f233-ae4d-4dbf-9102-e17ba5c85620', 'zulfani12@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$AdGspY67OxegW6+L854IYw$TqUVAWL9PIMIK0YoEnIYEwF95ZaOWNbTXJ5rn+Bx2F4', 'Desti Zulfani', NULL, '[\"DKI JAKARTA\",\"KOTA ADM. JAKARTA PUSAT\",\"Kemayoran\",\"Kemayoran\",null]', '087754078131', 'woman', '36ad3588-54f4-4d0f-961a-a0757dcbf72e-1702917162879.png', 'https://api.hairhub.id/profiles/36ad3588-54f4-4d0f-961a-a0757dcbf72e-1702917162879.png', '2023-12-18 16:31:10', '2023-12-18 16:32:42'),
(27, 'user', '161661f8-5768-4390-bc7d-b2203c00262e', 'dylanadyaksa@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$KzE8xeNHb0BLA2PzSupdgQ$8rIHyPd5F9Y2wmj7byEPX0x0XNlP1uthMAaDvtKmey0', 'Dylan', NULL, '[\"JAWA BARAT\",\"KAB. BANDUNG\",\"Pasirjambu\",\"Mekarsari\",null]', '081345412321', 'man', '03820462-2bdc-4a58-960b-021602ad5bb2-1702919055182.png', 'https://api.hairhub.id/profiles/03820462-2bdc-4a58-960b-021602ad5bb2-1702919055182.png', '2023-12-18 17:01:07', '2023-12-18 17:04:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `workers`
--

CREATE TABLE `workers` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `skill` varchar(255) DEFAULT NULL,
  `imageName` varchar(255) DEFAULT NULL,
  `imageURL` varchar(255) DEFAULT NULL,
  `businessId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `workers`
--

INSERT INTO `workers` (`id`, `uuid`, `name`, `description`, `skill`, `imageName`, `imageURL`, `businessId`, `createdAt`, `updatedAt`) VALUES
(1, 'b2867e7a-a1d0-4876-a741-efb4c60fa773', 'Ja\'far Shodiq Asmali', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Haircut', '1702798970953.png', 'https://api.hairhub.id/profileWorkers/1702798970953.png', 2, '2023-12-17 07:42:50', '2023-12-17 07:42:50'),
(2, 'f8cd3ea0-0e52-4d1f-8c86-711c35a01e4a', 'Ja\'far Shodiq Asmali', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Haircut', '1702799693339.png', 'https://api.hairhub.id/profileWorkers/1702799693339.png', 4, '2023-12-17 07:54:53', '2023-12-17 07:54:53'),
(3, '84986712-c215-4163-9eca-86c567b04587', 'Kak Asmali', 'Selamat datang di \"Elegance Beauty Studio\"! Kami adalah destinasi kecantikan yang menyediakan layanan unggulan untuk merayakan keindahan setiap pelanggan. Di Elegance, kami memahami bahwa kecantikan adalah manifestasi dari rasa percaya diri, dan kami berkomitmen untuk meningkatkan kepercayaan diri Anda melalui layanan berkualitas tinggi.\r\n\r\nTim profesional kami terdiri dari ahli kecantikan berpengalaman yang siap memberikan layanan yang dipersonalisasi sesuai dengan kebutuhan dan keinginan Anda. Mulai dari perawatan rambut, perawatan wajah, hingga manikur dan pedikur, kami menawarkan rangkaian layanan yang komprehensif untuk memenuhi semua kebutuhan kecantikan Anda.\r\n\r\n\"Elegance Beauty Studio\" bukan hanya tempat untuk merayakan kecantikan fisik, tetapi juga untuk bersantai dan meresapi pengalaman spa yang menyegarkan. Suasana santai dan mewah di dalam salon kami menciptakan lingkungan yang cocok untuk melarikan diri sejenak dari kehidupan sehari-hari yang sibuk.\r\n\r\nKami memahami bahwa setiap pelanggan memiliki keunikan mereka sendiri, dan itulah mengapa kami mengutamakan konsultasi pribadi untuk memastikan bahwa setiap layanan yang kami berikan sesuai dengan preferensi dan kebutuhan individual Anda.\r\n\r\nJadi, mari bergabung dengan kami di \"Elegance Beauty Studio\" dan berikan diri Anda momen kecantikan yang tak terlupakan!', 'Haircut, Creambath ', '1702800678733.png', 'https://api.hairhub.id/profileWorkers/1702800678733.png', 1, '2023-12-17 08:11:18', '2023-12-17 08:11:18'),
(4, 'c2533946-904f-4c17-ad1a-08b9a4d68538', 'Kak Alkahfiardy', 'Selamat datang di \"Elegance Beauty Studio\"! Kami adalah destinasi kecantikan yang menyediakan layanan unggulan untuk merayakan keindahan setiap pelanggan. Di Elegance, kami memahami bahwa kecantikan adalah manifestasi dari rasa percaya diri, dan kami berkomitmen untuk meningkatkan kepercayaan diri Anda melalui layanan berkualitas tinggi.\r\n\r\nTim profesional kami terdiri dari ahli kecantikan berpengalaman yang siap memberikan layanan yang dipersonalisasi sesuai dengan kebutuhan dan keinginan Anda. Mulai dari perawatan rambut, perawatan wajah, hingga manikur dan pedikur, kami menawarkan rangkaian layanan yang komprehensif untuk memenuhi semua kebutuhan kecantikan Anda.\r\n\r\n\"Elegance Beauty Studio\" bukan hanya tempat untuk merayakan kecantikan fisik, tetapi juga untuk bersantai dan meresapi pengalaman spa yang menyegarkan. Suasana santai dan mewah di dalam salon kami menciptakan lingkungan yang cocok untuk melarikan diri sejenak dari kehidupan sehari-hari yang sibuk.\r\n\r\nKami memahami bahwa setiap pelanggan memiliki keunikan mereka sendiri, dan itulah mengapa kami mengutamakan konsultasi pribadi untuk memastikan bahwa setiap layanan yang kami berikan sesuai dengan preferensi dan kebutuhan individual Anda.\r\n\r\nJadi, mari bergabung dengan kami di \"Elegance Beauty Studio\" dan berikan diri Anda momen kecantikan yang tak terlupakan!', 'Hair Spa, Nail Art', '1702800881516.png', 'https://api.hairhub.id/profileWorkers/1702800881516.png', 1, '2023-12-17 08:14:41', '2023-12-17 08:14:41'),
(5, '7321b049-ddf2-4e35-8d3e-8af72141a587', 'Ja\'far Shodiq Asmali', 'lorem ipmusum', 'Haircut', '1702823094319.png', 'https://api.hairhub.id/profileWorkers/1702823094319.png', 8, '2023-12-17 14:24:54', '2023-12-17 14:24:54'),
(6, 'ad8ffca9-9b1b-43a9-9e28-cecf6d99d584', 'Ilham Soejud Alkahfiardy', '', 'Sytling', '1702823166722.png', 'https://api.hairhub.id/profileWorkers/1702823166722.png', 8, '2023-12-17 14:26:06', '2023-12-17 14:26:06'),
(7, '260838a1-9fab-4b52-b964-9d072d1e0de5', 'Ariska Dwi Ambarwati', 'MachoMane Barbershop menawarkan layanan pewarnaan rambut yang dapat menyesuaikan warna sesuai gaya dan kepribadian Anda. Kami menggunakan produk pewarna berkualitas tinggi untuk hasil yang tahan lama dan berkilau.', 'Coloring', '1702830923971.png', 'https://api.hairhub.id/profileWorkers/1702830923971.png', 9, '2023-12-17 16:35:23', '2023-12-17 16:35:23'),
(8, '211da44d-f55c-4cbc-a921-a4338e4a464c', 'Jafar Shodiq Asmali', '', 'Styling', '1702831449883.png', 'https://api.hairhub.id/profileWorkers/1702831449883.png', 9, '2023-12-17 16:44:09', '2023-12-17 16:44:09'),
(9, '96340cb9-040d-4892-9547-8fb4f914c941', 'Ilham Soejud Alkahfiardy', '', 'Haircut', '1702831492631.png', 'https://api.hairhub.id/profileWorkers/1702831492631.png', 9, '2023-12-17 16:44:52', '2023-12-17 16:44:52'),
(10, '151b486e-20d7-473b-8d6b-d9aef5190b29', 'Jafar Shodiq Asmali', '', 'Coloring', '1702834135884.png', 'https://api.hairhub.id/profileWorkers/1702834135884.png', 10, '2023-12-17 17:28:55', '2023-12-17 17:28:55'),
(11, '7f9dfd9f-69ba-4b09-95f7-b70e01b834b1', 'Ilham Soejud Alkahfiardy', '', 'Creambath + Smoothing', '1702834215122.png', 'https://api.hairhub.id/profileWorkers/1702834215122.png', 10, '2023-12-17 17:30:15', '2023-12-17 17:30:15'),
(12, '9573fd6d-23a8-413c-b059-4163006a036c', 'Ja\'far Shodiq Asmali', 'Ahli dalam segala aspek styling, potongan rambut, dan pewarnaan. Dengan keahlian mendalam dalam penataan rambut, mampu menciptakan tampilan yang sesuai dengan gaya dan keinginan setiap pelanggan. Dalam seni potong rambut, tidak hanya mengikuti tren terbaru, tetapi juga memadukan kreativitas dengan keahlian teknis untuk memberikan potongan rambut yang sesuai dengan bentuk wajah dan gaya hidup. dan keahlian mendalam pada pewarnaan rambut yang trend dan sesuai dengan keinginan.', 'Haircut, Stylling, Coloring', '1702862908110.png', 'https://api.hairhub.id/profileWorkers/1702862908110.png', 11, '2023-12-18 01:28:28', '2023-12-18 01:28:28'),
(13, 'e7c73189-a4a0-4981-814e-ae5851d0e0c2', 'Ilham Soejud Alkahfiardy', 'Memiliki keahlian luar biasa dalam layanan perm dan shave. Dalam layanan perm, menciptakan gelombang atau keriting yang indah, menyesuaikan teknik dengan tekstur rambut dan gaya yang diinginkan oleh pelanggan. Di sisi lain, dalam layanan shave, kami memberikan pengalaman cukur yang akurat dan nyaman dengan penggunaan pisau cukur tradisional atau peralatan modern, mengikuti garis wajah dengan presisi. ', 'perm, shave', '1702863102038.png', 'https://api.hairhub.id/profileWorkers/1702863102038.png', 11, '2023-12-18 01:31:42', '2023-12-18 01:31:42'),
(14, 'd0fd44ea-0a4e-48c3-aac9-5950627a47f8', 'Syita Ya Raioni', 'Memiliki keahlian tinggi dalam layanan smoothing dan coloring. Dalam smoothing, sangat mahir mengaplikasikan teknik pengeritingan yang menghasilkan tatanan rambut yang halus, lembut, dan bebas kusut. Dalam layanan coloring, kami juga memiliki pemahaman mendalam tentang kombinasi warna dan teknik pewarnaan terkini, menciptakan hasil yang memukau dan sesuai dengan keinginan setiap pelanggan. Dengan fokus pada inovasi dan kualitas, kami memberikan pengalaman kecantikan yang elegan dan memuaskan.', 'coloring, smoothing', '1702865701308.png', 'https://api.hairhub.id/profileWorkers/1702865701308.png', 12, '2023-12-18 02:15:01', '2023-12-18 02:15:01'),
(15, 'dcb70fcf-4558-42a3-9be7-05ddc131c02d', 'Ni Putu Tiara', 'Dapatkan penampilan yang segar dan berani dengan gaya rambut Pixie Modern kami. Pemotongan ini menampilkan lapisan-lapisan halus yang memberikan tekstur dan dimensi pada setiap helai rambut. Dengan panjang yang singkat namun tetap feminin, gaya Pixie Modern memberikan tampilan yang ringan dan mudah diatur. Cocok untuk mereka yang ingin tampil stylish tanpa harus repot dengan perawatan yang rumit.', 'Haircut', '1702895558332.png', 'https://api.hairhub.id/profileWorkers/1702895558332.png', 13, '2023-12-18 10:32:38', '2023-12-18 10:32:38'),
(16, 'f0bf137a-8f81-44e8-81b5-ccff1dc84cf7', 'Ariska Dwi Ambarwati', '', 'Smoothing', '1702895669460.png', 'https://api.hairhub.id/profileWorkers/1702895669460.png', 13, '2023-12-18 10:34:29', '2023-12-18 10:34:29'),
(17, '7cc0dd5d-640b-448a-a0c5-f25e5611cd8b', 'Ismi Anifah', 'Nikmati momen relaksasi penuh dengan Pedicure Serenity Retreat kami. Langkah pertama menuju kaki sehat dan indah dimulai dengan perendaman lembut yang menyegarkan, diikuti dengan perawatan kuku profesional untuk memastikan kesehatan dan keindahan kuku Anda. Kami mengakhiri pengalaman ini dengan pijatan kaki yang menyegarkan untuk meningkatkan sirkulasi darah dan memberikan rasa nyaman.', 'pedicure menicure', '1702895756561.png', 'https://api.hairhub.id/profileWorkers/1702895756561.png', 13, '2023-12-18 10:35:56', '2023-12-18 10:35:56'),
(18, '1c6df406-9139-4da4-807b-8b06a5a45629', 'Ilham Soejud Alkahfiardy', 'lorem', 'Coloring', '0b0e5a8e-5894-435c-b0c1-5ac4db11612d-1702903025756.png', 'https://api.hairhub.id/profileWorkers/0b0e5a8e-5894-435c-b0c1-5ac4db11612d-1702903025756.png', 2, '2023-12-18 12:37:05', '2023-12-18 12:37:05'),
(19, '93d1f51b-4697-473d-b244-8fb26e13fd78', 'Ariska Dwi Ambarwati', 'Lorem', 'Creambacth, Smooting', 'b282ac70-4b68-4f99-82e7-d44bb3ddf308-1702903081633.png', 'https://api.hairhub.id/profileWorkers/b282ac70-4b68-4f99-82e7-d44bb3ddf308-1702903081633.png', 2, '2023-12-18 12:38:01', '2023-12-18 12:38:01'),
(20, '76f688d9-e04c-4d3d-ba99-d6a7d6fdf0d7', 'Ismi Anifah', 'Lorem ', 'Hair Spa', '10cbdff1-b561-4f60-8207-745a4cfa58a2-1702903133709.png', 'https://api.hairhub.id/profileWorkers/10cbdff1-b561-4f60-8207-745a4cfa58a2-1702903133709.png', 2, '2023-12-18 12:38:53', '2023-12-18 12:38:53'),
(21, 'f94e0c30-1026-4bb9-8fae-67575157d20d', 'Syita Ya Raioni', 'Lorem', 'Creambath, Menicure', 'f0607182-e3cb-4dcd-94a2-9d0bf9657dcc-1702903182972.png', 'https://api.hairhub.id/profileWorkers/f0607182-e3cb-4dcd-94a2-9d0bf9657dcc-1702903182972.png', 2, '2023-12-18 12:39:42', '2023-12-18 12:39:42'),
(22, 'd95df373-8698-4b24-9c1b-2ed93f98b210', 'Ni Putu Tiara Prezilia A', 'Lorem', 'Smoothing, Perm', 'bc4c5380-991f-4065-945c-2b9b9fa08330-1702903226120.png', 'https://api.hairhub.id/profileWorkers/bc4c5380-991f-4065-945c-2b9b9fa08330-1702903226120.png', 2, '2023-12-18 12:40:26', '2023-12-18 12:40:26'),
(23, '78f718b7-5e58-4b24-a1e3-be8598b6fb11', 'Danang Rifai', 'Lorem', 'Coloring, Styling', 'fbc64c98-af24-4746-847b-7c6d7396ba95-1702904771484.png', 'https://api.hairhub.id/profileWorkers/fbc64c98-af24-4746-847b-7c6d7396ba95-1702904771484.png', 2, '2023-12-18 13:06:11', '2023-12-18 13:06:11'),
(24, '3f2313d3-96d3-4cc2-82f2-c34aa6b7dd61', 'Ilham Soejud Alkahfiardy', 'Lorem', 'Coloring', 'cbecfd0d-1cdb-43c7-a4dc-a72bafe605ba-1702904913622.png', 'https://api.hairhub.id/profileWorkers/cbecfd0d-1cdb-43c7-a4dc-a72bafe605ba-1702904913622.png', 4, '2023-12-18 13:08:33', '2023-12-18 13:08:33'),
(25, '7ec0dd07-cdc9-4a04-b73c-b3caeb4386f5', 'Ni Putu Tiara Prezilia A', 'Lorem', 'Haircut', '8bad0819-686f-40cd-b20e-20288f128ec0-1702904961837.png', 'https://api.hairhub.id/profileWorkers/8bad0819-686f-40cd-b20e-20288f128ec0-1702904961837.png', 4, '2023-12-18 13:09:21', '2023-12-18 13:09:21'),
(27, '336649bc-8764-4e5f-a417-6406692b5379', 'Syita Ya Raioni', 'Lorem', 'Hair Spa', 'f5c2e35a-ca2e-4bc3-8607-24ef37c98bed-1702905030358.png', 'https://api.hairhub.id/profileWorkers/f5c2e35a-ca2e-4bc3-8607-24ef37c98bed-1702905030358.png', 4, '2023-12-18 13:10:30', '2023-12-18 13:10:30'),
(29, 'bf3a5b88-ebee-42b3-b6d7-1fb24463d2b9', 'Ismi Anifah', 'Lorem', 'Creambacth, Smooting', '8124e0c5-61af-4d9d-8533-273c34584fb3-1702905056868.png', 'https://api.hairhub.id/profileWorkers/8124e0c5-61af-4d9d-8533-273c34584fb3-1702905056868.png', 4, '2023-12-18 13:10:56', '2023-12-18 13:10:56'),
(30, '34534be1-424d-4931-97d5-100ef1d1b9bf', 'Ariska Dwi Ambarwati', 'Lorem', 'Menicure', 'e84e0705-5733-4791-85cf-e561c35bc34e-1702905085816.png', 'https://api.hairhub.id/profileWorkers/e84e0705-5733-4791-85cf-e561c35bc34e-1702905085816.png', 4, '2023-12-18 13:11:25', '2023-12-18 13:11:25'),
(31, '1ad7204f-b29a-4399-9b15-1d2faf7f29af', 'Danang Rifai', 'Lorem', 'Haircut', 'ab7b609e-1b42-4d50-a809-624ec548f2ae-1702905106680.png', 'https://api.hairhub.id/profileWorkers/ab7b609e-1b42-4d50-a809-624ec548f2ae-1702905106680.png', 4, '2023-12-18 13:11:46', '2023-12-18 13:11:46'),
(32, 'dabcc9c2-3fa7-4f3c-9bdb-c36dde47a1f6', 'Ismi Anifah', '', 'Coloring, Smoothing', '7a0d44a3-5142-4394-b9fe-87b514917c89-1702905702327.png', 'https://api.hairhub.id/profileWorkers/7a0d44a3-5142-4394-b9fe-87b514917c89-1702905702327.png', 9, '2023-12-18 13:21:42', '2023-12-18 13:21:42'),
(33, '9d084ca1-8043-4c6d-a5e2-9dcd30742ad6', 'Syita Ya Raioni', '', 'Styling, Haircut', 'ea07fae1-59b4-4f9f-a094-9e402c64cd07-1702905768215.png', 'https://api.hairhub.id/profileWorkers/ea07fae1-59b4-4f9f-a094-9e402c64cd07-1702905768215.png', 9, '2023-12-18 13:22:48', '2023-12-18 13:22:48'),
(34, 'f48404db-afcf-4e97-9fee-2338b784abb7', 'Ni Putu Tiara Prezilia A', '', 'Coloring, Perm', '9ec3d757-beda-4b97-8b46-04304f6d7152-1702905839925.png', 'https://api.hairhub.id/profileWorkers/9ec3d757-beda-4b97-8b46-04304f6d7152-1702905839925.png', 9, '2023-12-18 13:23:59', '2023-12-18 13:23:59'),
(35, '13cf02d9-8292-4eee-9466-0b1e4ebf1c78', 'Danang Rifai', '', 'Haircut, Styling, Coloring', 'b88c6044-6fef-429d-a2f9-59a474cfb347-1702905896303.png', 'https://api.hairhub.id/profileWorkers/b88c6044-6fef-429d-a2f9-59a474cfb347-1702905896303.png', 9, '2023-12-18 13:24:56', '2023-12-18 13:24:56'),
(36, '3b4e945d-444a-4286-94fa-6b242efb5cc9', 'Ariska Dwi Ambarwati', '', 'Coloring, Manicure, Hair Spa', 'cbb8acef-107d-4010-8f8a-6e838387993b-1702906166797.png', 'https://api.hairhub.id/profileWorkers/cbb8acef-107d-4010-8f8a-6e838387993b-1702906166797.png', 10, '2023-12-18 13:29:26', '2023-12-18 13:29:26'),
(37, 'f5c9d6ad-c137-4781-bc76-9fc785615877', 'Syita Ya Raioni', '', 'Creambath, Manicure', 'd5c28532-f2ea-4b91-a01c-f0b67f906696-1702906234057.png', 'https://api.hairhub.id/profileWorkers/d5c28532-f2ea-4b91-a01c-f0b67f906696-1702906234057.png', 10, '2023-12-18 13:30:34', '2023-12-18 13:30:34'),
(38, '869eb38c-104a-4bec-8b10-6418230bb6db', 'Ismi Anifah', '', 'Manicure, Hair Spa, Creambath', 'f2d22603-434a-4952-ad82-f692f88348b8-1702906294882.png', 'https://api.hairhub.id/profileWorkers/f2d22603-434a-4952-ad82-f692f88348b8-1702906294882.png', 10, '2023-12-18 13:31:34', '2023-12-18 13:31:34'),
(39, '6dfbb1f1-5aa0-44a5-b7aa-b3d29dd4017d', 'Ni Putu Tiara Prezilia A', '', 'Coloring, Manicure, Creambath', '3a7b5bf4-a2de-4ff3-9ca4-7d6f36f43376-1702906380495.png', 'https://api.hairhub.id/profileWorkers/3a7b5bf4-a2de-4ff3-9ca4-7d6f36f43376-1702906380495.png', 10, '2023-12-18 13:33:00', '2023-12-18 13:33:00'),
(40, '482c26bd-ef9d-4a4c-aa20-ecea1f2d2a67', 'Danang Rifai', '', 'Hair Spa, Coloring', '1cec6a78-9cbd-485c-9095-f426fb69d04e-1702906438560.png', 'https://api.hairhub.id/profileWorkers/1cec6a78-9cbd-485c-9095-f426fb69d04e-1702906438560.png', 10, '2023-12-18 13:33:58', '2023-12-18 13:33:58'),
(41, 'd8eed197-4fdf-4c8f-9650-de339078de01', 'Ja\'far Shodiq Asmali', 'Ja\'far Shodiq Asmali', 'Haircut', 'ac0d14bf-61ce-42a9-813d-f754a3c10d9e-1702906740421.png', 'https://api.hairhub.id/profileWorkers/ac0d14bf-61ce-42a9-813d-f754a3c10d9e-1702906740421.png', 5, '2023-12-18 13:39:00', '2023-12-18 13:39:00'),
(42, '38823435-541e-465c-a6bc-f39678e951c3', 'Ismi Anifah', 'Ismi Anifah\r\n\r\n', 'Creambath', '6cca196d-fd88-4d4f-b619-aab47194e197-1702906799140.png', 'https://api.hairhub.id/profileWorkers/6cca196d-fd88-4d4f-b619-aab47194e197-1702906799140.png', 5, '2023-12-18 13:39:59', '2023-12-18 13:39:59'),
(43, '32585507-e60f-4ac5-88e4-61b272e423e7', 'Syita Ya Raioni', 'Syita Ya Raioni', 'Menicure', 'e7cc6918-eeb5-4283-ab8d-61fbcfca714e-1702906829498.png', 'https://api.hairhub.id/profileWorkers/e7cc6918-eeb5-4283-ab8d-61fbcfca714e-1702906829498.png', 5, '2023-12-18 13:40:29', '2023-12-18 13:40:29'),
(44, 'fbaa2e16-a7c3-4a59-9ff4-fceed562a454', 'Ariska Dwi Ambarwati', 'Ariska Dwi Ambarwati', 'Smooting', 'dfbc18ce-ef49-463b-b901-48dd23643216-1702906858210.png', 'https://api.hairhub.id/profileWorkers/dfbc18ce-ef49-463b-b901-48dd23643216-1702906858210.png', 5, '2023-12-18 13:40:58', '2023-12-18 13:40:58'),
(45, '9fa2ef5e-350b-4d70-98d3-d4d66271f60a', 'Ni Putu Tiara Prezilia A', 'Ni Putu Tiara Prezilia A', 'Hair Spa', '113b1893-afcb-492d-99ac-7b0dc9555c4b-1702906939862.png', 'https://api.hairhub.id/profileWorkers/113b1893-afcb-492d-99ac-7b0dc9555c4b-1702906939862.png', 5, '2023-12-18 13:42:19', '2023-12-18 13:42:19'),
(46, '5a7f2292-3700-41e0-9999-7807ea35557c', 'Ilham Soejud Alkahfiardy', 'Ilham Soejud Alkahfiardy', 'Coloring', '1301de7e-043e-481f-9463-bda6f736c265-1702906972479.png', 'https://api.hairhub.id/profileWorkers/1301de7e-043e-481f-9463-bda6f736c265-1702906972479.png', 5, '2023-12-18 13:42:52', '2023-12-18 13:42:52'),
(47, '325ff326-4584-4e7a-a375-5878c9b12650', 'Danang Rifai', 'Danang Rifai', 'Styling', 'a343148e-2c82-4940-ada8-21cb8724c541-1702906996082.png', 'https://api.hairhub.id/profileWorkers/a343148e-2c82-4940-ada8-21cb8724c541-1702906996082.png', 5, '2023-12-18 13:43:16', '2023-12-18 13:43:16'),
(48, 'fccc448b-8536-4b39-8d41-ad351a075386', 'Ja\'far Shodiq Asmali', 'Ja\'far Shodiq Asmali\r\n\r\n', 'Haircut', 'ae0a3139-e6fa-4e9a-9c11-43410357731c-1702907653704.png', 'https://api.hairhub.id/profileWorkers/ae0a3139-e6fa-4e9a-9c11-43410357731c-1702907653704.png', 6, '2023-12-18 13:54:13', '2023-12-18 13:54:13'),
(49, 'c9909759-3473-4905-9a43-31dd8b63e73d', 'Ariska Dwi Ambarwati', 'Ariska Dwi Ambarwati\r\n\r\n', 'Creambacth', 'c9554e06-2799-41e3-8027-1e8aac2e6c30-1702907708554.png', 'https://api.hairhub.id/profileWorkers/c9554e06-2799-41e3-8027-1e8aac2e6c30-1702907708554.png', 6, '2023-12-18 13:55:08', '2023-12-18 13:55:08'),
(50, 'a9f6fee7-5f57-42d1-964d-a340f13ec5d9', 'Ismi Anifah', 'Ismi Anifah', 'Smooting', '1140a70f-da36-4270-8341-2435d99da75f-1702907733141.png', 'https://api.hairhub.id/profileWorkers/1140a70f-da36-4270-8341-2435d99da75f-1702907733141.png', 6, '2023-12-18 13:55:33', '2023-12-18 13:55:33'),
(51, 'ad3d98c2-9964-4abd-ad7c-37ccc04c1f4b', 'Syita Ya Raioni', 'Syita Ya Raioni', 'Menicure', 'b60f1552-b462-4025-8a08-7a5ec9500e5f-1702907791973.png', 'https://api.hairhub.id/profileWorkers/b60f1552-b462-4025-8a08-7a5ec9500e5f-1702907791973.png', 6, '2023-12-18 13:56:31', '2023-12-18 13:56:31'),
(52, 'be1dfd37-e15b-4930-820d-0f54ee435be6', 'Ilham Soejud Alkahfiardy', 'Ilham Soejud Alkahfiardy', 'Coloring', 'f4ade15b-0601-4ea0-b524-39b362c169dd-1702907818790.png', 'https://api.hairhub.id/profileWorkers/f4ade15b-0601-4ea0-b524-39b362c169dd-1702907818790.png', 6, '2023-12-18 13:56:58', '2023-12-18 13:56:58'),
(53, '2b0773bf-0beb-4fa9-a0d5-4be1df99601b', 'Ni Putu Tiara Prezilia A', 'Ni Putu Tiara Prezilia A\r\n\r\n', 'Hair Spa', '6d56a178-30ba-448a-9c1e-3ba0c9f4e843-1702907842604.png', 'https://api.hairhub.id/profileWorkers/6d56a178-30ba-448a-9c1e-3ba0c9f4e843-1702907842604.png', 6, '2023-12-18 13:57:22', '2023-12-18 13:57:22'),
(54, '4c551afe-af79-4d7d-8e4b-b49b74ba3a33', 'Danang Rifai', 'Danang Rifai', 'Styling', '5aed23fb-81cf-48d7-842a-11e04f673c3a-1702908053384.png', 'https://api.hairhub.id/profileWorkers/5aed23fb-81cf-48d7-842a-11e04f673c3a-1702908053384.png', 6, '2023-12-18 14:00:53', '2023-12-18 14:00:53'),
(55, '5ddc1ac3-5c11-405f-a519-04129ac75f0a', 'Danang Rifai', '', 'Haircut, Coloring', 'c346ad09-cea7-4e04-9092-65340fdb093e-1702909605170.png', 'https://api.hairhub.id/profileWorkers/c346ad09-cea7-4e04-9092-65340fdb093e-1702909605170.png', 15, '2023-12-18 14:26:45', '2023-12-18 14:26:45'),
(56, '23adf94e-84a8-4ddb-8dbb-044763ab1aa1', 'Ilham Soejud Alkahfiardy', '', 'Haircut, Styling, Shave', 'a3c1f658-a0bf-462c-8261-39c2afdcd175-1702909651749.png', 'https://api.hairhub.id/profileWorkers/a3c1f658-a0bf-462c-8261-39c2afdcd175-1702909651749.png', 15, '2023-12-18 14:27:31', '2023-12-18 14:27:31'),
(57, '26573b97-8d2e-4e41-8387-21323a521377', 'Tiara', '', 'Creambath, Perm', '8985deb4-58df-4fb6-9b05-18dc17e6aeb8-1702910439446.png', 'https://api.hairhub.id/profileWorkers/8985deb4-58df-4fb6-9b05-18dc17e6aeb8-1702910439446.png', 1, '2023-12-18 14:40:39', '2023-12-18 14:40:39'),
(58, 'a42ff28b-fba4-4497-982b-fbcce994e713', 'Ni Putu Tiara', 'Teliti, disiplin dan pekerja keras.', 'Haircut, pedicure, manicure', 'ade306f5-e6fb-43ea-be9b-304292c8b7c9-1702910521973.png', 'https://api.hairhub.id/profileWorkers/ade306f5-e6fb-43ea-be9b-304292c8b7c9-1702910521973.png', 16, '2023-12-18 14:42:01', '2023-12-18 14:42:01'),
(59, 'd658fe58-5e1f-42ef-ae07-b6bff7516e9a', 'Kak Syita', '', 'Coloring', '8cead97d-7a24-4b00-93fb-251d21fd7459-1702910576737.png', 'https://api.hairhub.id/profileWorkers/8cead97d-7a24-4b00-93fb-251d21fd7459-1702910576737.png', 1, '2023-12-18 14:42:56', '2023-12-18 14:42:56'),
(60, '29670a62-a9d2-4bca-99a8-67dc2978697c', 'Kak Danang', '', 'Haircut, Menicure', '70a1ff33-e455-425a-b018-cd5bfe9e11ac-1702910651234.png', 'https://api.hairhub.id/profileWorkers/70a1ff33-e455-425a-b018-cd5bfe9e11ac-1702910651234.png', 1, '2023-12-18 14:44:11', '2023-12-18 14:44:11'),
(61, '1d4a7dc1-2d1f-45ab-abe0-7c8f57a233ce', 'Syita Ya Raioni', 'Ramah, pekerja keras, disiplin.', 'Hair spa, Haircut', '785e4ed8-72d7-460a-a036-12e34933ece9-1702910668907.png', 'https://api.hairhub.id/profileWorkers/785e4ed8-72d7-460a-a036-12e34933ece9-1702910668907.png', 16, '2023-12-18 14:44:28', '2023-12-18 14:44:28'),
(62, '172f2b12-ce9d-4743-a1e2-8ddbb9eddfa0', 'Kak Ariska', '', 'Smooting', 'a7cb5d62-1e5c-4a9f-9b61-dbf89dcc396a-1702910694444.png', 'https://api.hairhub.id/profileWorkers/a7cb5d62-1e5c-4a9f-9b61-dbf89dcc396a-1702910694444.png', 1, '2023-12-18 14:44:54', '2023-12-18 14:44:54'),
(63, 'f27d8129-bab0-48ab-b3a5-9a255a6cac70', 'Ariska Dwi Ambarwati', 'Ramah, teliti, bertanggung jawab', 'Pedicure, Manicure', '20d88b42-39db-43ed-a5df-ecbba1d7cf11-1702910710429.png', 'https://api.hairhub.id/profileWorkers/20d88b42-39db-43ed-a5df-ecbba1d7cf11-1702910710429.png', 16, '2023-12-18 14:45:10', '2023-12-18 14:45:10'),
(64, 'cae74f0b-7788-41d0-be08-25c5b267e2bd', 'Kak Ismi Anifah', '', 'Creambath', 'cdd5d09b-a8b0-4fb6-a45e-1b7add1a8f88-1702910722393.png', 'https://api.hairhub.id/profileWorkers/cdd5d09b-a8b0-4fb6-a45e-1b7add1a8f88-1702910722393.png', 1, '2023-12-18 14:45:22', '2023-12-18 14:45:22'),
(65, '0baa2232-c138-490f-9afd-d58c86f3277c', 'Danang Rifai', 'profesionalisme yang sesuai dengan lingkungan kerja. Ini bisa berarti menghindari gaya rambut yang terlalu ekstrem atau mencolok.\r\n\r\nKebersihan dan Kerapihan: Karyawan diharapkan untuk menjaga kebersihan dan kerapihan rambut mereka. Rambut yang bersih dan terawat mencerminkan perawatan terhadap penampilan pribadi.\r\n\r\nKonservatif vs. Kreatif: Beberapa perusahaan mungkin menganjurkan gaya rambut yang konservatif dan sederhana, sedangkan yang lain mungkin lebih toleran terhadap ekspresi kreatif dalam gaya rambut. Ini dapat bergantung pada industri dan budaya perusahaan.', 'Haircut', 'cd14785b-2124-485a-b3dc-b27140be4bae-1702910724919.png', 'https://api.hairhub.id/profileWorkers/cd14785b-2124-485a-b3dc-b27140be4bae-1702910724919.png', 13, '2023-12-18 14:45:24', '2023-12-18 14:45:24'),
(66, 'dd88ab05-997b-464b-a348-ce851849bfc1', 'Ismi Anifah', 'Teliti, pekerja keras, disiplin.', 'Smoothing, Hair spa', '3919bc02-2a1b-473a-8a5b-9568ad683f48-1702910748712.png', 'https://api.hairhub.id/profileWorkers/3919bc02-2a1b-473a-8a5b-9568ad683f48-1702910748712.png', 16, '2023-12-18 14:45:48', '2023-12-18 14:45:48'),
(67, '407cffdb-44fc-40f0-bbe8-442cf22e6a25', 'Kak Tiara', '', 'Haircut', 'e922c9c8-b38f-42f2-a19a-a609274b2e94-1702910772452.png', 'https://api.hairhub.id/profileWorkers/e922c9c8-b38f-42f2-a19a-a609274b2e94-1702910772452.png', 3, '2023-12-18 14:46:12', '2023-12-18 14:46:12'),
(68, 'd9bbd0a0-fef2-4aab-a3fb-4c8202894d2a', 'Kak Syita Ya Raioni', '', 'Hair Spa', '65035fbd-470c-4246-9e2e-7994b8b99a0a-1702910819992.png', 'https://api.hairhub.id/profileWorkers/65035fbd-470c-4246-9e2e-7994b8b99a0a-1702910819992.png', 3, '2023-12-18 14:46:59', '2023-12-18 14:46:59'),
(69, '00c1f2c4-f047-4a5e-89be-ac73c3b8344b', 'Kak Ja\'far Shodiq Asmali', '', 'Haircut', '303d91ca-bed9-4830-aa9f-57f870317fc6-1702910851157.png', 'https://api.hairhub.id/profileWorkers/303d91ca-bed9-4830-aa9f-57f870317fc6-1702910851157.png', 3, '2023-12-18 14:47:31', '2023-12-18 14:47:31'),
(70, '73cd0b08-7205-419a-950d-32c7f3fdcf36', 'Ja\'far Sodiq Asmali', 'Pembersihan dan Pemijatan: Hair spa dimulai dengan membersihkan rambut dan kulit kepala menggunakan sampo yang sesuai dengan jenis rambut. Setelah itu, biasanya dilakukan pemijatan lembut pada kulit kepala untuk merangsang sirkulasi darah dan merelaksasi otot-otot kepala.\r\n\r\nAplikasi Masker atau Treatment: Setelah membersihkan rambut, hair spa melibatkan penggunaan masker atau treatment khusus yang dirancang untuk memberikan nutrisi tambahan kepada rambut. Masker ini dapat mengandung bahan-bahan seperti minyak alami, vitamin, protein, dan bahan aktif lainnya yang bermanfaat bagi kesehatan rambut.\r\n\r\nPenggunaan Uap atau Panas: Beberapa salon hair spa menggunakan uap atau panas untuk membantu bahan-bahan perawatan meresap ke dalam batang rambut. Ini dapat meningkatkan efektivitas perawatan dan melembutkan rambut.', 'Hair Spa', '24c406ba-d6bd-4117-a5e9-93e83c2872f8-1702910864257.png', 'https://api.hairhub.id/profileWorkers/24c406ba-d6bd-4117-a5e9-93e83c2872f8-1702910864257.png', 13, '2023-12-18 14:47:44', '2023-12-18 14:47:44'),
(71, '3d5ca0f8-570e-4dfe-8f66-c9e31ff8bbf9', 'Ilham Soejud Alkahfiardy', '', 'Coloring', '6b064c32-1864-45e9-9e1f-66a4dc4dbc6b-1702910872971.png', 'https://api.hairhub.id/profileWorkers/6b064c32-1864-45e9-9e1f-66a4dc4dbc6b-1702910872971.png', 3, '2023-12-18 14:47:52', '2023-12-18 14:47:52'),
(72, '61046b1c-d341-4f4d-90b8-49bd48120bd9', 'Kak Ismi Anifah', '', 'Creambacth, Smooting', 'da200b40-5cb2-4951-b208-5a0620facf5f-1702910908539.png', 'https://api.hairhub.id/profileWorkers/da200b40-5cb2-4951-b208-5a0620facf5f-1702910908539.png', 3, '2023-12-18 14:48:28', '2023-12-18 14:48:28'),
(73, 'f377554b-8cdf-47ff-84c0-5680c36666c8', 'Kak Ariska Dwi Ambarwati', '', 'Hair Spa', 'cb1ed83b-1edc-44ad-9ce2-fe01eb2e9f7e-1702910948726.png', 'https://api.hairhub.id/profileWorkers/cb1ed83b-1edc-44ad-9ce2-fe01eb2e9f7e-1702910948726.png', 3, '2023-12-18 14:49:08', '2023-12-18 14:49:08'),
(74, 'd2f3f659-bcb2-42a4-ad86-eb333a0ee597', 'Kak Danang Rifai', '', 'Haircut', 'f6f19a15-83f6-4fb5-a00f-d9e83d029afd-1702910967129.png', 'https://api.hairhub.id/profileWorkers/f6f19a15-83f6-4fb5-a00f-d9e83d029afd-1702910967129.png', 3, '2023-12-18 14:49:27', '2023-12-18 14:49:27'),
(75, '635c5fff-0eb8-4862-92de-876a4a3e180b', 'Ilham Soejud Alkahfiardy', 'Konservatif vs. Kreatif: Beberapa perusahaan mungkin menganjurkan gaya rambut yang konservatif dan sederhana, sedangkan yang lain mungkin lebih toleran terhadap ekspresi kreatif dalam gaya rambut. Ini dapat bergantung pada industri dan budaya perusahaan.\r\n\r\nPanjang Rambut: Bisa ada pedoman terkait panjang rambut, terutama dalam industri atau pekerjaan tertentu. Beberapa tempat kerja mungkin membatasi panjang rambut untuk alasan keamanan atau kebersihan.\r\n\r\nWarna Rambut: Beberapa perusahaan mungkin memiliki kebijakan terkait warna rambut, membatasi atau mengatur aturan terkait pewarnaan rambut yang terlalu mencolok atau tidak alami.', 'Haircut', 'a219ac42-1a44-4aa6-88c3-5bc9f71222d1-1702910972699.png', 'https://api.hairhub.id/profileWorkers/a219ac42-1a44-4aa6-88c3-5bc9f71222d1-1702910972699.png', 13, '2023-12-18 14:49:32', '2023-12-18 14:49:32'),
(76, 'e5a14a4f-a2a0-4121-a5b0-089a08b7efa5', 'Danang Rifai', 'Memilki keahlian dalam haircut dan juga pewarnaan rambut yang trend terbaru.', 'Haircut, Coloring', '05987e6f-9c4e-4be9-9071-5d8d5739122f-1702911012941.png', 'https://api.hairhub.id/profileWorkers/05987e6f-9c4e-4be9-9071-5d8d5739122f-1702911012941.png', 11, '2023-12-18 14:50:12', '2023-12-18 14:50:12'),
(77, 'cf2a6967-cd89-4c93-977b-e352eb8c51d7', 'Ni Putu Tiara Prezilia A.', 'Memilki Keahlian Haircut dalam rambut terkini.', 'Haircut', 'fa61b560-be3e-475f-9ce5-f405bf40cc5f-1702911107447.png', 'https://api.hairhub.id/profileWorkers/fa61b560-be3e-475f-9ce5-f405bf40cc5f-1702911107447.png', 11, '2023-12-18 14:51:47', '2023-12-18 14:51:47'),
(78, '5370de3f-8236-4410-af54-6a25fe5c2c0c', 'Syita Ya Raioni', 'Pembersihan dan Perendaman Tangan: Klien biasanya diminta untuk merendam tangan dalam air hangat untuk melunakkan kuku dan kulit di sekitarnya. Ahli perawatan kuku kemudian membersihkan kuku dan kutikula.\r\n\r\nPemotongan dan Pemijatan Kuku: Kuku dipotong dan dibentuk sesuai keinginan pelanggan. Pijatan tangan juga sering dilakukan untuk meningkatkan sirkulasi darah dan memberikan rasa relaksasi.\r\n\r\nPerawatan Cuticle: Kutikula, lapisan tipis di sekitar kuku, dipotong atau dipindahkan dengan lembut untuk memberikan tampilan yang bersih dan terawat.', 'pedicure menicure', '5ce6eab6-faae-41b1-ba9f-08f1fc45d001-1702911132971.png', 'https://api.hairhub.id/profileWorkers/5ce6eab6-faae-41b1-ba9f-08f1fc45d001-1702911132971.png', 13, '2023-12-18 14:52:12', '2023-12-18 14:52:12'),
(79, '2db1f630-b4fb-4898-be8f-c98af184c40a', 'Ariska Dwi Ambarwati', 'Keahlian yang paham mengenai stylling dan haircut.', 'stylling, haircut', '5d592fd5-9aff-4aa0-8322-84062cfe06ef-1702911189292.png', 'https://api.hairhub.id/profileWorkers/5d592fd5-9aff-4aa0-8322-84062cfe06ef-1702911189292.png', 11, '2023-12-18 14:53:09', '2023-12-18 14:53:09'),
(80, 'fd2e8490-8c23-4bcb-ac67-138d814656a0', 'Syita Ya Raioni', 'Memiliki keahlian yang sangat bagus dalam haircut dan coloring', 'Haircut, Coloring', 'dfb5cb86-26b7-4901-9a93-689aaadc6e2d-1702911309057.png', 'https://api.hairhub.id/profileWorkers/dfb5cb86-26b7-4901-9a93-689aaadc6e2d-1702911309057.png', 11, '2023-12-18 14:55:09', '2023-12-18 14:55:09'),
(81, '98fbfacb-d303-4c54-bfff-8ec406230615', 'Danang Rifai', 'Pekerja keras, teliti', 'Haircut', 'af639216-3b0f-4782-b09e-9aac4d699b4f-1702911318722.png', 'https://api.hairhub.id/profileWorkers/af639216-3b0f-4782-b09e-9aac4d699b4f-1702911318722.png', 16, '2023-12-18 14:55:18', '2023-12-18 14:55:18'),
(82, 'cda93c2a-af4f-48b8-b75d-54cde8a48819', 'Danang Rifai', 'Mewarnai rambut adalah proses mengubah warna rambut seseorang menggunakan bahan kimia atau pewarna rambut. Ini dapat dilakukan di salon kecantikan atau di rumah dengan menggunakan produk pewarna rambut yang tersedia di pasaran. Mewarnai rambut dapat dilakukan untuk tujuan modifikasi penampilan, penutupan uban, atau ekspresi kreatif.', 'Coloring', '6a98aa9a-a82c-4148-909c-ec515c00d681-1702911320918.png', 'https://api.hairhub.id/profileWorkers/6a98aa9a-a82c-4148-909c-ec515c00d681-1702911320918.png', 8, '2023-12-18 14:55:20', '2023-12-18 14:55:20'),
(83, '35291f27-ef4a-4fea-939a-1cebbe9f6b6f', 'Ja\'far Shodiq Asmali', 'Pekerja keras, teliti', 'Haircut', '26264b23-1090-43e9-ab5f-181792e98fbd-1702911372678.png', 'https://api.hairhub.id/profileWorkers/26264b23-1090-43e9-ab5f-181792e98fbd-1702911372678.png', 16, '2023-12-18 14:56:12', '2023-12-18 14:56:12'),
(84, 'c3dac15b-a54e-4392-8d93-4de00da8163e', 'Ni Putu Tiara', 'Dalam konteks perawatan rambut, \"smoothing\" mengacu pada teknik atau produk yang dirancang untuk meratakan rambut, mengurangi kerutan, dan memberikan kilau. Smoothing hair treatments, seperti Brazilian blowout atau keratin treatment, umumnya melibatkan penggunaan bahan kimia atau formulasi khusus untuk mencapai hasil ini.', 'Smoothing', 'cfad068c-609f-46b1-96c4-98d0bd4663c7-1702911381090.png', 'https://api.hairhub.id/profileWorkers/cfad068c-609f-46b1-96c4-98d0bd4663c7-1702911381090.png', 8, '2023-12-18 14:56:21', '2023-12-18 14:56:21'),
(85, '41fd60b7-1987-43e5-b5f6-a6a9f67f81cb', 'Ilham Soejud Alkahfiardy', 'Pekerja keras, teliti', 'Haircut', '4513ca3f-6b33-4c97-b6da-00b7af6b3c83-1702911423973.png', 'https://api.hairhub.id/profileWorkers/4513ca3f-6b33-4c97-b6da-00b7af6b3c83-1702911423973.png', 16, '2023-12-18 14:57:03', '2023-12-18 14:57:03'),
(86, '4aba7ceb-00b9-438c-bb47-7840cae7d431', 'Ismi Anifah', 'Paham mengenai Style rambut yang trend saat ini dan perwarnaan rambut yang cocok dengan pengguna.', 'stylling, Coloring', '48d1e4ac-8a59-4a88-9aaa-a06d05f0659b-1702911457531.png', 'https://api.hairhub.id/profileWorkers/48d1e4ac-8a59-4a88-9aaa-a06d05f0659b-1702911457531.png', 11, '2023-12-18 14:57:37', '2023-12-18 14:57:37'),
(87, 'e3c0e6fb-9ad2-4c73-a633-adaddc771def', 'Ariska Dwi Ambarwati', 'Creambath adalah salah satu perawatan rambut yang populer yang melibatkan penggunaan krim atau masker khusus untuk merawat dan menyehatkan rambut. Perawatan ini umumnya dilakukan di salon atau pusat kecantikan oleh tukang potong rambut atau ahli perawatan rambut. ', 'Creambath', '0368118b-f783-4122-929a-d416d63323b4-1702911498013.png', 'https://api.hairhub.id/profileWorkers/0368118b-f783-4122-929a-d416d63323b4-1702911498013.png', 8, '2023-12-18 14:58:18', '2023-12-18 14:58:18'),
(88, '973f40ba-503f-4b97-b6fa-76081654c8e5', 'Ismi Anifah', 'aircut, atau potongan rambut, adalah proses seni dan keterampilan dalam memotong, mengatur, atau membentuk rambut seseorang dengan tujuan mencapai tampilan yang diinginkan. Proses ini biasanya dilakukan oleh seorang tukang cukur atau tukang potong rambut yang memiliki pengetahuan tentang berbagai gaya rambut, teknik pemotongan, dan tata rias rambut', 'Haircut', '6f35a784-4686-45fe-ad96-55f0c975fc15-1702911556130.png', 'https://api.hairhub.id/profileWorkers/6f35a784-4686-45fe-ad96-55f0c975fc15-1702911556130.png', 8, '2023-12-18 14:59:16', '2023-12-18 14:59:16'),
(89, 'b5bb4f35-8276-4091-932f-aa2d46d5f285', 'Syita Ya Raioni', 'Styling rambut melibatkan penggunaan berbagai produk dan alat untuk menciptakan tampilan yang diinginkan. Ini dapat mencakup pemotongan rambut, pemilihan model atau gaya rambut tertentu, penggunaan gel, mousse, atau semprotan styling, serta penggunaan alat seperti hairdryer, catok, atau curling iron. Tujuannya adalah memberikan bentuk, volume, dan tekstur pada rambut sesuai dengan keinginan pelanggan atau desainer gaya rambut.', 'Styling', 'cb5c1d1d-2283-4e98-8308-4ac1c1337a46-1702911652150.png', 'https://api.hairhub.id/profileWorkers/cb5c1d1d-2283-4e98-8308-4ac1c1337a46-1702911652150.png', 8, '2023-12-18 15:00:52', '2023-12-18 15:00:52'),
(90, '130721b6-8638-425b-831d-9a4c8a541f6a', 'Ni Putu Tiara Prezilia A.', 'Memilki keahlian dalam bidang Manicure, dan Pedicure.', 'Manicure, Pedicure', 'ad3cee14-e6b0-447e-8d9b-4b5835386849-1702911655766.png', 'https://api.hairhub.id/profileWorkers/ad3cee14-e6b0-447e-8d9b-4b5835386849-1702911655766.png', 12, '2023-12-18 15:00:55', '2023-12-18 15:00:55'),
(91, '284b5b69-8a81-483b-acd1-a42aff2bad6c', 'Ariska Dwi Ambarwati', 'Memilki keahlian dalam bidang Hair Spa, dan smoothing.', 'Hair Spa, smoothing', '0d437c28-a219-40f4-9e09-212031a1194e-1702911905188.png', 'https://api.hairhub.id/profileWorkers/0d437c28-a219-40f4-9e09-212031a1194e-1702911905188.png', 12, '2023-12-18 15:05:05', '2023-12-18 15:05:05'),
(92, '7527273c-e5b0-4499-a6cd-c6b64fb68692', 'Ismi Anifah', 'Memilki keahlian coloring, Hair Spa, dan smoothing', 'coloring, Hair Spa, smoothing', '60e0a9cf-2ec0-4a51-8b9e-ac1d04c18285-1702911997283.png', 'https://api.hairhub.id/profileWorkers/60e0a9cf-2ec0-4a51-8b9e-ac1d04c18285-1702911997283.png', 12, '2023-12-18 15:06:37', '2023-12-18 15:06:37'),
(93, '734e7346-fc90-4555-b419-2b1b3451b542', 'Ja\'far Shodiq Asmali', 'Pekerja keras, teliti', 'Haircut, shave', 'cc0c336e-b8d4-4c81-b941-56fa5440b7da-1702912049929.png', 'https://api.hairhub.id/profileWorkers/cc0c336e-b8d4-4c81-b941-56fa5440b7da-1702912049929.png', 15, '2023-12-18 15:07:29', '2023-12-18 15:07:29'),
(94, '88350bc5-e129-48d2-8f6d-7adfc8c7865e', 'Danang Rifai', 'memilki keahlian dan paham mengenai coloring yang tepat untuk pelanggan.', 'coloring', '7be279a9-3849-4422-b73f-58d100efebaa-1702912056863.png', 'https://api.hairhub.id/profileWorkers/7be279a9-3849-4422-b73f-58d100efebaa-1702912056863.png', 12, '2023-12-18 15:07:36', '2023-12-18 15:07:36'),
(95, 'bacb2f2e-4813-4380-b833-bd26c315ee92', 'Ni Putu Tiara', 'Pekerja keras, teliti', 'Haircut, coloring', 'c7cc25b2-dbbf-420d-b8c4-2169ba5cfb28-1702912085735.png', 'https://api.hairhub.id/profileWorkers/c7cc25b2-dbbf-420d-b8c4-2169ba5cfb28-1702912085735.png', 15, '2023-12-18 15:08:05', '2023-12-18 15:08:05'),
(96, '83dea1a8-a59c-4c12-9737-ea233231d31a', 'Ariska Dwi Ambarwati', 'Pekerja keras, teliti', 'Haircut', '09700e95-ff1c-4c69-8d21-71b88407f818-1702912119849.png', 'https://api.hairhub.id/profileWorkers/09700e95-ff1c-4c69-8d21-71b88407f818-1702912119849.png', 15, '2023-12-18 15:08:39', '2023-12-18 15:08:39'),
(97, 'ca47c0db-6b03-4328-8a67-eb1a092ad6c8', 'Ilham Soejud Alkahfiardy', 'memiliki keahlian dan paham mengenai smoothing.', 'smoothing', '4f075423-b85a-4752-a9cb-75bd94821a3b-1702912130596.png', 'https://api.hairhub.id/profileWorkers/4f075423-b85a-4752-a9cb-75bd94821a3b-1702912130596.png', 12, '2023-12-18 15:08:50', '2023-12-18 15:08:50'),
(98, '3b48421b-7b7d-4aa1-b40b-89b971f0f38d', 'Syita Ya Raioni', 'Pekerja keras, teliti', 'Haircut, Coloring', 'c62556f0-ef15-4f89-a7f3-91ba78e750c0-1702912148222.png', 'https://api.hairhub.id/profileWorkers/c62556f0-ef15-4f89-a7f3-91ba78e750c0-1702912148222.png', 15, '2023-12-18 15:09:08', '2023-12-18 15:09:08'),
(99, 'dc3ad1c7-7c1b-4cfc-93a7-10165af15e77', 'Ismi  Anifah', 'Pekerja keras, teliti', 'Coloring', '9a5c7174-d7d9-49c3-8ce3-9e24637886ef-1702912171431.png', 'https://api.hairhub.id/profileWorkers/9a5c7174-d7d9-49c3-8ce3-9e24637886ef-1702912171431.png', 15, '2023-12-18 15:09:31', '2023-12-18 15:09:31'),
(100, '1e80e3fb-cb91-484f-a67a-716461dee595', 'Ja\'far Shodiq Asmali', 'memiliki bakat dalam bidang pemijatan rambut ', 'hair spa ', '8ba4c0c8-bdba-4f76-9044-07ae363dba39-1702912214909.png', 'https://api.hairhub.id/profileWorkers/8ba4c0c8-bdba-4f76-9044-07ae363dba39-1702912214909.png', 12, '2023-12-18 15:10:14', '2023-12-18 15:10:14');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD KEY `userId` (`userId`);

--
-- Indeks untuk tabel `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD KEY `userId` (`userId`),
  ADD KEY `businessId` (`businessId`);

--
-- Indeks untuk tabel `hairs`
--
ALTER TABLE `hairs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `listServices`
--
ALTER TABLE `listServices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD KEY `userId` (`userId`),
  ADD KEY `businessId` (`businessId`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `businessId` (`businessId`);

--
-- Indeks untuk tabel `Sessions`
--
ALTER TABLE `Sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD KEY `businessId` (`businessId`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `business`
--
ALTER TABLE `business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `hairs`
--
ALTER TABLE `hairs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `listServices`
--
ALTER TABLE `listServices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `workers`
--
ALTER TABLE `workers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `business`
--
ALTER TABLE `business`
  ADD CONSTRAINT `business_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`businessId`) REFERENCES `business` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`businessId`) REFERENCES `business` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`businessId`) REFERENCES `business` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `workers`
--
ALTER TABLE `workers`
  ADD CONSTRAINT `workers_ibfk_1` FOREIGN KEY (`businessId`) REFERENCES `business` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
