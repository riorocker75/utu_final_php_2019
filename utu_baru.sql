-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2019 at 05:07 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utu_baru`
--

-- --------------------------------------------------------

--
-- Table structure for table `dah_category`
--

CREATE TABLE `dah_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_url` varchar(255) NOT NULL,
  `category_parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dah_category`
--

INSERT INTO `dah_category` (`category_id`, `category_name`, `category_url`, `category_parent`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dah_menu`
--

CREATE TABLE `dah_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_mother` varchar(100) NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `menu_url` text NOT NULL,
  `menu_parent` int(11) NOT NULL,
  `menu_sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dah_menu`
--

INSERT INTO `dah_menu` (`menu_id`, `menu_mother`, `menu_name`, `menu_url`, `menu_parent`, `menu_sort`) VALUES
(1, 'menu-satu', '0', '0', 0, 0),
(12, 'menu-dua', '0', '0', 0, 0),
(33, 'menu-satu', 'Home', 'http://shop.malasngoding.com/', 0, 0),
(35, 'menu-satu', 'Privacy Policy', '#', 0, 4),
(36, 'undefined', 'Home', 'HOme', 0, 0),
(44, 'menu-dua', 'Tutorial Pemrograman', 'http://www.malasngoding.com/', 0, 0),
(50, 'menu-dua', 'Tracking Resi', 'http://shop.malasngoding.com/index/tracking', 0, 1),
(53, 'menu-satu', 'Testimonial', '#', 0, 4),
(54, 'menu-dua', 'Testimonial', '#', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `dah_options`
--

CREATE TABLE `dah_options` (
  `option_id` int(11) NOT NULL,
  `option_name` varchar(60) NOT NULL,
  `option_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dah_options`
--

INSERT INTO `dah_options` (`option_id`, `option_name`, `option_value`) VALUES
(1, 'blog_name', 'Utu Award 5'),
(2, 'blog_description', ''),
(3, 'blog_logo', '884488349_logoutu1.png'),
(4, 'show_post_image', '1'),
(5, 'show_menu_satu', '1'),
(6, 'show_menu_dua', '1'),
(7, 'widget_social_facebook', 'https://www.facebook.com/malasngodingpage'),
(8, 'widget_social_twitter', 'https://twitter.com/malasngoding'),
(9, 'widget_social_google_plus', 'https://plus.google.com/+MalasNgoding'),
(10, 'widget_social_instagram', 'https://www.instagram.com/malasngoding/'),
(11, 'widget_social_youtube', 'https://www.youtube.com/channel/UCry0-mTjkfyPBR-u6XNR4gw');

-- --------------------------------------------------------

--
-- Table structure for table `dah_pages`
--

CREATE TABLE `dah_pages` (
  `page_id` int(11) NOT NULL,
  `page_tittle` text NOT NULL,
  `page_url` text NOT NULL,
  `page_content` text NOT NULL,
  `page_status` varchar(10) NOT NULL,
  `page_cover` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dah_pages`
--

INSERT INTO `dah_pages` (`page_id`, `page_tittle`, `page_url`, `page_content`, `page_status`, `page_cover`) VALUES
(29, 'Tentang SHOP', 'tentang-shop', '<p>MalasNgoding SHOP adalah E-Commerse yang bergerak di bidang penjualan barang-barang kebutuhan penggila dunia IT. contohnya seperti DVD tutorial pemrograman, T-Shirt, Stiker dan banyak lagi yang lainnya.</p>\n\n<p>MalasNgoding SHOP menyediakan Tutorial Pemrograman yang bersifat gratis dan premium. untuk tutorial pemrograman gratis kamu bisa langsung baca <a href=\"http://www.malasngoding.com/\">di sini</a>. dan untuk tutorial pemrograman premium yang berbentuk Video kamu bisa membelinya <a href=\"http://shop.malasngoding.com\">di sini</a>.</p>\n\n<p>MalasNgoding SHOP juga menyediakan promo-promo menarik di setiap akhir minggu. nantikan promo menarik nya untuk mendapatkan potongan harga yang gila-gilaan.</p>\n', 'publish', ''),
(32, 'Pasang Iklan Murah', 'pasang-iklan-murah', '<p>Pasang Iklan murah di malasngoding.com</p>\n', 'publish', ''),
(45, 'Cara Pemesanan', 'cara-pemesanan', '<h2>Cara Memesan Produk Di MalasNgoding SHOP</h2>\n\n<p>Berikut adalah panduan untuk cara memesan produk di MalasNgoding SHOP. yang bisa kamu ikuti tanpa ribet.</p>\n\n<ol>\n	<li>Cari barang/produk yang kamu inginkan. kemudian klik.</li>\n	<li>Akan muncul halaman tentang detail produk yang kamu pilih.</li>\n	<li>Setelah membaca detail produk, kamu langsung bisa memilih pembelian melalui BukaLapak atau Tokopedia.</li>\n	<li>Klik pada tombol Beli Via Bukalapak atau Beli Via Tokopedia (Sesuai keinginan kamu).</li>\n	<li>Selanjutnya kamu tinggal meneruskan proses pembelian melalui toko MalasNgoding di BukaLapak atau Tokopedia.</li>\n</ol>\n\n<h3>Kenapa menggunakan BukaLapak atau Tokopedia ?</h3>\n\n<p>MalasNgoding menggunakan bukalapak atau tokopedia sebagai tempat pembayaran/pemesanan dengan alasan keamanan untuk kedua belah pihak. baik itu pihak pembeli (anda) dan pihak penjual (MalasNgoding).</p>\n\n<p>Sekian lah cara mudah memesan produk di MalasNgoding SHOP.<br />\n<br />\nHappy Shopping ..</p>\n\n<p>&nbsp;</p>\n', 'publish', ''),
(48, 'Bonus Setiap Pembelian', 'bonus-setiap-pembelian', '<p>Malasngoding.com memberikan bonus ebook belajar jquery dasar untuk setiap pembelian produk APAPUN di shop malasngoding.com. dan nantikan bonus lainnya di shop malasngoding.com</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n', 'publish', 'gratis_ebook_jquery_dasar.png'),
(49, 'Waspada Penipuan', 'waspada-penipuan', '<p>Waspadalah terhadap penipuan yang mengatas namakan Malasngoding.com. malasngoding.com hanya menjual produk melalui website shop malasngoding.com ini. dan marketplace yang di antara nya adalah :</p>\n\n<p>Bukalapak :&nbsp;<a href=\"https://www.bukalapak.com/tutorialpemrograman\">https://www.bukalapak.com/tutorialpemrograman</a></p>\n\n<p>Tokopedia :&nbsp;<a href=\"https://www.tokopedia.com/malasngoding\">https://www.tokopedia.com/malasngoding</a></p>\n', 'publish', NULL),
(50, 'Kontak Shop Malasngoding.com', 'kontak-shop-malasngodingcom', '<p>Jika ada kendala atau yang ingin kamu tanyakan, kamu bisa menghubungi tim Shop Malasngoding.com. kamu bebas konsultasi atau sekedar ingin bertanya tentang cara pembelian produk.</p>\n\n<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<td>Wa / HP</td>\n			<td>0853-6008-0642</td>\n		</tr>\n		<tr>\n			<td>Email</td>\n			<td>shop@malasngoding.com / moezanni@gmail.com</td>\n		</tr>\n	</tbody>\n</table>\n', 'publish', NULL),
(51, 'Pelanggan Bahagia', 'pelanggan-bahagia', '<p>Kamu bisa melihat atau membaca review dari pelanggan SHOP Malasngoding.com yang bahagia</p>\n\n<h3><br />\n<a href=\"https://www.tokopedia.com/malasngoding/review\" target=\"_blank\">Tokopedia</a></h3>\n\n<h3><a href=\"https://www.bukalapak.com/tutorialpemrograman/feedback?user_id=11482473&amp;filter_by=all&amp;feedback_as=all\" target=\"_blank\">BukaLapak</a></h3>\n', 'publish', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dah_posts`
--

CREATE TABLE `dah_posts` (
  `post_id` int(11) NOT NULL,
  `post_author` int(11) NOT NULL,
  `post_date` date NOT NULL,
  `post_tittle` text NOT NULL,
  `post_url` text NOT NULL,
  `post_content` text NOT NULL,
  `post_cover` text,
  `post_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dah_posts`
--

INSERT INTO `dah_posts` (`post_id`, `post_author`, `post_date`, `post_tittle`, `post_url`, `post_content`, `post_cover`, `post_status`) VALUES
(29, 1, '2016-12-02', 'tes', 'tes', '', NULL, 'Publish');

-- --------------------------------------------------------

--
-- Table structure for table `dah_products`
--

CREATE TABLE `dah_products` (
  `prod_id` int(11) NOT NULL,
  `prod_author` int(11) NOT NULL,
  `prod_date` date NOT NULL,
  `prod_name` varchar(200) NOT NULL,
  `prod_desc` text NOT NULL,
  `prod_berat` int(11) NOT NULL,
  `prod_qty` int(11) DEFAULT NULL,
  `prod_img1` varchar(255) DEFAULT NULL,
  `prod_img2` varchar(255) DEFAULT NULL,
  `prod_img3` varchar(255) DEFAULT NULL,
  `prod_img4` varchar(255) DEFAULT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_bukalapak` text NOT NULL,
  `prod_tokopedia` text NOT NULL,
  `prod_kirim` text NOT NULL,
  `prod_lokasi` text NOT NULL,
  `prod_terjual` text NOT NULL,
  `prod_jasa_kirim` text NOT NULL,
  `prod_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dah_products`
--

INSERT INTO `dah_products` (`prod_id`, `prod_author`, `prod_date`, `prod_name`, `prod_desc`, `prod_berat`, `prod_qty`, `prod_img1`, `prod_img2`, `prod_img3`, `prod_img4`, `prod_price`, `prod_bukalapak`, `prod_tokopedia`, `prod_kirim`, `prod_lokasi`, `prod_terjual`, `prod_jasa_kirim`, `prod_status`) VALUES
(33, 1, '2016-11-30', 'DVD Tutorial Analisa Dan Development Website E-Commerce', '<h2>DVD Tutorial Analisa Dan Development Website E-Commerce</h2>\n\n<p><strong>DVD Tutorial Analisa Dan Development Website E-Commerce</strong> - Ecommerce Merupakan sistem/alikasi jual beli yang di lakukan secara elektronik. sudah banyak sekali orang yang mulai berjualan secara online karena&nbsp;keuntungan yang di dapatkan memuaskan. salah satu keuntungan-nya adalah si penjual tidak membutuhkan modal untuk meyewa&nbsp;tempat berjualan. karena si penjual memasarkan produk-produk dagangan-nya melalui internet.</p>\n\n<p>Barang dagangan yang di jual di promosikan melalui jejaring sosial. sehingga mempermudah proses jual beli yang akan di lakukan. calon pembeli yang tidak memiliki banyak waktu luan pun dapat dengan mudah mencari barang yang dibutuhkan untuk di beli melalui toko online.</p>\n\n<p>Di sini kita tidak membahas tentang bagaimana cara melakukan jual beli suatu barang melalui internet, akan tetapi di sini kita menawarkan sebuah produk bagaimana menganalisa dan membuat website E-Commerce yang sangat berkualitas . Produk yang kami tawarkan yaitu DVD Tutorial Analisa Dan Development Website E-commerce. Materi dalam DVD tutorial ini di jelaskan tentang bagaimana cara membangun sebuah aplikasi e-commerce dengan menggunakan <em>framework codeigniter</em>.</p>\n\n<p>Kenapa anda harus membeli DVD Tutorial Analisa Dan Development Website E-Commerce ini ?</p>\n\n<p>Sebagai seorang Programmer Web&nbsp;tentu kita sering mendapatkan tawarann untuk membuat sebuah sistem&nbsp;jual beli(e-commerce). di zaman&nbsp;ini memang sangat banyak tersedia source code gratis di internet untuk membuat aplikasi e-commerce, tetapi&nbsp;hal ini akan menyulitkan kita untuk mengembangkan misalnya pada saat <em>client</em> meminta penambahan fitur pada system. karena agak sulit dalam mengubah dan mengembangkan aplikasi yang di buat oleh orang lain.</p>\n\n<p>Oleh sebab itu kami menawarkan produk DVD tutorial Analisa dan development website e-commerce. untuk kamu yang ingin belajar membuat aplikasi web&nbsp;e-commerce sendiri dengan menggunakan framework codeigniter. dengan membuat e-commerce sendiri tentunya akan lebih mudah jika pun ada penambahan atau perubahan sistem dari client. karena&nbsp;sudah memahami seluk beluk toko online yang kita buat sendiri.</p>\n\n<p>Oleh karena itu ayo segera pesan DVD tutorial analisa dan development website e- commerce melalui kami. dengan harga yang terjangkau anda bisa Menguasai analisa dan development website e-commerce dengan menggunakan framework codeigniter.</p>\n\n<p>Dengan membangun sebuah platform cms sendiri,tentu bisa menjadi salah satu solusi atas permasalahan yang kita bahas&nbsp;di atas tadi. karena jika anda membangun sebuah aplikasi e-commerce tentu anda harus tau seluk beluk system yang anda buat. Pada DVD Tutorial Analisa Dan Development Website E-Commerce ini&nbsp;akan membahas tentang bagaimana melakukan analisa terhadap system ecommerce yang akan kita bangun. lalu menuangkannya dalam bentuk blue-print sederhana dan mengimplementasikan nya dalam bentuk sebuah sistem e-commerce. tidak hanya berhenti di sini saja,&nbsp;kita juga akan belajar meng-online kan nya.</p>\n\n<p>jadi anda bisa membuat CMS sendiri dan membuat e-commerce sendiri. yang tidak menutup kemungkinan jika BRAND CMS/e-commerce yang anda buat sendiri dapat berkembang sangat pesat dan menjadi&nbsp;terkenal di indonesia bahkan dunia.</p>\n\n<p>Dalam membangun sistem e-commerce ini Kita akan menggunakan Freamework Codeigniter versi 3 sebagai framework-nya, dan untuk bagian user interface nya kita akan menggunakan template adminLTE sangat menarik. pada bagian halaman depan atau halaman pengunjungnya kita akan menggunakan template yang keren dan menarik untuk e-commerce. yaitu template eshooper. Semua materi pembahasan dalam tutorial ini di bahas dengan sangat sistematis dari mulai tahap analisis sampai website kita bisa di online-kan.</p>\n\n<p>Materi Apa saja yang akan anda dapatkan dengan membeli DVD tutorial Analisa dan development website e-commerce ini ?</p>\n\n<p>Adapun materi pembahasan yang tersedia pada DVD Tutorial Analisa Dan Development Website E-Commerce ini di antaranya adalah :</p>\n\n<ul>\n	<li>Materi Integrasi Framework CodeIgniter Dengan AdminLTE.</li>\n	<li>Materi Bagaimana Cara Penggunaan GIT.</li>\n	<li>Materi Perancangan blueprint system.</li>\n	<li>Materi Perancangan Database Toko Online/ecommerce.</li>\n	<li>Materi Pemisahan Content Dan template.</li>\n	<li>Materi Kelola Data Kategori Barang Produk.</li>\n	<li>Materi Kelola Data Produk.</li>\n	<li>Materi Kelola Menu Website Ecommerce.</li>\n	<li>Materi Management Halaman Statis Website.</li>\n	<li>Materi Pengelolaan data Member.</li>\n	<li>Materi Management Data Transaksi/Orderan.</li>\n	<li>Materi Integrasi Template Eshopper/halaman depan website.</li>\n	<li>Materi Kelola Menu Utama.</li>\n	<li>Materi Menampilkan Produk Perkategori pada ecommerce.</li>\n	<li>Materi Menampilkan Detail Produk Pada ecommerce.</li>\n	<li>Materi Menambahkan Data Produk.</li>\n	<li>Materi Membuat Kelola Shopcart/Keranjang Belanja.</li>\n	<li>Materi Menampilkan list product yang di beli pada cart.</li>\n	<li>Materi Update Cart/keranjang belanja.</li>\n	<li>Materi Membuat Pendaftaran Member.</li>\n	<li>Materi Membuat Login Member.</li>\n	<li>Materi Menampilkan Halaman statis.</li>\n	<li>Materi Membuat multi language/bahasa pada website.</li>\n	<li>Materi Checkout member.</li>\n	<li>Materi Checkout guest.</li>\n	<li>Materi Cara Menggunakan Filezilla.</li>\n	<li>Materi Mengupload web ke hosting.</li>\n	<li>Materi Membuat Fitur Komentar Facebook.</li>\n	<li>Materi Google Analitycs.</li>\n	<li>daftar isi video tutorial ecommerce</li>\n</ul>\n\n<p>sambil menyelam minum air. sambil belajar, source-code nya pun sepenuhnya untuk anda.</p>\n\n<ul>\n	<li>full source code</li>\n</ul>\n\n<p>Ayo segera order melalui kami. ugrade skill mu untuk membuat aplikasi&nbsp;e-commerce sendiri dengan framework codeigniter.</p>\n\n<p>Ingat !!! Hanyan Rp.135.000,- (Belum Ongkir)</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n', 100, 1000, '1084932683_an.png', '417621782full-source-code-768x399.png', '777919554daftar-isi-video-tutorial-ecommerce-768x555.png', NULL, 135000, 'https://www.bukalapak.com/p/buku/komputer-487/150mco-jual-buku-dvd-tutorial-analisis-dan-development-website-ecommarce', 'https://www.tokopedia.com/malasngoding/dvd-tutorial-analisis-dan-development-website-ecommarce', '3 hari', 'Medan', '', 'Jne, Tiki', 'Publish'),
(35, 2, '2016-12-03', 'DVD Seminggu Menguasai PHP dan MySQL Untuk Pemula', '<p><em><strong>DVD Seminggu Menguasai PHP dan MySQL Untuk Pemula</strong></em>&nbsp;&ndash; Seperti yang&nbsp;kita ketahui bersama, di era sistem informasi dimana semua keperluan di dalam kehidupan yang kerjanya bersifat manual&nbsp;sudah di beralih&nbsp;ke dalam bentuk aplikasi berbasis website. berbagai aplikasi berbasis web sudah banyak berkembang dan di gunakan oleh kebanyakan orang. Hal ini di karenakan aplikasi berbasis web mudah dan cepat untuk memenuhi kebutuhan meraka.</p>\n\n<p>Perkembangan teknologin di era informasi tentunya berdampak&nbsp;positif di dalam kehidupan manusia. salah satu alasannya memberikan kemudahan dalam bekerja di berbagai bidang. oleh karena perkembangan teknologi khusunya Website yang sudah menjadi suatu kebutuhan dalam kehidupan,&nbsp;pemrograman web pun kini telah di masukkan ke dalam kurikulum sekolah atau kampus, guna untuk mencitakan programer yang handal.&nbsp;</p>\n\n<h3>DVD Seminggu Menguasai PHP dan MySQL Untuk Pemula</h3>\n\n<p>Mungkin sebagian&nbsp;dari pemula, adik-adik atau teman-teman yang sedang belajar bahasa pemrograman Web, PHP &nbsp;dan MySQL khususnya, bingung Harus mulai belajar dari mana. kami (Malasngoding.com) merekomendasikan&nbsp;<em>DVD Seminggu Menguasai PHP dan MySQL Untuk Pemula</em>&nbsp;ini untuk&nbsp;menjadi bahan/materi&nbsp;pembelajaran. selain mengikuti tutorial-tutorial yang sudah di sediakan di malasngoding.com, teman-teman juga bisa menjadikan&nbsp;<strong>DVD Seminggu Menguasai PHP dan MySQL Untuk Pemula </strong>sebagai bahan tambahan pembelajaran.</p>\n\n<p>Materi&nbsp;dalam&nbsp;<strong>DVD Seminggu Menguasai PHP dan MySQL Untuk Pemula</strong>&nbsp;di jelaskan secara terperinci tentang bahasa pemrograman Web (PHP dan Datababase MySQL) secara detail dan jelas. sambil mendengarkan penjelasan materi&nbsp;dalam DVD tutrial ini teman-teman bisa sekaligus mempraktekkan&nbsp;supaya lebih mempercepat proses pembelajaran<strong>&nbsp;</strong>teman-teman.</p>\n\n<p>Di harapkan&nbsp;<strong>DVD Seminggu Menguasai PHP dan MySQL Untuk Pemula</strong>&nbsp;ini dapat menjadi solusi bagi teman-teman pemula yang mengalami kesulitan dalam belajar bahasa pemrograman Web, khusunya PHP dan MySQL,</p>\n\n<p>Cuma dengan harga <strong>Rp. 80.000,-</strong>&nbsp; teman-teman pemula&nbsp;sudah dapat menguasai PHP dan MySQL dalam seminggu. asal di lakukan dengan serius dan penuh tekad. dan jangan lupa berdoa supaya ilmu yang kita pelajari berkah,</p>\n\n<h3>Materi apa saja yang akan di pelajari dalam video ini ?</h3>\n\n<ul>\n	<li>Materi Cara Instalasi Xampp/Web server di Windows&nbsp;dan Linux.</li>\n	<li>Materi Pengenalan method POST dan GET (Form Handling) pada PHP.</li>\n	<li>Materi Perulangan For dan While pada PHP.</li>\n	<li>Materi Pengecekan kondisi If dan else pada PHP.</li>\n	<li>Materi Pengenalan Function pada PHP.</li>\n	<li>Materi Memahami tipe data Array pada PHP.</li>\n	<li>Materi Cookie dan Session pada PHP.</li>\n	<li>Materi Membuat Upload File dengan PHP.</li>\n	<li>Materi Download dan upload file dengan database.</li>\n	<li>Materi Simulasi pengiriman email pada localhost.</li>\n	<li>Materi Membuat pagination(penomoran)&nbsp;dengan PHP.</li>\n	<li>Materi Membuat Login dengan PHP.</li>\n	<li>Materi Membuat database.</li>\n	<li>Materi Membuat login dengan session pada PHP.</li>\n	<li>Materi Membuat pencarian data dari database .</li>\n	<li>Materi Konsep Object Oriented Programming(OOP) pada PHP.</li>\n	<li>Materi Penjelasan&nbsp;Object Oriented Programming(OOP) pada PHP.</li>\n</ul>\n\n<p>AYO !!!!!</p>\n\n<p>tunggu apa lagi. Ikuti perkembangan teknologi informasi dengan menguasai pemrograman WEB.</p>\n\n<p>Hanya dengan Rp. 80.000,- teman-teman sudah bisa menguasai&nbsp;PHP dan MySQL dalam waktu seminggu.</p>\n\n<h3>Apa saja yang di dapatkan selain video tutorial ini?</h3>\n\n<p>bonus:</p>\n\n<ul>\n	<li>Software pendukung (xampp, dan lain-lain).</li>\n	<li>Ebook gratis untuk penunjang pembelajaran.</li>\n</ul>\n\n<p>untuk Jaminan dan transaksi yang lebih aman. anda dapat memesan DVD Seminggu Menguasai PHP dan MySQL Untuk Pemula melalui bukalapak dan Tokopedia,. karena mendapat jaminan uang kembali jika video tidak sampai.</p>\n', 100, 100, '1486419950_aq.png', '401147342DVD-Seminggu-Menguasai-PHP-dan-MySQL-Untuk-Pemula-1-180x180.jpg', NULL, NULL, 80000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/1a1t89-jual-buku-dvd-tutorial-seminggu-menguasai-php-dan-mysql-untuk-pemula', 'https://www.tokopedia.com/malasngoding/dvd-tutorial-seminggu-menguasai-php-dan-mysql-untuk-pemula', '', '', '', '', 'Publish'),
(36, 2, '2016-12-03', 'DVD Tutorial Belajar Menguasai Framework CodeIgniter', '<h2>DVD Tutorial Belajar Menguasai Framework CodeIgniter</h2>\n\n<p>DVD Tutorial Belajar Menguasai Framework CodeIgniter -&nbsp;CodeIgniter adalah salah satu framework PHP yang terpopuler di dunia saat ini. banyak para developer yang menggunakan framework codeigniter untuk membangun aplikasi berbasis Web.</p>\n\n<p>Lebih lengkap nya tentang produk DVD ini silahkan teman-teman baca pada artikel sebelumya di www.malasngoding.com. yaitu tentang&nbsp;<a href=\"http://www.malasngoding.com/video-tutorial-cara-mudah-menguasai-framework-codeigniter/\" target=\"_blank\">Video tutorial cara mudah menguasai framework codeigniter</a>.&nbsp;Di sini kami menawarkan bagi anda yang ingin cepat bisa menguasai framework codeigniter. anda bisa melakukan pemesanan&nbsp;<em><strong>DVD Tutorial Belajar Menguasai Framework CodeIgniter</strong></em>&nbsp; dengan harga murah dan di pastikan anda dapat menguasai framework codeigniter dengan cepat. asalkan serius dalam belajar.</p>\n\n<p>Metode pembelajaran yang di tawarkan sangat efektif,&nbsp;belajar sambil membangun aplikasi Point Of Sales. jadi tidak hanya bisa menguasai framework codeigniter, akan tetapi tidak terasa sambil anda belajar aplikasi POS anda pun siap dionlinekan. Penjelasan dari author yang sangat jelas dan mendetail. karena author membahas materi sambil mempraktekkan langsung pembelajaran.&nbsp;<em><strong>DVD Tutorial Belajar Menguasai Framework CodeIgniter</strong></em>.</p>\n\n<h3>Materi Apa Saja yang Anda Dapatkan Dengan Membeli Produk ini ?</h3>\n\n<ul>\n	<li>DVD Tutorial Belajar Menguasai Framework CodeIgniter&nbsp;dengan studi kasus Membuat Aplikasi Point Of Sales(POS).</li>\n	<li>full sourcecode hasil pembelajaran dari video.</li>\n	<li>softwere dalam mengikuti video tutorial ini seperti misalnya Xampp, text editor yang kami gunakan dan lain-lain.</li>\n	<li>FREE Ebook pendukung.</li>\n	<li>Video motivasi programmer.</li>\n	<li>Beberapa video tutorial php native dan oop PHP.</li>\n	<li>dan masih banyak lagi yang lainnya.</li>\n	<li>Free EBOOK BELAJAR JQUERY DASAR dari malasngoding.com.</li>\n</ul>\n\n<h3>Apa Saja Isi Pokok Pembahasan Dalam Video ini ?</h3>\n\n<ul>\n	<li>Materi Cara Instalasi framework codeigniter di localhost(XAMPP).</li>\n	<li>Materi Pengenaan Konsep MVC.</li>\n	<li>Materi Controller, View dan Model pada CI.</li>\n	<li>materi Membuat dan menggunakan helper&nbsp;CodeIniter.</li>\n	<li>Materi Membuat dan menggunakan library CodeIniter.</li>\n	<li>Materi File Upload dengan CodeIgniter.</li>\n	<li>Materi Studi kasus aplikasi point of sales(penjualan).</li>\n	<li>Materi Menyediapkan&nbsp;database.</li>\n	<li>Materi Membuat login.</li>\n	<li>Materi CRUD&nbsp;Barang.</li>\n	<li>Materi CRUD&nbsp;Kategori Barang.</li>\n	<li>Materi CRUD Operator/Admin.</li>\n	<li>Materi Menghubungkan&nbsp;bootstrap.</li>\n	<li>Materi cetak&nbsp;form transaksi penjualan.</li>\n	<li>Materi cetak laporan penjualan.</li>\n	<li>Materi Export laporan bentuk PDF.</li>\n	<li>Materi Export laporan bentuk Excel.</li>\n	<li>Materi Keamanan Session.</li>\n	<li>Materi Membuat penomoran atau pagination.</li>\n</ul>\n\n<h3>Kenapa Anda Harus Memesan Melalui MalasNgoding.com ?</h3>\n\n<p>Dengan melakukan pemesanan melalui malasngoding.com anda akan mendapatkan BONUS EBOOK JQUERY DASAR.</p>\n\n<p>Order sekarang sebelum ketinggalan dan upgrade SKILL Pemrograman mu !!!</p>\n\n<p>Hanya <strong>Rp.90.000,-</strong> (Belum termasuk ongkir).</p>\n', 100, 100, '184301813_aw.png', '1449907409video-tutorial-cara-mudah-menguasai-framework-codeigniter.png', '1121242812_video-tutorial-cara-mudah-menguasai-framework-codeigniter_(1).png', NULL, 90000, 'https://www.bukalapak.com/p/buku/komputer-487/14rn36-jual-buku-video-tutorial-cara-mudah-menguasai-framework-codeigniter', 'https://www.tokopedia.com/malasngoding/video-tutorial-cara-mudah-menguasai-framework-codeigniter', '', '', '', '', 'Publish'),
(37, 2, '2016-12-04', 'DVD Tutorial Membangun Layanan SMS Online Berbasis Client Server', '<p><em><strong>DVD Tutorial Membangun Layanan SMS Online Berbasis Client Server</strong></em>&nbsp;&ndash; SMS(Short Message Service) adalah salah satu media untuk berkomunikasi atau meyampaikan pesan yang di gunakan hampir oleh semua orang. pada zaman era serba maju ini, SMS menjadi salah satu media penyampaian pesan yang sangat populer sekali, karena kemudahan mengakses nya baik itu di gunakan untuk mengirimkan pesan atau pun menerima pesan. asalkan nomor handphone yang di cantumkan&nbsp;benar sebagai nomor tujuan pesan.</p>\n\n<p>Malasngoding.com bekerja sama dengan belajarphp.net dalam membuat tutorial yang berkualitas untuk bahan pembelajaran kepada siapa saja yang ingin mempelajari bahasa pemrograman.khususnya pemrograman berbasis web.&nbsp;produk&nbsp;<strong>DVD Tutorial Membangun Layanan SMS Online Berbasis Client Server</strong>&nbsp; ini adalah salah satu produk video tutorial yang akan membahas segala macam tentang&nbsp;<strong>cara membuat sms gateway</strong>&nbsp;atau&nbsp;<strong>membuat layanan SMS Online berbasis client server</strong>.</p>\n\n<h3>Pengertian SMS Gateway</h3>\n\n<p>SMS Gateway adalah sebuah sistem/aplikasi yang di gunakan untuk menerima atau mengirimkan SMS. SMS Gateway sudah sangat populer di gunakan pada aplikasi-aplikasi yang di haruskan untuk mengirimkan pesan kepada user. baik itu mengirimkan SMS secara perorangan maupun secara massal. Biasanya di gunakan untuk mengirimkan SMS broadcast kepada seluruh pelanggan, atau mengirimkan sms pemberitahuan kepada user yang menunggak bayaran iyuran dan lain-lainnya.</p>\n\n<p>Terbayang tidak di benak teman-teman jika sistem atau aplikasi yang teman-teman buat bisa terintegrasi dengan sistem&nbsp;<strong>SMS gateway</strong>? teman-teman bisa membuat aplikasi teman-teman mampu mengirimkan SMS secara otomatis, terjadwal maupun autoreplay ke pada user/client teman-teman.</p>\n\n<h3>Apa saja yang bisa teman-teman buat dengan SMS Gateway ?</h3>\n\n<ul>\n	<li>SMS Otomatis</li>\n	<li>SMS Broadcast</li>\n	<li>SMS Autoreplay</li>\n	<li>SMS Terjadwal</li>\n</ul>\n\n<p>Penjelasan singkat tentang ketiga point di atas adalah,&nbsp;<strong>SMS Otomatis</strong>&nbsp;yang berarti sistem mampu mengirimkan SMS secara otomatis,&nbsp;<strong>SMS autoreplay</strong>&nbsp;berarti sistem teman-teman mampu menanggapi sms yang masuk dari user(pengirim) dengan menggunakan format sms tertentu. contoh nya yang sering kita jumpai adalah seperti KETIK REG spasi sekian-sekian&hellip;. dan yang di maksud dengan&nbsp;<strong>SMS terjadwal</strong>&nbsp;adalah teman-teman bisa menentukan sistem teman-teman untuk mengirimkan sms secara terjadwal. misalnya kita&nbsp;mengatus sistem untuk mengirimkan sms pada jam yang sudah kita tentukan.</p>\n\n<h3>Kenapa harus membeli tutorial ini&nbsp;?</h3>\n\n<p>Tuntutan pada era modern ini sudah sangat maju. sehingga akan&nbsp;sangat banyak client yang meminta programmer(anda) untuk membuat sebuah sistem aplikasi yang terintegrasi dengan SMS Gateway. salah satu contoh keharusan SMS Gateway yang sekarang ini sedang populer adalah adanya fitur SMS pemberitahuan tentang tunggakan bayaran kepada user, SMS broadcast kepada pelanggan tentang informasi yang ingin di sampaikan. bahkan tidak menutup kemungkinan ada kampus yang&nbsp;menginginkan sistem sms gateway untuk mengirimkan sms pengumuman kepada mahasiswa tertentu bahkan semua mahasiswa.</p>\n\n<h3>Apa saja yang anda dapatkan dengan membeli&nbsp;DVD Tutorial Membangun Layanan SMS Online Berbasis Client Server ?</h3>\n\n<ul>\n	<li>Video tutorial membangun layanan sms online.</li>\n	<li>Full source code.</li>\n	<li>Master aplikasi pendukung dalam pembuatan sms gateway.</li>\n	<li>Dan lain-lain.</li>\n</ul>\n\n<h3>Apa saja yang akan di pelajari ?</h3>\n\n<p>Pembahasan di tutorial ini sangat jelas dan detail, di kemas dengan bahasa yang mudah di cerna dan di harapkan dapat bermanfaat kepada teman-teman. dan adapun isi pembahasan pada DVD tutorial membangun layanan SMS Online berbasis client server ini adalah :</p>\n\n<ul>\n	<li>Materi Instalasi dan konfigurasi Gammu</li>\n	<li>Materi Penjelasan pada table Gammu</li>\n	<li>Materi Konsep HMVC</li>\n	<li>Materi Integrasi template AdminLTE</li>\n	<li>Materi Integrasi HMVC</li>\n	<li>Materi Perbaikan&nbsp;menu</li>\n	<li>Materi Layout tampilan halaman Inbox, Outbox, Groups dan Phonebook</li>\n	<li>Materi CRUD Grups</li>\n	<li>Materi CRUD Phonebook</li>\n	<li>Materi Management fitur inbox atau pesan masuk</li>\n	<li>Materi Detail dan hapus sms</li>\n	<li>Materi Membuat helper sms</li>\n	<li>Materi SMS Broadcast dengan teknik Ajax JQuery</li>\n	<li>Materi Integrasi dengan Server Hosting</li>\n	<li>Materi Membuat API sinkronisasi data inbox</li>\n	<li>Materi Demo cara kerja API Outbox Pada server SMS Center</li>\n	<li>Materi Membuat API untuk membaca outbox SMS Center</li>\n	<li>Materi Layanan API Outbox pada&nbsp;server</li>\n	<li>Materi Teknik SMS Autoreplay</li>\n	<li>Materi Membuat proses verifikasi token</li>\n	<li>Materi Penutupan</li>\n</ul>\n\n<p>Ayo order segera. jangan biarkan skill kita berjalan di tempat. beli tutorial ini dan tingkatkan skill mu dalam&nbsp;<strong>membangun layanan SMS Online</strong>.</p>\n\n<h3>Rp.145.000,-</h3>\n', 100, 100, '1108034724_at.png', '1382244312membuat-sms-gateway-1-180x180.png', '660633296sms-gateway-180x180.png', '465616817membuat-aplikasi-sms-online-berbasis-client-server.png', 145000, 'https://www.bukalapak.com/p/buku/komputer-487/158w4r-jual-buku-dvd-tutorial-membangun-layanan-sms-online-berbasis-client-server', 'https://www.tokopedia.com/malasngoding/dvd-tutorial-membangun-layanan-sms-online-berbasis-client-server', '', '', '', '', 'Publish'),
(38, 2, '2016-12-04', 'DVD Tutorial Membuat Aplikasi Dengan CodeIgniter, Javascript Dan Ajax JQuery', '<p><em><strong>DVD Tutorial Membuat Aplikasi Dengan CodeIgniter, Javascript Dan Ajax JQuery</strong></em>&nbsp;&ndash;&nbsp;Pada dvd tutorial ini, akan di jelaskan materi tentang membuat aplikasi dengan teknik ajax. dimana ajax sendiri merupakan suatu teknik dalam teknologi Web tanpa perlu reload (refresh) halaman. dan di buat dengan menggunakan javascript atau bisa juga dengan jquery yang telah menyediakan function khusus untuk membuat ajax menjadi lebih mudah.</p>\n\n<p>Jquery adalah library Javascript yang sangat di kenal di kalangan development website. dengan menggunakan jquery, pengoperasian javascript pada website akan lebih mudah di lakukan. pada malasngoding.com juga telah di bahas tentang dasar-dasar tutorial jquery (silahkan dibaca).</p>\n\n<p>Pada materi dalam&nbsp;dvd ini akan di jelaskan secara mendetail tentang cara membuat aplikasi POS dengan menggunakan teknik ajax jquery.</p>\n\n<p>Materi Apa saja yang akan anda pelajari padaDVD Tutorial Membuat Aplikasi Dengan CodeIgniter, Javascript Dan Ajax JQuery ini ?</p>\n\n<ul>\n	<li>Materi Perkenalan dasar Javascript.</li>\n	<li>Materi Pengenalan Variabel pada Javascript.</li>\n	<li>Materi Pengenalan Operator Javascript.</li>\n	<li>Materi Pengenalan Type Data Javascript.</li>\n	<li>Materi Pengenalan dengan Array pada Javascript.</li>\n	<li>Materi Pengenalan Switch dan If pada javascript.</li>\n	<li>Materi Pengenalan Event pada Javascript.</li>\n	<li>Materi Pengenalan Selektor pada Jquery.</li>\n	<li>Materi Pengenalan Efek Dengan Jquery.</li>\n	<li>Materi Cara Menampilkan Data Kota dengan teknik ajax tanpa reload.</li>\n	<li>Materi Cara Membuat Posting status ala facebook.</li>\n	<li>Materi Cara Menampilkan Status dengan teknik Ajax.</li>\n	<li>Materi Membuat Pencarian Dengan teknik Ajax.</li>\n	<li>Materi Cara membuat Hapus Data dengan teknik Ajax Jquery menggunakan efek.</li>\n	<li>Materi Cara Membuat Users Level Operator.</li>\n	<li>Materi Membuat CRUD data customer.</li>\n	<li>Materi Membuat CRUD data supplier.</li>\n	<li>Materi Membuat Transaksi Pembelian Dengan Ajax Jquery.</li>\n	<li>Materi Membuat Helper Tanggal.</li>\n	<li>Materi Membuat Laporan Stok Barang.</li>\n	<li>Materi Membuat Export Data ke ms.word.</li>\n</ul>\n\n<p>Selain video tutorial juga di sertakan software-software pendukung yang di gunakan untuk proses belajar, tidak hanya itu saja. akan ada juga ebook pendukung lainnya untuk membantu proses belajar.</p>\n\n<p>Penasan &nbsp;???</p>\n\n<p>silahka pesan sekarang hanya dengan <strong>Rp. 95.000</strong>,- kamu langsung bisa menerima&nbsp;DVD Tutorial Membuat Aplikasi Dengan CodeIgniter, Javascript Dan Ajax JQuery. DIJAMIN Bisa Asalkan Serius Dalam Mempelajari...!!!</p>\n', 100, 100, '105040712_ar.png', '1494543967isi_dvd_ajaxx-180x180.png', '91971275isi_materi_ajaxx-180x180.png', NULL, 95000, 'https://www.bukalapak.com/p/buku/komputer-487/3d8z9j-jual-buku-dvd-tutorial-membuat-aplikasi-dengan-codeigniter-javascript-dan-ajax-jquery', 'https://www.tokopedia.com/malasngoding/dvd-tutorial-membuat-aplikasi-dengan-codeigniter-javascript-dan-ajax', '', '', '', '', 'Publish'),
(39, 2, '2016-12-04', 'DVD Tutorial Panduan Sakti Menguasai LARAVEL 5', '<p><em><strong>DVD Tutorial Panduan Sakti Menguasai LARAVEL 5</strong></em>&nbsp;&ndash; Seperti pada judul produk ini. DVD tutorial panduan menguasai Laravel 5 adalah video tutorial berbahasa indonesia yang menjelaskan Framework&nbsp;laravel 5. Laravel 5 adalah salah satu framework PHP yang paling dininati para programmer saat&nbsp;ini sama seperti codeigniter. framework laravel saat ini sedang sangat naik daun. rilis pertama, Framework ini langsung mampu menyaingi framework php lainnya seperti Yii, CodeIgniter.</p>\n\n<p>Adapun contoh kasus pembahasan dvd ini adalah akan langsung&nbsp;<em>membuat aplikasi minibank dengan menggunakan framework Laravel</em>. dengan penjelasan yang mendetail oleh author yang sangat berpengalaman.</p>\n\n<p>Sangat banyak&nbsp;web developer yang jatuh cinta dengan framework ini. di karenakan framework laravel adalah framework yang&nbsp;memiliki fitur yang mampu&nbsp;memanjakan penggunanya. Anda penasaran ? berikut ini adalah materi dari&nbsp;<strong>DVD Tutorial Panduan Sakti Menguasai LARAVEL 5</strong>&nbsp;yang dapat anda pelajari.</p>\n\n<h3>Materi Apa saja yang akan anda pelajari dalam DVD Tutorial Panduan Sakti Menguasai LARAVEL 5 ?</h3>\n\n<p>Pengenalan Dasar</p>\n\n<ul>\n	<li>Materi Cara menginstal dan konfigurasi Framework Laravel 5 pada Windows 7.</li>\n	<li>Materi Implementasi konsep routing Laravel 5.</li>\n	<li>Materi Sistem blade templating engin Laravel 5.</li>\n	<li>Materi Passing data pada Laravel 5.</li>\n	<li>Materi Menghubungkan Laravel dengan Bootstrap.</li>\n	<li>Materi Cara Install dapedency.</li>\n	<li>Materi Pembuatan skema database dengan migration.</li>\n	<li>Materi Pengenalan Konsep Eloqueen dan Model pada Laravel 5.</li>\n	<li>Materi Query Bulder dan seeding pada Laravel 5.</li>\n	<li>Materi Cara membuat CRUD (Create, Read, Update, Delete) data dengan Laravel 5.</li>\n	<li>Materi Membuat proses pendaftaran dengan laravel 5.</li>\n	<li>Materi Membuat proses login dengan laravel 5.</li>\n	<li>Materi Membuat proses transaksi dengan laravel 5.</li>\n	<li>Materi Penggunaan middleware.</li>\n	<li>Materi Cara membuat helper dengan Laravel 5.</li>\n	<li>Materi Export laporan ke pdf dengan Laravel 5.</li>\n	<li>Materi Export laporan ke file excel dengan Laravel 5.</li>\n	<li>Materi Pengelolaan saldo nasabah dengan Laravel 5.</li>\n	<li>Materi Akhir dan penutupan Laravel 5.</li>\n</ul>\n\n<p>Pesan Sekrang, karena semakin cepat anda mesan semakin cepat pula anda bisa mempelajari dengan mudah Framework Laravel.&nbsp;</p>\n\n<p>Tunggu apa lagi, Silahkan Pesan Sekarang. Hanya Dengan <strong>Rp.125.000,- </strong>(Belum Termasuk ONGKIR)&nbsp;</p>\n\n<p>&nbsp;</p>\n', 100, 100, '315837655_ae.png', '1993481517_laravel5x1.png', NULL, NULL, 125000, 'https://www.bukalapak.com/p/buku/komputer-487/3d8h1r-jual-buku-dvd-tutorial-panduan-sakti-menguasai-laravel-5', 'https://www.tokopedia.com/malasngoding/dvd-tutorial-panduan-sakti-menguasai-laravel-5', '', '', '', '', 'Publish'),
(41, 1, '2016-12-05', '7 Hari Jago WEB DESIGN - HTML, CSS dan Javascript Untuk Pemula', '<p><em><strong>7 Hari Jago WEB DESIGN - HTML, CSS dan Javascript Untuk Pemula</strong></em> - HTML, CSS dan Javascript adalah pondasi dasar yang harus di kuasai oleh seseorang yang ingin menjadi web designer. sebuah profesi yang sangat membutuhkan seni yang tinggi. dan kejelian dalam mencari ide ide baru tentang design sebuah template.</p>\n\n<p>Bagi kamu yang ingin menjadi web designer hebar, kami memiliki solusi yang praktis. yaitu dengan DVD tutorial 7 Hari Jago WEB DESIGN ini. akan di jelaskan secara terperinci tentang HTML, CSS dan Javascript untuk pemula. dengan pada akhirnya akan di tutup dengan sebuah studi kasus, yaitu membuat website portofolio yang sangat keren dan menarik.</p>\n\n<h2>Apa saja yang akan kamu pelajari di DVD ini ?</h2>\n\n<h3>HTML</h3>\n\n<ul>\n	<li>Berkenalan dengan website</li>\n	<li>Berkenalan dengan HTML Dasar</li>\n	<li>Instalasi software pendukung untuk membuat template</li>\n	<li>Berkenalan dengan element-element HTML</li>\n	<li>Heading pada HTML</li>\n	<li>Paragraf pada HTML</li>\n	<li>Berkenalan dengan Style dalam HTML</li>\n	<li>Comment pada HTML</li>\n	<li>Hyperlink antar halaman dengan HTML</li>\n	<li>Menampilkan gambar pada halaman HTML</li>\n	<li>Menampilkan data dalam bentuk tabel HTML</li>\n	<li>Menampilkan data dalam bentuk list HTML</li>\n	<li>Iframe pada HTML</li>\n	<li>Embed halaman HTML</li>\n	<li>Element Form HTML</li>\n	<li>DIV dan SPAN pada HTML</li>\n</ul>\n\n<h3>CSS</h3>\n\n<ul>\n	<li>Pengenalan CSS</li>\n	<li>Teknik penulisan CSS inline</li>\n	<li>CSS Internal</li>\n	<li>CSS External</li>\n	<li>Border, Background dan color pada CSS</li>\n	<li>Padding dan Margin pada CSS</li>\n	<li>Jenis Font pada CSS</li>\n	<li>Button dan Font dengan CSS</li>\n	<li>CSS Float pada layout HTML</li>\n	<li>Membuat navigation bar dengan CSS</li>\n	<li>Membuat warna gradient dan radius dengan CSS</li>\n	<li>CSS3 Transition dan animation</li>\n</ul>\n\n<h3>Javascript</h3>\n\n<ul>\n	<li>Pengenalan Javascript</li>\n	<li>Javascript internal</li>\n	<li>Javascript external</li>\n	<li>Variabel dan operator aritmatika dengan javascript</li>\n	<li>Switch Case pada Javascript</li>\n	<li>Kondisi If Else pada Javascript</li>\n	<li>Event Javascript</li>\n	<li>Function pada javascript</li>\n	<li>Pengenalan tipe data object pada javascript</li>\n</ul>\n\n<h3>Membuat website portofolio</h3>\n\n<ul>\n	<li>Persiapan&nbsp;</li>\n	<li>Membuat menu navigasi</li>\n	<li>Membuat banner</li>\n	<li>Membuat contact dan footer</li>\n	<li>Dan selengkapnya</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>Berikut ini adalah sedikit cuplikan video DVD TUTORIAL 7 HARI JAGO WEB DESIGN - HTML CSS dan Javascript</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n', 100, 10000, '1049288728_ax.png', '649046544cover_7_hari_jago_web_design_-_html_css_dan_javascript_dasar_untuk_pemula.jpg', '6058629267_hari_jago_web_design_-_html_css_dan_javascript_dasar_untuk_pemula.png', '359685536isi_7_hari_jago_web_design_-_html_css_dan_javascript_dasar_untuk_pemula.png', 100000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/6dfw45-jual-buku-7-hari-jago-web-design-html-css-dan-javascript-untuk-pemula', 'https://www.tokopedia.com/malasngoding/7-hari-jago-web-design-html-css-dan-javascript-untuk-pemula?n=1', '', '', '', '', 'Publish'),
(42, 1, '2016-12-07', 'DESAIN THEMES TOKO ONLINE DENGAN HTML DAN CSS + Ebooks Jquery', '<p><em><strong>DVD Tutorial Desain Toko Online (E-Commerce) Dengan HTML dan CSS</strong></em> -&nbsp;Pada saat ini e-commerce atau toko online telah menjadi sebuah bisnis yang menjanjikan dan telah mengalami perkembangan yang pesat di indonesia, khusunya di dunia. dan telah menjadi keharusan untuk pada pelaku bisnis untuk membuat <em>toko online</em> untuk lebih menarik pelanggan. serta menjawab persaingan di dunia internet marketing.</p>\n\n<p>hal ini memberikan peluang kerja yang besar untuk web developer dan web designer untuk mengembangkan toko online dengan tampilan yang menarik untuk menggaet pelanggan sekaligus membuat toko online memiliki kesan yang exclusive.</p>\n\n<h3>Apa saja yang akan kamu pelajari dalam dvd tutorial desain tema toko online atau<strong> e-commerce</strong> dengan html dan css ini ?</h3>\n\n<p>berikut adalah daftar judul materi yang akan di pelajari dalam dvd tutorial ini.</p>\n\n<p>Persiapan</p>\n\n<ul>\n	<li>Instalasi text editor</li>\n	<li>Persiapan directory folder CSS, JS, gambar dan lain-lain.</li>\n</ul>\n\n<p>Materi</p>\n\n<ul>\n	<li>Menghubungkan HTML dan CSS</li>\n	<li>Membuat file CSS</li>\n	<li>Menghubungkan HTML dengan Javascript(js)</li>\n	<li>Instalasi Font untuk website di file CSS</li>\n	<li>Penggunaan font-awesome untuk membuat icon</li>\n	<li>Pembuatan container pada website</li>\n	<li>Pembuatan header pada halaman website</li>\n	<li>Menambahkan logo website</li>\n	<li>Pembuatan menu navigasi pada header.</li>\n	<li>Pembuatan dropdown menu pada header</li>\n	<li>Pembuatan Cart (keranjang belanja) pada header</li>\n	<li>Pembuatan small header</li>\n	<li>Penambahan form pencarian pada small header</li>\n	<li>penambahan menu login dan pendaftaran</li>\n	<li>Pembuatan slider pada halaman depan website</li>\n	<li>Pengenalan JQuery</li>\n	<li>Kostumisasi tombol next dan prev pada slider</li>\n	<li>Pembuatan content produk yang di jual</li>\n	<li>Perhitungan matematka untuk membuat grid content(responsive)</li>\n	<li>Menyisipkan gambar pada html dan css</li>\n	<li>Pembuatan link pagination pada content product</li>\n	<li>Membuat bagian testimonial</li>\n	<li>Pembuatan footer untuk toko online</li>\n	<li>Membuat halaman detail produk</li>\n	<li>Pembuatan Judul, harga dan deskripsi untuk produk</li>\n	<li>Pembuatan menu penting dalam toko online</li>\n	<li>Add to cart, report, add to wishlist</li>\n	<li>Pembuatan halaman review pada halaman etail produk utnuk testimonial dari pelanggan.</li>\n	<li>Penambahan form untuk menambahkan review dari customer atau pelanggan &nbsp;</li>\n	<li>Membuat halaman untuk hasil pencarian</li>\n	<li>Pembuatan halaman kategori dari produk tertentu</li>\n	<li>Membuat daftar produk di keranjang belanja</li>\n	<li>Menu checkout untuk produk</li>\n	<li>Pembuatan form login</li>\n	<li>Pembuatan form registrasi</li>\n</ul>\n\n<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br />\nSERTA ADA LEBIH DARI 12 VIDEO DAN PULUHAN LAGI PEMBAHASAN DI <em><strong>DVD Tutorial Desain Web Toko Online Menggunakan HTML dan CSS</strong></em> INI</p>\n', 100, 1000, '1224273591_qq.png', '1748655537DVD-Tutorial-Desain-Web-Toko-Online-Menggunakan-HTML-dan-CSS-.png', '876205471SOURCE-CODE-YANG-DIDAPATKAN.png', '323315496_DVD-Tutorial-Desain-Web-Toko-Online-Menggunakan-HTML-dan-CSS.png', 80000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/577hr5-jual-buku-desain-themes-toko-online-dengan-html-dan-css-ebooks-jquery', 'https://www.tokopedia.com/malasngoding/129858971?n=1', '', '', '', '', 'Publish'),
(44, 2, '2016-12-08', 'EBOOK MATERI BELAJAR WEB TERLENGKAP', '<p>EBOOK MATERI BELAJAR WEB LENGKAP DARI ILMUWEBISTE<br />\nmateri-materi yang dibahas dalam DVD tutorial ini berasal ilmuwebsite. dimana ilmuwebsite ini sudah dipercaya oleh banyak kalangan programmer baik profesional maupun newbie.&nbsp;<br />\nIlmuwebsite Offline hadir memberikan materi pembelajaran secara lebih mudah dan terstruktur, berdasarkan pengalaman para founder ilmuwebsite selama lebih dari 10 tahun bergelut di bidang web development dan web design.</p>\n\n<p>#DVD 1<br />\nBagian 1 :MATERI HTML &amp; CSS<br />\n1. Mengapa HTML dan CSS<br />\n2. aplikasi yang dibutuhkan HTML dan CSS<br />\n3. Mulai HTML dan CSS<br />\n4. Cara Mengatur font pada halaman HTML<br />\n5. Cara Membuat paragraf dan heading HTML<br />\n6. mengenal Lebih dalam struktur HTML<br />\n7. Cara Menampilkan gambar pada halaman HTML<br />\n8. Cara Mengatur style text pada halaman HTML<br />\n9. Cara Membuat garis (horizontal rule) pada halaman HTML<br />\n10. Cara Membuat link menghubungkan halaman HTML<br />\n11. Cara Membuat animasi text bergerak<br />\n12. Cara Membuat list di halaman HTML<br />\n13. Cara Membuat table pada halaman HTML<br />\n14. Cara Membuat form pada halaman HTML<br />\n15. Memulai Belajar CSS<br />\n16. Cara Penggunaa CSS<br />\n17. Struktur penulisan pada CSS<br />\n18. Lebih lanjut bekerja dengan CSS<br />\n19. Membuat halaman website dengan minimalis<br />\n20. berkenalan HTML dan CSS cheat sheet</p>\n\n<p>Bagian 2 :MATERI Belajar JQUERY<br />\n21. Alasan menggunakan JQUERY<br />\n22. Bekerja Menggunakan JQUERY<br />\n23. Memulai dasar menguasai JQUERY<br />\n24. Cara Menggunakan JQUERY traversing<br />\n25. Cara Menggunakan JQUERY Effetc<br />\n26. Cara menggunakan JQUERY Efent<br />\n27. Cara Menggunakan selector JQUERY<br />\n28. Cara Menggunakan JQUERY maniulation<br />\n29. Cara Menggunakan JQUERY ajax</p>\n\n<p>Bagian 3 :MATERI Belajar PHP &amp; MYSQL<br />\n30. Instalasi xampp (Webserver)<br />\n31. cara Menggunakan function untuk efesiensi coding<br />\n32. Cara Menggunakan include dan require untuk efesiensi coding<br />\n33. Cara menggunakan perulangan for, while, do while<br />\n34. Cara menggunakan pemilihan switc<br />\n35. Cara Menggunakan argumen if dan eles<br />\n36. Cara Menggunakan operator<br />\n37. Cara Menggunakan Constant dan variabel&nbsp;<br />\n38. Cara Integrasi HTML dan PHP<br />\n39. Bagaimana Memulai membuat halaman PHP<br />\n40. Star berkerja dengan PHP<br />\n41. Pengenalan Array<br />\n42. Cara Menggunakan foreach<br />\n43. Cara Manipulasi string<br />\n44. Penggunaan Syntax alternatif untuk PHP, echo, one quote, dan double quote<br />\n45. Bekerja dengan file dan directori<br />\n46. Bekerja dengan date and Time<br />\n47. Bekerja dengan PHP dan database MySQL<br />\n48. Cara Menampilkan data MySQL dalam table via PHP<br />\n49. Pembuatan form menggunakan PHP<br />\n50. Cara Memanfaatkan form untuk mengedit database MySQL<br />\n51. berkenalan lebih lanjut dengan form<br />\n52. Cara mengirim email dengan menggunakan script PHP<br />\n53. Cara Membuat Autentikasi login dan session dan cookies<br />\n54. cara Menggunakan engkripsi MD5 dan SHA1<br />\n55. membuat sistem informasi administrasi mahasiswa (Studi KASUS)</p>\n\n<p>Bagian 4 :MATERI BElajar PHP FRAMEWORK CODEIGNITER<br />\n56. Mengapa harus menggunakan PHP Framework<br />\n57. instalasi dan configurasi codeigniter<br />\n58. pengenalan MVC pada codeigniter<br />\n59. pengenalan scurity (sistem keamanan) pada codeigniter<br />\n60. update file dan manipulasi image/gambar menggunakan codeigniter&nbsp;<br />\n61. Cara Membuat data pagination menggunakan codeigniter<br />\n62. Cara membuat form validation<br />\n63. Cara Membuat form login pada codeigniter<br />\n64. pembuatab CRUD(create, Read, Update, Delete) database MySQL Menggunakan Codeigniter</p>\n\n<p>Bagian 5 : MATERI BELAJAR JOOMLA<br />\n65. kenalan dengan joomla bagian 1<br />\n66. kenalan dengan joomla bagian 2<br />\n67. installasi Xampp<br />\n68. Instalasi joomla<br />\n69. proses Upload hingga online<br />\n70. proses login and User Area<br />\n71. Marquee text module<br />\n72. Right modul<br />\n73. Top menu<br />\n74. Artikel dan memanggil menggunakan menu<br />\n75. Artikel Front page<br />\n76. Management Artikel<br />\n77. Mengubah header<br />\n78. Instalasi joomla tahap 2<br />\n79. Struktur template joomla</p>\n\n<p>Bagian 6 :MATERI MASTERING WORDPRESS<br />\n80. Instalasi langkah 1 (offline)<br />\n81. instalasi langkah 2<br />\n82. Instalasi langkah 3<br />\n83. Instalasi langkah 4 (finishing)<br />\n84. Mengenal struktur widget langkah 2<br />\n85. Themes&nbsp;<br />\n86. Mengenal struktur widget<br />\n87. Mengenal widget<br />\n88. Mengenal dahboard dan posting</p>\n\n<p>#DVD 2<br />\nBAGIAN 1 : MATERI HTML &amp; CSS<br />\n89. Membuat popup dengan JQUERY dan CSS<br />\n90. Mengetik realtime dengan document objek modul<br />\n91. Membuat tooltip dengan JQUERY<br />\n92. Menyamakan tinggi kolom DIV yang berbeda dengan JQUERY<br />\n93. Zurb &amp; Twitter bootstrap : Membuat tampilan web makin cepat&nbsp;<br />\n94. Cara membuat RSS 2.0<br />\n95. Membuat logo pada addres bar<br />\n96. Membuat statud YM<br />\n97. Beautifull form with CSS<br />\n98. Membuat box style link cantik dengan CSS<br />\n99. Tab CSS menu sederhana<br />\n100. Trik membuat submit button dengan image</p>\n\n<p>BAGIAN 2 : MATERI BELAJAR JQUERY<br />\n101. cara Membuat popu menu dengan JQUERY<br />\n102. Cara Mengetik realtime dengan document objek model<br />\n103. Cara Membuat tooltip dengan JQUERY<br />\n104. Menyamakan Tinggi kolom DIV yang berbeda dengan JQUERY</p>\n\n<p>BAGIAN 3 : MATERI PHP &amp; MYSQL<br />\n105. Tutorial membuat komentar pada artikel<br />\n106. Cara Membuat page 1 2 3<br />\n107. validasi form dengan PHP<br />\n108. Cara Membuat scurity code | scurity image | anti spam<br />\n109. cara Membuat system LOG dengan flat file&nbsp;<br />\n110. metode searching sederhana v.1<br />\n111. validasi form dengan php 2<br />\n112. Script PHP informasi anda - IP- Proxy - koneksi<br />\n113. Multiple delete record dengan checkbox<br />\n114. cara Membuat dinamic title</p>\n\n<p>BAGIAN 5 : MATERI JOOMLA<br />\n115. Cara menonaktifkan website sementara dengan aman via htaccess<br />\n116. Membuat plugin&nbsp;<br />\n117. Cara menemukan catogory ID</p>\n\n<p>BAGIAN 4 : MATERI PHP FRAMEWORK CODEIGNITER<br />\n118. CMS berbasis Codeigniter<br />\n119.10 Framework PHP terbaik</p>\n\n<p>&nbsp;</p>\n\n<p>PESAN SEKARANG DAN DAPATKAN BONUS TAMBAHAN DARI MALASNGODING.COM&nbsp;</p>\n\n<p><em><strong>EBOOK MATERI BELAJAR WEB TERLENGKAP DARI ILMUWEBISTE</strong></em></p>\n', 100, 1000, '332327694_il.png', 'wwww.png', NULL, NULL, 75000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/58f0vk-jual-buku-ebook-materi-belajar-web-lengkap-dari-ilmuwebiste', 'https://www.tokopedia.com/malasngoding/ebook-materi-belajar-pemrograman-web-terlengkap?n=1', '', '', '', '', 'Publish'),
(45, 2, '2016-12-08', 'KURSUS WEB DEVELOPMENT KOMPLIT – STUDI KASUS MEMBANGUN 5 PROJECT SEKALIGUS', '<p><em><strong>KURSUS WEB DEVELOPMENT KOMPLIT &ndash; STUDI KASUS MEMBANGUN 5 PROJECT SEKALIGUS</strong></em></p>\n\n<p>Seorang web developer dituntut professional dalam berbagai hal terutama dalam menangani suatu project. tidak hanya itu, jam terbang tinggi pun jadi tuntutan sekaligus kewajiban yang harus dimiliki oleh seorang web developer.</p>\n\n<p>KURSUS WEB DEVELOPMENT KOMPLIT &ndash; STUDI KASUS MEMBANGUN 5 PROJECT SEKALIGUS ini meruakan penujuk arah bagi development pemula memiliki peta arah perjalanan pembelajaran yang lebih terarah sehingga menuju ke web developer yang professional.</p>\n\n<p>Dalam Video Tutorial yang berisi 2 DVD dan berdurasi lebih dari 15 jam ini bisa menjadi simulasi bagi anda agar memilik pengalaman mengerjakan real project yang bisa anda kembangkan kembali dan bisa anda anda gunakan juga untuk menghendle rojek lain tanpa harus melakukan koding dari awal.</p>\n\n<p>kasus yang akan di pecahkan dalam DVD ini adalah membangun 5 projrct website (cms, blog, new portal, ecommerce, web comunity/sisial media), dan tidak hanya ini, kami juga membahas bagaimana seorang web programmer dapat ngoding secara efesien dengan hasil yang optimal.</p>\n\n<p>Berikut adalah materi lengkap dari KURSUS WEB DEVELOPMENT KOMPLIT &ndash; STUDI KASUS MEMBANGUN 5 PROJECT SEKALIGUS :</p>\n\n<p>Bagian 1 : FUDAMENTAL FRAMEWORK MVC<br />\n1. Intro<br />\n2. Apa saja yang akan anda dielajari<br />\n3. Pengenalan MVC fundamental<br />\n4. Mengapa Harus menggunakan Codeigniter</p>\n\n<p>Bagian 2 : BASIC FRAMEWORK CODEIGNITER<br />\n5. instalasi codeigniter (bagian 1)<br />\n6. Install Codeigniter (bagian 2)<br />\n7. Struktur directory project codeigniter<br />\n8. konfigurasi<br />\n9. pengenalan URL Codeigniter<br />\n10. pembahasan controller<br />\n11. Aneka penggunaan method controller<br />\n12. Cara Passing variabel lewat URL&nbsp;<br />\n13. Cara Passing variabel ke VIEW<br />\n14. mengenal Construct pada controller<br />\n15. form input<br />\n16. Sekilas pengenalan model<br />\n17. Apa itu library<br />\n18. Cara custom library<br />\n19. Pengenalan helper<br />\n20. Cara membuat CRUD pada codeigniter Prepare<br />\n21. cara membuat CRUD read daftar artikel<br />\n22. Cara membuat CRUD update edit artikel<br />\n23. Cara Efesiensi coding pagination<br />\n24. Cara Efesiensi coding file upload<br />\n25. Cara Efesiensi coding form falidation<br />\n26. pembahasan Library session restriksi halaman<br />\n27. pembahasan Library session form login<br />\n28. pembahasan Libarry session form register<br />\n29. pengenalan library session prepare<br />\n30. pengenalan library upload<br />\n31. pembahasan Libarry pagination<br />\n32. pembahasan Library form validation custom validation<br />\n33. pengenalan library URL<br />\n34. Cara membuat CRUD delete haus artikel</p>\n\n<p>Bagian 3 : BASE PROJECT<br />\n35. pengenalan base library<br />\n36. cara Implementasi base model&nbsp;<br />\n37. cara Membuat base model<br />\n38. cara Membuat base controller Backend frontend<br />\n39. Persiapan struktur file directory untuk membuat CMS<br />\n40. Base project development persiapan database untuk CMS<br />\n41. Base library site view<br />\n42. Base library helper</p>\n\n<p>Bagian 4 : PROJECT CMS + BLOG<br />\n43. cara Membuat CMS Prepare template<br />\n44. Prepare template admin bag.2<br />\n45. cara membuat Admin login<br />\n46. Templating layouting untuk admin<br />\n47. membuat Management halaman<br />\n48. Membuat Management artikel search by AJAX<br />\n49. membuat Management artikel filter artikel by category<br />\n50. membuat management artikel aksi artikel<br />\n51. membuat Management artikel atribut waktu komentar penulis SEO<br />\n52. pengenalan Atribut artikel katogori<br />\n53. pengenalan Atribut artikel CKEditor<br />\n54. pengenalan &nbsp;Atribut artikel<br />\n55. materi Management categori artikel imlementasi<br />\n56. materi Management catogori artikel Layout<br />\n57. materi Management artikel hapus via AJAX<br />\n58. materi Management artikel edit via AJAX<br />\n59. materi Management artikel pigination<br />\n60. materi Management artikel read Via AJAX<br />\n61. materi Management artikel create<br />\n62. materi Management artikel layout<br />\n63. materi Management artikel prepare untuk layout<br />\n64. Cara Manampilkan JS file untuk admin<br />\n65. materi Layout dengan JQUERY has Change Intro<br />\n66. materi Layout dengan JQUERY has Change Prepare<br />\n67, cara Membuat frountend blog sederhana<br />\n68. cara Membuat Frountend layout blog<br />\n69. cara membuat frountend blog sederhana prepare templating<br />\n70. cara &nbsp;Membuat frountend blog sederhana temlating<br />\n71. cara Membuat frountend blog sederhana menampilkan daftar artikel<br />\n72. cara Membuat frountend blog sederhana menampilkan detail artikel<br />\n73. materi Finishing dashboard<br />\n74. materi Management user<br />\n75. materi konfigurasi<br />\n76. materi Statistik visitor<br />\n77. materi Management template<br />\n78. materi Management komentar<br />\n79. cara Membuat frountend blog sederhana menampilkan integrasi komentar</p>\n\n<p>Bagian 5 : PROJECT APLIKASI NEWS PORTAL<br />\n80. Materi Project news portal intro<br />\n81. Materi Project news portal prepare<br />\n82. Materi Project news portal integrasi template<br />\n83. Materi Project news portal integrasi menu artikel<br />\n84. Materi Project news portal integrasi menu halaman<br />\n85. Materi Project news portal detail artikel<br />\n86. Materi Project news portal integrasi sidebar<br />\n87. Materi Project news portal integrasi detail halaman<br />\n88. Materi Project news portal integrasi categori artikel<br />\n89. Materi Project news portal veatur image via AJAX<br />\n90. Materi Project news portal integrasi pencarian artikel</p>\n\n<p>Bagian 6 : PROJECT APLIKASI ECOMMERCE<br />\n91. Materi Project ecommerce management pesanan konfirmasi<br />\n92. Materi Project ecommerce integrasi template<br />\n93. Materi Project ecommerce layout<br />\n94. Materi Project ecommerce configurasi ecommerce<br />\n95. Materi Project ecommerce management produk dan kategori produk<br />\n96. Materi Project ecommerce intro</p>\n\n<p>Bagian 7 : PROJECT APLIKASI WEB KOMUNITAS<br />\n97. Materi Project web comunity</p>\n\n<p>Silahkan order sekarang Juga dan dapatkan bonus EBOOKS BELAJAR JQUERY<br />\n&nbsp;</p>\n', 100, 1000, '1929858490_ap.png', '1929858490_ap1.png', '1929858490_ap2.png', NULL, 155000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/58fp4q-jual-buku-kursus-web-development-komplit-studi-kasus-membangun-5-project-sekaligus-dan-bonus-ebook-jquery', 'https://www.tokopedia.com/malasngoding/kursus-web-development-komplit?n=1', '', '', '', '', 'Publish');
INSERT INTO `dah_products` (`prod_id`, `prod_author`, `prod_date`, `prod_name`, `prod_desc`, `prod_berat`, `prod_qty`, `prod_img1`, `prod_img2`, `prod_img3`, `prod_img4`, `prod_price`, `prod_bukalapak`, `prod_tokopedia`, `prod_kirim`, `prod_lokasi`, `prod_terjual`, `prod_jasa_kirim`, `prod_status`) VALUES
(46, 2, '2016-12-08', 'MASTERING PHOTOSHOP FOR WEB DESAINER + BONUS EBOOKS BELAJAR JQUERY', '<p><strong>MASTERING PHOTOSHOP FOR WEB DESAINER + BONUS EBOOKS BELAJAR JQUERY</strong></p>\n\n<p>photoshop adalah sebuah tools yang biasanya digunakan oleh desainer untuk membuat desain,&nbsp;<br />\npada DVDV tutorial MASTERING PHOTOSHOP FOR WEB DESAINER ini anda akan belajar bagaimana menjadi seorang web desainer propesional bekerja dengan menggunakan tool &nbsp;photoshop untuk membuat sebuah karya web desain propesional.</p>\n\n<p>berikut list materi yang akan di bahas dalam MASTERING PHOTOSHOP FOR WEB DESAINER :<br />\n#Bagian 1Matari Menginstall softwere photoshop</p>\n\n<ul>\n	<li>Matari Menginstall font yang digunakan</li>\n	<li>Matari Membuat dokumen photochop (.psd) baru</li>\n	<li>Matari Mengatur layout/grid menggunakan grid bootstrap</li>\n	<li>Matari Membuat sebuah small navbar yang digunakan sebagai global menus dan menambahkan beberapa icon agar terlihat lebih cantik dan minimalis</li>\n</ul>\n\n<p>#Bagian 2</p>\n\n<ul>\n	<li>Matari Pembuatan header</li>\n	<li>Matari Menambahkan logo kita</li>\n	<li>Matari Menambahkan menu header</li>\n	<li>Matari Menambahkan menu keranjang</li>\n</ul>\n\n<p>#Bagian 3</p>\n\n<ul>\n	<li>Matari Perbaikan warna kontent (Bermain dengan warna)</li>\n	<li>Matari Penambahan gambar pada slider banner</li>\n	<li>Matari Penambahan button untuk slider banner</li>\n	<li>Matari Penambahan body copy untuk slider banner&nbsp;</li>\n</ul>\n\n<p>#Bagian 4</p>\n\n<ul>\n	<li>Matari Menambahkan ukuran tinggi pada document(convas)</li>\n	<li>Matari Membuat features dari yourstore theme PSD ini</li>\n	<li>Matari Menambahkan flat icon pada features dan bebrapa variasi warna</li>\n</ul>\n\n<p>#Bagian 5</p>\n\n<ul>\n	<li>Matari Membuat header title pada section new arrival</li>\n	<li>Matari Menambahkan flat icon pada menu tiles</li>\n	<li>Matari Membuat menu tabs pada new arrival&nbsp;</li>\n	<li>Matari Membuat content product dan belajar typographi</li>\n</ul>\n\n<p>#Bagian 6</p>\n\n<ul>\n	<li>Matari Membuat footer untuk section about dan sitemap</li>\n	<li>Matari Membuat small footer unntuk copyright</li>\n</ul>\n\n<p>#Bagian 7</p>\n\n<ul>\n	<li>Matari Membuat document baru untuk halaman single atau detail produk</li>\n	<li>Matari Membuat breadchumb sebagai penandan atau sitemap</li>\n</ul>\n\n<p>#Bagian 8</p>\n\n<ul>\n	<li>Matari Perubahan warna breadchumb</li>\n	<li>Matari Menambahkan foto-foto dari produk&nbsp;</li>\n</ul>\n\n<p>#Bagian 9</p>\n\n<ul>\n	<li>Matari penambahan deskrisi lengkap tentang produk</li>\n	<li>materi pembuatan Judul</li>\n	<li>materi pembuatan kategori</li>\n	<li>materi pembuatan Harga</li>\n	<li>materi pembuatan Rating</li>\n</ul>\n\n<p>#Bagian 10</p>\n\n<ul>\n	<li>Materi Menambahkan bagian lengkap tentang produk</li>\n	<li>materi Button add to cart</li>\n	<li>materi Input quantity</li>\n	<li>Materi Input color</li>\n</ul>\n\n<p>#Bagian 11</p>\n\n<ul>\n	<li>materi Membuat bagian untuk releted produk</li>\n	<li>materi Membuat banyak content produk</li>\n</ul>\n\n<p>#Bagian 12</p>\n\n<ul>\n	<li>materi Membuat bagian pertner</li>\n	<li>materi Merapikan footer (sentuhan akhir)</li>\n</ul>\n\n<p>#Bagian 13</p>\n\n<ul>\n	<li>materi Membuat halaman baru untuk card/keranjang belanja</li>\n	<li>materi Membuat table untuk produk yang sudah berada pada card</li>\n	<li>materi Membuat button check out dan merapikan footer</li>\n</ul>\n\n<p>#Bagian 14</p>\n\n<ul>\n	<li>materi Membuat halaman baru untuk checkout atas pembayaran akhir.</li>\n</ul>\n\n<p><strong>khusu pemesanan melalui toko malasngoding akan memdapatkan BONUS EBOOKS BELAJAR JQUERY</strong></p>\n', 100, 1000, '1900783378_as.png', '1010457278homepage.png', '543586892cart.png', '1538418920cart.png', 90000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/58g5tb-jual-buku-mastering-photoshop-for-web-desainer', 'https://www.tokopedia.com/malasngoding/mastering-photoshop-for-web-desainer?n=1', '', '', '', '', 'Publish'),
(47, 2, '2016-12-08', 'MEMBANGUN SISTEM INFORMASI AKADEMIK DENGAN CODEIGNITER DAN BOOTSRAP + Bonus Ebooks Belajar JQuery', '<h1>MEMBANGUN SISTEM INFORMASI AKADEMIK DENGAN CODEIGNITER DAN BOOTSRAP + Bonus Ebooks Belajar JQuery</h1>\n\n<p>Sistem informasi akademik (SIA) adalah salah satu software yang sering kita jumpai di universitas baik swasta maupun negeri. karena SIA akan sangat memudahkan baik mahasiswa mauPun dosen dalam mengelola data-data tertentu.</p>\n\n<p>produk yang kami rilis kali ini adalah MEMBANGUN SISTEM INFORMASI AKADEMIK DENGAN CODEIGNITER DAN BOOTSRAP. dalam DVD ini akan di pelajari bagaimana membangun SIA yang komleks.&nbsp;</p>\n\n<p>berikut LIST MATERI yang akan di jelaskan dalam DVD MEMBANGUN SISTEM INFORMASI AKADEMIK DENGAN CODEIGNITER DAN BOOTSRAP.</p>\n\n<p>#list nateri pembelajaran :</p>\n\n<ul>\n	<li>Cara Instalasi dan configurasi codeigniter</li>\n	<li>Pembahasan module autentifikasi</li>\n	<li>Bagaimana mengintegrasi template dengan sistem</li>\n	<li>Pembahasan development modul dosen</li>\n	<li>Pembahasan development modul mahasiswa</li>\n	<li>Pembahasan development modul mata kuliah</li>\n	<li>Pembahasan development modul jadwal kuliah</li>\n	<li>Pembahasan pengaturan akun pengguna sistem</li>\n	<li>Membuat proses approv kartu rencana studi</li>\n	<li>Membuat informasi detail kartu rencana studi</li>\n	<li>Cara setting akun dosen</li>\n	<li>Membuat Halaman mahasiswa</li>\n	<li>Cara Membuat pengaturan akun mahasiswa</li>\n	<li>Cara atur KRS yang sudah diambil oleh mahasiswa</li>\n</ul>\n\n<p>Khusu PEMESANAN MELALUI MALAS NGODING DAPATKAN BONUS EBOOKS BELAJAR JQUERY..</p>\n', 100, 1000, '1611692400_si.png', '1915250698Cover-DVD-loko.jpg', '19807788312717864_986032074826843_9179790958634495112_n.jpg', '155048353212932807_986031984826852_9088204456666955239_n.jpg', 100000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/58gfpb-jual-buku-membangun-sistem-informasi-akademik-dengan-codeigniter-dan-boostrap-bonus-ebooks-belajar-jquery', 'https://www.tokopedia.com/malasngoding/membangun-sistem-informasi-akademik-dengan-codeigniter-dan-boostrap?n=1', '', '', '', '', 'Publish'),
(48, 2, '2016-12-09', 'MEMBUAT WEBSITE PROFILE PERUSAHAAN RESPONSIVE DENGAN BOOTSTRAP + BONUS EBOOK BELAJAR JQUERY', '<h1>MEMBUAT WEBSITE PROFILE PERUSAHAAN RESPONSIVE DENGAN BOOTSTRAP + BONUS EBOOK BELAJAR JQUERY</h1>\n\n<p>Bootstrap adalah suatu framework css yang digunakan untuk mempermudah dan mempercantik dalam membangun tampilan website, banyak sekali fitur yang ditawarkan oleh boostrap yang bisa sangat membantu seorang web desainer dalam meringkan pekerjaan nya dalam mendesain sebuah tampilan yang menarik.</p>\n\n<p>lebih kerennya lagi boostrap juga memiliki fitur grid yang digunakan untuk mendesain sebuah web resnposive, &nbsp;maksudnya tampilan nya akan menyesuaikan dengan ukuran layar device yang digunakan. dalam DVD tutorial ini akan dibahas bagaimana cara membangun sebuah web profile perusahaan yang responsive menggunakan bootstrap.</p>\n\n<p>#Bagian 1</p>\n\n<ul>\n	<li>persiapan file-file yang akan kita gunakan dalam pembuatan website profile perusahaan dan perkenalan sekilas class-class dari framework bootstrap ini</li>\n</ul>\n\n<p>#Bagian 2</p>\n\n<ul>\n	<li>Memahami konsep grid pada system bootstrap dan component lainnya menggunakan dokumentasi offline yang sudah disediakan (step 1)</li>\n	<li>Memahami konsep grid pada system bootstrap dan component lainnya menggunakan dokumentasi offline yang sudah disediakan (step 2)</li>\n</ul>\n\n<p>#Bagian 3&nbsp;&nbsp; &nbsp;</p>\n\n<ul>\n	<li>membuat kostum owl caoursel agar terlihat lebih keren dan useful(tidak seperti defaultnya)</li>\n	<li>Cara Memberikan article pada slider owl carousel layaknya banner info</li>\n</ul>\n\n<p>#Bagian 4&nbsp;&nbsp; &nbsp;</p>\n\n<ul>\n	<li>Cara Menggunakan grid bootstrap untuk membuat sebuah content yang digunakan sebagai service dari perusahaan</li>\n	<li>Cara Menggunakan font-awesome pada bootstrap</li>\n	<li>Cara Membuat section dimana tujuannya untuk mengajar visitor bergabung dengan perusahaan / website kita</li>\n</ul>\n\n<p>#Bagian 5&nbsp;&nbsp; &nbsp;</p>\n\n<ul>\n	<li>Mengenal apa animate.css dan wow.js (yang cukup keren untuk bagian animasi pada content website kita)</li>\n	<li>cara Membuat section dimana kita akan menampilkan sebuah portfolio dari perusahaan itu tersendiri dan menggunakan javascript untuk modal sebuah portfolio</li>\n</ul>\n\n<p>#Bagian 6&nbsp;&nbsp; &nbsp;</p>\n\n<ul>\n	<li>Cara Membuat bagian atau section dimana kita akan memperkenalkan team dari perusahaan kita</li>\n	<li>Cara Membuat footer dari website perusahaan yang kita buat</li>\n</ul>\n\n<p>#Bagian 7&nbsp;&nbsp; &nbsp;</p>\n\n<ul>\n	<li>Cara Membuat halaman dimana kita akan memberikan sejarah, visi, misi, dan lain-lain tentang perusahaan atau company profile kita</li>\n	<li>Cara Membuat breadchumb yang sudah tersedia pada Bootstrap component</li>\n	<li>Cara Menambahkan sebuah gambar besar yang digunakan sebagai gambaran perusahaan kita</li>\n</ul>\n\n<p>#Bagian 8&nbsp;&nbsp; &nbsp;</p>\n\n<ul>\n	<li>Cara Membuat sebuah halaman dimana kita bisa paparkan informasi perusahaan kita berupa nomor telp</li>\n	<li>Cara Kita juga menambahkan sebuah form yang akan digunakan visitor untuk menghubungi kita</li>\n</ul>\n\n<p>Segera pesan dan dapatkan bonus EBOOKS BELAJAR JQUERY khusus untuk pemesanan di toko malasngoding</p>\n', 100, 1000, '1276994704_b.png', '18993725081282848_92d9fac0-a487-4db1-bd22-6e19a6621113.png', '5211676761282848_3516bfeb-e041-4694-836c-7873af85cd11.png', NULL, 90000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/58pigh-jual-buku-membuat-website-profile-perusahaan-responsive-dengan-bootstrap-bonus-ebook-belajar-jquery', 'https://www.tokopedia.com/malasngoding/membuat-website-profile-perusahaan-responsive-dengan-bootstrap', '', '', '', '', 'Publish'),
(49, 2, '2016-12-09', 'Seminggu Jago Codeigniter Dan Bootstrap + Bonus Ebooks Belajar JQUERY', '<h1>Seminggu Jago Codeigniter Dan Bootstrap + Bonus Ebooks Belajar JQUERY</h1>\n\n<p>Codeigniter adalah salah satu framework PHP yang paling banyak diminati oleh web programmer khususnya di Indonesia. Hal ini dikarenakan Framework Codeigniter sangat mudah dipelajari karena dokumentasinya yang lengkap dan memiliki jumlah komunitas yang banyak di Indonesia.</p>\n\n<p>banyak perusahaan yang mencari developer yang menguasai framework Codeigniter untuk terus men-support produk atau layanan dari perusahaan tersebut yang menggunakan Codeigniter sebagai core dari sistemnya. jadi ini merupakan peluang besar bagi web development yang menguasai codeigniter.</p>\n\n<p>Adpun materi yang akan di bahas dalam DVD tutorial ini adalah bagaimana membuat aplikasi berbasis web menggunakan framework codeigniter.</p>\n\n<p>LIST MATERI YANG AKAN DI BAHAS :<br />\nbagian 1 : Fudamental Framework Codeigniter</p>\n\n<ul>\n	<li>Cara Instalasi Codigniter di localhost&nbsp;</li>\n	<li>pengenalan Konsep MVC</li>\n	<li>Cara Membuat Controller, view dan Model</li>\n	<li>Cara Membuat dan Menggunakan Helper</li>\n	<li>Cara Membuat Dan Menggunakan Library</li>\n	<li>Cara Upload File Menggunakan Codegniter</li>\n</ul>\n\n<p>Bagaian 2 : membuat Aplikasi Point Of Sales</p>\n\n<ul>\n	<li>Persiapan Database aplikasi POS</li>\n	<li>Cara Membuat Halaman Login Aplikasi</li>\n	<li>cara Membuat CRUD Data Kategori</li>\n	<li>Cara Membuat CRUD Data Barang</li>\n	<li>Cara Membuat CRUD Data Operator</li>\n	<li>Cara mengintegrasi Template Dengan Tweeter Bootrap</li>\n	<li>Cara Membuat Form Transaksi</li>\n	<li>Cara Membuat Laporan Penjualan (perperiode)</li>\n	<li>Cara mengexport Laporan Dalam Bantuk Excel</li>\n	<li>Cara Membuat Penomoran/paging</li>\n	<li>Membuat Keamanan Aplikasi Dengan Teknik Session</li>\n</ul>\n\n<p>Selain memberikan video tutorial, kami juga mennyertakan software pendukung yang digunakan dalam tutorial, dan juga akan untuk kamu yang membeli produk Seminggu Jago Codeigniter Dan Bootstrap + Bonus Ebooks Belajar JQUERY&nbsp;juga akan mendapatkan ebook pendukung dalam proses belajar.</p>\n', 100, 1000, '723640714_ci.png', '720448553master_data_on_tutor_codeigniter.png', '672241939materi_codeigniter-1024x618.jpg', '2001169647ss_export_pdf_dan_excel_on_tutor_codeigniter_2.png', 90000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/58poge-jual-buku-seminggu-jago-codeigniter-dan-bootstrap-bonus-ebooks-belajar-jquery', 'https://www.tokopedia.com/malasngoding/seminggu-jago-codeigniter-dan-bootstrap', '', '', '', '', 'Publish'),
(50, 2, '2016-12-09', 'SLICING LAYOUT TOKO ONLINE RESPONSIVE MENGGUNAKAN BOOSTRAP', '<h1>SLICING LAYOUT TOKO ONLINE RESPONSIVE MENGGUNAKAN BOOSTRAP</h1>\n\n<p>photoshop meruakan salah satu tools yang sering digunakan oleh desainer untuk membuat desain sesuai dengan kebutuhan, salah fungsi dari tool ini adalah mendesain halaman webiste sebelum masuk ke proses slicing.&nbsp;<br />\npada DVD tutorial ini anda akan dibahas bagaimana menjadi seorang web desainer propesional bekerja menggunakan tools photoshop untuk membuat sebuah karya desain we yang propesional.</p>\n\n<p>List Materi Yang akan di Pelajari</p>\n\n<p>#Bagian 1</p>\n\n<ul>\n	<li>Proses Slicing layout PSD menjadi HTML</li>\n	<li>Proses Install Booststrap dan Font Awesome</li>\n	<li>Cara Membuat small Navbar menggunakan boostrap 3</li>\n	<li>Cara Membuat Navbar menggunakan boostrap 3</li>\n	<li>Cara Mengcustom menu navigasi untuk tampilan mobile</li>\n	<li>Cara Mengcustom tampilan carausel di halaman utama</li>\n	<li>Cara membuat our feature di halaman utama</li>\n	<li>Cara Memberikan border di our feature dan navigasi</li>\n	<li>Cara Membuat halaman content produk</li>\n	<li>Membuat desain bagian footer</li>\n	<li>Cara Menambahkan list produk</li>\n	<li>Cara membuat halaman deskripsi produk</li>\n	<li>Cara Membuat halaman chekout</li>\n	<li>Cara Membuat desain fitur related produk dan logo patner</li>\n	<li>Cara Mendesain halaman cart</li>\n	<li>Cara Mendesain Halaman Checkout</li>\n</ul>\n\n<p>PESAN SEKARANG <em>SLICING LAYOUT TOKO ONLINE RESPONSIVE MENGGUNAKAN BOOSTRAP</em>&nbsp;DAN DAPATKAN BONUS EBOOKS KHUSUS UNTUK PEMESANAN LEWAT TOKO MALAS NGODING</p>\n', 100, 1000, '1528053225_ps.png', '21969698cart.png', '131837622homepage.png', '574424349single.png', 120000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/58pt3h-jual-buku-slicing-layout-toko-online-responsive-menggunakan-boostrap', 'https://www.tokopedia.com/malasngoding/slicing-layout-toko-online-responsive-menggunakan-boostrap', '', '', '', '', 'Publish'),
(51, 2, '2016-12-09', 'TUTORIAL CONSTRUCT 2 – MEMBUAT GAME MOBILE TANPA CODING', '<h2>TUTORIAL CONSTRUCT 2 &ndash; MEMBUAT GAME MOBILE TANPA CODING</h2>\n\n<p>Construct 2 adalah salah satu tools untuk membuat game berbasis HTML5 yang dikhususkan untuk platform 2D. Pada Construct 2 tidak menggunakan pemrograman khusus, karena semua perintah yang digunakan pada game diatur dalam EvenSheet yang terdiri dari Event dan Action, jadi untuk untuk mengembangkan game dengan Construct 2 pengguna tidak perlu mengerti bahasa pemrograman yang rumit dan sulit.</p>\n\n<p>Berikut List Materi Yang Akan di Bahas<br />\n#Bagian 1</p>\n\n<ul>\n	<li>Proses Install Program Pendukung</li>\n	<li>Tahap Pengenalan Area Kerja</li>\n	<li>Tahap Pengenalan Objek yg Digunakan</li>\n	<li>Tahap Pengenalan Sprite dan Behaviors</li>\n</ul>\n\n<p>#Bagian 2 - Pembuatan Game Sederhana Ambil Bintang&nbsp;&nbsp; &nbsp;</p>\n\n<ul>\n	<li>Intro Demo Game dan Pengenalan Objek</li>\n	<li>Cara Membuat Logika Jika Maka</li>\n	<li>Cara Membuat Score dengan Menggunakan Variabel</li>\n	<li>Cara Membuat Tulisan Menang ketika Score Ditotal</li>\n</ul>\n\n<p>#Bagian 3 - Pembuatan Game Sederhana Pecah Balon&nbsp;&nbsp; &nbsp;</p>\n\n<ul>\n	<li>Cara Menggerakan Objek dengan Behavior Bullet</li>\n	<li>Cara Membuat Objek Secara Acak Setiap Detik</li>\n	<li>Cara Memecahkan Balon Dengan Efek Ledakan</li>\n	<li>Cara Menambahkan Score dan Timer</li>\n	<li>Cara Menghentikan Layout ketika Game Selesai</li>\n	<li>memasukan BGM dan SFX</li>\n</ul>\n\n<p>#Bagian 4 - Cara Build Aplikasi ke Mobile (Android)&nbsp;&nbsp; &nbsp;</p>\n\n<ul>\n	<li>Cara Build Game ke Android (apk)</li>\n</ul>\n', 100, 1000, '1130739757_gm.png', '432900150tutorial-costruct-2.jpg', '2030087664ScreenShot-hasil-Game.png', '1213490989ScreenShot-Proses-Membuat-Game.png', 90000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/58px72-jual-buku-tutorial-construct-2-membuat-game-mobile-tanpa-coding', 'https://www.tokopedia.com/malasngoding/tutorial-construct-2-membuat-game-mobile-tanpa-coding', '', '', '', '', 'Publish'),
(52, 2, '2016-12-09', 'TUTORIAL KURSUS MEMBUAT THEMES CMS WORPRESS + BONUS EBOOKS JQUERY', '<h2>TUTORIAL KURSUS MEMBUAT THEMES CMS WORPRESS + BONUS EBOOKS JQUERY</h2>\n\n<p>wordpress merupakan salah satu CMS yang sanget terkenal di kalangan baik programmer maupun blogger. karena keudahan, fitur yang power full, dokumentasi yang lengkap, serta lugin yang berserakan bisa dapatkan dengan mudah di dunia maya. CMS gratisan ini disulap menjadi bernilai jutaan dalam hampir disemua project pembuatan website. Benar-benar menguntungkan untuk yang tau cara pemanfaatan peluangnya.</p>\n\n<p>Terlebih lagi pasarnya sangat luar biasa, terutama pada Template berbayar . Sebut saja ThemeForest atau marketplace lainnya , banyak Freelancer dari Indonesia yang meraup keuntungan ratusan hingga ribuan dollar setiap bulannya hanya dengan membuat template dan menjualnya di marketplace.</p>\n\n<p>Dalam DVD tutorial ini akan di bahas themes development. materi yang dibahas sangat jelas dan terstruktur jadi untuk sangat di rekomendasikan untuk pemula dan profesional.</p>\n\n<p>Adapun Materi yang akan di bahas dalam TUTORIAL KURSUS MEMBUAT THEMES CMS WORPRESS antara lain :</p>\n\n<p>#Bagian 1 : INTRO &amp; PREPARE WORDPRESS THEMES DEVELOPMENT&nbsp;&nbsp; &nbsp;</p>\n\n<ul>\n	<li>Intro Pembelajaran Konversi HTML CSS Ke Wordpress</li>\n	<li>Syarat Dan Kebutuhan dalam Belajar WP Themes Development</li>\n	<li>Persiapan Installasi Untuk proses Pembuatan Template</li>\n	<li>Memulai Pembuatan Template</li>\n</ul>\n\n<p>Bagian 2 :BAGIAN-BAGIAN PENTING DARI TEMPLATE&nbsp;</p>\n\n<ul>\n	<li>Bagian yang sangat Penting Dari Template&nbsp;</li>\n	<li>Tag Header Bagian Dynamic Title template</li>\n	<li>Tag Header Untuk CSS Style &amp; JS</li>\n	<li>Tag Body Get Header (step 1)</li>\n	<li>Tag Body Get Header (step 2)</li>\n	<li>Tahapan-tahapan Dalam Membuat Template&nbsp;</li>\n</ul>\n\n<p>#Bagian 3 : SETTING TEMPLATE BAGIAN HEADER (kepala), BODY(badan), DAN FOOTER(kaki)&nbsp;&nbsp; &nbsp;</p>\n\n<ul>\n	<li>Setting Template index.php Bagian Header(kepala), Body(badan), dan Footer(kaki)</li>\n	<li>Setting Template index.php Bagian Header (kepala)</li>\n	<li>Setting Template index.php Bagian Body (badan)</li>\n	<li>Setting Template index.php Bagian Footer (kaki)</li>\n</ul>\n\n<p>#Bagian 4 :MEMISAH-MISAHKAN index.php KE DALAM BEBERAPA FILE&nbsp;&nbsp; &nbsp;</p>\n\n<ul>\n	<li>Memisah-misahkan index.php ke dalam Beberapa File</li>\n	<li>memisah-misahkan Bagian Header index.php ke dalam File header.php</li>\n	<li>memisah-misahkan Bagian Footer index.php ke dalam File &nbsp;footer.php</li>\n	<li>memisah-misahkan Bagian Sidebar index.php &nbsp;ke dalam File sidebar.php</li>\n</ul>\n\n<p>#Bagian 5 : SETTINGAN LANJUTAN header,index ,sidebar &amp; footer&nbsp;</p>\n\n<ul>\n	<li>setting Lanjutan header.php, index.php ,sidebar.php &amp; footer.php&nbsp;</li>\n	<li>setting Lanjutan Untuk header.php</li>\n	<li>setting Lanjutan Untuk sidebar.php</li>\n	<li>setting Lanjutan Untuk index.php</li>\n	<li>setting Lanjutan Untuk footer.php</li>\n</ul>\n\n<p>#Bagian 6 : SETTING TEMPLATE UNTUK ARCHIVE, SEARCH, SINGLE, PAGE, 404</p>\n\n<ul>\n	<li>Setting Template WP Untuk Archive, Search, Single, Page, 404&nbsp;</li>\n	<li>Menggunakan File archive.php, File template Bagian Kategori Artikel</li>\n	<li>Menggunakan File search.php, File template Bagian Pencarian Artikel</li>\n	<li>Menggunakan File single.php, File Template Untuk Detil Artikel</li>\n	<li>Menggunakan File page.php, File Template Untuk Detil Halaman/Page</li>\n</ul>\n\n<p>#Bagian 7 :FINISHING IMAGE THUMBNAIL UNTUK INDEX, ARCHIVE, SEARCH. DAN FASILITAS KOMENTAR PADA SINGLE PAGE</p>\n\n<ul>\n	<li>Finishing Image Thumbnail Untuk Index, Archive, dan Search. Serta fasilitas komentar</li>\n	<li>Konfigurasi Agar Template Mendukung Thumbnail</li>\n	<li>Konfigurasi Akhir Fasilitas Komentar Pada single.php dan page.php&nbsp;</li>\n</ul>\n\n<p>#Bagian 8 :BAHAS TUNTAS CUSTOM QUERY (SLIDER + LIST THUMBNAIL POST)</p>\n\n<ul>\n	<li>Bahas dengan Tuntas Custom Query (Slider + List Thumbnail Post)</li>\n	<li>Dasar Custom Query</li>\n	<li>Cara Membuat Custom Query Pada Slider</li>\n	<li>Cara Membuat Custom Query Pada Daftar Artikel Dengan Kategori</li>\n</ul>\n\n<p>#Bagian 9 : BAHAS TUNTAS CUSTOM META KEY (ATRIBUT POST)</p>\n\n<ul>\n	<li>Membahas secara Tuntas Custom Meta Key (Atribut Post)</li>\n</ul>\n\n<p>#Bagian 10 :CARA MEMBUAT ADMIN PANEL UNTUK TEMPLATE / THEME OPTION</p>\n\n<ul>\n	<li>Cara Membuat Admin Panel Template / Theme Option</li>\n	<li>Persiapan Pembuatan Theme Option (step 1)</li>\n	<li>Persiapan Pembuatan Theme Option (step 2)</li>\n	<li>Persiapan Pembuatan Theme Option (step 3)</li>\n</ul>\n\n<p>#SUPER BONUS</p>\n\n<ul>\n	<li>150 Best Collection Template HTML5+CSS3 Responsive</li>\n	<li>125 Best Collection Brush dan Icon untuk Web Design</li>\n	<li>1000 Best Collection Font untuk Web Design</li>\n	<li>50 PSD Template Website</li>\n	<li>200 Best Snippet Script, JQUERY Library + PHP Script + Premium Plugin</li>\n	<li>50 HTML,PSD User Interface Kit (Button, Form, Table, Layout) untuk Web Design<br />\n	&nbsp;</li>\n</ul>\n\n<p>pesan sekarang dan dapatkan bonus EBOOKS belajar jQueri dari malasngoding.com</p>\n', 100, 1000, '1913896974_kw.png', '143776718membuat_themes_wordpress.jpg', '75681875Screen_Shot_02-08-15_at_05.54_AM__.png', '1442718721Screen_Shot_02-08-15_at_05.55_AM__.png', 78000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/58q2qn-jual-buku-tutorial-kursus-membuat-themes-cms-worpress-bonus-ebooks-jquery', 'https://www.tokopedia.com/malasngoding/tutorial-kursus-membuat-themes-cms-worpress', '', '', '', '', 'Publish'),
(53, 2, '2016-12-09', 'TUTORIAL WORDPRESS MEMBUAT WEBSITE PROPESIONAL DENGAN CMS WORPRESS', '<h2>TUTORIAL WORDPRESS &ndash; MEMBUAT WEBSITE PROPESIONAL DENGAN CMS WORPRESS</h2>\n\n<p>WordPress adalah salah satu CMS paling populer untuk membuat website, baik itu website pribadi, situs perusahaan, situs edukasi, bahkan situs penjualan/online shop.&nbsp;</p>\n\n<p>Berikut adalah materi yang akan di bahas mengenai TUTORIAL WORDPRESS MEMBUAT WEBSITE PROPESIONAL DENGAN CMS WORPRESS.</p>\n\n<p>#Bagian 1 : PENGENALAN</p>\n\n<ul>\n	<li>Pengenalan tentang Content Management System WordPress</li>\n</ul>\n\n<p>#Bagian 2 - PROSES INSTALL XAMPP &amp; WORPRESS</p>\n\n<ul>\n	<li>Install Xampp</li>\n	<li>Install WordPress</li>\n	<li>Login Ke Dashboard</li>\n</ul>\n\n<p>#Bagian 3 - POST MANAGEMENT</p>\n\n<ul>\n	<li>Perbedaan Post Dan Page</li>\n	<li>Cara Membuat Kategori Pada Post</li>\n	<li>Cara Membuat Post</li>\n	<li>Cara Mengatur Format Post</li>\n	<li>Cara Membuat Feature Image</li>\n	<li>Cara Membuat Image Gallery</li>\n	<li>Cara Menambahkan Image Dari Url Web Lain</li>\n	<li>cara Menambahkan Link Pada Post</li>\n	<li>Cara Embed Video Dari Youtube Pada Post</li>\n	<li>Cara Mengatur Menu Revision Pada Post</li>\n	<li>Pengenalan Menu Publish</li>\n</ul>\n\n<p>#Bagian 4 - MATERI PAGE MANAGEMENT</p>\n\n<ul>\n	<li>Menambahkan Page</li>\n	<li>Menambahkan Page Attribute</li>\n	<li>Menambahkan Feature Image</li>\n</ul>\n\n<p>3Bagian 5 - MATERI CONTENT MANAGEMENT</p>\n\n<ul>\n	<li>Cara Management Kategori</li>\n	<li>Cara Management Media Library</li>\n	<li>cara Management Page</li>\n	<li>Cara Management Tags</li>\n	<li>Cara Management Post</li>\n</ul>\n\n<p>#Bagian 6 - THEME &amp; MENU MANAGEMENT</p>\n\n<ul>\n	<li>Cara Install Theme Secara Online</li>\n	<li>Cara Install Themes Secara Offline</li>\n	<li>Cara Mengatur Menu Customize</li>\n	<li>Setting Themes</li>\n	<li>Cara Membuat Menu Pada Themes</li>\n</ul>\n\n<p>#Bagian 7 - MATERI PLUGIN MANAGEMENT</p>\n\n<ul>\n	<li>Pengenalan Fitur Plugin</li>\n	<li>Cara Install Plugin Secara Online</li>\n	<li>Cara Install Plugin Secara Offline</li>\n	<li>Cara Membuat Fitur Contak Form</li>\n	<li>Cara Menambahkan Fitur Share Artikel</li>\n	<li>Cara Membuat Gallery Foto</li>\n</ul>\n\n<p>#Bagian 8 - MATERI WIDGET MANAGEMENT</p>\n\n<ul>\n	<li>Pengenalan Fitur Widget</li>\n	<li>Cara Menambahkan Facebook Fanspage</li>\n	<li>Cara Menambahkan Widget Yahoo Mesangger</li>\n	<li>Cara Menambahkan Tweeter Widget</li>\n</ul>\n\n<p>Bagian 9 - MATERI MANAGEMENT USERS</p>\n\n<ul>\n	<li>Update Profile Pengguna</li>\n	<li>Cara Mendaftar &amp; Setting Gravatar</li>\n	<li>Cara Mengenal Level User Pengguna</li>\n</ul>\n\n<p>#Bagian 10 - MATERI MANAGEMENT MENU COMMENT</p>\n\n<ul>\n	<li>Management Comment</li>\n	<li>Setting Menu Discussion</li>\n</ul>\n\n<p>#Bagian 11 - SETTING &amp; KONFIGURASI</p>\n\n<ul>\n	<li>Pengaturan Menu Cms WordPress</li>\n</ul>\n\n<p>#Bagian 12 - EXPORT &amp; IMPORT</p>\n\n<ul>\n	<li>Cara Migrasi Blog Ke WordPress</li>\n	<li>proses Duplikasi Website</li>\n	<li>proses Memindahkan File Web</li>\n</ul>\n\n<p>Bagian 13 - MATERI THEME ZERIF LITE &amp; UPLOAD</p>\n\n<ul>\n	<li>Order Hosting &amp; Upload Web Ke Hosting</li>\n	<li>Setting Dan Install Theme Zerif Lite Free</li>\n</ul>\n\n<p>Bagian 14 - BONUS</p>\n\n<ul>\n	<li>Teknik Mengaktifkan Plugin Jetpack</li>\n	<li>Cara Membuat Fitur Berlangganan Artikel Via Email</li>\n	<li>Cara Membuat Fitur Menulis Artikel Melalui Email</li>\n	<li>Setting Plugin Anti Spam</li>\n	<li>Cara Bakup File &amp; Database</li>\n	<li>Teknik Mengembalikan File Dan Database</li>\n	<li>Cara Membuat Email Berbayar Di Hosting</li>\n	<li>Update Sstem, Plugin Dan Hosting</li>\n	<li>Cara Membuat Email Berbayar Di Hosting</li>\n	<li>Cara Setting Plugin Xml Sitemap</li>\n	<li>Teknik Install Dan Setting Plugin Gogole Analitycs</li>\n	<li>Cara mengaktifkan Fitur Smtp</li>\n	<li>Cara Menambahkan Recapcha Pada Form Contact Us</li>\n	<li>Widget Tweeter</li>\n	<li>Setting Email Hosting Melalui Smartphone Android</li>\n	<li>Instalasi Dan Konfigurasi Plugin Wp Member</li>\n	<li>Instalasi &amp; Konfigurasi Plugin Facebook Comment</li>\n	<li>Cara Mendapatkan Akun Gratis Di Idhostinger</li>\n	<li>Cara Install Worpress Melalui Softclous</li>\n	<li>Cara Meningkatkan Seo Pack Dengan Plugin All In Seo Pack</li>\n	<li>Teknik Mengatur Keamanan Dengan Plugin All In One Wp Security</li>\n	<li>Materi Pengenalan Dan Menggunakan Fitur Worpress Multisite</li>\n</ul>\n\n<p>PESAN SEKARANG DAN TINGKATKAN SKILL MU...:)</p>\n', 100, 1000, '1942885407_wr.png', '816242650tutorial_wordpress.jpg', '1049987996screenshot.png', '137296804Screenshot_15.png', 85000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/5abxaq-jual-buku-tutorial-wordpress-membuat-website-propesional-dengan-cms-worpress', 'https://www.tokopedia.com/malasngoding/tutorial-wordpress-membuat-website-propesional-dengan-cms-worpress', '', '', '', '', ''),
(54, 2, '2016-12-09', 'Tutorial Seminggu Menguasai Android Studio', '<h2>Tutorial Seminggu Menguasai Android Studio</h2>\n\n<p>dalam Tutorial Seminggu Menguasai Android Studio ini akan dibahas mengenai mengembangkan aplikasi mobile khusu android. tidak hanya video dalam DVD ini juga sudah disediakan ebooks yang bisa dijadikan penunjang pembelajaran.</p>\n\n<p>List Materi Yang akan di Bahas :</p>\n\n<p>#Bab 1 - Instalasi dan Pengenalan (kasus 1)</p>\n\n<ul>\n	<li>Persiapan ngoding android</li>\n	<li>Persiapan Instalasi Java Development Kit</li>\n	<li>Persiapan Instalasi Android Studio</li>\n	<li>cara Konfigurasi Awal Android Studio</li>\n	<li>Android Emulator Untuk Processor AMD</li>\n	<li>Cara Instalasi Genymotion</li>\n	<li>cara Instalasi Genymotion Android Emulator</li>\n	<li>Cara Menggunakan Device Android Untuk Debugging</li>\n	<li>Cara Membuat Project Baru Android</li>\n	<li>Cara Menjalankan Project</li>\n	<li>Pengenalan User Interface</li>\n</ul>\n\n<p>#Bab 2 - Pembuatan Layout (kasus 1)</p>\n\n<ul>\n	<li>Cara Mengubah Teks di dalam Layout</li>\n	<li>Cara Menambahkan TextView dan Mengubah Ukuran Font</li>\n	<li>Cara Menambahkan Tombol</li>\n	<li>Cara Mengganti Warna</li>\n	<li>cara Mengatur Padding</li>\n	<li>Cara Menghilangkan Action Bar</li>\n</ul>\n\n<p>#Bab 3 - Pembuatan Kode Program&nbsp;&nbsp; &nbsp; (_kasusu 1)</p>\n\n<ul>\n	<li>Cara Mendeklarasikan Variable</li>\n	<li>Pengenalan Variable</li>\n	<li>Cara Membuat Tombol Berfungsi</li>\n	<li>cara Menambahkan Method onClick</li>\n	<li>Cara Menggenerate Angka Acak</li>\n	<li>Cara Memilih Item&nbsp;</li>\n</ul>\n\n<p>#Bab 4 - Refactoring dan Finalisasi (kasus 1)</p>\n\n<ul>\n	<li>Refactoring - Cara Membuat Class Baru</li>\n	<li>Refactoring - Cara Menggunakan Class Yang Sudah Dibuat</li>\n	<li>Cara Mengubah Warna Secara Dinamis</li>\n	<li>Cara Menambah Warna Lainnya</li>\n	<li>Cara Menggunakan Warna Baru</li>\n	<li>cara Menambahkan Icon</li>\n</ul>\n\n<p>Bab 5 - Proses Debugging</p>\n\n<ul>\n	<li>Menggunakan Toast</li>\n	<li>Menggunakan Android Log</li>\n</ul>\n\n<p>Bab 6 - Input Pengguna (Kasus 2)</p>\n\n<ul>\n	<li>Cara Membuat Project Dongeng Interaktif</li>\n	<li>Materi Pengenalan ImageViews</li>\n	<li>Cara Membuat Aplikasi Hanya Potrait</li>\n	<li>Cara Mengambil Teks dari EditText</li>\n	<li>Materi Pengenalan EditText untuk Input</li>\n</ul>\n\n<p>Bab 7 - Intent dan Activity (kasus 2)</p>\n\n<ul>\n	<li>Membuat Multiple Activity</li>\n	<li>Mengirim Data ke Activity Baru</li>\n	<li>Mengambil Data dari Intent</li>\n	<li>Menggunakan String Resources</li>\n</ul>\n\n<p>Bab 8 - Model View Controller MVC (kasus 2)</p>\n\n<ul>\n	<li>Apa itu MVC</li>\n	<li>Materi Mendefinisikan Model</li>\n	<li>Cara Implementasi Model</li>\n	<li>Cara Menambahkan Dongeng</li>\n	<li>Materi Membuat Constructor</li>\n	<li>Materi Development Module Jadwal Kuliah</li>\n</ul>\n\n<p>Bab 9 - Finalisasi Aplikasi (kasus 2)</p>\n\n<ul>\n	<li>Cara Membuat Layout Dongeng</li>\n	<li>Cara mengKostumisasi Tombol</li>\n	<li>Pengaturan Formatting</li>\n	<li>Cara Memanggil Halaman Lainnya</li>\n	<li>Finis aplikasi Dongeng</li>\n</ul>\n', 100, 1000, '1619842152_adr.png', '1424043480Tutorial_Seminggu_Menguasai_Android_Studio_(3).jpg', '787555996Tutorial_Seminggu_Menguasai_Android_Studio_(2).jpg', '24363036Tutorial_Seminggu_Menguasai_Android_Studio_(1).jpg', 129000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/5abrm2-jual-buku-tutorial-seminggu-menguasai-android-studio', 'https://www.tokopedia.com/malasngoding/tutorial-seminggu-menguasai-android-studio?n=1', '', '', '', '', ''),
(55, 2, '2016-12-09', 'DVD TUTORIAL TIPS DAN TRIK APLIKATIF MASTER PHP + BONUS EBOOK JQUERY', '<h2>DVD TUTORIAL TIPS DAN TRIK APLIKATIF MASTER PHP + BONUS EBOOK JQUERY</h2>\n\n<p>sebagai seorang programmer tentu banyak kendala yang dialami dalam menyelesaikan sebuah projek aplikasi.<br />\ndisini kami menyediakan solusi untuk jenis kendala yang sering di alami oleh seorang web programming. Terdapat hampir 60 video tutorial yang terbagi dalam beberap kategori seperti : PHP Ajax, Google maps, SMS Gateway Dan Web Service.</p>\n\n<p>untuk jenis masalah yang akan di bahas dalam DVD ini yaitu :</p>\n\n<p>Bagian 1 : Trik Trik Aplikatif Pemrograman PHP</p>\n\n<ul>\n	<li>Membaca file excel pada php dengan library PHPExcel</li>\n	<li>cara mengExport data SQL ke Excel</li>\n	<li>Cara mengInsert data secara simultan</li>\n	<li>cara Membuat grafik dengan ChartJS</li>\n	<li>instalasi composer pada OS Windows</li>\n	<li>Cara mengInput data simultan dan form dinamis jquery</li>\n	<li>cara Membaca dan insert data file excel ke SQL dengan library PHPExcel</li>\n	<li>Cara mengExport data SQL ke Excel</li>\n	<li>cara mengImport data Excel SCV ke MySQL via phpMyadmin</li>\n	<li>Cara Membaca data format Json</li>\n	<li>Cara Membuat data dalam format XML</li>\n	<li>Cara Membaca data format XML</li>\n	<li>Cara Membaca data situs BMKG xml</li>\n	<li>instalasi data tables dengan PHP MySQL</li>\n	<li>Cara mengintegrasi data tables</li>\n	<li>Membuat Data tables dengan PHP MySQL</li>\n	<li>Membuat Data tables Serverside</li>\n	<li>Check all checkbox dengan Jquery</li>\n	<li>cara membuat delete data secara simultan</li>\n	<li>Keyboard devent dengan library javascript hotkey</li>\n	<li>cara Membuat form autofill otomatis dengan Ajax</li>\n	<li>Cara Membuat barcode dengan PHP</li>\n	<li>Cara Kirim email dengan Localhost</li>\n	<li>Cara Membuat One Time Password</li>\n</ul>\n\n<p>Bagian 2 : Mastering Git</p>\n\n<ul>\n	<li>Berkenalan dan instalasi GIT&nbsp;</li>\n	<li>Setup GIT pada OS Windows&nbsp;</li>\n	<li>Membuat Repository Github</li>\n	<li>Perintah-perintah GIT yang sering digunakan</li>\n</ul>\n\n<p>Bagian 3 : Application Programming User Interface/ API</p>\n\n<ul>\n	<li>Materi Instalasi dan konfigurasi codeigniter</li>\n	<li>Pengenalan Library REST Server&nbsp;</li>\n	<li>Extensi Chrome POSTMAN</li>\n	<li>materi API method GET</li>\n	<li>Materi API method POST</li>\n	<li>Materi API method PUT</li>\n	<li>Materi API methos DELETE</li>\n</ul>\n\n<p>Bagian 4 : Google Maps</p>\n\n<ul>\n	<li>Instalasi Google Map 3 library</li>\n	<li>cara Mendapatkan Google Maps API Key</li>\n	<li>Cara Membuat Map dan marker</li>\n	<li>cara Mengganti marker dengan gambar</li>\n</ul>\n\n<p>Bagian 5 : Database SQL Advanced</p>\n\n<ul>\n	<li>Materi Data definition Language dan data manipulation language</li>\n	<li>Bahas tuntas SQL Query</li>\n	<li>Materi SQL Query join</li>\n	<li>Cara Membuat view MySQL</li>\n	<li>Cara Membuat trigger MySQL</li>\n</ul>\n\n<p>Bagian 6 : SMS Gateway dengan Gammu</p>\n\n<ul>\n	<li>proses Instalasi dan konfigurasi Gammu&nbsp;</li>\n	<li>Pembahasan Struktur database Gammu</li>\n	<li>cara Membaca pesan masuk</li>\n	<li>cara Membuat laporan Pesan terkirim</li>\n	<li>membuat SMS dengan Web API</li>\n</ul>\n\n<p>BONUS 1 : FRAMEWORK CODEIGNITER</p>\n\n<ul>\n	<li>Instalasi dan konfigurasi codeigniter</li>\n	<li>materi konsep model view dan controller/MVC</li>\n	<li>cara Menampilkan data dari database</li>\n	<li>cara mengInsert data ke database</li>\n	<li>cara mengUpdate data ke database</li>\n	<li>cara mengDelete data dari database</li>\n</ul>\n\n<p>BONUS 2 : MEMBUAT CRUD GENERATOR</p>\n\n<ul>\n	<li>Persiapan source yang digunakan</li>\n	<li>Cara mengIntegrasi codeigniter dan template Gantelella</li>\n	<li>Cara Memisahkan template dengan content</li>\n	<li>cara memisahkan content dengan template form</li>\n	<li>Cara mengIntegrasi dengan harviacode</li>\n	<li>menyesuaikan Halaman Form</li>\n	<li>menyesuaikan list data</li>\n	<li>membuat navigasi</li>\n	<li>cara Menambahkan icon</li>\n	<li>Cara Membuat combobox dinamis&nbsp;</li>\n	<li>persiapan source yang digunakan</li>\n	<li>cara Membuat menu dinamis</li>\n	<li>Fix Bug menu dinamis&nbsp;</li>\n	<li>mengIntegrasi dengan library ion_out</li>\n	<li>Cara Menampilkan informasi Users Log in</li>\n	<li>Membuat Data tables Serverside</li>\n	<li>Cara konfigurasi dinamis dan tambah link</li>\n	<li>Cara Menambahkan Button dan Nomor Urut</li>\n	<li>mengIntegrasi data tables serverside dengan harviacode</li>\n	<li>Fix Bug<br />\n	&nbsp;</li>\n</ul>\n\n<p>itulah list materi yang akan di pelajari, silahkan pesan sekarang dan dapatkan bonus dari malasngodin.com berupa EBOOKS TAMBAHAN BELAJAR JQUERY</p>\n', 100, 1000, '1967963048_ad.png', '1967963048_ad1.png', '1967963048_ad2.png', NULL, 145000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/57gibk-jual-buku-dvd-tutorial-tips-dan-trik-aplikatif-master-php-bonus-ebook-jquery', 'https://www.tokopedia.com/malasngoding/dvd-tutorial-tips-dan-trik-aplikatif-master-php?n=1', '', '', '', '', ''),
(56, 2, '2017-02-07', 'Tutorial Membuat Webiste Professional Dengan Codeigniter Dan Bootstrap', '<h2>Tutorial Membuat Webiste Professional Dengan Codeigniter Dan Bootstrap</h2>\n\n<p>Dalam membuat website membutuhkan keahlian dalam bidang pemrograman, khusunya php, html, css dan sebagainya. untuk membuat website yang profesional membutuhkan keahlian khusu supaya hasil karya berupa website kita lebih unggul dalam berbagai segi. untuk meecahkan masalah ini kami menawarkan produk&nbsp;<em>DVD Tutorial Membuat Webiste Professional Dengan Codeigniter Dan Bootstrap</em>. kenapa harus menggunakan Codeigniter dan Boostrap ?</p>\n\n<p>Sangat banyak alasan kenapa kita menggunakan codeigniter dan boostrap dalam membuat website. berikut beberapa keunggulan dari Codeigniter antara lain :</p>\n\n<ul>\n	<li>lebih ringan</li>\n	<li>powerfull</li>\n	<li>cepat</li>\n	<li>keamaanan</li>\n	<li>dan lain-lain.</li>\n</ul>\n\n<p>Kenapa Harus Menggunakan Boostrap ?</p>\n\n<p>Bootstrap merupakan framework CSS yang memiliki kemampuan dalam urusan desain web. Boostrap ini sangat&nbsp;membantu para developer dalam&nbsp;pekerjaan desainnya. Keunggulan Boostrap ini &nbsp;antara lain : desain yang modern, mobile friendly, ringan, dan dokumentasi yang lengkap. kemudahan yang dirasakan oleh development dan tampilan yang dihasilkan lebih medern sehingga&nbsp;banyak developer menggunakan boostrap ini dalam mendesain web yang meraka buat.</p>\n\n<p>maka dari itu kami menawarkan produk&nbsp;<strong>Tutorial Membuat Webiste Professional Dengan Codeigniter Dan Bootstrap</strong>. ini sangat membantu para programmer web dalam belajar. video yang dibahas mendetail dan jelas. jadi tidak perlu ragu untuk membeli produk yang kami tawarkan. hanya dengan Rp.150.000-, kamu bisa mempelajari membuat website profesional dengan Codeigniter dan Boostrap.</p>\n\n<p>berikut kami lamporkan list materi yang akan di bahas dalam DVD Tutorial ini.</p>\n\n<p>Section 1 : Frontend Development</p>\n\n<ol>\n	<li>Instalasi Dan Konfigurasi&nbsp;CI</li>\n	<li>Pembahasan Function Dan Variabel</li>\n	<li>Data Array Di Controller</li>\n	<li>Materi Konfigurasi Database</li>\n	<li>Controller Baru</li>\n	<li>Develop&nbsp;Template Webiste</li>\n	<li>Membuat&nbsp;Login Dan Slider</li>\n	<li>Membuat Suara Rektorat Dan Profile</li>\n	<li>Membuat Menu Footer</li>\n	<li>Membuat Menu Webiste Dinamis</li>\n	<li>Management Route</li>\n	<li>Membuat Sidebar</li>\n	<li>Menampilkan Detail Berita</li>\n	<li>Menampilkan Data Dinamis Dosen</li>\n	<li>Membuat Halaman Index Berita</li>\n	<li>Menampilkan Album Foto</li>\n	<li>Menampilkan Detail Gallery</li>\n	<li>Membuat Halaman Contact</li>\n</ol>\n\n<p>Section 2 : Frontedn Backend</p>\n\n<ol>\n	<li>Develop Form Login</li>\n	<li>Develop Template Admin</li>\n	<li>Develop Home Admin</li>\n	<li>Materi Management Menu</li>\n	<li>Materi Management Artikel</li>\n	<li>Materi Management Halaman</li>\n	<li>Materi Management Album</li>\n	<li>Materi Management Dosen</li>\n	<li>Materi Management Slider Website</li>\n	<li>Materi Management Testimoni</li>\n	<li>Materi Management Download</li>\n	<li>Materi Management External Link</li>\n	<li>Materi Setting Web</li>\n	<li>Materi Management Contact</li>\n	<li>MateriLogout Dan Security</li>\n	<li>Materi Profile User</li>\n</ol>\n\n<p>itulah list judul materi yang akan kamu pelajari dengan membeli DVD INI. untuk pembahasan nya tidak perlu diragukan lagi karen yang menjaliskan ahli dalam bahasa pemrograman khususnya website.</p>\n', 100, 1000, '19946809777075632_453d5d14-83f8-43ad-91f7-3bccc432c9b1_600_600.jpg', '7075632_396d83c6-dd9b-4799-afee-04eceadce351_1000_525.png', '7075632_a2f91f53-10eb-4621-9c79-9cd57c35910d_580_1000.png', NULL, 150000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/69g2ik-jual-buku-tutorial-membuat-webiste-professional-dengan-codeigniter-dan-bootstrap', 'https://www.tokopedia.com/malasngoding/tutorial-membuat-webiste-professional-dengan-codeigniter-dan-bootstrap', '', '', '', '', ''),
(57, 2, '2017-04-26', 'DVD Tutorial Membuat Aplikasi Video Streaming Dengan Android Studio', '<h2>DVD Tutorial Membuat Aplikasi Video Streaming Dengan Android Studio</h2>\n\n<p>Android merupakan salah satu sistem operasa yang memiliki pengguna terbanyak di dunia, sistem operasi yang di kembangkan oleh perusahaan google ini memiliki banyak kelebihan yang membuat pengguna betah untuk menggunakan sistem operasi android ini.&nbsp;</p>\n\n<p>oleh karena banyak pengguna android, maka membuka peluang usaha bagi developer mobile untuk meraup keuntungan dengan membuat/mengembangkan aplikasi berbasis android. maka dari itu kami menawarkan&nbsp;DVD Tutorial Membuat Aplikasi Video Streaming Dengan Android Studio. video tutorial ini sangat derekomendasikan bagi kamu yang sedang mempelajari bahasa pemrograman native android, dan juga untuk sudah bisa tidak salah untuk mencoba mempelajari materi yang ada dalam DVD tutorial ini.</p>\n\n<p>Dalam DVD Video Tuorial Membuat Aplikasi Video Streaming Dengan Android Studio ini akan di bahas tahapan dalam membuat aplikasi, lalu dalam aplikasi tersebut anda akan diajarkan juga bagaimana cara nya memasang iklan dari AdMobs agar aplikasi yang anda buat bisa mendatangkan keuntungan untuk anda.</p>\n\n<p>Adaoun materi yang akan dibahas dalam&nbsp;DVD Tutorial Membuat Aplikasi Video Streaming Dengan Android Studio ini adalah sebagai berikut :</p>\n\n<ol>\n	<li>Persiapan Database Mysql&nbsp;</li>\n	<li>Persiapan Android Studio</li>\n	<li>Membuat User Authentication&nbsp;</li>\n	<li>Custom Navigation Drawer Dan Activity&nbsp;</li>\n	<li>Tampilan Grid Dan List Beranda&nbsp;</li>\n	<li>Menampilkan List Episode Dengan Scrolling Activity&nbsp;</li>\n	<li>Membuat Video Streaming Dari Local Server</li>\n	<li>Pencarian Dan Filter Video Berdasarkan Genre</li>\n	<li>Manajemen Bookmark Acitivity</li>\n	<li>Acitivity Report Dan Webview&nbsp;</li>\n	<li>Membuat Akun Admob Dan Tutorial Pemasangan</li>\n	<li>Menggabungkan Project Android Dengan Web Admin Codeigniter</li>\n</ol>\n\n<p>kami rekomendasikan bagi kamu yang baru mempelajari pemrograman berbasis android ada baiknya kamu mempelajari tutotial android dasar sebelumnya :<a href=\"http://shop.malasngoding.com/produk/54-tutorial-seminggu-menguasai-android-studio\">&nbsp;Tutorial Seminggu Menguasai Android Studio</a></p>\n', 500, 1000, '1967621736shop.png', '742963851Screenshot_9.png', '1263721842Screenshot_8.png', '473721859Screenshot_8_(1).png', 150000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/84a446-jual-dvd-tutorial-membuat-aplikasi-video-streaming-dengan-android-studio', 'https://www.tokopedia.com/malasngoding/dvd-tutorial-membuat-aplikasi-video-streaming-dengan-android-studio?n=1', '', '', '', '', ''),
(58, 2, '2017-05-03', 'DVD Tutorial Belajar Desain Grafis Pemula: Langkah Fundamental Jadi Desainer Profesional', '<h1>DVD Tutorial Belajar Desain Grafis Pemula: Langkah Fundamental Jadi Desainer Profesional&nbsp;</h1>\n\n<p><em><strong>DVD Tutorial Belajar Desain Grafis Pemula: Langkah Fundamental Jadi Desainer Profesional</strong></em>&nbsp;&ndash; desain grafis merupakan salah satu bidang ilmu yang paling banyak diminati, namun ketersediaan bahan ajaran yang mudah di mengerti menjadi salah satu kendala yang paling banyak di temukan di kalangan sahabat yang sedang belajar desain grafis. kebanyakan yang beredar di pasaran, materinya lebih ke menguasai softwere tanpa terlebih dahulu berkenalan dengan desain.</p>\n\n<p>Dari permasalahan yang sudah kami perhatikan maka kamu menyediakan&nbsp;DVD Tutorial Belajar Desain Grafis Pemula: Langkah Fundamental Jadi Desainer Profesional. kami berhara dengan adanya DVD Tutorial Belajar Desain Grafis Pemula ini bisa memecahkan kendala yang sering di hadapi oleh para desain grafis.</p>\n\n<p>lewat DVD Tutorial Belajar Desain Grafis ini kami pastikan bisa mengantar anda tidak hanya menguasai softwere semata, namun bagaimana menjadi seorang desain grafis profesional.</p>\n\n<p>Adapun materi yang akan di bahas dalam&nbsp;DVD Tutorial Belajar Desain Grafis Pemula: Langkah Fundamental Jadi Desainer Profesional ini adalah sebagai berikut :</p>\n\n<p>BAB 1 : Selamat Datang Di Dunia Desain Grafis Yang Menyenangkan<br />\nApa Yang Akan Didapatkan Dari Kursus Ini<br />\nApa Saja yang akan dipelajari dalam kursus ini<br />\nFamiliar Dengan Aplikasi Desain Grafis</p>\n\n<p>BAB 2 : Prinsip Desain Grafis, Agar Desain Menjadi Lebih Baik<br />\nDesain Grafis Media Yang Powerfull Dan Indah Sebagai Alat Komunikasi<br />\nKomposisi: Mengatur Estetika Dalam Desain Grafis<br />\nMengatur Komposisi Dalam Photoshop Dan Illustrator<br />\nKeindahan Dan Fungsi Dari Alignment Dalam Desain<br />\nMenggunakan Grid Layout Dalam Desain<br />\nMengenal Negative Space Dan White Space<br />\nMenggunakan Negative Space Secara Efektif<br />\nMengenal Dan Menggunakan Proximity Dan Grouping</p>\n\n<p>BAB 3 : Prinsip Desain Grafis, Agar Desain Menjadi Lebih Baik Bagian 2<br />\nSkala Dan Proporsi Dalam Desain<br />\nMenggunakan Skala Dan Proporsi<br />\nMengenal Symmetry, Assymmetry, Dan Rhythm<br />\nMenggunakan Symmetry, Assymmetry, Dan Rhythm Dalam Desain<br />\nMenggunakan Repetition (Pengulangan) Dalam Desain Dan Konsistensi Dalam Desain<br />\nCara Efektif Menggunakan Repetition Dan Konsistensi<br />\nKontras Dan Variasi Dalam Desain<br />\nCara Efektif Menggunakan Kontras Dan Variasi Dalam Desain<br />\nKesatuan Dan Gestalt (Hubungan Kemiripan) Dalam Desain Grafis</p>\n\n<p>BAB 4 : Membuat Desain Lebih Memukau Dengan Keindahan Warna : Teori Pewarnaan Dan Aplikasinya<br />\nMengenal Pewarnaan Dalam Desain Grafis Dan Mengimplementasikannya<br />\nMenggunakan Terminologi Warna, Dan Mode Warna Serta Penggunaannya<br />\nMengimplementasikan Warna Yang Harmonis<br />\nMenggunakan Symmetry, Assymmetry, Dan Rhythm Dalam Desain<br />\nMenggunakan Repetition (Pengulangan) Dalam Desain Dan Konsistensi Dalam Desain<br />\nCara Efektif Menggunakan Repetition Dan Konsistensi<br />\nKontras Dan Variasi Dalam Desain<br />\nCara Efektif Menggunakan Kontras Dan Variasi Dalam Desain<br />\nKesatuan Dan Gestalt (Hubungan Kemiripan) Dalam Desain Grafis</p>\n\n<p>BAB 5 : Typography: Mengerti dan Mengaplikasikan Typography Dalam Desain<br />\nMengenal Pewarnaan Dalam Desain Grafis Dan Mengimplementasikannya<br />\nMenggunakan Terminologi Warna, Dan Mode Warna Serta Penggunaannya<br />\nMengimplementasikan Warna Yang Harmonis<br />\nMembuat Color Wheel<br />\nTypography: Mengerti dan Mengaplikasikan Typography Dalam Desain<br />\nMengenal Pewarnaan Dalam Desain Grafis Dan Mengimplementasikannya<br />\nMenggunakan Terminologi Warna, Dan Mode Warna Serta Penggunaannya<br />\nMengimplementasikan Warna Yang Harmonis<br />\nMembuat Color Wheel</p>\n\n<p>BAB 6 : Praktik Desain Grafis Lanjutan, Menghandle Project dan Latihan Lainnya<br />\nProject Desain Grafis Dalam Tutorial<br />\nMembuat Infographic Dengan Memilih Dominasi Warna Paling Efektif<br />\nMembuat Logo<br />\nMembuat Poster<br />\nMembuat Postcard<br />\nMembuat Dll Project</p>\n\n<p>BAB 7 : Kesimpulan Dan Resource untuk Desainer Grafis<br />\nKesimpulan Membuat Desain Yang Cantik<br />\nPenutup Dan Kesimpulan</p>\n\n<p>BONUS SPESIAL<br />\n125+ Koleksi Brush Photoshop<br />\n1000+ Koleksi Font<br />\n50+ Vector Graphics<br />\nTutorial 3DS Max (Durasi &gt; 1jam) &ndash; Membahas Studi Kasus Interior<br />\nTutorial Photoshop (Durasi 30menit) &ndash; Membahas Beraneka Macam Studi Kasus<br />\nTutorial Flash (Durasi 3jam) &ndash; Belajar Animasi Flash dari Dasar 8 PART<br />\nTutorial CorelDraw (Durasi 45menit) &ndash; Membahas Beraneka Macam Studi Kasus<br />\nTutorial Illustrator (Durasi &gt; 1jam) &ndash; Membahas Dasar dan Studi Kasus</p>\n\n<p>itulah materi yang akan di bahas dalam&nbsp;DVD Tutorial Belajar Desain Grafis Pemula: Langkah Fundamental Jadi Desainer Profesional. dapatkan bonus ++ untuk setiap pemesanan DVD Tutorial lewat malasngoding.com</p>\n', 500, 1000, '215589336belajar-desain-grafis-untuk-pemula.jpg', '17999546253_belajar-desain-grafis.png', '2103091275_belajar-desain-grafis.png', '3947533966_belajar-desain-grafis.png', 115000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/871lfo-jual-dvd-tutorial-belajar-desain-grafis-pemula', 'https://www.tokopedia.com/malasngoding/dvd-tutorial-belajar-desain-grafis-pemula?n=1', '', '', '', '', '');
INSERT INTO `dah_products` (`prod_id`, `prod_author`, `prod_date`, `prod_name`, `prod_desc`, `prod_berat`, `prod_qty`, `prod_img1`, `prod_img2`, `prod_img3`, `prod_img4`, `prod_price`, `prod_bukalapak`, `prod_tokopedia`, `prod_kirim`, `prod_lokasi`, `prod_terjual`, `prod_jasa_kirim`, `prod_status`) VALUES
(59, 2, '2017-05-05', 'Membangun Sistem Informasi Akademik Sekolah Dengan Codeigniter Dan Ajax', '<h2>Membangun Sistem Informasi Akademik Sekolah Dengan Codeigniter Dan Ajax</h2>\n\n<p>kebutuhan akan&nbsp;management sistem pada institusi pendidikan sangat tinggi, sehinggi sistem informasi akademik menjadi salah satu topik yang sangat banyak diminati.</p>\n\n<p>Oleh karena banyak-nya kebutuhan akan sistem informasi akademik ini maka menjadi peluang besar bagi kita programmer untuk menambahkan uang jajan. maka dari itu kami menawarkan DVD Tutorial&nbsp;Membangun Sistem Informasi Akademik Sekolah Dengan Codeigniter Dan Ajax.</p>\n\n<p>Dalam DVD Tutorial&nbsp;Membangun Sistem Informasi Akademik Sekolah Dengan Codeigniter Dan Ajax ini kamu akan di ajarkan bagaimana kamu bisa membangun sistem informasi akademik yang bisa fitur-fiturnya bisa digunakan untuk SD, SMP, SMA dan sederajat.</p>\n\n<p>Mengingat sistem yang akan dibangun merupakan sistem yang akan memiliki jumlah data yang banyak sehingga proses untuk menampilkan data sudah menggunakan ajax datatables serverside dan beberapa proses pada sistem ini sudah menggunakan teknologi ajax sehingga proses nya menjadi lebih interaktif.</p>\n\n<p>Adapun materi yang akan di bahas dalam DVD Tutorial&nbsp;Membangun Sistem Informasi Akademik Sekolah Dengan Codeigniter Dan Ajax ini adalah sebagai berikut :</p>\n\n<p>Section 1 : Membangun SIstem Informasi Akademik&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br />\nPengenalan Tentang Komponen Sistem Yang Akan Digunakan<br />\nManagement Modul Peserta Didik<br />\nManagement Modul Pengajar<br />\nManagement Profile Sekolah<br />\nManagement Modul Data Mata Pelajaran<br />\nManagement Modul Data Ruangan/Kelas<br />\nManagement Modul Data Jurusan<br />\nManagement Modul Data Tahun Akademik<br />\nManagement Modul Data Kurikulum<br />\nProses Pembuatan Jadwal Pelajaran<br />\nMengelompokkan Siswa Rombongan Belajar<br />\nManagement Laporan Nilai Siswa<br />\nManagement Pengguna Sistem ( Admin Dan Guru )<br />\nProses Authentifikasi Dan Proteksi Modul</p>\n\n<p>BONUS 1 : Management Modul Dan Transaksi keuangan<br />\nManagement Modul Komponen Biaya<br />\nManagement Modul Beasiswa<br />\nProses Pembayaran Keuangan<br />\nLaporan Keuangan</p>\n\n<p>BONUS 2 : Management Modul SMS Gateway<br />\nPenjelasan Tentang Layanan SMS API<br />\nMendapatkan API Key Dan Api Username<br />\nIntegrasi Dangan Library SMS API<br />\nManagement Modul Group Phonebook ( Import Dari Excel )<br />\nPembuatan Modul Untuk Proses Kirim SMS<br />\n&nbsp;</p>\n\n<p>DVD Tutorial Membangun Sistem Informasi Akademik Sekolah Dengan Codeigniter Dan Ajax sangat di rekomendasikan bagi kamu yang sudah mengiasai PHP dan MySQL. tapi bagi kamu yang belum belajar web programming (PHP, MYSQL), kamu jangan gundah. karena tidak banyak waktu yang diperlukan untuk belajar PHP dan MySQL asalkan kamu serius dalam mempelajarinya. dan bagi kamu yang baru mau mulai belajar kami merekomendasikan&nbsp;<a href=\"http://shop.malasngoding.com/produk/35-dvd-seminggu-menguasai-php-dan-mysql-untuk-pemula\">DVD Seminggu Menguasai PHP dan MySQL Untuk Pemula</a>.</p>\n', 500, 1000, '1698394138Screenshot_5_(1).png', '136927494sistem-informasi-akademik-codeigniter.png', '67609695source-code-akademik.png', '2133845209Screenshot_3.png', 145000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/7jj4nq-jual-dvd-tutorial-codeigniter-membangun-sistem-informasi-akademik-sekolah', 'https://www.tokopedia.com/malasngoding/dvd-tutorial-codeigniter-membangun-sistem-informasi-akademik-sekolah?trkid=f=Ca0000L000P0W0S0Sh00Co0Po0Fr0Cb0_src=shop-product_page=1_ob=11_q=_catid=837_po=3', '', '', '', '', ''),
(60, 2, '2017-05-14', 'DVD Tutorial Adobe XD - Membuat Desain Aplikasi Mobile E-Commerce', '<h2>DVD Tutorial Adobe XD - Membuat Desain Aplikasi Mobile E-Commerce</h2>\n\n<p>Desain yang menarik adalah satu faktor yang bisa membuat ketertarikan dalam hal apa pun. dalam produk ini kamu menawarkan tutorial&nbsp;Adobe XD membuat desain aplikasi mobile e-commerce.</p>\n\n<p>Adobe XD (Adobe Experience Design) adalah salah satu tool desain grafis yang sangat banyak digunakan oleh desainer.</p>\n\n<p>Dalam tutorial ini anda akan belajar bagaimana cara membuat sebuah layout aplikasi mobile menggunakan software Adobe XD, studi kasus yang dibahas adalah mengdesain layout dari aplikasi penjualan untuk platform sistem operasi mobile, list materi yang akan anda pelajari adalah sebagai berikut :</p>\n\n<p>Preparing<br />\nEpisode 1 - Splash Screen<br />\nEpisode 2 - Login &amp; Register<br />\nEpisode 3 - Timeline<br />\nEpisode 4 - Product<br />\nEpisode 5 - Cart<br />\nEpisode 6 - Prototyping<br />\nFinishing</p>\n\n<p>dapatkan bonus ++ di setiap pembelian produk di toko malasngoding.</p>\n', 500, 10000, '1070163258Screenshot_1.png', '1879116455Screenshot_4.png', '492822008Screenshot_3.png', NULL, 100000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/8cb532-jual-dvd-tutorial-adobe-xd-membuat-desain-aplikasi-mobile-e-commerce', 'https://www.tokopedia.com/malasngoding/dvd-tutorial-adobe-xd-membuat-desain-aplikasi-mobile-e-commerce', '', '', '', '', ''),
(61, 2, '2017-05-14', 'DVD Kursus Membuat Flat Animation', '<h2>DVD Kursus Membuat Flat Animation</h2>\n\n<p>salah satu media reklamasi yang paling efektif dalam menjalanka bisnis adalah audio visual. itu dikarenakan orak manusia lebih cendrung gampang menangka pesan yang bersifat audio dibandingkan dengan penyampaian pesan dengan teks. maka dari itu kami menawarkan produk DVD Kursus dalam membuat flat animation. disini kami membahas bagaimana cara membuat flat animation yang bisa anda kembangkan untuk membuat apa saja tergantung pada kreatif kamu sendiri. dalam vidio tutorial ini juga mengajarkan bagaimana cara penyampaian esan yang lebih efektif dengan menganimasikan pesan berupa audio visual.</p>\n\n<p>Siapa Yang Cocok Mempelajari DVD Ini ?</p>\n\n<p>DVD&nbsp;Kursus Membuat Flat Animation ini cocok dipelajari&nbsp;orang yang awam maupun orang yang sudah pernah bergelut di dunia dunia desain dan video editing, karena di dalamnya dijelaskan secara detil&nbsp;bagaimana menggunakan software dalam editing. dan pembahasannya juga sangat jelas.</p>\n\n<p>Apa saja yang dibahas DVD Kursus Membuat Flat Animation ?</p>\n\n<p>materi yang akan di pelajari dalam dvd tutorial ini, pada bagian pertama akan di bahas secara lengkap panduan penggunaan aplikasi seperti&nbsp;CorelDraw, Adobe Ilustrator, Adobe After Effect dan juga Sony Vegas. dan di jelaskan juga trik-trik yang bisa membuat pekerjaan dengan softwere tersebut menjadi lebih mudah.</p>\n\n<p>adapatun judul materi yang akan di bahas antara lain :</p>\n\n<p>Section 1 : Berkenalan Dengan Software Yang Digunakan</p>\n\n<ol>\n	<li>Intro Dan Perkenalan Corel Draw</li>\n	<li>Pengenalan Adobe Ilustrator</li>\n	<li>Pengenalan Adobe After Effect</li>\n	<li>Pengenalan Software Vegas Pro</li>\n</ol>\n\n<p>Section 2 : Persepsi Desain Grafis Yang Wajib Anda Ketahui</p>\n\n<ol>\n	<li>pengenalan&nbsp;Elemen Desain Grafis</li>\n	<li>pengenalan Komposisi Dalam Desain Grafis</li>\n	<li>Layouting Tata Letak Yang Baik</li>\n	<li>pengenalan&nbsp;Aligment Dalam Desain</li>\n	<li>Groping</li>\n	<li>Memahami Symetri Dan Asymentrii</li>\n	<li>pengenalan Konsep Pewarnaan Dan Analogi Warna</li>\n	<li>pengenalan&nbsp;Typehografi Dalam Dunia Desain</li>\n</ol>\n\n<p>Section 3 : Konsep Geografis</p>\n\n<ol>\n	<li>pengenalan Konsep Geografis Dan Kenapa Geografis Itu Penting</li>\n</ol>\n\n<p>Section 4 : Project Membuat Animasi Flat Company Profile</p>\n\n<ol>\n	<li>Membuat Layout Yang Akan Digunakan</li>\n	<li>Membuat Logo Perusahaan</li>\n	<li>Tracing Image Yang Akan Digunakan</li>\n	<li>Membuat Siluet Sederhana Yang Akan Kita Gunakan</li>\n	<li>Membuat Icon Callout Service Dan Handphone</li>\n	<li>Membuat Tampilan Contack Info</li>\n	<li>Konversi Project Ke Adobe Ilustrator</li>\n	<li>Mengenal Layer Dalam Adobe Ilustator</li>\n	<li>Animate Scan Bagian 1 Dan 2</li>\n	<li>Animate Scan Bagian 1 Dan 3 + Masking</li>\n	<li>Membuat Icon Callout Service Dan Handphone</li>\n</ol>\n\n<p>itulah materi yang akan di bahas dalam DVD&nbsp;Kursus Membuat Flat Animation. Semoga bermanfaat.</p>\n', 500, 1000, '1985388810DVD_Kursus_Membuat_Flat_Animation.jpg', NULL, NULL, NULL, 90000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/5ww0ut-jual-dvd-kursus-membuat-flat-animation', 'https://www.tokopedia.com/malasngoding/dvd-kursus-membuat-flat-animation', '', '', '', '', ''),
(63, 2, '2017-05-14', 'DVD Tutorial Membuat Webiste Berita Dengan Codeigniter Dan Bootstrap', '<p>Produk ini menawarkan materi pembelajaran membuat website portal berita dengan codeigniter dan boostrap. kenapa harus menggunakan codeigniter dan boostrap ? itu karena codeigniter merupakan framework php yang power full, ringan, cepat, dan lagi trending sekarang. setelah mempelajari Video tutorial ini di harapkan dapat&nbsp;memahami dengan jelas isi yang di bahas, karena sangat berguna bagi kamu yang akan mengembangkan kemamuan coding codeignitermu dalam membuat projek lain.</p>\n\n<p>Kenapa Harus Menggunakan Bootstrap?<br />\nItu karena boostrap memiliki kekuatan dalam urusan web design. hal ini membantu development web dalam&nbsp;membuat desain webnya. alasan lain kenapa menggunakan boostrap karena framework CSS menyediakan fitur-fitur yang membuat para develoment tidak perlu repot-repot mendesain baik untuk PC, smartphone, Tablet, itu karena boostrap sudah mobile friendly, ringan dan dokumentasi yang disediakan lengkap.</p>\n\n<p>Selain menggunakan codeigniter dan Boostrap, dalam materi video tutorial ini juga menggunakan library IonAuth. IonAuth ini merupakan library autentikasi login, library ini digunakan untuk mempermudah proses register, login dan lupa password. Library ini sangat aman dan mudah di integresikan dengan codeigniter.</p>\n\n<p>CURRICULUM</p>\n\n<p>Section 1 : Backend Development<br />\n1. Membuat Authentifikasi Pengguna<br />\n2. Management Kategori Berita<br />\n3. Management Berita<br />\n4. Membuat Featured Post<br />\n5. Moderasi komentar<br />\n6. Management Pengguna<br />\n7. Dashboard</p>\n\n<p>Section 2 : Frontend Development<br />\n8. Halaman Index (Awal/ Home)<br />\n9. Home &ndash; Menampilkan Berita Terbaru<br />\n10. Menampilkan Detail Berita<br />\n11. Membuat Komentar Dalam Artikel<br />\n12. Arsip Berita<br />\n13. Membuat Form Search (Pencarian Berita)<br />\n14. Membuat Sidebar &ndash; Find On Us<br />\n15. Membuat Sidebar &ndash; Berita Terbaru<br />\n16. Membuat Sidebar &ndash; Komentar Terbaru<br />\n17. Membuat Sidebar &ndash; Kategori Berita<br />\n18. Registe Dan Login</p>\n', 500, 1000, '1921892132Screenshot_1.png', '1879414829Screenshot_2.png', '1385863676Screenshot_3.png', '362764829Screenshot_4.png', 90000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/6de14h-jual-tutorial-membuat-webiste-berita-dengan-codeigniter-dan-bootstrap', 'https://www.tokopedia.com/malasngoding/tutorial-membuat-webiste-berita-dengan-codeigniter-dan-bootstrap', '', '', '', '', ''),
(64, 2, '2017-05-14', 'Membangun Aplikasi WEB Dengan PHP, MySQLI Dan Bootstrap', '<h2>Membangun Aplikasi WEB Dengan PHP, MySQLI Dan Bootstrap</h2>\r\n\r\n<p>PHP dan MySQL merupakan dasar dari pemrograman WEB. bahkan sebelum kita mengusai framework yang lain, ada baiknya kita mengusai php dan mysql terlebih dahulu. maka dari itu dalam produk kali ini kami menawarkan DVD Tutorial <strong>Membangun Aplikasi WEB Dengan PHP, MySQLI Dan Bootstrap</strong>. dalam video ini kamu akan mempelajari php, mysqli dan boostrap. Bootstrap disni sebagai pendukung untuk membuat tampilan halaman web yang kita buat. selain bisa belajar php dan mysqli disini kamu akan belajar contoh kasusnya juga.</p>\r\n\r\n<p>Kualitas video yang ada dalam DVD ini sangat bagus, disertai dengan pembahasan yang detail dan lengkap sehingga memudahkan kamu dalam mempelajari materi yang disediakan. Pada akhir dari pembelajaran kamu akan mempelajaridua buah studi kasus development aplikasi. Pada studi kasus pertama anda akan belajar bagaimana membuat aplikasi pengelolaan data siswa dan pada studi kasus kedua anda akan belajar bagaimana membuat module Content Managemen System Lokomedia.<br>\r\nadapun judul materi yang akan di bahas dalam DVD tutorial <em>Membangun Aplikasi WEB Dengan PHP, MySQLI Dan Bootstrap</em> adalah sebagai berikut :</p>\r\n\r\n<p>Section 1: FUDAMENTAL PHP</p>\r\n\r\n<ol>\r\n <li>install web server</li>\r\n <li>membuat project</li>\r\n <li>pos dan GET</li>\r\n <li>looping for & while</li>\r\n <li>Bermain Dengan Array</li>\r\n <li>Kondisi IF & CASE</li>\r\n <li>Membuat Dan Menggunakan Function</li>\r\n</ol>\r\n\r\n<p>Section 2 : DATABASE SQL dan DML</p>\r\n\r\n<ol>\r\n <li>mengenal PHPmyAdmin</li>\r\n <li>sintaks</li>\r\n <li>Normalisasi & Relationship</li>\r\n <li>SQL Joint</li>\r\n <li>Data ke Server</li>\r\n</ol>\r\n\r\n<p>Section 2 : PHP DAN MySQLi</p>\r\n\r\n<ol>\r\n <li>Menampilkan Data Mahasiswa</li>\r\n <li>Kelola Data Mahasiswa</li>\r\n <li>Membuat Dropdown Data Dinamis</li>\r\n <li>Pencarian Data mahasiswa</li>\r\n</ol>\r\n\r\n<p>Section 3 : AUTHENTIFIKASI</p>\r\n\r\n<ol>\r\n <li>Proses Login</li>\r\n <li>Login Dengan Teknik Session & Logout</li>\r\n</ol>\r\n\r\n<p>Section 3 : MEMBUAT APLIKASI DATA MAHASISWA</p>\r\n\r\n<ol>\r\n <li>Integrasi Dengan Boostrap</li>\r\n <li>Membuat Content Dinamis</li>\r\n <li>Halaman Data Siswa</li>\r\n <li>Halaman Input Data Siswa Dengan Bootstrap</li>\r\n <li>Halaman Edit Data Siswa Dengan Bootstrap</li>\r\n <li>Halaman Pencarian Data Siswa Dengan Bootstrap</li>\r\n <li>Modular Level Halaman</li>\r\n <li>Modular Level Proses</li>\r\n <li>Bug Dan Penutup</li>\r\n</ol>\r\n\r\n<p>Khusu Pemesanan DVD Tutorial Membangun Aplikasi WEB Dengan PHP, MySQL Dan Bootstrap di malasngoding.com akan mendapatkan bonus Ebooks Panduan Belajar Jquery dasar</p>\r\n', 500, 50, '982337664Screenshot_8.png', '402181858Screenshot_7.png', '938960609Screenshot_6.png', NULL, 95000, 'https://www.bukalapak.com/p/hobi-koleksi/buku/komputer-487/58pc4b-jual-buku-membangun-web-aplikasi-dengan-php-mysqli-dan-boostrap', 'https://www.tokopedia.com/malasngoding/membangun-web-aplikasi-dengan-php-mysqli-dan-boostrap', '2 Hari', 'Medan', '', 'Jne, JN&T, Pos Kilat', '');

-- --------------------------------------------------------

--
-- Table structure for table `dah_product_category`
--

CREATE TABLE `dah_product_category` (
  `pcat_id` int(11) NOT NULL,
  `pcat_name` text NOT NULL,
  `pcat_sub` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dah_product_category`
--

INSERT INTO `dah_product_category` (`pcat_id`, `pcat_name`, `pcat_sub`) VALUES
(1, 'Uncategorized', 0),
(6, 'DVD Tutorial', 0),
(17, 'Kaos', 0),
(24, 'Kaos Geek', 17),
(25, 'Kaos Programmer', 17),
(26, 'Kaos Mahasiswa', 17),
(27, 'Kaos Gamer', 17),
(28, 'Kaos Linux', 17);

-- --------------------------------------------------------

--
-- Table structure for table `dah_taxonomy`
--

CREATE TABLE `dah_taxonomy` (
  `taxonomy_id` int(11) NOT NULL,
  `taxonomy_parent` int(11) NOT NULL,
  `taxonomy_child` text NOT NULL,
  `taxonomy` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dah_taxonomy`
--

INSERT INTO `dah_taxonomy` (`taxonomy_id`, `taxonomy_parent`, `taxonomy_child`, `taxonomy`) VALUES
(70, 0, '1', 'product_category'),
(103, 29, '1', 'post_category'),
(218, 33, '6', 'product_category'),
(220, 41, '6', 'product_category'),
(222, 42, '6', 'product_category'),
(223, 36, '6', 'product_category'),
(224, 35, '6', 'product_category'),
(225, 39, '6', 'product_category'),
(226, 38, '6', 'product_category'),
(227, 37, '6', 'product_category'),
(230, 46, '6', 'product_category'),
(231, 45, '6', 'product_category'),
(232, 44, '6', 'product_category'),
(234, 55, '6', 'product_category'),
(236, 53, '6', 'product_category'),
(237, 52, '6', 'product_category'),
(238, 51, '6', 'product_category'),
(239, 50, '6', 'product_category'),
(240, 49, '6', 'product_category'),
(241, 48, '6', 'product_category'),
(243, 54, '6', 'product_category'),
(244, 47, '6', 'product_category'),
(246, 56, '6', 'product_category'),
(247, 57, '6', 'product_category'),
(248, 58, '6', 'product_category'),
(249, 59, '6', 'product_category'),
(250, 60, '6', 'product_category'),
(251, 61, '6', 'product_category'),
(255, 63, '6', 'product_category'),
(261, 64, '6', 'product_category');

-- --------------------------------------------------------

--
-- Table structure for table `dah_users`
--

CREATE TABLE `dah_users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(225) NOT NULL,
  `user_email` varchar(225) NOT NULL,
  `user_login` varchar(225) NOT NULL,
  `user_pass` varchar(225) NOT NULL,
  `user_level` varchar(20) NOT NULL,
  `user_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dah_users`
--

INSERT INTO `dah_users` (`user_id`, `user_name`, `user_email`, `user_login`, `user_pass`, `user_level`, `user_status`) VALUES
(1, 'Diki Alfarabi Hadi', 'dikialfarabihadi@gmail.com', 'diki', 'dffaa4c60a250f19dc4a79b1d05c8d53', 'admin', 1),
(2, 'muzanni', 'moezanni@gmail.com', 'muzanni', '6e413ea6a2bb937b9106fa21004965da', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dah_visitor`
--

CREATE TABLE `dah_visitor` (
  `id` int(11) NOT NULL,
  `time_visit` datetime NOT NULL,
  `user_ip` text NOT NULL,
  `user_browser` text NOT NULL,
  `user_os` text NOT NULL,
  `user_device` text NOT NULL,
  `page` text NOT NULL,
  `user_referrer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dah_visitor`
--

INSERT INTO `dah_visitor` (`id`, `time_visit`, `user_ip`, `user_browser`, `user_os`, `user_device`, `page`, `user_referrer`) VALUES
(1, '2016-10-19 15:01:10', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(2, '2016-10-19 15:01:26', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/users'),
(3, '2016-10-19 15:01:28', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/users'),
(4, '2016-10-19 15:02:44', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(5, '2016-10-19 15:02:47', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(6, '2016-10-19 15:02:58', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(7, '2016-10-19 15:03:07', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(8, '2016-10-19 15:04:01', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts/?alert=post-saved'),
(9, '2016-10-19 15:04:04', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(10, '2016-10-19 15:04:16', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page'),
(11, '2016-10-19 15:04:23', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page_add'),
(12, '2016-10-19 15:04:33', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page/?alert=page-saved'),
(13, '2016-10-19 15:04:40', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page_add'),
(14, '2016-10-19 15:04:45', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page/?alert=page-saved'),
(15, '2016-10-19 15:04:49', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page/?alert=page-delete'),
(16, '2016-10-19 15:04:52', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page/?alert=page-delete'),
(17, '2016-10-19 15:04:55', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page/?alert=page-delete'),
(18, '2016-10-19 15:04:57', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page/?alert=page-delete'),
(19, '2016-10-19 15:05:00', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page/?alert=page-delete'),
(20, '2016-10-19 15:05:02', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page/?alert=page-delete'),
(21, '2016-10-19 15:05:09', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page_add'),
(22, '2016-10-19 15:05:17', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page/?alert=page-saved'),
(23, '2016-10-19 15:05:19', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu'),
(24, '2016-10-19 15:05:36', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget'),
(25, '2016-10-19 15:06:11', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget'),
(26, '2016-10-19 15:06:35', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/settings'),
(27, '2016-10-19 15:06:38', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/settings/?alert=setting-update'),
(28, '2016-10-19 15:06:41', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(29, '2016-10-19 15:07:10', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(30, '2016-10-19 15:07:12', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget'),
(31, '2016-10-19 15:13:53', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget/?alert=widget-delete'),
(32, '2016-10-19 15:26:07', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu'),
(33, '2016-10-19 15:37:59', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(34, '2016-10-19 15:38:23', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget'),
(35, '2016-10-19 15:39:00', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu'),
(36, '2016-10-19 16:04:09', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(37, '2016-10-19 16:04:15', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu'),
(38, '2016-10-19 16:04:25', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu_item_edit/38'),
(39, '2016-10-19 16:05:01', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-saved'),
(40, '2016-10-19 16:05:19', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-saved'),
(41, '2016-10-19 16:05:29', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-saved'),
(42, '2016-10-19 16:05:37', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-saved'),
(43, '2016-10-19 16:05:46', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-saved'),
(44, '2016-10-19 16:05:57', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-saved'),
(45, '2016-10-19 16:06:31', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-delete'),
(46, '2016-10-19 16:06:40', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget'),
(47, '2016-10-19 16:06:50', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget/?alert=widget-delete'),
(48, '2016-10-19 16:06:59', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget/?alert=widget-delete'),
(49, '2016-10-19 16:07:05', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget/?alert=widget-delete'),
(50, '2016-10-19 16:11:51', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget/?alert=widget-delete'),
(51, '2016-10-19 16:12:12', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/settings'),
(52, '2016-10-19 16:14:13', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/settings/?alert=setting-update'),
(53, '2016-10-19 16:16:03', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/settings/?alert=setting-update'),
(54, '2016-10-19 16:18:46', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/settings/?alert=setting-update'),
(55, '2016-10-19 16:18:55', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/settings/?alert=setting-update'),
(56, '2016-10-19 16:19:26', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/settings/?alert=setting-update'),
(57, '2016-10-19 16:19:33', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/settings/?alert=setting-update'),
(58, '2016-10-19 16:21:00', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/settings/?alert=setting-update'),
(59, '2016-10-19 16:21:23', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/settings/?alert=setting-update'),
(60, '2016-10-19 16:21:35', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/settings/?alert=setting-update'),
(61, '2016-10-19 16:23:07', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/settings/?alert=setting-update'),
(62, '2016-10-19 16:26:41', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page_add'),
(63, '2016-10-19 16:31:44', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(64, '2016-10-19 16:32:40', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu'),
(65, '2016-10-19 16:33:02', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget'),
(66, '2016-10-19 16:33:14', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget/?alert=widget-delete'),
(67, '2016-10-19 16:33:35', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget/?alert=widget-delete'),
(68, '2016-10-19 16:34:25', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget/?alert=widget-delete'),
(69, '2016-10-19 16:38:33', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget/?alert=widget-delete'),
(70, '2016-10-19 16:38:43', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page_add'),
(71, '2016-10-19 18:13:47', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page/?alert=page-saved'),
(72, '2016-10-19 18:14:01', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page/?alert=page-saved'),
(73, '2016-10-19 18:16:33', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page/?alert=page-saved'),
(74, '2016-10-19 18:25:40', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(75, '2016-10-19 18:26:02', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(76, '2016-10-19 18:26:04', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts_draft'),
(77, '2016-10-19 18:26:07', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts_trash'),
(78, '2016-10-19 19:40:56', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts_trash'),
(79, '2016-10-19 19:41:05', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts_trash'),
(80, '2016-10-19 19:41:10', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(81, '2016-10-19 19:46:01', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(82, '2016-10-19 19:46:09', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(83, '2016-10-19 19:46:51', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(84, '2016-10-19 19:46:57', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(85, '2016-10-19 19:47:09', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(86, '2016-10-19 19:53:10', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(87, '2016-10-19 19:53:28', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(88, '2016-10-19 19:53:55', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(89, '2016-10-19 19:54:08', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(90, '2016-10-19 19:54:23', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(91, '2016-10-19 19:54:26', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(92, '2016-10-19 19:54:43', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(93, '2016-10-19 19:55:41', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(94, '2016-10-19 19:55:55', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(95, '2016-10-19 19:56:31', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(96, '2016-10-19 19:57:10', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(97, '2016-10-19 20:00:34', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(98, '2016-10-19 20:00:55', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(99, '2016-10-19 20:01:56', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(100, '2016-10-19 20:03:48', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(101, '2016-10-19 20:04:19', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(102, '2016-10-19 20:06:12', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(103, '2016-10-19 20:07:31', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(104, '2016-10-19 20:07:43', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category_edit/1'),
(105, '2016-10-19 20:08:43', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category_edit/1'),
(106, '2016-10-19 20:08:48', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category_edit/1'),
(107, '2016-10-19 20:09:17', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category_edit/1'),
(108, '2016-10-19 20:09:26', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category_edit/1'),
(109, '2016-10-19 20:09:42', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category_edit/1'),
(110, '2016-10-19 20:09:47', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category_edit/2'),
(111, '2016-10-19 20:10:53', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category_edit/2'),
(112, '2016-10-19 20:13:14', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category_edit/2'),
(113, '2016-10-19 20:13:16', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category_edit/3'),
(114, '2016-10-19 20:13:20', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category_edit/2'),
(115, '2016-10-19 20:13:23', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category_edit/2'),
(116, '2016-10-19 20:13:34', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category_edit/3'),
(117, '2016-10-19 20:13:56', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=update'),
(118, '2016-10-19 20:14:01', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category_edit/3'),
(119, '2016-10-19 20:14:04', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=update'),
(120, '2016-10-19 20:14:42', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=update'),
(121, '2016-10-19 20:14:46', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category_edit/3'),
(122, '2016-10-19 20:14:55', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=update'),
(123, '2016-10-19 20:15:07', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category_edit/3'),
(124, '2016-10-19 20:15:18', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=update'),
(125, '2016-10-19 20:15:44', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=update'),
(126, '2016-10-19 20:15:49', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category_edit/3'),
(127, '2016-10-19 20:16:52', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=update'),
(128, '2016-10-19 20:17:22', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=update'),
(129, '2016-10-19 20:17:46', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=update'),
(130, '2016-10-19 20:18:03', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=update'),
(131, '2016-10-19 20:18:12', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(132, '2016-10-19 20:21:14', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(133, '2016-10-19 20:21:25', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(134, '2016-10-19 20:21:50', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=delete'),
(135, '2016-10-19 20:23:31', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=delete'),
(136, '2016-10-19 20:23:38', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(137, '2016-10-19 20:27:32', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(138, '2016-10-19 20:34:28', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(139, '2016-10-19 20:34:41', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(140, '2016-10-19 20:35:02', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(141, '2016-10-19 20:35:48', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(142, '2016-10-19 20:35:54', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(143, '2016-10-19 20:36:05', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(144, '2016-10-19 20:36:24', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(145, '2016-10-19 20:36:33', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(146, '2016-10-19 20:36:41', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(147, '2016-10-19 20:36:57', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(148, '2016-10-19 20:37:12', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(149, '2016-10-19 20:38:26', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(150, '2016-10-19 20:50:28', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(151, '2016-10-19 20:50:41', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(152, '2016-10-19 20:55:10', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(153, '2016-10-19 20:58:22', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(154, '2016-10-19 20:58:31', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(155, '2016-10-19 20:59:31', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(156, '2016-10-19 20:59:45', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(157, '2016-10-19 21:02:03', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(158, '2016-10-19 21:02:18', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(159, '2016-10-19 21:02:29', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(160, '2016-10-19 21:02:39', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(161, '2016-10-19 21:08:15', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(162, '2016-10-19 21:08:28', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(163, '2016-10-19 21:09:33', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(164, '2016-10-19 21:09:59', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(165, '2016-10-19 21:11:21', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(166, '2016-10-19 21:11:43', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(167, '2016-10-19 21:11:56', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(168, '2016-10-19 21:12:17', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(169, '2016-10-19 21:12:25', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(170, '2016-10-19 21:13:57', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(171, '2016-10-19 21:14:27', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(172, '2016-10-19 21:14:46', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(173, '2016-10-19 21:14:58', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(174, '2016-10-19 21:15:13', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(175, '2016-10-19 21:19:50', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(176, '2016-10-19 21:20:02', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(177, '2016-10-19 21:20:36', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(178, '2016-10-19 21:21:06', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(179, '2016-10-19 21:21:40', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(180, '2016-10-19 21:21:45', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(181, '2016-10-19 21:21:49', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(182, '2016-10-19 21:21:52', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(183, '2016-10-19 21:23:07', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(184, '2016-10-19 21:23:45', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(185, '2016-10-19 21:23:51', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(186, '2016-10-19 21:24:20', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(187, '2016-10-19 21:26:06', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(188, '2016-10-19 21:26:29', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(189, '2016-10-19 21:26:40', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(190, '2016-10-19 21:26:49', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(191, '2016-10-19 21:27:37', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(192, '2016-10-19 21:28:41', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(193, '2016-10-19 21:28:47', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(194, '2016-10-19 21:29:29', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(195, '2016-10-19 21:29:58', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(196, '2016-10-19 21:30:15', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(197, '2016-10-19 21:30:23', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(198, '2016-10-19 21:30:32', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(199, '2016-10-19 21:30:37', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(200, '2016-10-19 21:31:17', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(201, '2016-10-19 21:32:06', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(202, '2016-10-19 21:34:10', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(203, '2016-10-19 21:34:33', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(204, '2016-10-19 21:43:38', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(205, '2016-10-19 21:43:49', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(206, '2016-10-19 21:43:54', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(207, '2016-10-19 21:43:56', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(208, '2016-10-19 21:44:09', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(209, '2016-10-19 21:44:19', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(210, '2016-10-19 21:45:10', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(211, '2016-10-19 21:46:37', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(212, '2016-10-19 21:46:52', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(213, '2016-10-19 21:49:32', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(214, '2016-10-19 21:49:36', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(215, '2016-10-19 21:52:11', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(216, '2016-10-20 16:40:44', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/login'),
(217, '2016-10-20 16:40:52', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(218, '2016-10-20 16:40:56', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(219, '2016-10-20 16:42:39', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(220, '2016-10-20 16:42:49', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(221, '2016-10-20 16:43:33', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(222, '2016-10-20 16:44:55', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(223, '2016-10-20 16:45:01', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(224, '2016-10-20 16:45:11', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(225, '2016-10-20 16:46:14', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(226, '2016-10-20 16:46:35', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(227, '2016-10-20 16:46:50', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(228, '2016-10-20 16:46:59', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(229, '2016-10-20 16:52:28', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(230, '2016-10-20 16:52:41', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(231, '2016-10-20 16:52:56', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(232, '2016-10-20 16:56:50', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(233, '2016-10-20 16:56:55', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(234, '2016-10-20 16:57:09', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(235, '2016-10-20 17:00:53', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add_act'),
(236, '2016-10-20 17:00:55', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(237, '2016-10-20 17:01:11', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(238, '2016-10-20 17:01:19', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(239, '2016-10-20 17:03:54', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(240, '2016-10-20 17:12:06', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(241, '2016-10-20 17:13:09', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(242, '2016-10-20 17:14:35', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(243, '2016-10-20 17:14:52', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(244, '2016-10-20 17:15:02', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(245, '2016-10-20 17:15:24', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(246, '2016-10-20 17:15:53', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(247, '2016-10-20 17:19:40', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(248, '2016-10-20 17:20:14', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(249, '2016-10-20 17:20:22', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(250, '2016-10-20 17:31:00', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(251, '2016-10-20 17:31:38', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(252, '2016-10-20 17:33:03', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(253, '2016-10-20 17:36:06', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(254, '2016-10-20 17:50:59', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(255, '2016-10-20 17:51:47', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(256, '2016-10-20 17:58:12', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(257, '2016-10-20 18:18:30', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(258, '2016-10-20 18:19:20', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(259, '2016-10-20 18:20:27', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(260, '2016-10-20 18:20:46', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(261, '2016-10-20 18:21:00', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(262, '2016-10-20 18:21:25', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(263, '2016-10-20 18:28:25', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(264, '2016-10-20 18:28:54', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(265, '2016-10-20 18:29:10', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(266, '2016-10-20 18:29:36', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(267, '2016-10-20 18:29:50', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(268, '2016-10-20 18:31:38', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(269, '2016-10-20 18:38:54', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(270, '2016-10-20 18:39:38', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(271, '2016-10-20 18:39:58', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(272, '2016-10-20 18:40:21', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(273, '2016-10-20 18:42:04', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(274, '2016-10-20 18:42:37', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(275, '2016-10-20 18:42:41', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(276, '2016-10-20 18:45:21', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(277, '2016-10-20 18:45:37', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(278, '2016-10-20 18:46:47', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(279, '2016-10-20 18:47:03', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(280, '2016-10-20 18:48:24', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(281, '2016-10-20 18:48:59', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(282, '2016-10-20 18:53:26', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(283, '2016-10-20 18:53:39', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(284, '2016-10-20 18:53:53', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(285, '2016-10-20 18:54:27', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(286, '2016-10-20 18:55:14', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(287, '2016-10-20 18:56:44', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(288, '2016-10-20 18:57:04', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(289, '2016-10-20 18:57:28', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(290, '2016-10-20 18:57:34', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(291, '2016-10-20 18:57:43', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(292, '2016-10-20 18:59:44', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(293, '2016-10-20 19:00:02', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(294, '2016-10-20 19:01:30', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(295, '2016-10-20 19:01:52', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(296, '2016-10-20 19:03:13', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(297, '2016-10-20 19:03:57', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(298, '2016-10-20 19:04:23', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(299, '2016-10-20 19:06:17', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(300, '2016-10-20 19:06:40', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(301, '2016-10-20 19:08:21', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(302, '2016-10-20 19:09:06', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(303, '2016-10-20 19:09:40', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(304, '2016-10-20 19:10:52', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(305, '2016-10-20 19:11:03', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(306, '2016-10-20 19:11:39', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(307, '2016-10-20 19:12:28', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(308, '2016-10-20 19:14:41', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(309, '2016-10-20 19:16:26', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(310, '2016-10-26 16:23:17', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/login/?alert=login-failed'),
(311, '2016-10-26 16:23:24', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(312, '2016-10-26 16:29:04', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(313, '2016-10-26 16:30:24', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(314, '2016-10-26 16:30:51', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(315, '2016-10-26 16:34:57', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(316, '2016-10-26 16:35:42', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(317, '2016-10-26 16:35:54', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(318, '2016-10-26 16:46:25', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(319, '2016-10-26 16:51:59', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(320, '2016-10-26 16:53:25', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(321, '2016-10-26 17:01:55', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(322, '2016-10-26 17:12:26', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(323, '2016-10-26 17:13:11', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(324, '2016-10-26 17:26:26', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(325, '2016-10-26 17:30:10', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(326, '2016-10-26 17:30:31', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(327, '2016-11-24 21:04:36', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/login/?alert=login-failed'),
(328, '2016-11-24 21:04:43', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(329, '2016-11-24 21:04:52', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(330, '2016-11-24 21:05:18', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(331, '2016-11-24 21:05:42', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(332, '2016-11-24 21:06:02', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(333, '2016-11-24 21:06:36', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(334, '2016-11-24 21:06:44', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu'),
(335, '2016-11-24 21:06:52', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/settings'),
(336, '2016-11-24 21:07:32', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(337, '2016-11-24 21:07:36', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin');
INSERT INTO `dah_visitor` (`id`, `time_visit`, `user_ip`, `user_browser`, `user_os`, `user_device`, `page`, `user_referrer`) VALUES
(338, '2016-11-24 21:08:37', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(339, '2016-11-24 21:13:03', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(340, '2016-11-24 21:13:45', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(341, '2016-11-24 21:16:17', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(342, '2016-11-24 21:16:45', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(343, '2016-11-24 21:16:59', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu'),
(344, '2016-11-24 21:17:13', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/settings'),
(345, '2016-11-24 21:17:39', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(346, '2016-11-24 21:19:12', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(347, '2016-11-24 21:20:32', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(348, '2016-11-24 21:21:08', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(349, '2016-11-24 21:22:01', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(350, '2016-11-24 21:22:13', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(351, '2016-11-24 21:22:17', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=delete'),
(352, '2016-11-24 21:22:21', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=delete'),
(353, '2016-11-24 21:22:25', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=delete'),
(354, '2016-11-24 21:22:28', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=delete'),
(355, '2016-11-24 21:22:31', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=delete'),
(356, '2016-11-24 21:22:34', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=delete'),
(357, '2016-11-24 21:22:38', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=delete'),
(358, '2016-11-24 21:22:40', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=delete'),
(359, '2016-11-24 21:22:43', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=delete'),
(360, '2016-11-24 21:22:45', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=delete'),
(361, '2016-11-24 21:22:53', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category_edit/6'),
(362, '2016-11-24 21:22:57', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=update'),
(363, '2016-11-24 21:23:03', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category_edit/6'),
(364, '2016-11-24 21:25:46', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=update'),
(365, '2016-11-24 21:25:56', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(366, '2016-11-24 21:27:46', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=delete'),
(367, '2016-11-24 21:27:54', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=delete'),
(368, '2016-11-24 21:27:57', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(369, '2016-11-24 21:28:14', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(370, '2016-11-24 21:31:11', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=delete'),
(371, '2016-11-25 10:42:23', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/login'),
(372, '2016-11-25 10:42:52', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(373, '2016-11-25 10:43:05', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(374, '2016-11-25 10:43:09', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(375, '2016-11-25 10:44:04', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(376, '2016-11-25 10:44:06', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts_draft'),
(377, '2016-11-25 10:44:07', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts_trash'),
(378, '2016-11-25 10:44:08', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(379, '2016-11-25 10:44:11', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts_draft'),
(380, '2016-11-25 10:44:30', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(381, '2016-11-25 10:45:22', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(382, '2016-11-25 10:49:03', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(383, '2016-11-25 10:51:20', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(384, '2016-11-25 10:51:38', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(385, '2016-11-25 10:53:35', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(386, '2016-11-25 10:53:56', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(387, '2016-11-25 10:54:28', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(388, '2016-11-25 10:54:50', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(389, '2016-11-25 10:56:58', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(390, '2016-11-25 10:59:17', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(391, '2016-11-25 10:59:40', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(392, '2016-11-25 11:00:16', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(393, '2016-11-25 11:00:29', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/posts'),
(394, '2016-11-25 11:15:01', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(395, '2016-11-25 11:30:17', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(396, '2016-11-25 11:30:28', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(397, '2016-11-25 11:30:52', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(398, '2016-11-25 11:38:47', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(399, '2016-11-25 11:39:07', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(400, '2016-11-25 11:40:09', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(401, '2016-11-25 11:41:29', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(402, '2016-11-25 11:41:44', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(403, '2016-11-25 11:41:53', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(404, '2016-11-25 11:47:50', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(405, '2016-11-25 11:48:18', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(406, '2016-11-25 11:48:29', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(407, '2016-11-25 11:48:43', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(408, '2016-11-25 11:48:49', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(409, '2016-11-25 11:49:10', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(410, '2016-11-25 11:49:22', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(411, '2016-11-25 11:53:17', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(412, '2016-11-25 11:55:40', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(413, '2016-11-25 11:56:03', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(414, '2016-11-25 11:56:39', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(415, '2016-11-25 12:02:18', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(416, '2016-11-25 12:04:53', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(417, '2016-11-25 12:04:59', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(418, '2016-11-25 12:18:02', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(419, '2016-11-25 12:21:53', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(420, '2016-11-25 12:22:03', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add_act'),
(421, '2016-11-25 12:22:11', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(422, '2016-11-25 12:22:21', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(423, '2016-11-25 12:22:30', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add_act'),
(424, '2016-11-25 12:24:37', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(425, '2016-11-25 12:25:02', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(426, '2016-11-25 12:25:22', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(427, '2016-11-25 12:26:36', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(428, '2016-11-25 12:26:46', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(429, '2016-11-25 12:27:23', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(430, '2016-11-25 12:27:26', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(431, '2016-11-25 12:27:37', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(432, '2016-11-25 12:29:07', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(433, '2016-11-25 12:29:43', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(434, '2016-11-25 12:30:17', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(435, '2016-11-25 12:30:39', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(436, '2016-11-25 12:30:59', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add_act'),
(437, '2016-11-25 12:31:38', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add_act'),
(438, '2016-11-25 12:31:40', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(439, '2016-11-25 12:31:56', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(440, '2016-11-25 12:32:14', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(441, '2016-11-25 12:32:39', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(442, '2016-11-25 12:42:22', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(443, '2016-11-25 12:42:50', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(444, '2016-11-25 12:43:03', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(445, '2016-11-25 12:44:53', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(446, '2016-11-25 12:45:03', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(447, '2016-11-25 12:45:43', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(448, '2016-11-25 12:46:08', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(449, '2016-11-25 12:46:15', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(450, '2016-11-25 12:46:39', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(451, '2016-11-25 12:46:49', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(452, '2016-11-25 12:54:45', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(453, '2016-11-25 13:00:13', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(454, '2016-11-25 13:05:21', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(455, '2016-11-25 13:06:04', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(456, '2016-11-25 13:06:07', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(457, '2016-11-25 13:06:13', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(458, '2016-11-25 13:06:16', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(459, '2016-11-25 13:06:19', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(460, '2016-11-25 13:06:22', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(461, '2016-11-25 13:06:25', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(462, '2016-11-25 13:06:29', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(463, '2016-11-25 13:06:32', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(464, '2016-11-25 13:06:35', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(465, '2016-11-25 13:06:39', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(466, '2016-11-25 13:06:41', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(467, '2016-11-25 13:06:44', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(468, '2016-11-25 13:06:47', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(469, '2016-11-25 13:06:50', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(470, '2016-11-25 13:06:55', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(471, '2016-11-25 13:06:58', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(472, '2016-11-25 13:07:01', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(473, '2016-11-25 13:07:04', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(474, '2016-11-25 13:07:07', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(475, '2016-11-25 13:07:11', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(476, '2016-11-25 13:07:13', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(477, '2016-11-25 13:07:45', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(478, '2016-11-25 13:10:29', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(479, '2016-11-25 13:12:47', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(480, '2016-11-25 13:12:56', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(481, '2016-11-25 13:13:35', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(482, '2016-11-25 13:13:40', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(483, '2016-11-25 13:16:24', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(484, '2016-11-25 13:16:41', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(485, '2016-11-25 13:17:26', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(486, '2016-11-25 13:18:17', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(487, '2016-11-25 13:18:35', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(488, '2016-11-25 13:19:03', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(489, '2016-11-25 13:19:18', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(490, '2016-11-25 13:20:22', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(491, '2016-11-25 13:20:39', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(492, '2016-11-25 13:21:06', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(493, '2016-11-25 13:21:37', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(494, '2016-11-25 13:22:39', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(495, '2016-11-25 13:23:20', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(496, '2016-11-25 13:23:43', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(497, '2016-11-25 13:23:59', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(498, '2016-11-25 13:24:34', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(499, '2016-11-25 13:27:59', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(500, '2016-11-25 13:28:03', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(501, '2016-11-25 13:28:15', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(502, '2016-11-25 13:28:57', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(503, '2016-11-25 13:30:06', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(504, '2016-11-25 13:40:41', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/24'),
(505, '2016-11-25 13:40:57', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(506, '2016-11-25 13:42:06', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(507, '2016-11-25 13:42:48', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(508, '2016-11-25 13:42:57', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(509, '2016-11-25 13:43:00', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(510, '2016-11-25 13:43:05', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(511, '2016-11-25 13:43:25', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(512, '2016-11-25 13:43:31', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(513, '2016-11-25 13:44:17', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(514, '2016-11-25 13:44:22', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(515, '2016-11-25 13:44:40', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(516, '2016-11-25 13:45:18', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(517, '2016-11-25 13:45:22', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(518, '2016-11-25 13:45:29', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(519, '2016-11-25 13:46:04', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(520, '2016-11-25 13:46:56', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(521, '2016-11-25 13:47:23', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(522, '2016-11-25 13:47:32', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(523, '2016-11-25 13:47:54', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(524, '2016-11-25 13:48:00', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(525, '2016-11-25 13:49:11', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(526, '2016-11-25 13:49:14', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(527, '2016-11-25 13:49:21', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(528, '2016-11-25 13:49:27', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(529, '2016-11-25 13:49:54', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(530, '2016-11-25 13:49:59', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products'),
(531, '2016-11-25 13:50:04', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(532, '2016-11-25 13:50:11', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(533, '2016-11-25 13:50:38', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_update'),
(534, '2016-11-25 13:50:43', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(535, '2016-11-25 13:51:13', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(536, '2016-11-25 13:52:10', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(537, '2016-11-25 13:52:15', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(538, '2016-11-25 13:53:31', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(539, '2016-11-25 13:53:38', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(540, '2016-11-25 13:53:45', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(541, '2016-11-25 13:53:59', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(542, '2016-11-25 13:54:24', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(543, '2016-11-25 13:55:11', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(544, '2016-11-25 13:57:05', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(545, '2016-11-25 13:57:26', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(546, '2016-11-25 13:57:33', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(547, '2016-11-25 13:57:39', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(548, '2016-11-25 13:57:51', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(549, '2016-11-25 13:58:08', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(550, '2016-11-25 13:58:18', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(551, '2016-11-25 13:58:56', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(552, '2016-11-25 13:59:36', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(553, '2016-11-25 14:00:01', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(554, '2016-11-25 14:00:29', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(555, '2016-11-25 14:00:44', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(556, '2016-11-25 14:01:00', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(557, '2016-11-25 14:01:17', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(558, '2016-11-25 14:01:41', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(559, '2016-11-25 14:02:12', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(560, '2016-11-25 14:02:21', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(561, '2016-11-25 14:02:45', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(562, '2016-11-25 14:02:55', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(563, '2016-11-25 14:03:03', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(564, '2016-11-25 14:03:12', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(565, '2016-11-25 14:05:13', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(566, '2016-11-25 14:05:41', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(567, '2016-11-25 14:09:45', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(568, '2016-11-25 14:09:48', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(569, '2016-11-25 14:10:14', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(570, '2016-11-25 14:14:02', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(571, '2016-11-25 14:14:23', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(572, '2016-11-25 14:14:28', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(573, '2016-11-25 14:14:44', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(574, '2016-11-25 14:14:50', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(575, '2016-11-25 14:15:39', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(576, '2016-11-25 14:15:52', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(577, '2016-11-25 14:15:55', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(578, '2016-11-25 14:17:25', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(579, '2016-11-25 14:17:33', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(580, '2016-11-25 14:17:37', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(581, '2016-11-25 14:18:20', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(582, '2016-11-25 14:25:19', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(583, '2016-11-25 14:25:27', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(584, '2016-11-25 14:25:44', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(585, '2016-11-25 14:25:59', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(586, '2016-11-25 14:27:20', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(587, '2016-11-25 14:27:37', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(588, '2016-11-25 14:28:16', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(589, '2016-11-25 14:28:43', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(590, '2016-11-25 14:29:25', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(591, '2016-11-25 14:30:24', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(592, '2016-11-25 14:30:53', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(593, '2016-11-25 14:31:07', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(594, '2016-11-25 14:31:24', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(595, '2016-11-25 14:31:56', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(596, '2016-11-25 14:32:03', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_edit/23'),
(597, '2016-11-25 14:36:18', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(598, '2016-11-25 14:37:35', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(599, '2016-11-25 14:38:02', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(600, '2016-11-25 14:41:05', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(601, '2016-11-25 14:44:35', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-delete'),
(602, '2016-11-25 14:44:43', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget'),
(603, '2016-11-25 14:45:51', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/users'),
(604, '2016-11-25 14:46:28', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/settings'),
(605, '2016-11-25 14:48:34', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/settings/?alert=setting-update'),
(606, '2016-11-25 14:48:39', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu'),
(607, '2016-11-25 15:32:07', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget'),
(608, '2016-11-25 15:33:46', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/settings'),
(609, '2016-11-25 15:53:19', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/settings/?alert=setting-update'),
(610, '2016-11-25 15:56:23', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget'),
(611, '2016-11-25 15:56:36', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu'),
(612, '2016-11-25 15:56:40', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-delete'),
(613, '2016-11-25 15:56:47', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-delete'),
(614, '2016-11-25 15:56:53', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-delete'),
(615, '2016-11-25 15:56:55', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-delete'),
(616, '2016-11-25 15:56:58', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-delete'),
(617, '2016-11-25 15:57:04', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-delete'),
(618, '2016-11-25 15:57:18', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu_item_edit/44'),
(619, '2016-11-25 15:57:24', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-saved'),
(620, '2016-11-25 15:57:37', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu_item_edit/50'),
(621, '2016-11-25 15:57:40', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-saved'),
(622, '2016-11-25 15:57:47', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu_item_edit/50'),
(623, '2016-11-25 15:57:51', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-saved'),
(624, '2016-11-25 15:58:01', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu_item_edit/48'),
(625, '2016-11-25 15:58:04', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-saved'),
(626, '2016-11-25 15:58:13', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu_item_edit/47'),
(627, '2016-11-25 15:59:40', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu_item_edit/47'),
(628, '2016-11-25 16:40:04', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu_item_edit/47'),
(629, '2016-11-25 17:01:47', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-saved'),
(630, '2016-11-25 17:48:57', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(631, '2016-11-25 17:49:47', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category'),
(632, '2016-11-25 17:49:59', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category_edit/17'),
(633, '2016-11-25 17:50:05', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=update'),
(634, '2016-11-25 17:50:23', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(635, '2016-11-25 17:50:35', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(636, '2016-11-25 17:50:53', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(637, '2016-11-25 17:51:01', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(638, '2016-11-25 17:55:48', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(639, '2016-11-25 17:56:01', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(640, '2016-11-25 17:56:09', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(641, '2016-11-25 17:56:27', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(642, '2016-11-25 17:59:06', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(643, '2016-11-25 17:59:36', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(644, '2016-11-25 18:21:01', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_category/?alert=add'),
(645, '2016-11-25 18:21:10', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget'),
(646, '2016-11-25 18:21:20', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget/?alert=widget-delete'),
(647, '2016-11-25 18:21:23', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget/?alert=widget-delete'),
(648, '2016-11-25 18:22:08', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget/?alert=widget-delete'),
(649, '2016-11-25 18:48:34', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget/?alert=widget-delete'),
(650, '2016-11-25 18:49:27', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu'),
(651, '2016-11-25 18:49:42', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-delete'),
(652, '2016-11-25 18:50:09', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-delete'),
(653, '2016-11-25 18:50:15', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-delete'),
(654, '2016-11-25 18:50:32', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-delete'),
(655, '2016-11-25 19:25:51', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(656, '2016-11-25 19:25:54', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', '');
INSERT INTO `dah_visitor` (`id`, `time_visit`, `user_ip`, `user_browser`, `user_os`, `user_device`, `page`, `user_referrer`) VALUES
(657, '2016-11-25 19:25:59', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(658, '2016-11-25 20:19:46', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(659, '2016-11-26 11:13:41', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/login'),
(660, '2016-11-26 11:13:46', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(661, '2016-11-26 11:13:52', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/post_add'),
(662, '2016-11-26 11:16:17', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(663, '2016-11-26 11:17:20', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(664, '2016-11-26 11:18:22', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(665, '2016-11-26 11:18:27', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(666, '2016-11-26 11:19:07', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(667, '2016-11-26 11:19:57', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(668, '2016-11-26 11:21:20', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(669, '2016-11-26 11:21:22', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(670, '2016-11-26 11:22:05', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(671, '2016-11-26 11:23:03', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(672, '2016-11-26 11:23:26', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(673, '2016-11-26 11:23:29', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/products/?alert=post-saved'),
(674, '2016-11-26 11:24:06', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/product_add'),
(675, '2016-11-26 13:37:17', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/login'),
(676, '2016-11-26 13:37:24', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(677, '2016-11-26 13:37:29', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu'),
(678, '2016-11-26 13:37:52', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-delete'),
(679, '2016-11-26 13:37:57', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu_item_edit/48'),
(680, '2016-11-26 13:45:06', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-saved'),
(681, '2016-11-26 13:53:41', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu/?alert=menu-delete'),
(682, '2016-11-26 13:53:44', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page'),
(683, '2016-11-26 13:54:01', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page_edit/5'),
(684, '2016-11-26 13:56:12', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page/?alert=page-saved'),
(685, '2016-11-26 13:56:32', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/page_edit/5'),
(686, '2016-11-26 16:51:57', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(687, '2016-11-29 23:28:12', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/login'),
(688, '2016-11-29 23:28:52', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(689, '2016-11-29 23:29:10', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', ''),
(690, '2016-11-29 23:29:30', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(691, '2016-11-29 23:30:16', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/menu'),
(692, '2016-11-30 12:56:34', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/login'),
(693, '2016-11-30 12:56:43', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin'),
(694, '2016-11-30 12:56:49', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget'),
(695, '2016-11-30 13:07:43', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/admin/widget'),
(696, '2016-11-30 16:08:59', '::1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://localhost/mycms/', 'http://localhost/mycms/xlog/?alert=login-failed'),
(697, '2016-11-30 19:15:06', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(698, '2016-11-30 19:15:38', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(699, '2016-11-30 19:15:44', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(700, '2016-11-30 19:15:48', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(701, '2016-11-30 19:15:51', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/users'),
(702, '2016-11-30 19:16:08', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/user_edit/1'),
(703, '2016-11-30 19:16:12', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/users/?alert=user-update'),
(704, '2016-11-30 19:16:23', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/user_edit/2'),
(705, '2016-11-30 19:16:34', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/users/?alert=user-update'),
(706, '2016-11-30 19:16:47', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/user_edit/2'),
(707, '2016-11-30 19:16:50', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/users/?alert=user-update'),
(708, '2016-11-30 19:18:35', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(709, '2016-11-30 19:29:30', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(710, '2016-11-30 19:29:35', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu'),
(711, '2016-11-30 19:29:40', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu_item_edit/35'),
(712, '2016-11-30 19:29:44', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu/?alert=menu-saved'),
(713, '2016-11-30 19:29:50', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu_item_edit/53'),
(714, '2016-11-30 19:29:54', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu/?alert=menu-saved'),
(715, '2016-11-30 19:30:09', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu_item_edit/54'),
(716, '2016-11-30 19:31:19', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu/?alert=menu-saved'),
(717, '2016-11-30 19:31:24', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu_item_edit/33'),
(718, '2016-11-30 19:48:59', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu_item_edit/33'),
(719, '2016-11-30 19:49:10', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu_item_edit/33'),
(720, '2016-11-30 19:49:52', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu_item_edit/33'),
(721, '2016-11-30 19:50:44', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu_item_edit/33'),
(722, '2016-11-30 19:50:48', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu/?alert=menu-saved'),
(723, '2016-11-30 19:51:27', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(724, '2016-11-30 19:51:32', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(725, '2016-11-30 19:51:37', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page'),
(726, '2016-11-30 19:51:59', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_edit/45'),
(727, '2016-11-30 19:52:25', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(728, '2016-11-30 19:52:34', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_edit/45'),
(729, '2016-11-30 19:52:37', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(730, '2016-11-30 19:52:56', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_edit/44'),
(731, '2016-11-30 19:53:00', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(732, '2016-11-30 19:53:08', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_edit/32'),
(733, '2016-11-30 19:53:17', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(734, '2016-11-30 19:55:21', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_edit/29'),
(735, '2016-11-30 19:55:38', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(736, '2016-11-30 19:56:08', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-delete'),
(737, '2016-11-30 20:01:39', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_edit/45'),
(738, '2016-11-30 20:02:52', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(739, '2016-11-30 20:03:25', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_edit/32'),
(740, '2016-11-30 20:03:33', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(741, '2016-11-30 20:07:29', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_edit/29'),
(742, '2016-11-30 20:07:42', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(743, '2016-11-30 20:11:57', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-delete'),
(744, '2016-11-30 20:12:01', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts'),
(745, '2016-11-30 20:12:05', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts/?alert=post-trash'),
(746, '2016-11-30 20:12:09', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts/?alert=post-trash'),
(747, '2016-11-30 20:12:13', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts/?alert=post-trash'),
(748, '2016-11-30 20:12:17', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts/?alert=post-trash'),
(749, '2016-11-30 20:12:21', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts/?alert=post-trash'),
(750, '2016-11-30 20:12:26', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts/?alert=post-trash'),
(751, '2016-11-30 20:12:30', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts/?alert=post-trash'),
(752, '2016-11-30 20:12:34', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/category'),
(753, '2016-11-30 20:12:37', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/category/?alert=delete'),
(754, '2016-11-30 20:12:40', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/category/?alert=delete'),
(755, '2016-11-30 20:12:43', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/category/?alert=delete'),
(756, '2016-11-30 20:12:47', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/category/?alert=delete'),
(757, '2016-11-30 20:12:49', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/category/?alert=delete'),
(758, '2016-11-30 20:12:53', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/category/?alert=delete'),
(759, '2016-11-30 20:12:56', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/category/?alert=delete'),
(760, '2016-11-30 20:13:02', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/category/?alert=delete'),
(761, '2016-11-30 20:13:04', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts'),
(762, '2016-11-30 20:13:08', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts_trash'),
(763, '2016-11-30 20:13:11', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts_trash/?alert=post-delete'),
(764, '2016-11-30 20:13:14', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts_trash/?alert=post-delete'),
(765, '2016-11-30 20:13:17', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts_trash/?alert=post-delete'),
(766, '2016-11-30 20:13:20', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts_trash/?alert=post-delete'),
(767, '2016-11-30 20:13:23', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts_trash/?alert=post-delete'),
(768, '2016-11-30 20:13:26', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts_trash/?alert=post-delete'),
(769, '2016-11-30 20:13:36', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts_trash/?alert=post-delete'),
(770, '2016-11-30 20:13:38', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts'),
(771, '2016-11-30 20:15:17', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/post_add'),
(772, '2016-11-30 20:15:56', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts'),
(773, '2016-11-30 20:16:01', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page'),
(774, '2016-11-30 20:19:17', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(775, '2016-11-30 20:19:21', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(776, '2016-11-30 20:21:50', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_category'),
(777, '2016-11-30 20:21:59', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(778, '2016-11-30 20:22:09', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(779, '2016-11-30 20:22:12', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(780, '2016-11-30 20:22:26', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(781, '2016-11-30 20:22:30', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(782, '2016-11-30 20:22:33', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(783, '2016-11-30 20:22:40', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(784, '2016-11-30 20:23:06', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(785, '2016-11-30 20:23:11', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(786, '2016-11-30 20:23:15', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(787, '2016-11-30 20:23:18', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(788, '2016-11-30 20:23:29', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/26'),
(789, '2016-11-30 20:24:18', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(790, '2016-11-30 21:02:33', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(791, '2016-11-30 21:04:51', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(792, '2016-11-30 21:05:26', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(793, '2016-11-30 21:05:31', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/33'),
(794, '2016-11-30 21:43:44', '36.76.148.204', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/33'),
(795, '2016-12-02 12:42:04', '36.84.225.233', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog/?alert=login-failed'),
(796, '2016-12-02 12:42:15', '36.84.225.233', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(797, '2016-12-02 12:42:19', '36.84.225.233', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts'),
(798, '2016-12-02 12:42:25', '36.84.225.233', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(799, '2016-12-02 12:42:51', '36.84.225.233', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page'),
(800, '2016-12-02 22:04:46', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(801, '2016-12-02 22:04:52', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(802, '2016-12-02 22:04:57', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/post_add'),
(803, '2016-12-02 22:09:09', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/post_add_act'),
(804, '2016-12-02 22:09:19', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/post_add_act'),
(805, '2016-12-02 22:09:21', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts/?alert=post-saved'),
(806, '2016-12-02 22:09:23', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts_trash'),
(807, '2016-12-02 22:09:25', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts_draft'),
(808, '2016-12-02 22:09:49', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts'),
(809, '2016-12-02 22:10:14', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/category'),
(810, '2016-12-02 22:10:31', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/category_act'),
(811, '2016-12-02 22:10:54', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/category/?alert=add'),
(812, '2016-12-02 22:11:02', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/category/?alert=delete'),
(813, '2016-12-02 22:11:08', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(814, '2016-12-02 22:21:07', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(815, '2016-12-02 22:21:18', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(816, '2016-12-02 22:21:26', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/post_add'),
(817, '2016-12-02 22:21:31', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_add'),
(818, '2016-12-02 22:22:05', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_add_act'),
(819, '2016-12-02 22:22:30', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_add_act'),
(820, '2016-12-02 22:22:39', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(821, '2016-12-02 22:22:56', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-delete'),
(822, '2016-12-02 22:23:15', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/settings'),
(823, '2016-12-02 22:23:24', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(824, '2016-12-02 22:26:46', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_category'),
(825, '2016-12-02 22:30:07', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(826, '2016-12-02 22:30:43', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_category_act'),
(827, '2016-12-02 22:31:02', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_category/?alert=add'),
(828, '2016-12-02 22:39:07', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_category/?alert=add'),
(829, '2016-12-03 12:34:09', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(830, '2016-12-03 12:36:05', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(831, '2016-12-03 12:36:11', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts'),
(832, '2016-12-03 12:36:13', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page'),
(833, '2016-12-03 12:36:20', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_add'),
(834, '2016-12-03 12:36:22', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(835, '2016-12-03 12:36:24', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_edit/47'),
(836, '2016-12-03 12:36:27', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(837, '2016-12-03 12:36:47', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-delete'),
(838, '2016-12-03 12:36:51', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu'),
(839, '2016-12-03 12:36:56', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/settings'),
(840, '2016-12-03 12:36:59', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/settings/?alert=setting-update'),
(841, '2016-12-03 12:37:08', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(842, '2016-12-03 12:44:02', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(843, '2016-12-03 12:45:18', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(844, '2016-12-03 12:47:53', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(845, '2016-12-03 12:48:45', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(846, '2016-12-03 12:48:52', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(847, '2016-12-03 12:48:54', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/settings'),
(848, '2016-12-03 12:48:58', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/users'),
(849, '2016-12-03 12:49:01', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu'),
(850, '2016-12-03 20:34:16', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(851, '2016-12-03 20:34:31', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(852, '2016-12-03 20:34:55', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(853, '2016-12-03 21:32:26', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(854, '2016-12-03 21:49:51', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/26'),
(855, '2016-12-03 21:53:47', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(856, '2016-12-03 21:55:48', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(857, '2016-12-03 21:55:54', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(858, '2016-12-03 22:27:18', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(859, '2016-12-03 22:27:22', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/'),
(860, '2016-12-03 23:15:36', '112.215.175.41', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(861, '2016-12-03 23:17:16', '112.215.174.57', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(862, '2016-12-03 23:18:24', '112.215.175.41', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(863, '2016-12-03 23:45:48', '112.215.175.41', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(864, '2016-12-03 23:46:07', '112.215.174.57', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(865, '2016-12-03 23:47:13', '112.215.174.57', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/36'),
(866, '2016-12-04 09:30:49', '112.215.174.87', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(867, '2016-12-04 09:31:35', '112.215.175.11', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(868, '2016-12-04 09:31:45', '112.215.175.11', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(869, '2016-12-04 09:34:14', '112.215.175.11', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(870, '2016-12-04 09:34:27', '112.215.174.87', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(871, '2016-12-04 09:45:05', '112.215.174.87', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(872, '2016-12-04 09:50:18', '112.215.174.87', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(873, '2016-12-04 10:01:16', '112.215.175.11', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(874, '2016-12-04 19:28:25', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(875, '2016-12-04 19:31:13', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(876, '2016-12-04 19:31:27', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts'),
(877, '2016-12-04 19:31:32', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts_trash'),
(878, '2016-12-04 19:31:43', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts'),
(879, '2016-12-04 19:52:23', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(880, '2016-12-04 20:31:54', '36.84.225.72', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/36'),
(881, '2016-12-04 20:38:27', '36.76.82.1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(882, '2016-12-04 20:54:43', '36.76.82.1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/39'),
(883, '2016-12-04 20:56:58', '36.76.82.1', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(884, '2016-12-04 21:51:37', '180.241.9.22', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/38'),
(885, '2016-12-04 21:51:49', '180.241.9.22', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(886, '2016-12-04 22:01:53', '36.76.78.31', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/37'),
(887, '2016-12-04 22:02:01', '36.76.78.31', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(888, '2016-12-04 22:02:15', '36.76.78.31', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(889, '2016-12-04 22:33:01', '36.76.78.31', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(890, '2016-12-04 22:45:43', '36.76.78.31', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(891, '2016-12-05 14:15:47', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(892, '2016-12-05 14:15:52', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(893, '2016-12-05 14:15:58', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts'),
(894, '2016-12-05 14:42:17', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(895, '2016-12-05 14:43:03', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(896, '2016-12-05 14:43:35', '125.165.24.243', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog/?alert=login-failed'),
(897, '2016-12-05 14:45:15', '125.165.24.243', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(898, '2016-12-05 14:45:31', '125.165.24.243', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(899, '2016-12-05 14:58:21', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(900, '2016-12-05 15:13:18', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(901, '2016-12-05 15:29:52', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/'),
(902, '2016-12-05 15:29:56', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page'),
(903, '2016-12-05 15:31:38', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_add'),
(904, '2016-12-05 15:31:54', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(905, '2016-12-05 15:32:12', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_edit/48'),
(906, '2016-12-05 15:32:26', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(907, '2016-12-05 15:32:54', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_edit/48'),
(908, '2016-12-05 15:33:50', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(909, '2016-12-05 15:36:07', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_add'),
(910, '2016-12-05 15:36:11', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(911, '2016-12-05 15:38:15', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_add'),
(912, '2016-12-05 15:38:39', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(913, '2016-12-05 15:39:17', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_edit/50'),
(914, '2016-12-05 15:39:23', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(915, '2016-12-05 15:40:14', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_edit/50'),
(916, '2016-12-05 15:44:59', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(917, '2016-12-05 15:47:31', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_add'),
(918, '2016-12-05 15:48:17', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(919, '2016-12-05 15:48:49', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_edit/51'),
(920, '2016-12-05 15:50:24', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(921, '2016-12-05 15:51:31', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_edit/51'),
(922, '2016-12-05 15:51:48', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(923, '2016-12-05 15:52:07', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_edit/51'),
(924, '2016-12-05 15:52:14', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(925, '2016-12-05 15:52:54', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_edit/51'),
(926, '2016-12-05 15:53:06', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page/?alert=page-saved'),
(927, '2016-12-05 15:53:58', '125.165.24.243', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/page_edit/51'),
(928, '2016-12-07 11:54:39', '180.251.33.76', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(929, '2016-12-07 11:54:52', '180.251.33.76', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(930, '2016-12-07 12:13:12', '125.162.28.234', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(931, '2016-12-07 12:13:44', '125.162.28.234', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(932, '2016-12-07 12:14:23', '125.162.28.234', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(933, '2016-12-07 12:16:16', '125.162.28.234', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/'),
(934, '2016-12-07 12:48:40', '125.162.28.234', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(935, '2016-12-07 15:55:03', '125.162.28.234', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(936, '2016-12-07 15:59:06', '125.162.28.234', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(937, '2016-12-07 15:59:15', '125.162.28.234', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts'),
(938, '2016-12-07 15:59:39', '125.162.28.234', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts'),
(939, '2016-12-07 21:24:58', '36.76.83.62', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(940, '2016-12-07 21:25:20', '36.76.83.62', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(941, '2016-12-07 21:25:50', '36.76.83.62', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(942, '2016-12-07 21:27:29', '36.76.83.62', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(943, '2016-12-08 07:43:21', '37.59.37.41', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(944, '2016-12-08 07:44:14', '37.59.37.41', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin');
INSERT INTO `dah_visitor` (`id`, `time_visit`, `user_ip`, `user_browser`, `user_os`, `user_device`, `page`, `user_referrer`) VALUES
(945, '2016-12-08 11:30:17', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(946, '2016-12-08 11:30:34', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(947, '2016-12-08 11:30:37', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(948, '2016-12-08 11:30:39', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(949, '2016-12-08 11:32:38', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(950, '2016-12-08 11:36:09', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(951, '2016-12-08 11:36:56', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(952, '2016-12-08 11:55:56', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(953, '2016-12-08 11:56:12', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(954, '2016-12-08 11:56:16', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts'),
(955, '2016-12-08 11:56:21', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(956, '2016-12-08 11:56:25', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(957, '2016-12-08 11:56:41', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(958, '2016-12-08 11:56:43', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts'),
(959, '2016-12-08 11:56:51', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts_draft'),
(960, '2016-12-08 11:56:56', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts_trash'),
(961, '2016-12-08 12:56:40', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(962, '2016-12-08 13:40:52', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(963, '2016-12-08 13:41:37', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(964, '2016-12-08 13:43:38', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/45'),
(965, '2016-12-08 13:46:27', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/45'),
(966, '2016-12-08 13:48:23', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(967, '2016-12-08 14:11:07', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(968, '2016-12-08 14:12:20', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(969, '2016-12-08 14:22:54', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(970, '2016-12-08 14:25:17', '36.84.225.133', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(971, '2016-12-09 07:50:47', '180.251.8.6', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(972, '2016-12-09 07:51:04', '180.251.8.6', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(973, '2016-12-09 07:54:28', '180.251.8.6', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(974, '2016-12-09 08:09:52', '180.251.8.6', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(975, '2016-12-09 08:11:33', '180.251.8.6', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(976, '2016-12-09 09:33:46', '36.76.91.221', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(977, '2016-12-09 10:58:40', '36.76.100.144', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(978, '2016-12-09 10:58:50', '36.76.100.144', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(979, '2016-12-09 10:58:57', '36.76.100.144', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts'),
(980, '2016-12-09 10:59:03', '36.76.100.144', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts_draft'),
(981, '2016-12-09 10:59:58', '36.76.100.144', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(982, '2016-12-09 11:20:05', '36.76.100.144', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(983, '2016-12-09 11:20:34', '36.76.100.144', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(984, '2016-12-09 11:35:19', '36.76.100.144', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(985, '2016-12-09 11:35:26', '36.76.100.144', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/post_add'),
(986, '2016-12-09 11:35:29', '36.76.100.144', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(987, '2016-12-09 11:42:50', '36.76.100.144', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(988, '2016-12-09 11:44:17', '36.76.100.144', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(989, '2016-12-09 12:06:08', '36.76.100.144', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(990, '2016-12-09 14:06:49', '36.76.100.144', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(991, '2016-12-09 15:10:32', '36.76.100.144', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(992, '2016-12-09 15:11:55', '36.76.100.144', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(993, '2016-12-09 15:47:41', '36.76.70.186', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(994, '2016-12-09 15:54:51', '36.76.70.186', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(995, '2016-12-09 16:35:21', '36.76.70.186', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(996, '2016-12-09 16:36:41', '36.76.70.186', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(997, '2016-12-09 16:47:57', '36.76.70.186', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/53'),
(998, '2016-12-09 16:55:38', '36.76.70.186', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(999, '2016-12-09 17:07:12', '36.76.70.186', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(1000, '2016-12-09 17:09:01', '36.76.70.186', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(1001, '2016-12-09 17:10:02', '36.76.70.186', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(1002, '2016-12-09 17:10:06', '36.76.70.186', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1003, '2016-12-09 17:12:41', '36.76.70.186', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1004, '2016-12-09 17:41:27', '36.76.70.186', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(1005, '2016-12-09 20:51:05', '36.76.70.186', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1006, '2016-12-09 20:51:08', '36.76.70.186', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(1007, '2016-12-13 14:31:24', '180.251.64.137', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1008, '2016-12-13 16:18:27', '180.251.64.137', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1009, '2016-12-15 21:24:30', '36.68.87.127', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1010, '2016-12-16 10:57:56', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1011, '2016-12-16 10:58:03', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1012, '2016-12-16 11:05:07', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1013, '2016-12-16 11:36:02', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(1014, '2016-12-16 11:43:08', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(1015, '2016-12-16 11:59:19', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(1016, '2016-12-16 12:36:29', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(1017, '2016-12-16 12:46:14', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(1018, '2016-12-16 12:46:16', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(1019, '2016-12-16 12:57:38', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(1020, '2016-12-16 12:58:04', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(1021, '2016-12-16 13:07:34', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(1022, '2016-12-16 13:09:06', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(1023, '2016-12-16 13:17:36', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(1024, '2016-12-16 13:21:36', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(1025, '2016-12-16 13:23:03', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1026, '2016-12-16 13:35:33', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(1027, '2016-12-16 13:41:03', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(1028, '2016-12-16 13:41:16', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/users'),
(1029, '2016-12-16 13:41:25', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu'),
(1030, '2016-12-16 13:41:34', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/settings'),
(1031, '2016-12-16 13:41:53', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1032, '2016-12-16 13:43:27', '36.68.98.222', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1033, '2016-12-16 15:26:31', '36.76.73.47', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1034, '2016-12-16 15:26:52', '36.76.73.47', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(1035, '2016-12-16 15:31:04', '36.76.73.47', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(1036, '2016-12-16 15:31:05', '36.76.73.47', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(1037, '2016-12-17 11:02:20', '180.241.49.62', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1038, '2016-12-17 11:03:35', '180.241.49.62', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1039, '2016-12-17 11:03:40', '180.241.49.62', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts'),
(1040, '2016-12-17 11:04:48', '180.241.49.62', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1041, '2016-12-17 11:05:03', '180.241.49.62', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1042, '2016-12-17 11:05:24', '180.241.49.62', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1043, '2016-12-17 11:05:51', '180.241.49.62', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1044, '2016-12-17 11:06:15', '180.241.49.62', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1045, '2016-12-17 11:06:16', '180.241.49.62', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1046, '2016-12-17 11:07:03', '180.241.49.62', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/posts'),
(1047, '2016-12-21 00:13:15', '180.241.66.24', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1048, '2016-12-21 00:13:19', '180.241.66.24', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1049, '2016-12-21 00:13:37', '180.241.66.24', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1050, '2016-12-21 00:14:53', '180.241.66.24', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(1051, '2016-12-21 00:14:58', '180.241.66.24', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/'),
(1052, '2016-12-21 00:16:28', '180.241.66.24', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1053, '2016-12-21 00:18:10', '180.241.66.24', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(1054, '2016-12-21 00:19:16', '180.241.66.24', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/'),
(1055, '2016-12-21 00:19:33', '180.241.66.24', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1056, '2016-12-21 00:42:44', '180.241.66.24', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1057, '2016-12-21 00:42:44', '180.241.66.24', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1058, '2016-12-23 10:53:51', '180.241.8.106', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1059, '2016-12-23 13:57:34', '180.241.66.24', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1060, '2016-12-23 13:57:52', '180.241.66.24', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1061, '2016-12-23 13:58:07', '180.241.66.24', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1062, '2016-12-23 20:06:00', '180.241.8.106', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1063, '2016-12-24 15:11:36', '180.251.61.73', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1064, '2016-12-25 14:19:20', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1065, '2016-12-25 14:19:24', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1066, '2016-12-25 14:19:40', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1067, '2016-12-25 14:25:13', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1068, '2016-12-25 14:27:29', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1069, '2016-12-25 14:27:35', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/60'),
(1070, '2016-12-25 14:27:38', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/60'),
(1071, '2016-12-25 14:30:25', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1072, '2016-12-25 14:32:58', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1073, '2016-12-25 14:41:43', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1074, '2016-12-25 14:41:43', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1075, '2016-12-25 14:41:45', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1076, '2016-12-25 14:42:32', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1077, '2016-12-25 14:42:39', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/57'),
(1078, '2016-12-25 14:42:42', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/57'),
(1079, '2016-12-25 14:43:52', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1080, '2016-12-25 14:46:22', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1081, '2016-12-25 14:49:41', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1082, '2016-12-25 14:50:16', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1083, '2016-12-25 14:50:57', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1084, '2016-12-25 14:51:45', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/59'),
(1085, '2016-12-25 14:51:47', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/59'),
(1086, '2016-12-25 14:52:47', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1087, '2016-12-25 14:53:19', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1088, '2016-12-25 14:53:47', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/58'),
(1089, '2016-12-25 14:53:49', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/58'),
(1090, '2016-12-25 14:54:30', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1091, '2016-12-25 14:56:57', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1092, '2016-12-25 14:57:01', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/56'),
(1093, '2016-12-25 14:57:04', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/56'),
(1094, '2016-12-25 15:19:40', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1095, '2016-12-25 15:19:48', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1096, '2016-12-25 15:19:59', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1097, '2016-12-25 15:20:20', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(1098, '2016-12-25 15:22:24', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(1099, '2016-12-25 15:22:30', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(1100, '2016-12-25 15:22:40', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1101, '2016-12-25 15:35:07', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_add'),
(1102, '2016-12-25 15:43:05', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-saved'),
(1103, '2016-12-25 15:44:56', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(1104, '2016-12-25 15:45:00', '180.251.51.155', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/'),
(1105, '2016-12-28 15:17:32', '36.84.68.211', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog/?alert=login-failed'),
(1106, '2016-12-28 15:18:36', '36.84.68.211', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1107, '2017-01-04 15:53:40', '139.192.51.134', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog/?alert=login-failed'),
(1108, '2017-01-04 15:54:31', '139.192.51.134', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1109, '2017-01-04 15:54:45', '139.192.51.134', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_category'),
(1110, '2017-01-04 15:54:57', '139.192.51.134', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_category/?alert=delete'),
(1111, '2017-01-04 15:55:05', '139.192.51.134', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_category/?alert=delete'),
(1112, '2017-01-04 15:55:18', '139.192.51.134', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_category/?alert=delete'),
(1113, '2017-01-04 15:55:26', '139.192.51.134', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_category/?alert=delete'),
(1114, '2017-01-04 15:55:54', '139.192.51.134', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_category/?alert=delete'),
(1115, '2017-01-05 11:40:50', '36.84.225.101', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1116, '2017-01-11 14:31:46', '36.76.108.107', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1117, '2017-01-17 19:21:50', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1118, '2017-01-17 19:23:58', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1119, '2017-01-17 19:24:36', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1120, '2017-01-17 19:24:55', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(1121, '2017-01-17 19:25:13', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(1122, '2017-01-17 19:26:02', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(1123, '2017-01-17 19:26:12', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(1124, '2017-01-17 19:26:22', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(1125, '2017-01-17 19:26:28', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(1126, '2017-01-17 19:26:34', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(1127, '2017-01-17 19:26:40', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(1128, '2017-01-17 20:08:16', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products/?alert=post-delete'),
(1129, '2017-01-17 20:13:08', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/33'),
(1130, '2017-01-17 20:13:29', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(1131, '2017-01-17 20:13:56', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/'),
(1132, '2017-01-17 20:14:01', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1133, '2017-01-17 20:24:11', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/41'),
(1134, '2017-01-17 20:29:12', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(1135, '2017-01-17 20:29:24', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/'),
(1136, '2017-01-17 20:29:30', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1137, '2017-01-17 20:32:39', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/43'),
(1138, '2017-01-17 20:33:01', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(1139, '2017-01-17 20:33:28', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/'),
(1140, '2017-01-17 20:33:35', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1141, '2017-01-18 00:50:05', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1142, '2017-01-18 00:50:46', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1143, '2017-01-18 00:53:46', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1144, '2017-01-18 01:04:44', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/42'),
(1145, '2017-01-18 01:13:48', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1146, '2017-01-18 01:19:29', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/36'),
(1147, '2017-01-18 01:20:38', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1148, '2017-01-18 01:27:31', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/35'),
(1149, '2017-01-18 01:30:21', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1150, '2017-01-18 01:32:50', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/39'),
(1151, '2017-01-18 01:33:48', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1152, '2017-01-18 01:34:39', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/38'),
(1153, '2017-01-18 01:35:29', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1154, '2017-01-18 01:36:22', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/37'),
(1155, '2017-01-18 01:37:12', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1156, '2017-01-18 01:39:28', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/47'),
(1157, '2017-01-18 01:42:05', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1158, '2017-01-18 01:42:18', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1159, '2017-01-18 01:44:06', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/46'),
(1160, '2017-01-18 01:45:24', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1161, '2017-01-18 01:47:07', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/45'),
(1162, '2017-01-18 01:48:47', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/45'),
(1163, '2017-01-18 01:49:10', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1164, '2017-01-18 01:51:15', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/44'),
(1165, '2017-01-18 01:52:15', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/44'),
(1166, '2017-01-18 01:53:03', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1167, '2017-01-18 01:56:40', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/55'),
(1168, '2017-01-18 01:57:13', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/55'),
(1169, '2017-01-18 01:57:30', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1170, '2017-01-18 01:59:15', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/54'),
(1171, '2017-01-18 02:00:29', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1172, '2017-01-18 02:01:51', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/53'),
(1173, '2017-01-18 02:02:27', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1174, '2017-01-18 02:03:29', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/52'),
(1175, '2017-01-18 02:03:51', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1176, '2017-01-18 02:05:29', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/51'),
(1177, '2017-01-18 02:06:01', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1178, '2017-01-18 02:07:33', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/50'),
(1179, '2017-01-18 02:08:29', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1180, '2017-01-18 02:10:31', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/49'),
(1181, '2017-01-18 02:10:55', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1182, '2017-01-18 02:12:30', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/48'),
(1183, '2017-01-18 02:13:09', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1184, '2017-01-18 02:13:15', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1185, '2017-01-18 02:14:00', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/47'),
(1186, '2017-01-18 02:14:24', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(1187, '2017-01-18 02:14:29', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/'),
(1188, '2017-01-18 02:14:37', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/products'),
(1189, '2017-01-18 02:16:33', '180.251.1.191', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/product_edit/54'),
(1190, '2017-01-18 11:54:30', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1191, '2017-01-18 11:55:07', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', ''),
(1192, '2017-01-18 11:55:18', '36.76.64.226', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1193, '2017-01-23 19:38:09', '180.241.92.10', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1194, '2017-01-23 19:38:16', '180.241.92.10', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1195, '2017-01-23 23:10:38', '180.241.92.10', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog/?alert=login-failed'),
(1196, '2017-01-23 23:10:54', '180.241.92.10', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1197, '2017-01-23 23:11:08', '180.241.92.10', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu'),
(1198, '2017-01-23 23:11:13', '180.241.92.10', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu_item_edit/50'),
(1199, '2017-01-23 23:11:23', '180.241.92.10', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu/?alert=menu-saved'),
(1200, '2017-01-23 23:11:36', '180.241.92.10', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu_item_edit/44'),
(1201, '2017-01-23 23:11:46', '180.241.92.10', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu/?alert=menu-saved'),
(1202, '2017-01-23 23:29:35', '180.241.92.10', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/menu/?alert=menu-saved'),
(1203, '2017-01-24 12:32:39', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog/?alert=login-failed'),
(1204, '2017-01-24 12:32:43', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1205, '2017-01-24 14:47:23', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1206, '2017-01-24 14:47:29', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1207, '2017-01-24 14:49:08', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice'),
(1208, '2017-01-24 14:49:14', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice/?alert=delete'),
(1209, '2017-01-24 14:49:44', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/pembeli'),
(1210, '2017-01-24 15:32:08', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1211, '2017-01-24 15:33:25', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1212, '2017-01-24 15:33:30', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice'),
(1213, '2017-01-24 15:49:26', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice_detail/13'),
(1214, '2017-01-24 15:49:34', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice'),
(1215, '2017-01-24 15:49:37', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice/?alert=delete'),
(1216, '2017-01-24 15:49:45', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice_edit/13'),
(1217, '2017-01-24 15:49:59', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice_edit/13'),
(1218, '2017-01-24 15:50:02', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice'),
(1219, '2017-01-24 15:50:20', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice_edit/13'),
(1220, '2017-01-24 15:51:19', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice_edit/13'),
(1221, '2017-01-24 15:51:44', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice/?alert=update'),
(1222, '2017-01-24 15:51:53', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice_edit/13'),
(1223, '2017-01-24 15:52:13', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice/?alert=update'),
(1224, '2017-01-24 15:52:26', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice_edit/13'),
(1225, '2017-01-24 15:54:19', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice/?alert=update'),
(1226, '2017-01-24 15:54:41', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice_detail/13'),
(1227, '2017-01-24 15:55:45', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1228, '2017-01-24 16:37:03', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1229, '2017-01-24 16:37:07', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1230, '2017-01-24 16:37:12', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice');
INSERT INTO `dah_visitor` (`id`, `time_visit`, `user_ip`, `user_browser`, `user_os`, `user_device`, `page`, `user_referrer`) VALUES
(1231, '2017-01-24 16:37:12', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice'),
(1232, '2017-01-24 16:37:42', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice'),
(1233, '2017-01-24 16:37:42', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice'),
(1234, '2017-01-24 16:38:11', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice'),
(1235, '2017-01-24 16:38:40', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice/?alert=delete'),
(1236, '2017-01-24 16:39:16', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice/?alert=delete'),
(1237, '2017-01-24 16:39:23', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/pembeli'),
(1238, '2017-01-24 16:39:37', '180.241.56.3', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/pembeli/?alert=delete'),
(1239, '2017-01-25 09:14:28', '36.76.88.202', 'Chrome', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog/?alert=login-failed'),
(1240, '2017-01-25 20:46:58', '180.241.52.255', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog/?alert=login-failed'),
(1241, '2017-01-25 20:47:06', '180.241.52.255', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin'),
(1242, '2017-01-25 20:47:11', '180.241.52.255', 'Firefox', 'Unknown Windows OS', 'Unidentified', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin/invoice'),
(1243, '2017-01-26 09:33:25', '180.251.54.138', 'Chrome', 'Linux', 'Generic Mobile', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1244, '2017-01-26 09:33:42', '180.251.54.138', 'Chrome', 'Linux', 'Generic Mobile', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/xlog'),
(1245, '2017-01-26 09:33:52', '180.251.54.138', 'Chrome', 'Linux', 'Generic Mobile', 'http://shop.malasngoding.com/', 'http://shop.malasngoding.com/admin');

-- --------------------------------------------------------

--
-- Table structure for table `dah_widget`
--

CREATE TABLE `dah_widget` (
  `widget_id` int(11) NOT NULL,
  `widget_name` varchar(225) NOT NULL,
  `widget_position` varchar(10) NOT NULL,
  `widget_sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dah_widget`
--

INSERT INTO `dah_widget` (`widget_id`, `widget_name`, `widget_position`, `widget_sort`) VALUES
(10, 'related_post', 'footer', 1),
(43, 'pages', 'footer', 2),
(46, 'pages', 'sidebar', 2),
(68, 'category', 'footer', 4),
(69, 'text', 'footer', 4),
(70, 'slider', 'content', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `no` varchar(255) DEFAULT NULL,
  `tgl` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `metode` varchar(20) DEFAULT NULL,
  `alamat` text NOT NULL,
  `kurir` varchar(255) DEFAULT NULL,
  `pembayaran` int(11) NOT NULL,
  `rek_bank` text NOT NULL,
  `ongkir` int(11) NOT NULL,
  `resi` varchar(255) DEFAULT NULL,
  `slip` text,
  `status` int(11) NOT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `kodepos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `no`, `tgl`, `user_id`, `nama`, `telp`, `metode`, `alamat`, `kurir`, `pembayaran`, `rek_bank`, `ongkir`, `resi`, `slip`, `status`, `kota`, `kecamatan`, `provinsi`, `kodepos`) VALUES
(15, '#FISBIS-0015', '2019-09-05', 74, 'Sahlan nasution', '085289077890', NULL, 'Aceh tenggara', 'pos - Paket Kilat Khusus', 134000, 'bm3', 44000, NULL, NULL, 0, '65', 'Bengkulu Utara', '4', 22345),
(16, '#FISBIS-0016', '2019-09-06', 74, 'Sahlan Nasution', '085672819197', NULL, 'Binjai', 'pos - Paket Kilat Khusus', 101000, 'bm1', 11000, NULL, NULL, 0, '79', 'Bogor raya', '9', 23442);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_invoice` int(11) NOT NULL,
  `order_produk` int(11) NOT NULL,
  `order_harga` int(11) NOT NULL,
  `order_jumlah` int(11) NOT NULL,
  `order_berat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_invoice`, `order_produk`, `order_harga`, `order_jumlah`, `order_berat`) VALUES
(1, 1, 53, 85000, 1, NULL),
(2, 2, 55, 145000, 1, NULL),
(3, 2, 44, 75000, 1, NULL),
(4, 3, 35, 80000, 1, NULL),
(5, 4, 53, 85000, 1, NULL),
(6, 5, 52, 78000, 1, NULL),
(7, 6, 47, 100000, 1, NULL),
(8, 7, 41, 100000, 1, NULL),
(9, 8, 41, 100000, 1, NULL),
(10, 9, 64, 95000, 1, NULL),
(11, 10, 42, 80000, 1, NULL),
(12, 10, 33, 135000, 1, NULL),
(13, 11, 64, 95000, 1, NULL),
(14, 12, 48, 90000, 1, NULL),
(15, 12, 47, 100000, 1, NULL),
(16, 12, 44, 75000, 1, NULL),
(17, 12, 41, 100000, 1, NULL),
(18, 12, 35, 80000, 1, NULL),
(19, 13, 36, 90000, 1, NULL),
(20, 14, 64, 95000, 1, NULL),
(21, 15, 63, 90000, 1, NULL),
(22, 16, 61, 90000, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `alamat` text,
  `provinsi` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kelurahan` varchar(255) DEFAULT NULL,
  `kodepos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `nama`, `password`, `status`, `telp`, `alamat`, `provinsi`, `kota`, `kecamatan`, `kelurahan`, `kodepos`) VALUES
(9, 'fraidian651@gmail.com', 'Fraidian Atqwa', '40c77f720c382abc9c99bf8abbfc39c3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'diki@gmail.com', 'diki', 'dffaa4c60a250f19dc4a79b1d05c8d53', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'malasthat@gmail.com', 'malas', '521cc77d6a5786aa4d7db5097238abd8', 1, '085360080642', 'jl listrik gg palem no 1', 'aceh', 'lhokseumawe', 'banda sakti', NULL, 23256),
(13, 'edowaykristovel@yahoo.co.id', 'Kristovel Edoway', '448375fb8ccc5d8f3af6c855cc3a6156', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'malas@gmail.com', 'pemalas', '6e413ea6a2bb937b9106fa21004965da', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'arifmuhamad1337@gmail.com', 'Arif Muhammad', '557ba50239fcd2b4f813c76cf9c3efd2', 1, '081295085279', 'Perumahan papan mas Jalan Merpati 3 Blok G 62 no.13 rt 06 rw 09', 'Jawa Barat', 'Bekasi', 'Tambun Selatan', NULL, 17510),
(16, 'zamzamfahrurozi12@gmail.com', 'zamzamfahrurozi', '85648fb0a9baf7d34e410c17cc648ac0', 1, '089', 'kp.nangkelan', 'jawabarat', 'garut', 'samarang', NULL, 41466),
(17, 'hasruldani6@gmail.com', 'hasruldani', 'd063d02b3d3397c343b041c03145092c', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'gunawanr14@gmail.com', 'Gunawan Raharjo', 'e35ab3185502ced60146a8d6310f2f19', 1, '083837388547', 'Jala Temanggung No 34 Rt/Rw 03/06', 'Jawa Tengah', 'Tegal', 'Margadana', NULL, 52143),
(19, 'reynaldiaznan450@gmail.com', 'Reynaldi Aznan', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'rayhanprima99@gmail.com', 'Ahmed Rayhan Primadedas', 'f3d54339f3ac215649a1233127c04f30', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'avenged.dody@gmail.com', 'Ath Thoriq dody ath mansyah', '0546456e0f33398ad7b11e214c2c5b37', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'arf.pnp.amd@gmail.com', 'Arif', 'ab9b9195d1adda8e7aedc41235dd2e59', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'yolsak30@gmail.com', 'Yolsa Kolosra', '069c546d1d97fd9648d8142b3e0fd3a3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Nafan.San1709@gmail.com', 'Nafasansono Harefa', 'cc568c3d81f3e13063a7f2cbd1b7ccb2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'the.sun.007@gmail.com', 'Surya fajar', 'f20e310901d63285ba4a709312ee3aad', 1, '085246515452', 'Jl. Padat Karya No. 12 Sempaja Utara (jalan masuk ke Perum Bengkuring, Seberang Klinik dr. Wilsa)', 'Kalimantan Timur', 'Samarinda', 'Samarinda Utara', NULL, 75123),
(26, 'hasank.smart@gmail.com', 'Hasanudin ', '45ada73995520c52540d472626e1d494', 1, '087875875047', 'jalan lingkungan kaliwadas Rt 03 Rw 06 Perbatasan Cimuncang Serang-Banten', 'Banten', 'Serang ', 'Serang ', NULL, 42111),
(27, 'umarro@gmail.com', 'umar harjanto', 'b3abdf7ac27b8b2393f013081cde8560', 1, '081511135905', 'd.a. pt. indogravure, jl. pahlawan no. 8 rempoa', 'banten', 'tangerang selatan', 'ciputat', NULL, 15412),
(28, 'aulajaa15@gmail.com', 'Aulia Rahman', '6176bfc198db8efa988c3d23501e43d5', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'bayu.fs20@gmail.com', 'Bayu Fitri Sopyan', 'd0b7fe98b37aa7d75770703f407121f6', 1, '081563111604', 'Jl.Tititmplik Dalam No. 102 RT/01. RW/06 Kel.Sadang Serang ', 'Jawa Barat', 'Bandung', 'Coblong', NULL, 40133),
(30, 'vincen.olaf91@gmail.com', 'Vicencius Olaflia Rosantono', 'bc3625c37b208bd2ceafb4b7eb838a53', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'abdasispif@gmail.com', 'Abd Asis', '7657f3205b3749482500a17ad88a657b', 1, '083852411183', 'Dsn. Bandungan, Ds. Rongdurin', 'Jawa Timur', 'Bangkalan', 'TanahMerah', NULL, 69172),
(32, 'okyunus60@gmail.com', 'yunus', 'bf5e67c968161d8fbb0a4172d4aa2cd4', 1, '082234905751', 'jne kraksaan', 'jawa timur', 'kraksaan', 'kecamatan', NULL, 67282),
(33, 'damasangga9@gmail.com', 'damas angga', '6ccf929934691710135f3f0df7cc43c5', 1, '089694553552', 'Jalan Tanjung Sanyang RT 006/08 No. 38', 'DKI Jakarta', 'Jakarta Timur', 'Kramat Jati', NULL, 13630),
(34, 'Ma.gm.indramayu@gmail.com', 'Muflihuddin ahmad', '00e750b1f2eea354fcc530dc8d639e33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'radhitsukamoto@gmail.com', 'Rachmad Hidayat', 'ece235401d994b11c656b19fa4befb4e', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'farkhanm23@yahoo.com', 'muhammad fakhan imfrozin febrian putra', '68f993348daf277e0c29d64eec68d4a8', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'imfrozin15@gmail.com', 'farkhantokae', '68f993348daf277e0c29d64eec68d4a8', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'sukkunonsu@gmail.com', 'Sukkun Aritonang', 'b2af2f7e6b4cb735da1efb5ab5ca31d9', 1, '085338529896', 'Perumahan Melati Garden Blok I No. 03', 'Kepulauan Riau', 'Batam', 'Sekupang', NULL, 29426),
(39, 'tasdiq.bmth@gmail.com', 'tasdiq siregar', 'fcc38bbf485107f6eca2093e542f339d', 1, '085249783762', 'JL.SWADAYA 4 KARANGASEM, CONDONGCATUR, DEPOK, SLEMAN', 'D.I YOGYAKARTA', 'kabupaten Sleman', 'Condongcatur', NULL, 55283),
(40, 'suwino204@gmail.com', 'Suwino', '05daef6c8f67742973e7314420d6c0e7', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'ryanwicida@gmail.com', 'Ryan', '4411787e47cec21af45421c9554a1d7c', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'david.andriyan@gmail.com', 'David Andriyan S.', '9dbebf664dc054459496e1ed5a306ec8', 1, '082122251270', 'KPPN Denpasar GKN I Jl. Dr. Kusuma Atmaja Nitimandala Renon', 'Bali', 'Denpasar', 'Denpasar Timur', NULL, 80235),
(43, 'demensinden@yandex.com', 'demensinden', '8ea9b666b4a617a28fdc8623605d08b2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'meandobe@gmail.com', 'mean ', 'e4d60ca72739c99324f249a8196363e6', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'carimodal@gmail.com', 'carimodal', 'd831fbcac7da252319aacac5350c9f55', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'popovshbrynt@gmail.com', 'Muhammad Popov Shabriyanto', '2ec0532b4522c53146649106340f53fe', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'ryuzakki009@gmail.com', 'ahmad ramadhan', '6501f3b02a84b543f47a0cde377acc8b', 1, '082316663189', 'larangan', 'jawa barat', 'indramayu', 'lohbener', NULL, 45252),
(48, '2311fadli@gmail.com', 'Fadli Muhlisiin', '11dcbef3d14dfce594612b15884da83a', 1, '08998535153', 'Puspanegara Citeureup Rt03/03', 'Jawa barat', 'Bogor', 'Citeureup', NULL, 16810),
(49, 'desyramadhani477@gmail.com', 'Desy Ramadani', '6782c740311b55cfa21e8a405e3a118b', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'muhammadkhaidhir@linuxmail.org', 'Muhammad Khaidhir', '95eef42b904a343d9459b33679a31afe', 1, '082253046959', 'JL.Mas Negara Tembus Perumnas RT.43', 'Kalimantan Selatan', 'Banjarmasin', 'Banjarmasin Utara', NULL, 70123),
(51, 'iqballsiddik7777@gmail.com', 'iqbal siddik', '4ac03ad3ae277c7c09221ee9fdfb4042', 1, '085720277508', 'Jalan Jurang Gg.masjid sabilulhuda No.610 Rt.04 Rw.05 Kel.pasteur Kec.Sukajadi', 'Jawa Barat', 'Bandung', 'Sukajadi', NULL, 40616),
(52, 'befryloy@gmail.com', 'Maxmilianus Befry Loy', '6ca917da06ae3500ec1e849929ab3915', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'gnugraha5@gmail.com', 'Gugah Nugraha', 'fd8316d6eeb248e8d600a8587b5f3775', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'christofelmichael26@gmail.com', 'christofel michael', 'ad0f048882b380c6d9e5741f75027ceb', 1, '085361501718', 'Jl.Pembangunan III NO.45 ', 'Sumatera Utara', 'Medan', 'Medan Timur', NULL, 20238),
(55, 'kampusmuhammadiyah@gmail.com', 'Yudi Prasetyo', 'e172dd95f4feb21412a692e73929961e', 1, '08123749003', 'JL. KH AHMAD DAHLAN NO.17 KOTA KUPANG NTT', 'NUSA TENGGARA TIMUR', 'KUPANG', 'OEBOBO', NULL, 8111),
(56, 'dody.cpm@gmail.com', 'Dody Tanuwijaya', '162b84f420fd4b1e57d6e8865fa1bf5d', 1, '081383051440', 'jl.bungur raya no.12 rt.013/rw 06 kel.kebayoran lama utara', 'dki jakarta', 'jaksel', 'kebayoran lama', NULL, 12240),
(57, 'angga.cadullah@gmail.com', 'angga', '48f52a052d924e8c53c184043c48aefa', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'defalt_404@yahoo.co.id', 'Mr.Wahyu', '95fa39ea437f858ae443b1b4d808bfb4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'hery.fajar.isnawan@gmail.com', 'hery fajar isnawan', 'ee7d8c3595f71ee7c2c1f7b5c803065d', 1, '081273636600', 'Jl. Teratai no.50, Mulyojati 16c', 'lampung', 'kota metro', 'metro barat', NULL, 34111),
(60, 'dadirosadi117@gmail.com', 'Dadi Rosadi', '1fa88aa70c15c6639c687203e7f77a41', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'dulkiyemfamily@gmail.com', 'angga chrisna widyanto', '4f8c6c43d5b9ebb3bc817691ae610eb7', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'Ibrahimbaim170@gmail.com', 'Ibrahimbaim', '57ac992cf4a8b01a22958a5d9f4a4286', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'dupanks@gmail.com', 'Erfan Gumelar', '6b4228fe3be6aec2c25d6cc8ab838d7a', 1, '085956656176', 'Jl. Margacinta Gang Iman 1 No. 68 A RT 002 / RW 002 Margasari Buah Batu Bandung', 'Jawa Barat', 'Bandung', 'Buah Batu', NULL, 40286),
(64, 'business.afdhalul@gmail.com', 'Afdhalul Ichsan Yourdan', '624d93e21326410c4067323788c866d5', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'novia7a24@gmail.com', 'Novia RKS', '03dbc123137612a230b72b06382c45dd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'reza.afrizal@gmail.com', 'reza afrizal', '9964c19b22a0700f351050f9cd2be4af', 1, '089690888005', 'Jalan Tabrani Ahmad Gang Gunung Tidar No. 18', 'Kalimantan Barat', 'Pontianak', 'Pontianak Barat', NULL, 78113),
(67, 'vhidhie89@gmail.com', 'adi iman saputra', '4cbbf5ab74a69ca5ecd9edd70b084cdb', 1, '085768125959', 'Jalan Imam Bonjol Gang Lebak Budi 2 No.28 Kelurahan Sukajawa Baru', 'Lampung', 'Bandar Lampung', 'Tanjung Karang Barat', NULL, 35151),
(68, 'Imron.saefulloh28@gmail.com', 'Imron saefulloh', '136d15a423600ea7f9c423023d10d969', 1, '082214394959', 'Dusun Lampeni Rt/Rw 18/004, Desa Tanjungsari Timur', 'Jawa barat', 'Subang', 'Cikaum', NULL, 41253),
(69, 'ahmad.tabroni@outlook.com', 'Ahmad Tabroni', '7fbbeec8c5117133f2862d2d0a8bd65d', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'sukma.irawan@gmail.com', 'Sukma Irawan', 'ac8f9c49a75cf30c8786072e0af5e9e3', 1, '081519415333', 'Wisma GKBI lt 17 suite 1710, Jl Jend Sudirman No 28', 'DKI Jakarta', 'Jakarta Pusat', 'Tanah Abang', NULL, 10210),
(71, 'alfatihmubarok@yahoo.co.id', 'alfatihmubarok', 'f10a7d6688dcd12bac6c66e74993cf2a', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'admin@admin.com', 'nama_ja', '3fc0a7acf087f549ac2b266baf94b8b1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'tesdaftar@admin.com', 'qwerssssss', 'd8578edf8458ce06fbc5bb76a58c5ca4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'tesdaftarlagi@admin.com', 'Shalan Nasution', '3fc0a7acf087f549ac2b266baf94b8b1', 1, '085287990', 'Jalan Aksarsf', 'Aceh Tenggara', 'Blangkejeren', 'Aceh tenggara', NULL, 321344);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dah_category`
--
ALTER TABLE `dah_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `dah_menu`
--
ALTER TABLE `dah_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `dah_options`
--
ALTER TABLE `dah_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `dah_pages`
--
ALTER TABLE `dah_pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `dah_posts`
--
ALTER TABLE `dah_posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `dah_products`
--
ALTER TABLE `dah_products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `dah_product_category`
--
ALTER TABLE `dah_product_category`
  ADD PRIMARY KEY (`pcat_id`);

--
-- Indexes for table `dah_taxonomy`
--
ALTER TABLE `dah_taxonomy`
  ADD PRIMARY KEY (`taxonomy_id`);

--
-- Indexes for table `dah_users`
--
ALTER TABLE `dah_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `dah_visitor`
--
ALTER TABLE `dah_visitor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dah_widget`
--
ALTER TABLE `dah_widget`
  ADD PRIMARY KEY (`widget_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dah_category`
--
ALTER TABLE `dah_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dah_menu`
--
ALTER TABLE `dah_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `dah_options`
--
ALTER TABLE `dah_options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dah_pages`
--
ALTER TABLE `dah_pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `dah_posts`
--
ALTER TABLE `dah_posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `dah_products`
--
ALTER TABLE `dah_products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `dah_product_category`
--
ALTER TABLE `dah_product_category`
  MODIFY `pcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `dah_taxonomy`
--
ALTER TABLE `dah_taxonomy`
  MODIFY `taxonomy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `dah_users`
--
ALTER TABLE `dah_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dah_visitor`
--
ALTER TABLE `dah_visitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1246;

--
-- AUTO_INCREMENT for table `dah_widget`
--
ALTER TABLE `dah_widget`
  MODIFY `widget_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
