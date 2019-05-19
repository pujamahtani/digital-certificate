-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2019 at 10:51 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digital_certificate`
--

-- --------------------------------------------------------

--
-- Table structure for table `ait_rait`
--

CREATE TABLE `ait_rait` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `rank` varchar(255) NOT NULL,
  `field` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `qr_image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `previous_hash` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bitcamp_csi`
--

CREATE TABLE `bitcamp_csi` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `rank` varchar(255) NOT NULL,
  `field` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `qr_image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `previous_hash` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bitcamp_csi`
--

INSERT INTO `bitcamp_csi` (`student_id`, `student_name`, `class`, `rank`, `field`, `email`, `qr_image`, `link`, `previous_hash`) VALUES
(1, 'Rahul Khubchandani', 'CMPN', '1st', 'Dance', 'rahulkhubchandani27@gmail.com', '461.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=1', '0'),
(2, 'Sanjay Janyani', 'CMPN', '1st', 'Dance', 'sanjayjanyani27@gmail.com', '462.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=2', '431eaa6202d3b7861db4e24ee76703bd2d5afd208e9fa67d538d26d3fa4d010d'),
(3, 'Sahil Sadhwani', 'CMPN', '3rd', 'Singing', 'sahilsadhwani17@gmail.com', '463.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=3', '99152308027bb7eb7e047de3429a57a6f4408d3da6bfaaafe6357082324a94e7'),
(4, 'Juhi Mulchandani', 'CMPN', '3rd', 'Singing', 'juhimulchandani27@gmail.com', '464.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=4', 'e63d95380bcbdbf030ee6c85128d8ef31fa59dfab8077d2caf9a79c868dd6892'),
(5, 'Puja Mahtani', 'IT', '3rd', 'Fancy Dress', 'pujamahtani57@gmail.com', '465.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=5', '153e9716b644b34449a1a3ad5184389a676a40de3ec49acd4255cf366b547f50'),
(6, 'Jiten Tolani', 'IT', '2nd', 'Dance', 'jitentolani67@gmail.com', '466.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=6', '05e70d61746ca0890859bcbac9a2ecccaf1c06f330632c1578c294c6170c5f76'),
(7, 'Chirag Rohra', 'IT', '1st', 'Fancy Dress', 'chiragrohra17@gmail.com', '467.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=7', '83a7f461acc4dd9c85dadf78a44ddb2b8c081968d2e64dc64dbe14364cb83e16'),
(8, 'Dhiraj Aswani', 'IT', '2nd', 'Singing', 'dhirajaswani77@gmail.com', '468.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=8', 'adca26180e064757aa9406a9feddae5ba3286ec30fcc1e777b55837796fbc8c5'),
(9, 'Dharmesh Aswani', 'IT', '3rd', 'Singing', 'dharmeshaswani97@gmail.com', '469.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=9', '3469b422fee2f6d22afe245540989b456ba2f4fcbdf429c2cf0c32901ca3c85b'),
(10, 'Tanya Mohanani', 'IT', '1st', 'Singing', 'tanyamohanani237@gmail.com', '4610.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=10', '59165d26a19f725ca9d62cfd1cc5d5a380ba683b4aaf7540813a5051ffc2807a'),
(11, 'Chirag Raghani', 'EXTC', '1st', 'Dance', 'chiragraghani89@gmail.com', '4611.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=11', '472489ab58fcc2262ceb33170366cfe8b8bd5ecd50eb2294ec8d3322336bf099'),
(12, 'Nikhil Ghind', 'EXTC', '2nd', 'Dance', 'nikhilghind7@gmail.com', '4612.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=12', 'b5da98eee8c480cb5ab8ac47f8d04ab582b15170279d87ae4627b9e8d58eeaab'),
(13, 'Jatin Sumai', 'EXTC', '2nd', 'Dance', 'jatinsumai8@gmail.com', '4613.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=13', '179b409beb731a0906f671c20309b4fe64560c5f33a7135501106347f3d7a482'),
(14, 'Akshay Navani', 'EXTC', '2nd', 'Dance', 'akshaynavani23@gmail.com', '4614.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=14', 'c8cdd40143eabdfc1212bad9dad9d5e97031e03c5e0d33ffb5cb61ab0926ec9d'),
(15, 'Dhiren Chotwani', 'ETRX', '3rd', 'Fancy Dress', 'dhirenchotwani12@gmail.com', '4615.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=15', '24ca1af4c1f31549601622ffb4268ae279a0005b8a949b8cd4ed1f45d55b6530'),
(16, 'Yogita Jethani', 'ETRX', '1st', 'Fancy Dress', 'yogitajethani99@gmail.com', '4616.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=16', '35ca5eaa98db6a2c98c6c741e36d19e54aeea26ce87d29dc08b964a2215a422d'),
(17, 'Latika Gurnani', 'ETRX', '1st', 'Singing', 'latikagurnani21@gmail.com', '4617.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=17', '83c872cc15797438edcba85a2090b2787cba696028edc49538351c923410cbf0'),
(18, 'Yogita Bhatia', 'INSTRU', '3rd', 'Fancy Dress', 'yogitabhatia47@gmail.com', '4618.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=18', '1f876324d1799df0bfe28eb64fed523dabbb7ee22ec649244ece2f71e9b3652f'),
(19, 'Aarti Khatri', 'INSTRU', '2nd', 'Fancy Dress', 'aartikhatri37@gmail.com', '4619.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=19', 'a1787890823de06df81b434ba0243d8185ff1aa0fc6fa5659cabb521dbd5e188'),
(20, 'Dinesh Chavan', 'CMPN', '1st', 'Basketball', 'dineshchavan12@gmail.com', '4620.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=20', 'a97fd34dea6ab8bdea70ad9f4570527fbd05fa732c4b36f98b521901cb492f5f'),
(21, 'Girish Lund', 'IT', '2nd', 'Cricket', 'girishlund11@gmail.com', '4621.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=21', 'd8b968febbcd202b52eb0dfea88d5c452b3f734f17c46fbaa81b7ebcfaf6bc43'),
(22, 'Kapil Dulani', 'IT', '1st', 'Tennis', 'kapildulani33@gmail.com', '4622.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=22', 'b2924ab133459d05a8ecb57e24786a8d52652eeeb4a9e408ef8ac9fa7dbc0213'),
(23, '', '', '', '', '', '4623.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=23', 'e7d934736e2ea6cd1a25afc77d5ddf0fde73f73062b55b6a0bd69e2e23482c9e'),
(24, '', '', '', '', '', '4624.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=24', '535fa30d7e25dd8a49f1536779734ec8286108d115da5045d77f3b4185d8f790'),
(25, '', '', '', '', '', '4625.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=25', 'c2356069e9d1e79ca924378153cfbbfb4d4416b1f99d41a2940bfdb66c5319db'),
(26, '', '', '', '', '', '4626.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=26', 'b7a56873cd771f2c446d369b649430b65a756ba278ff97ec81bb6f55b2e73569'),
(27, '', '', '', '', '', '4627.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=27', '5f9c4ab08cac7457e9111a30e4664920607ea2c115a1433d7be98e97e64244ca'),
(28, '', '', '', '', '', '4628.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=28', '670671cd97404156226e507973f2ab8330d3022ca96e0c93bdbdb320c41adcaf'),
(29, '', '', '', '', '', '4629.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=29', '59e19706d51d39f66711c2653cd7eb1291c94d9b55eb14bda74ce4dc636d015a'),
(30, '', '', '', '', '', '4630.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=30', '35135aaa6cc23891b40cb3f378c53a17a1127210ce60e125ccf03efcfdaec458'),
(31, '', '', '', '', '', '4631.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=31', '624b60c58c9d8bfb6ff1886c2fd605d2adeb6ea4da576068201b6c6958ce93f4'),
(32, '', '', '', '', '', '4632.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=32', 'eb1e33e8a81b697b75855af6bfcdbcbf7cbbde9f94962ceaec1ed8af21f5a50f'),
(33, '', '', '', '', '', '4633.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=33', 'e29c9c180c6279b0b02abd6a1801c7c04082cf486ec027aa13515e4f3884bb6b'),
(34, '', '', '', '', '', '4634.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=34', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894'),
(35, '', '', '', '', '', '4635.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=35', '86e50149658661312a9e0b35558d84f6c6d3da797f552a9657fe0558ca40cdef'),
(36, '', '', '', '', '', '4636.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=36', '9f14025af0065b30e47e23ebb3b491d39ae8ed17d33739e5ff3827ffb3634953'),
(37, '', '', '', '', '', '4637.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=37', '76a50887d8f1c2e9301755428990ad81479ee21c25b43215cf524541e0503269'),
(38, '', '', '', '', '', '4638.png', 'localhost/bitcampdigi/classes/certificate_templates/t1.php?generation_id=46&student_id=38', '7a61b53701befdae0eeeffaecc73f14e20b537bb0f8b91ad7c2936dc63562b25');

-- --------------------------------------------------------

--
-- Table structure for table `csi`
--

CREATE TABLE `csi` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `rank` varchar(255) NOT NULL,
  `field` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `qr_image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `previous_hash` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `csi`
--

INSERT INTO `csi` (`student_id`, `student_name`, `class`, `rank`, `field`, `email`, `qr_image`, `link`, `previous_hash`) VALUES
(1, 'Sanjay Janyani', 'CMPN', '1st', 'Dance', 'rahulkhubchandani27@gmail.com', '471.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=1', '0'),
(2, 'Sanjay Janyani', 'CMPN', '1st', 'Dance', 'sanjayjanyani27@gmail.com', '472.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=2', '431eaa6202d3b7861db4e24ee76703bd2d5afd208e9fa67d538d26d3fa4d010d'),
(3, 'Sahil Sadhwani', 'CMPN', '3rd', 'Singing', 'sahilsadhwani17@gmail.com', '473.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=3', '99152308027bb7eb7e047de3429a57a6f4408d3da6bfaaafe6357082324a94e7'),
(4, 'Juhi Mulchandani', 'CMPN', '3rd', 'Singing', 'juhimulchandani27@gmail.com', '474.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=4', 'e63d95380bcbdbf030ee6c85128d8ef31fa59dfab8077d2caf9a79c868dd6892'),
(5, 'Puja Mahtani', 'IT', '3rd', 'Fancy Dress', 'pujamahtani57@gmail.com', '475.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=5', '153e9716b644b34449a1a3ad5184389a676a40de3ec49acd4255cf366b547f50'),
(6, 'Jiten Tolani', 'IT', '2nd', 'Dance', 'jitentolani67@gmail.com', '476.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=6', '05e70d61746ca0890859bcbac9a2ecccaf1c06f330632c1578c294c6170c5f76'),
(7, 'Chirag Rohra', 'IT', '1st', 'Fancy Dress', 'chiragrohra17@gmail.com', '477.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=7', '83a7f461acc4dd9c85dadf78a44ddb2b8c081968d2e64dc64dbe14364cb83e16'),
(8, 'Dhiraj Aswani', 'IT', '2nd', 'Singing', 'dhirajaswani77@gmail.com', '478.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=8', 'adca26180e064757aa9406a9feddae5ba3286ec30fcc1e777b55837796fbc8c5'),
(9, 'Dharmesh Aswani', 'IT', '3rd', 'Singing', 'dharmeshaswani97@gmail.com', '479.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=9', '3469b422fee2f6d22afe245540989b456ba2f4fcbdf429c2cf0c32901ca3c85b'),
(10, 'Tanya Mohanani', 'IT', '1st', 'Singing', 'tanyamohanani237@gmail.com', '4710.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=10', '59165d26a19f725ca9d62cfd1cc5d5a380ba683b4aaf7540813a5051ffc2807a'),
(11, 'Chirag Raghani', 'EXTC', '1st', 'Dance', 'chiragraghani89@gmail.com', '4711.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=11', '472489ab58fcc2262ceb33170366cfe8b8bd5ecd50eb2294ec8d3322336bf099'),
(12, 'Nikhil Ghind', 'EXTC', '2nd', 'Dance', 'nikhilghind7@gmail.com', '4712.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=12', 'b5da98eee8c480cb5ab8ac47f8d04ab582b15170279d87ae4627b9e8d58eeaab'),
(13, 'Jatin Sumai', 'EXTC', '2nd', 'Dance', 'jatinsumai8@gmail.com', '4713.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=13', '179b409beb731a0906f671c20309b4fe64560c5f33a7135501106347f3d7a482'),
(14, 'Akshay Navani', 'EXTC', '2nd', 'Dance', 'akshaynavani23@gmail.com', '4714.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=14', 'c8cdd40143eabdfc1212bad9dad9d5e97031e03c5e0d33ffb5cb61ab0926ec9d'),
(15, 'Dhiren Chotwani', 'ETRX', '3rd', 'Fancy Dress', 'dhirenchotwani12@gmail.com', '4715.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=15', '24ca1af4c1f31549601622ffb4268ae279a0005b8a949b8cd4ed1f45d55b6530'),
(16, 'Yogita Jethani', 'ETRX', '1st', 'Fancy Dress', 'yogitajethani99@gmail.com', '4716.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=16', '35ca5eaa98db6a2c98c6c741e36d19e54aeea26ce87d29dc08b964a2215a422d'),
(17, 'Latika Gurnani', 'ETRX', '1st', 'Singing', 'latikagurnani21@gmail.com', '4717.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=17', '83c872cc15797438edcba85a2090b2787cba696028edc49538351c923410cbf0'),
(18, 'Yogita Bhatia', 'INSTRU', '3rd', 'Fancy Dress', 'yogitabhatia47@gmail.com', '4718.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=18', '1f876324d1799df0bfe28eb64fed523dabbb7ee22ec649244ece2f71e9b3652f'),
(19, 'Aarti Khatri', 'INSTRU', '2nd', 'Fancy Dress', 'aartikhatri37@gmail.com', '4719.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=19', 'a1787890823de06df81b434ba0243d8185ff1aa0fc6fa5659cabb521dbd5e188'),
(20, 'Dinesh Chavan', 'CMPN', '1st', 'Basketball', 'dineshchavan12@gmail.com', '4720.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=20', 'a97fd34dea6ab8bdea70ad9f4570527fbd05fa732c4b36f98b521901cb492f5f'),
(21, 'Girish Lund', 'IT', '2nd', 'Cricket', 'girishlund11@gmail.com', '4721.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=21', 'd8b968febbcd202b52eb0dfea88d5c452b3f734f17c46fbaa81b7ebcfaf6bc43'),
(22, 'Kapil Dulani', 'IT', '1st', 'Tennis', 'kapildulani33@gmail.com', '4722.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=22', 'b2924ab133459d05a8ecb57e24786a8d52652eeeb4a9e408ef8ac9fa7dbc0213'),
(23, '', '', '', '', '', '4723.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=23', 'e7d934736e2ea6cd1a25afc77d5ddf0fde73f73062b55b6a0bd69e2e23482c9e'),
(24, '', '', '', '', '', '4724.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=24', '535fa30d7e25dd8a49f1536779734ec8286108d115da5045d77f3b4185d8f790'),
(25, '', '', '', '', '', '4725.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=25', 'c2356069e9d1e79ca924378153cfbbfb4d4416b1f99d41a2940bfdb66c5319db'),
(26, '', '', '', '', '', '4726.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=26', 'b7a56873cd771f2c446d369b649430b65a756ba278ff97ec81bb6f55b2e73569'),
(27, '', '', '', '', '', '4727.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=27', '5f9c4ab08cac7457e9111a30e4664920607ea2c115a1433d7be98e97e64244ca'),
(28, '', '', '', '', '', '4728.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=28', '670671cd97404156226e507973f2ab8330d3022ca96e0c93bdbdb320c41adcaf'),
(29, '', '', '', '', '', '4729.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=29', '59e19706d51d39f66711c2653cd7eb1291c94d9b55eb14bda74ce4dc636d015a'),
(30, '', '', '', '', '', '4730.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=30', '35135aaa6cc23891b40cb3f378c53a17a1127210ce60e125ccf03efcfdaec458'),
(31, '', '', '', '', '', '4731.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=31', '624b60c58c9d8bfb6ff1886c2fd605d2adeb6ea4da576068201b6c6958ce93f4'),
(32, '', '', '', '', '', '4732.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=32', 'eb1e33e8a81b697b75855af6bfcdbcbf7cbbde9f94962ceaec1ed8af21f5a50f'),
(33, '', '', '', '', '', '4733.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=33', 'e29c9c180c6279b0b02abd6a1801c7c04082cf486ec027aa13515e4f3884bb6b'),
(34, '', '', '', '', '', '4734.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=34', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894'),
(35, '', '', '', '', '', '4735.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=35', '86e50149658661312a9e0b35558d84f6c6d3da797f552a9657fe0558ca40cdef'),
(36, '', '', '', '', '', '4736.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=36', '9f14025af0065b30e47e23ebb3b491d39ae8ed17d33739e5ff3827ffb3634953'),
(37, '', '', '', '', '', '4737.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=37', '76a50887d8f1c2e9301755428990ad81479ee21c25b43215cf524541e0503269'),
(38, '', '', '', '', '', '4738.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=47&student_id=38', '7a61b53701befdae0eeeffaecc73f14e20b537bb0f8b91ad7c2936dc63562b25');

-- --------------------------------------------------------

--
-- Table structure for table `csi_rait`
--

CREATE TABLE `csi_rait` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `rank` varchar(255) NOT NULL,
  `field` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `qr_image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `previous_hash` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `csi_rait`
--

INSERT INTO `csi_rait` (`student_id`, `student_name`, `class`, `rank`, `field`, `email`, `qr_image`, `link`, `previous_hash`) VALUES
(1, 'Sanjay Janyani', 'CMPN', '1st', 'Dance', 'rahulkhubchandani27@gmail.com', '441.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=1', '0'),
(2, 'Sanjay Janyani', 'CMPN', '1st', 'Dance', 'sanjayjanyani27@gmail.com', '442.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=2', '431eaa6202d3b7861db4e24ee76703bd2d5afd208e9fa67d538d26d3fa4d010d'),
(3, 'Sahil Sadhwani', 'CMPN', '3rd', 'Singing', 'sahilsadhwani17@gmail.com', '443.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=3', '99152308027bb7eb7e047de3429a57a6f4408d3da6bfaaafe6357082324a94e7'),
(4, 'Juhi Mulchandani', 'CMPN', '3rd', 'Singing', 'juhimulchandani27@gmail.com', '444.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=4', 'e63d95380bcbdbf030ee6c85128d8ef31fa59dfab8077d2caf9a79c868dd6892'),
(5, 'Puja Mahtani', 'IT', '3rd', 'Fancy Dress', 'pujamahtani57@gmail.com', '445.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=5', '153e9716b644b34449a1a3ad5184389a676a40de3ec49acd4255cf366b547f50'),
(6, 'Jiten Tolani', 'IT', '2nd', 'Dance', 'jitentolani67@gmail.com', '446.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=6', '05e70d61746ca0890859bcbac9a2ecccaf1c06f330632c1578c294c6170c5f76'),
(7, 'Chirag Rohra', 'IT', '1st', 'Fancy Dress', 'chiragrohra17@gmail.com', '447.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=7', '83a7f461acc4dd9c85dadf78a44ddb2b8c081968d2e64dc64dbe14364cb83e16'),
(8, 'Dhiraj Aswani', 'IT', '2nd', 'Singing', 'dhirajaswani77@gmail.com', '448.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=8', 'adca26180e064757aa9406a9feddae5ba3286ec30fcc1e777b55837796fbc8c5'),
(9, 'Dharmesh Aswani', 'IT', '3rd', 'Singing', 'dharmeshaswani97@gmail.com', '449.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=9', '3469b422fee2f6d22afe245540989b456ba2f4fcbdf429c2cf0c32901ca3c85b'),
(10, 'Tanya Mohanani', 'IT', '1st', 'Singing', 'tanyamohanani237@gmail.com', '4410.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=10', '59165d26a19f725ca9d62cfd1cc5d5a380ba683b4aaf7540813a5051ffc2807a'),
(11, 'Chirag Raghani', 'EXTC', '1st', 'Dance', 'chiragraghani89@gmail.com', '4411.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=11', '472489ab58fcc2262ceb33170366cfe8b8bd5ecd50eb2294ec8d3322336bf099'),
(12, 'Nikhil Ghind', 'EXTC', '2nd', 'Dance', 'nikhilghind7@gmail.com', '4412.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=12', 'b5da98eee8c480cb5ab8ac47f8d04ab582b15170279d87ae4627b9e8d58eeaab'),
(13, 'Jatin Sumai', 'EXTC', '2nd', 'Dance', 'jatinsumai8@gmail.com', '4413.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=13', '179b409beb731a0906f671c20309b4fe64560c5f33a7135501106347f3d7a482'),
(14, 'Akshay Navani', 'EXTC', '2nd', 'Dance', 'akshaynavani23@gmail.com', '4414.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=14', 'c8cdd40143eabdfc1212bad9dad9d5e97031e03c5e0d33ffb5cb61ab0926ec9d'),
(15, 'Dhiren Chotwani', 'ETRX', '3rd', 'Fancy Dress', 'dhirenchotwani12@gmail.com', '4415.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=15', '24ca1af4c1f31549601622ffb4268ae279a0005b8a949b8cd4ed1f45d55b6530'),
(16, 'Yogita Jethani', 'ETRX', '1st', 'Fancy Dress', 'yogitajethani99@gmail.com', '4416.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=16', '35ca5eaa98db6a2c98c6c741e36d19e54aeea26ce87d29dc08b964a2215a422d'),
(17, 'Latika Gurnani', 'ETRX', '1st', 'Singing', 'latikagurnani21@gmail.com', '4417.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=17', '83c872cc15797438edcba85a2090b2787cba696028edc49538351c923410cbf0'),
(18, 'Yogita Bhatia', 'INSTRU', '3rd', 'Fancy Dress', 'yogitabhatia47@gmail.com', '4418.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=18', '1f876324d1799df0bfe28eb64fed523dabbb7ee22ec649244ece2f71e9b3652f'),
(19, 'Aarti Khatri', 'INSTRU', '2nd', 'Fancy Dress', 'aartikhatri37@gmail.com', '4419.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=19', 'a1787890823de06df81b434ba0243d8185ff1aa0fc6fa5659cabb521dbd5e188'),
(20, 'Rahul Khubchandani', 'CMPN', '1st', 'Dance', 'rahulkhubchandani27@gmail.com', '4420.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=20', 'a97fd34dea6ab8bdea70ad9f4570527fbd05fa732c4b36f98b521901cb492f5f'),
(21, 'Sanjay Janyani', 'CMPN', '1st', 'Dance', 'sanjayjanyani27@gmail.com', '4421.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=21', 'd75eac1d701c9d5f3a22c51a68cc837dbd7adde9888c6069c5e8817c82eff87c'),
(22, 'Sahil Sadhwani', 'CMPN', '3rd', 'Singing', 'sahilsadhwani17@gmail.com', '4422.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=22', '32f95f8f041eac28eb1705cbf2de666af7b6bb37e3e411d30585ff4677264195'),
(23, 'Juhi Mulchandani', 'CMPN', '3rd', 'Singing', 'juhimulchandani27@gmail.com', '4423.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=23', '209e64ffbe35940eb5f910117f0e4859cd9c747bb3bd2f0d2bbc3ffe89d1880e'),
(24, 'Puja Mahtani', 'IT', '3rd', 'Fancy Dress', 'pujamahtani57@gmail.com', '4424.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=24', '1649f7920ffbda06dd9a26f86503840be4f69168dc2235c2e027825280bc832a'),
(25, 'Jiten Tolani', 'IT', '2nd', 'Dance', 'jitentolani67@gmail.com', '4425.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=25', '13e743298f0964b78a498ac431823f82f229499c381c1b5a20b949da0e1651c0'),
(26, 'Chirag Rohra', 'IT', '1st', 'Fancy Dress', 'chiragrohra17@gmail.com', '4426.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=26', 'ca79c3b155ffc7062d694aaf72ddd056b33f869b6cce329c9136e86b5b5e43b2'),
(27, 'Dhiraj Aswani', 'IT', '2nd', 'Singing', 'dhirajaswani77@gmail.com', '4427.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=27', 'c6651f3e199870c6e3c861cb805931041f1498f73541cfe8f31da10d38b75291'),
(28, 'Dharmesh Aswani', 'IT', '3rd', 'Singing', 'dharmeshaswani97@gmail.com', '4428.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=28', 'ddad0a39e05422ba229ad0b4b5ea1ad582ce11cc87acd25736f81ef0220d7029'),
(29, 'Tanya Mohanani', 'IT', '1st', 'Singing', 'tanyamohanani237@gmail.com', '4429.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=29', 'a5217917468d6f20bd79e42f272634c4e289be0dcbd4159c9c258ca37d63b753'),
(30, 'Chirag Raghani', 'EXTC', '1st', 'Dance', 'chiragraghani89@gmail.com', '4430.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=30', '6197e50a1e657dc6a7a9f9ed524b31ab3b55fe502792c489e05e8b680ee41895'),
(31, 'Nikhil Ghind', 'EXTC', '2nd', 'Dance', 'nikhilghind7@gmail.com', '4431.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=31', '82423eb26e2d6e8a2ce3e80be79da2e7d5df631682d4eef4007cdc5ffd59b9d8'),
(32, 'Jatin Sumai', 'EXTC', '2nd', 'Dance', 'jatinsumai8@gmail.com', '4432.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=32', '2da8237ec25ef866da459d7a7dec72815aa4b48c132793315f0f339d4896abb8'),
(33, 'Akshay Navani', 'EXTC', '2nd', 'Dance', 'akshaynavani23@gmail.com', '4433.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=33', '0db6d7a22209c4a16624e9d4bb9626ba13b5f0161fb32bdd1eadb764bc0a8349'),
(34, 'Dhiren Chotwani', 'ETRX', '3rd', 'Fancy Dress', 'dhirenchotwani12@gmail.com', '4434.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=34', '1751a8c6ebd1f32ea540c038c5f372ba572ae3dc2a3cf6e876caeea6271c869a'),
(35, 'Yogita Jethani', 'ETRX', '1st', 'Fancy Dress', 'yogitajethani99@gmail.com', '4435.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=35', '0415eeb711b2b0e2e0af90da0b2f50ea6ebbb2687e944c56ade6dcc228830c7d'),
(36, 'Latika Gurnani', 'ETRX', '1st', 'Singing', 'latikagurnani21@gmail.com', '4436.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=36', '5c0357cdab16e67d6d16e962ebba6775597f1bb23d5c5d277fc62cf122046c5c'),
(37, 'Yogita Bhatia', 'INSTRU', '3rd', 'Fancy Dress', 'yogitabhatia47@gmail.com', '4437.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=37', '9be7589cbbce876ea22c91637fc0e46d696ab76950a037a224d9295cf4ed7238'),
(38, 'Aarti Khatri', 'INSTRU', '2nd', 'Fancy Dress', 'aartikhatri37@gmail.com', '4438.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=44&student_id=38', '4e91839a79cf754a985ce26eb11199fa08412e7536ca13c00233e09347783781');

-- --------------------------------------------------------

--
-- Table structure for table `dipti`
--

CREATE TABLE `dipti` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `rank` varchar(255) NOT NULL,
  `field` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `qr_image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `previous_hash` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dipti`
--

INSERT INTO `dipti` (`student_id`, `student_name`, `class`, `rank`, `field`, `email`, `qr_image`, `link`, `previous_hash`) VALUES
(1, 'Rahul Khubchandani', 'CMPN', '1st', 'Dance', 'rahulkhubchandani27@gmail.com', '', '', NULL),
(2, 'Sanjay Janyani', 'CMPN', '1st', 'Dance', 'sanjayjanyani27@gmail.com', '', '', NULL),
(3, 'Sahil Sadhwani', 'CMPN', '3rd', 'Singing', 'sahilsadhwani17@gmail.com', '', '', NULL),
(4, 'Juhi Mulchandani', 'CMPN', '3rd', 'Singing', 'juhimulchandani27@gmail.com', '', '', NULL),
(5, 'Puja Mahtani', 'IT', '3rd', 'Fancy Dress', 'pujamahtani57@gmail.com', '', '', NULL),
(6, 'Jiten Tolani', 'IT', '2nd', 'Dance', 'jitentolani67@gmail.com', '', '', NULL),
(7, 'Chirag Rohra', 'IT', '1st', 'Fancy Dress', 'chiragrohra17@gmail.com', '', '', NULL),
(8, 'Dhiraj Aswani', 'IT', '2nd', 'Singing', 'dhirajaswani77@gmail.com', '', '', NULL),
(9, 'Dharmesh Aswani', 'IT', '3rd', 'Singing', 'dharmeshaswani97@gmail.com', '', '', NULL),
(10, 'Tanya Mohanani', 'IT', '1st', 'Singing', 'tanyamohanani237@gmail.com', '', '', NULL),
(11, 'Chirag Raghani', 'EXTC', '1st', 'Dance', 'chiragraghani89@gmail.com', '', '', NULL),
(12, 'Nikhil Ghind', 'EXTC', '2nd', 'Dance', 'nikhilghind7@gmail.com', '', '', NULL),
(13, 'Jatin Sumai', 'EXTC', '2nd', 'Dance', 'jatinsumai8@gmail.com', '', '', NULL),
(14, 'Akshay Navani', 'EXTC', '2nd', 'Dance', 'akshaynavani23@gmail.com', '', '', NULL),
(15, 'Dhiren Chotwani', 'ETRX', '3rd', 'Fancy Dress', 'dhirenchotwani12@gmail.com', '', '', NULL),
(16, 'Yogita Jethani', 'ETRX', '1st', 'Fancy Dress', 'yogitajethani99@gmail.com', '', '', NULL),
(17, 'Latika Gurnani', 'ETRX', '1st', 'Singing', 'latikagurnani21@gmail.com', '', '', NULL),
(18, 'Yogita Bhatia', 'INSTRU', '3rd', 'Fancy Dress', 'yogitabhatia47@gmail.com', '', '', NULL),
(19, 'Aarti Khatri', 'INSTRU', '2nd', 'Fancy Dress', 'aartikhatri37@gmail.com', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `generation`
--

CREATE TABLE `generation` (
  `generation_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `template_id` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `commitee_name` varchar(255) NOT NULL,
  `certificate_title` varchar(255) NOT NULL,
  `issuer_name` varchar(255) NOT NULL,
  `issuer_signature` varchar(255) NOT NULL,
  `higher_authority_name` varchar(255) NOT NULL,
  `higher_authority_signature` varchar(255) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `generation`
--

INSERT INTO `generation` (`generation_id`, `organization_id`, `template_id`, `logo`, `commitee_name`, `certificate_title`, `issuer_name`, `issuer_signature`, `higher_authority_name`, `higher_authority_signature`, `date`) VALUES
(40, 13, 't2', '40.png', 'iste_rait', 'Appreciation', 'Chairperson', '40.png', 'Head of Department', '40.png', '2019-03-22'),
(41, 13, 't2', '41.png', 'iee_rait', 'Appreciation', 'staff', '41.png', 'hod', NULL, '2019-03-19'),
(43, 13, 't2', '43.png', 'csi_rait', 'Appreciation', 'sanjay', '43.png', 'hod', '43.png', '2019-03-05'),
(44, 13, 't2', '44.png', 'csi_rait', 'Appreciation', 'jiten', '44.png', 'jt', '44.png', '2019-03-21'),
(45, 13, 't2', '45.png', 'dipti', 'Appreciation', 'chairperso n', '45.png', 'principal', NULL, '2019-03-13'),
(46, 13, 't1', '46.png', 'bitcamp_csi', 'Appreciation', 'Chairperson', '46.png', 'Hod', '46.png', '2019-04-03'),
(47, 13, 't2', '47.png', 'CSI', 'Certificate of Ack', 'Chairperson', '47.png', 'Nupur Giri', '47.png', '2019-04-12');

-- --------------------------------------------------------

--
-- Table structure for table `iee_rait`
--

CREATE TABLE `iee_rait` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `rank` varchar(255) NOT NULL,
  `field` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `qr_image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `previous_hash` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iee_rait`
--

INSERT INTO `iee_rait` (`student_id`, `student_name`, `class`, `rank`, `field`, `email`, `qr_image`, `link`, `previous_hash`) VALUES
(1, 'Rahul Khubchandani', 'CMPN', '1st', 'Dance', 'rahulkhubchandani27@gmail.com', '', '', NULL),
(2, 'Sanjay Janyani', 'CMPN', '1st', 'Dance', 'sanjayjanyani27@gmail.com', '', '', NULL),
(3, 'Sahil Sadhwani', 'CMPN', '3rd', 'Singing', 'sahilsadhwani17@gmail.com', '', '', NULL),
(4, 'Juhi Mulchandani', 'CMPN', '3rd', 'Singing', 'juhimulchandani27@gmail.com', '', '', NULL),
(5, 'Puja Mahtani', 'IT', '3rd', 'Fancy Dress', 'pujamahtani57@gmail.com', '', '', NULL),
(6, 'Jiten Tolani', 'IT', '2nd', 'Dance', 'jitentolani67@gmail.com', '', '', NULL),
(7, 'Chirag Rohra', 'IT', '1st', 'Fancy Dress', 'chiragrohra17@gmail.com', '', '', NULL),
(8, 'Dhiraj Aswani', 'IT', '2nd', 'Singing', 'dhirajaswani77@gmail.com', '', '', NULL),
(9, 'Dharmesh Aswani', 'IT', '3rd', 'Singing', 'dharmeshaswani97@gmail.com', '', '', NULL),
(10, 'Tanya Mohanani', 'IT', '1st', 'Singing', 'tanyamohanani237@gmail.com', '', '', NULL),
(11, 'Chirag Raghani', 'EXTC', '1st', 'Dance', 'chiragraghani89@gmail.com', '', '', NULL),
(12, 'Nikhil Ghind', 'EXTC', '2nd', 'Dance', 'nikhilghind7@gmail.com', '', '', NULL),
(13, 'Jatin Sumai', 'EXTC', '2nd', 'Dance', 'jatinsumai8@gmail.com', '', '', NULL),
(14, 'Akshay Navani', 'EXTC', '2nd', 'Dance', 'akshaynavani23@gmail.com', '', '', NULL),
(15, 'Dhiren Chotwani', 'ETRX', '3rd', 'Fancy Dress', 'dhirenchotwani12@gmail.com', '', '', NULL),
(16, 'Yogita Jethani', 'ETRX', '1st', 'Fancy Dress', 'yogitajethani99@gmail.com', '', '', NULL),
(17, 'Latika Gurnani', 'ETRX', '1st', 'Singing', 'latikagurnani21@gmail.com', '', '', NULL),
(18, 'Yogita Bhatia', 'INSTRU', '3rd', 'Fancy Dress', 'yogitabhatia47@gmail.com', '', '', NULL),
(19, 'Aarti Khatri', 'INSTRU', '2nd', 'Fancy Dress', 'aartikhatri37@gmail.com', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `iste_rait`
--

CREATE TABLE `iste_rait` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `rank` varchar(255) NOT NULL,
  `field` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `qr_image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `previous_hash` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iste_rait`
--

INSERT INTO `iste_rait` (`student_id`, `student_name`, `class`, `rank`, `field`, `email`, `qr_image`, `link`, `previous_hash`) VALUES
(1, 'Rahul Khubchandani', 'CMPN', '1st', 'Dance', 'rahulkhubchandani27@gmail.com', '401.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=40&student_id=1', '0'),
(2, 'Sanjay Janyani', 'CMPN', '1st', 'Dance', 'sanjayjanyani27@gmail.com', '402.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=40&student_id=2', '431eaa6202d3b7861db4e24ee76703bd2d5afd208e9fa67d538d26d3fa4d010d'),
(3, 'Sahil Sadhwani', 'CMPN', '3rd', 'Singing', 'sahilsadhwani17@gmail.com', '403.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=40&student_id=3', '99152308027bb7eb7e047de3429a57a6f4408d3da6bfaaafe6357082324a94e7'),
(4, 'Juhi Mulchandani', 'CMPN', '3rd', 'Singing', 'juhimulchandani27@gmail.com', '404.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=40&student_id=4', 'e63d95380bcbdbf030ee6c85128d8ef31fa59dfab8077d2caf9a79c868dd6892'),
(5, 'Puja Mahtani', 'IT', '3rd', 'Fancy Dress', 'pujamahtani57@gmail.com', '405.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=40&student_id=5', '153e9716b644b34449a1a3ad5184389a676a40de3ec49acd4255cf366b547f50'),
(6, 'Jiten Tolani', 'IT', '2nd', 'Dance', 'jitentolani67@gmail.com', '406.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=40&student_id=6', '05e70d61746ca0890859bcbac9a2ecccaf1c06f330632c1578c294c6170c5f76'),
(7, 'Chirag Rohra', 'IT', '1st', 'Fancy Dress', 'chiragrohra17@gmail.com', '407.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=40&student_id=7', '83a7f461acc4dd9c85dadf78a44ddb2b8c081968d2e64dc64dbe14364cb83e16'),
(8, 'Dhiraj Aswani', 'IT', '2nd', 'Singing', 'dhirajaswani77@gmail.com', '408.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=40&student_id=8', 'adca26180e064757aa9406a9feddae5ba3286ec30fcc1e777b55837796fbc8c5'),
(9, 'Dharmesh Aswani', 'IT', '3rd', 'Singing', 'dharmeshaswani97@gmail.com', '409.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=40&student_id=9', '3469b422fee2f6d22afe245540989b456ba2f4fcbdf429c2cf0c32901ca3c85b'),
(10, 'Tanya Mohanani', 'IT', '1st', 'Singing', 'tanyamohanani237@gmail.com', '4010.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=40&student_id=10', '59165d26a19f725ca9d62cfd1cc5d5a380ba683b4aaf7540813a5051ffc2807a'),
(11, 'Chirag Raghani', 'EXTC', '1st', 'Dance', 'chiragraghani89@gmail.com', '4011.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=40&student_id=11', '472489ab58fcc2262ceb33170366cfe8b8bd5ecd50eb2294ec8d3322336bf099'),
(12, 'Nikhil Ghind', 'EXTC', '2nd', 'Dance', 'nikhilghind7@gmail.com', '4012.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=40&student_id=12', 'b5da98eee8c480cb5ab8ac47f8d04ab582b15170279d87ae4627b9e8d58eeaab'),
(13, 'Jatin Sumai', 'EXTC', '2nd', 'Dance', 'jatinsumai8@gmail.com', '4013.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=40&student_id=13', '179b409beb731a0906f671c20309b4fe64560c5f33a7135501106347f3d7a482'),
(14, 'Akshay Navani', 'EXTC', '2nd', 'Dance', 'akshaynavani23@gmail.com', '4014.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=40&student_id=14', 'c8cdd40143eabdfc1212bad9dad9d5e97031e03c5e0d33ffb5cb61ab0926ec9d'),
(15, 'Dhiren Chotwani', 'ETRX', '3rd', 'Fancy Dress', 'dhirenchotwani12@gmail.com', '4015.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=40&student_id=15', '24ca1af4c1f31549601622ffb4268ae279a0005b8a949b8cd4ed1f45d55b6530'),
(16, 'Yogita Jethani', 'ETRX', '1st', 'Fancy Dress', 'yogitajethani99@gmail.com', '4016.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=40&student_id=16', '35ca5eaa98db6a2c98c6c741e36d19e54aeea26ce87d29dc08b964a2215a422d'),
(17, 'Latika Gurnani', 'ETRX', '1st', 'Singing', 'latikagurnani21@gmail.com', '4017.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=40&student_id=17', '83c872cc15797438edcba85a2090b2787cba696028edc49538351c923410cbf0'),
(18, 'Yogita Bhatia', 'INSTRU', '3rd', 'Fancy Dress', 'yogitabhatia47@gmail.com', '4018.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=40&student_id=18', '1f876324d1799df0bfe28eb64fed523dabbb7ee22ec649244ece2f71e9b3652f'),
(19, 'Aarti Khatri', 'INSTRU', '2nd', 'Fancy Dress', 'aartikhatri37@gmail.com', '4019.png', 'localhost/bitcampdigi/classes/certificate_templates/t2.php?generation_id=40&student_id=19', 'a1787890823de06df81b434ba0243d8185ff1aa0fc6fa5659cabb521dbd5e188');

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `organization_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_no` int(11) NOT NULL,
  `need` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `login_issuer` varchar(255) NOT NULL,
  `issuer_password` varchar(255) NOT NULL,
  `login_higher_authority` varchar(255) NOT NULL,
  `higher_authority_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`organization_id`, `name`, `email`, `mobile_no`, `need`, `address`, `login_issuer`, `issuer_password`, `login_higher_authority`, `higher_authority_password`) VALUES
(13, 'RAIT', 'rait@gmail.com', 2147483647, 'College Purpose', 'Rait,Dy Patil Nerul', 'sanjay', 'sanjay', 'sahil', 'sahil');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `organization_id` int(11) NOT NULL,
  `login_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`organization_id`, `login_id`, `password`, `role`) VALUES
(13, 'sanjay', 'sanjay', 0),
(13, 'sahil', 'sahil', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ait_rait`
--
ALTER TABLE `ait_rait`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `bitcamp_csi`
--
ALTER TABLE `bitcamp_csi`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `csi`
--
ALTER TABLE `csi`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `csi_rait`
--
ALTER TABLE `csi_rait`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `dipti`
--
ALTER TABLE `dipti`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `generation`
--
ALTER TABLE `generation`
  ADD PRIMARY KEY (`generation_id`);

--
-- Indexes for table `iee_rait`
--
ALTER TABLE `iee_rait`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `iste_rait`
--
ALTER TABLE `iste_rait`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`organization_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ait_rait`
--
ALTER TABLE `ait_rait`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bitcamp_csi`
--
ALTER TABLE `bitcamp_csi`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `csi`
--
ALTER TABLE `csi`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `csi_rait`
--
ALTER TABLE `csi_rait`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `dipti`
--
ALTER TABLE `dipti`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `generation`
--
ALTER TABLE `generation`
  MODIFY `generation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `iee_rait`
--
ALTER TABLE `iee_rait`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `iste_rait`
--
ALTER TABLE `iste_rait`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `organization_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
