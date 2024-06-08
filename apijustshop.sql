-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2024 at 06:40 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apijustshop`
--
CREATE DATABASE IF NOT EXISTS `apijustshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `apijustshop`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `products_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `products_id`, `created_at`, `updated_at`) VALUES
(1, 'https://th.bing.com/th/id/OIP.0Vk0miaiStLLYxMLADxyZQHaHa?w=187&h=187&c=7&r=0&o=5&dpr=1.1&pid=1.7', 1, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(2, 'anh2.jpg', 1, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(3, 'https://via.placeholder.com/640x480.png/0022ee?text=non', 1, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(4, 'https://via.placeholder.com/640x480.png/00aa22?text=neque', 1, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(5, 'https://via.placeholder.com/640x480.png/00ff00?text=fugiat', 2, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(6, 'https://via.placeholder.com/640x480.png/00ee00?text=magni', 2, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(7, 'https://via.placeholder.com/640x480.png/007722?text=qui', 2, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(8, 'https://via.placeholder.com/640x480.png/00ff44?text=qui', 2, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(9, 'https://via.placeholder.com/640x480.png/008822?text=alias', 3, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(10, 'https://via.placeholder.com/640x480.png/003322?text=autem', 3, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(11, 'https://via.placeholder.com/640x480.png/001166?text=corrupti', 3, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(12, 'https://via.placeholder.com/640x480.png/00bbee?text=cumque', 3, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(13, 'https://via.placeholder.com/640x480.png/00ee55?text=quia', 4, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(14, 'https://via.placeholder.com/640x480.png/00ee55?text=reiciendis', 4, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(15, 'https://via.placeholder.com/640x480.png/00cc11?text=tenetur', 4, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(16, 'https://via.placeholder.com/640x480.png/001188?text=voluptas', 4, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(17, 'https://via.placeholder.com/640x480.png/0077bb?text=quia', 5, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(18, 'https://via.placeholder.com/640x480.png/003366?text=explicabo', 5, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(19, 'https://via.placeholder.com/640x480.png/00dddd?text=velit', 5, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(20, 'https://via.placeholder.com/640x480.png/00ff11?text=est', 5, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(21, 'https://via.placeholder.com/640x480.png/00cc11?text=in', 6, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(22, 'https://via.placeholder.com/640x480.png/001188?text=sed', 6, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(23, 'https://via.placeholder.com/640x480.png/008833?text=similique', 6, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(24, 'https://via.placeholder.com/640x480.png/007766?text=dolorem', 6, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(25, 'https://via.placeholder.com/640x480.png/0077ee?text=ex', 7, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(26, 'https://via.placeholder.com/640x480.png/000077?text=suscipit', 7, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(27, 'https://via.placeholder.com/640x480.png/006600?text=repellendus', 7, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(28, 'https://via.placeholder.com/640x480.png/0066dd?text=voluptatem', 7, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(29, 'https://via.placeholder.com/640x480.png/007799?text=deserunt', 8, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(30, 'https://via.placeholder.com/640x480.png/0011cc?text=asperiores', 8, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(31, 'https://via.placeholder.com/640x480.png/005533?text=dolor', 8, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(32, 'https://via.placeholder.com/640x480.png/007711?text=maiores', 8, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(33, 'https://via.placeholder.com/640x480.png/0055aa?text=voluptate', 9, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(34, 'https://via.placeholder.com/640x480.png/00aa55?text=ut', 9, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(35, 'https://via.placeholder.com/640x480.png/003388?text=nesciunt', 9, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(36, 'https://via.placeholder.com/640x480.png/00ee00?text=architecto', 9, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(37, 'https://via.placeholder.com/640x480.png/008877?text=incidunt', 10, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(38, 'https://via.placeholder.com/640x480.png/000066?text=omnis', 10, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(39, 'https://via.placeholder.com/640x480.png/0077ff?text=dolorum', 10, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(40, 'https://via.placeholder.com/640x480.png/0022bb?text=ullam', 10, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(41, 'https://via.placeholder.com/640x480.png/008833?text=numquam', 11, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(42, 'https://via.placeholder.com/640x480.png/00ffff?text=inventore', 11, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(43, 'https://via.placeholder.com/640x480.png/0066dd?text=in', 11, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(44, 'https://via.placeholder.com/640x480.png/001133?text=consequuntur', 11, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(45, 'https://via.placeholder.com/640x480.png/00dd44?text=nihil', 12, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(46, 'https://via.placeholder.com/640x480.png/0088ee?text=suscipit', 12, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(47, 'https://via.placeholder.com/640x480.png/008855?text=aliquam', 12, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(48, 'https://via.placeholder.com/640x480.png/00eeaa?text=accusantium', 12, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(49, 'https://via.placeholder.com/640x480.png/00ff77?text=ut', 13, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(50, 'https://via.placeholder.com/640x480.png/001100?text=possimus', 13, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(51, 'https://via.placeholder.com/640x480.png/00aa33?text=sed', 13, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(52, 'https://via.placeholder.com/640x480.png/004444?text=incidunt', 13, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(53, 'https://via.placeholder.com/640x480.png/00ff77?text=eum', 14, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(54, 'https://via.placeholder.com/640x480.png/0066cc?text=inventore', 14, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(55, 'https://via.placeholder.com/640x480.png/00cc33?text=tenetur', 14, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(56, 'https://via.placeholder.com/640x480.png/0022ee?text=quia', 14, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(57, 'https://via.placeholder.com/640x480.png/0055bb?text=eligendi', 15, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(58, 'https://via.placeholder.com/640x480.png/0099ee?text=iure', 15, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(59, 'https://via.placeholder.com/640x480.png/0066bb?text=similique', 15, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(60, 'https://via.placeholder.com/640x480.png/0000bb?text=rem', 15, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(61, 'https://via.placeholder.com/640x480.png/00aadd?text=vero', 16, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(62, 'https://via.placeholder.com/640x480.png/004444?text=provident', 16, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(63, 'https://via.placeholder.com/640x480.png/00ccff?text=dolorum', 16, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(64, 'https://via.placeholder.com/640x480.png/002211?text=libero', 16, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(65, 'https://via.placeholder.com/640x480.png/00ee99?text=accusantium', 17, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(66, 'https://via.placeholder.com/640x480.png/00aabb?text=ut', 17, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(67, 'https://via.placeholder.com/640x480.png/000000?text=sapiente', 17, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(68, 'https://via.placeholder.com/640x480.png/00bb88?text=non', 17, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(69, 'https://via.placeholder.com/640x480.png/0000ee?text=aperiam', 18, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(70, 'https://via.placeholder.com/640x480.png/0066ff?text=nulla', 18, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(71, 'https://via.placeholder.com/640x480.png/00ff11?text=quod', 18, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(72, 'https://via.placeholder.com/640x480.png/00dd44?text=aliquid', 18, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(73, 'https://via.placeholder.com/640x480.png/005555?text=blanditiis', 19, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(74, 'https://via.placeholder.com/640x480.png/00ddbb?text=debitis', 19, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(75, 'https://via.placeholder.com/640x480.png/0055bb?text=provident', 19, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(76, 'https://via.placeholder.com/640x480.png/00ddbb?text=eum', 19, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(77, 'https://via.placeholder.com/640x480.png/0066ff?text=quae', 20, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(78, 'https://via.placeholder.com/640x480.png/00dddd?text=qui', 20, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(79, 'https://via.placeholder.com/640x480.png/001144?text=a', 20, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(80, 'https://via.placeholder.com/640x480.png/0066aa?text=sunt', 20, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(81, 'https://via.placeholder.com/640x480.png/002244?text=commodi', 21, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(82, 'https://via.placeholder.com/640x480.png/00ddee?text=at', 21, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(83, 'https://via.placeholder.com/640x480.png/00bb66?text=architecto', 21, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(84, 'https://via.placeholder.com/640x480.png/004422?text=ab', 21, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(85, 'https://via.placeholder.com/640x480.png/00aa22?text=fugit', 22, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(86, 'https://via.placeholder.com/640x480.png/009900?text=earum', 22, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(87, 'https://via.placeholder.com/640x480.png/004400?text=voluptatum', 22, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(88, 'https://via.placeholder.com/640x480.png/0044ee?text=qui', 22, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(89, 'https://via.placeholder.com/640x480.png/000044?text=repellat', 23, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(90, 'https://via.placeholder.com/640x480.png/00dddd?text=occaecati', 23, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(91, 'https://via.placeholder.com/640x480.png/005599?text=ea', 23, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(92, 'https://via.placeholder.com/640x480.png/008888?text=itaque', 23, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(93, 'https://via.placeholder.com/640x480.png/006699?text=laborum', 24, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(94, 'https://via.placeholder.com/640x480.png/00dd22?text=rerum', 24, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(95, 'https://via.placeholder.com/640x480.png/00aa55?text=odit', 24, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(96, 'https://via.placeholder.com/640x480.png/00ff99?text=aliquam', 24, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(97, 'https://via.placeholder.com/640x480.png/009933?text=officiis', 25, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(98, 'https://via.placeholder.com/640x480.png/00aa66?text=ut', 25, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(99, 'https://via.placeholder.com/640x480.png/0011bb?text=totam', 25, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(100, 'https://via.placeholder.com/640x480.png/00ee22?text=ab', 25, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(101, 'https://via.placeholder.com/640x480.png/0033aa?text=quod', 26, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(102, 'https://via.placeholder.com/640x480.png/00ff22?text=blanditiis', 26, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(103, 'https://via.placeholder.com/640x480.png/007744?text=voluptatem', 26, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(104, 'https://via.placeholder.com/640x480.png/00ee66?text=alias', 26, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(105, 'https://via.placeholder.com/640x480.png/00bb66?text=est', 27, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(106, 'https://via.placeholder.com/640x480.png/00ff66?text=cupiditate', 27, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(107, 'https://via.placeholder.com/640x480.png/00dd22?text=eius', 27, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(108, 'https://via.placeholder.com/640x480.png/007766?text=et', 27, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(109, 'https://via.placeholder.com/640x480.png/00bbbb?text=omnis', 28, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(110, 'https://via.placeholder.com/640x480.png/00aa77?text=nam', 28, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(111, 'https://via.placeholder.com/640x480.png/00cc66?text=inventore', 28, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(112, 'https://via.placeholder.com/640x480.png/00ffcc?text=minus', 28, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(113, 'https://via.placeholder.com/640x480.png/00ff88?text=harum', 29, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(114, 'https://via.placeholder.com/640x480.png/0099aa?text=quidem', 29, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(115, 'https://via.placeholder.com/640x480.png/000099?text=quia', 29, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(116, 'https://via.placeholder.com/640x480.png/00ee00?text=sed', 29, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(117, 'https://via.placeholder.com/640x480.png/00cc11?text=explicabo', 30, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(118, 'https://via.placeholder.com/640x480.png/003322?text=dicta', 30, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(119, 'https://via.placeholder.com/640x480.png/005566?text=error', 30, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(120, 'https://via.placeholder.com/640x480.png/0000aa?text=explicabo', 30, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(121, 'https://via.placeholder.com/640x480.png/005544?text=quidem', 31, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(122, 'https://via.placeholder.com/640x480.png/00ccaa?text=autem', 31, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(123, 'https://via.placeholder.com/640x480.png/00bb66?text=provident', 31, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(124, 'https://via.placeholder.com/640x480.png/0066ee?text=quia', 31, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(125, 'https://via.placeholder.com/640x480.png/009977?text=totam', 32, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(126, 'https://via.placeholder.com/640x480.png/0055dd?text=deleniti', 32, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(127, 'https://via.placeholder.com/640x480.png/0088cc?text=dicta', 32, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(128, 'https://via.placeholder.com/640x480.png/00dd66?text=ratione', 32, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(129, 'https://via.placeholder.com/640x480.png/0066cc?text=eaque', 33, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(130, 'https://via.placeholder.com/640x480.png/001155?text=est', 33, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(131, 'https://via.placeholder.com/640x480.png/000099?text=suscipit', 33, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(132, 'https://via.placeholder.com/640x480.png/006600?text=aut', 33, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(133, 'https://via.placeholder.com/640x480.png/0066bb?text=eum', 34, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(134, 'https://via.placeholder.com/640x480.png/0022cc?text=ab', 34, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(135, 'https://via.placeholder.com/640x480.png/007700?text=ex', 34, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(136, 'https://via.placeholder.com/640x480.png/00dd00?text=assumenda', 34, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(137, 'https://via.placeholder.com/640x480.png/002288?text=accusantium', 35, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(138, 'https://via.placeholder.com/640x480.png/005500?text=rerum', 35, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(139, 'https://via.placeholder.com/640x480.png/00bbee?text=beatae', 35, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(140, 'https://via.placeholder.com/640x480.png/00ffee?text=maiores', 35, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(141, 'https://via.placeholder.com/640x480.png/003344?text=atque', 36, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(142, 'https://via.placeholder.com/640x480.png/005511?text=est', 36, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(143, 'https://via.placeholder.com/640x480.png/00ccdd?text=consequatur', 36, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(144, 'https://via.placeholder.com/640x480.png/0011bb?text=sint', 36, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(145, 'https://via.placeholder.com/640x480.png/00ff22?text=nostrum', 37, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(146, 'https://via.placeholder.com/640x480.png/006600?text=est', 37, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(147, 'https://via.placeholder.com/640x480.png/001100?text=rerum', 37, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(148, 'https://via.placeholder.com/640x480.png/001166?text=consequatur', 37, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(149, 'https://via.placeholder.com/640x480.png/00ee55?text=odio', 38, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(150, 'https://via.placeholder.com/640x480.png/0044cc?text=optio', 38, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(151, 'https://via.placeholder.com/640x480.png/00dd88?text=quo', 38, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(152, 'https://via.placeholder.com/640x480.png/00ff44?text=quaerat', 38, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(153, 'https://via.placeholder.com/640x480.png/0044ee?text=quisquam', 39, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(154, 'https://via.placeholder.com/640x480.png/004444?text=est', 39, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(155, 'https://via.placeholder.com/640x480.png/009977?text=inventore', 39, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(156, 'https://via.placeholder.com/640x480.png/00aa77?text=quis', 39, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(157, 'https://via.placeholder.com/640x480.png/006655?text=quidem', 40, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(158, 'https://via.placeholder.com/640x480.png/00bb77?text=ea', 40, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(159, 'https://via.placeholder.com/640x480.png/00ff44?text=ut', 40, '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(160, 'https://via.placeholder.com/640x480.png/0033ff?text=perspiciatis', 40, '2024-06-04 08:01:39', '2024-06-04 08:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_07_211319_create_products_table', 1),
(6, '2023_06_07_215304_create_images_table', 1),
(7, '2023_06_13_125017_create_orders_table', 1),
(8, '2023_06_13_131355_create_orderitams_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderitams`
--

CREATE TABLE `orderitams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` enum('pending','processing','completed','cancelled') NOT NULL DEFAULT 'pending',
  `address` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `brand`, `description`, `price`, `in_stock`, `gender`, `created_at`, `updated_at`) VALUES
(1, 'ANH1', 'Anh1', 'Reprehenderit aut odit laborum enim rem itaque. Aut neque atque sunt nostrum natus est. Quisquam sed nesciunt aut quia consequatur doloribus.', 15.22, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(2, 'Prof. Kendall Gerlach V', 'Bernier, Hammes and Rohan', 'Sunt dolor dicta nihil qui ea. Esse ut ratione aut voluptatem dolor. Delectus et non tenetur. Hic nam nam qui ab sit.', 56.53, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(3, 'Leone Casper', 'Cassin Ltd', 'Et repellendus reprehenderit labore molestias et atque officia. Iusto amet dolorum et quisquam.', 80.89, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(4, 'Marietta O\'Conner Jr.', 'Keebler, Spencer and Shanahan', 'Nostrum voluptates exercitationem libero. Sint recusandae aut architecto est ipsa. Omnis consequatur eum ducimus in et.', 23.43, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(5, 'Miss Arlie Jakubowski DDS', 'Wyman LLC', 'Eaque doloremque voluptas dolores non voluptatum. Eum perferendis et quidem vitae. Est praesentium quis aut adipisci distinctio.', 16.89, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(6, 'Skyla Ritchie', 'Koch, Dach and Cassin', 'Dignissimos sed corporis natus ut. Sapiente illum ut est et qui excepturi cum. Id repudiandae maiores velit ipsam quaerat quia recusandae.', 73.01, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(7, 'Devonte Kemmer', 'Bashirian-Cronin', 'Magnam qui eveniet reprehenderit officiis laboriosam cumque optio. Nemo voluptatem non non autem. Nihil sed ullam voluptatem sapiente animi quos. Iusto animi repellendus odio dignissimos.', 53.59, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(8, 'Regan Gislason', 'Adams, Cummings and Hoppe', 'Et cupiditate sint dolores et similique harum molestias delectus. Sit non rerum minus enim. Nam quo est eos distinctio.', 84.30, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(9, 'Louisa Stark DVM', 'Lynch-Parisian', 'Nulla voluptas vero est sunt consequatur dolor. Quas blanditiis voluptatem quaerat cumque eos.', 51.51, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(10, 'Estella McDermott III', 'Bartoletti Inc', 'Hic minima recusandae molestias provident tenetur. Et rerum nihil pariatur et voluptas asperiores. Similique possimus qui sint explicabo quia. Qui vel dolorem optio odit.', 49.83, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(11, 'Tristian Wisozk', 'Parisian-Schimmel', 'Voluptatibus enim aut tempora autem dolores perspiciatis nihil minima. Tenetur veritatis perspiciatis cum dignissimos qui in. Eum quasi reiciendis voluptatibus et.', 4.01, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(12, 'Rory Jaskolski', 'Stoltenberg-Gibson', 'Doloribus cupiditate numquam voluptatibus. Voluptas hic vero aliquam delectus totam sit quae optio. Quisquam sit eveniet aut. Vitae reprehenderit saepe quisquam et. Neque impedit vel amet unde.', 9.39, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(13, 'Ezra O\'Connell MD', 'Morissette, Runolfsson and Luettgen', 'Cumque corrupti aut consectetur laborum. Temporibus eum unde qui voluptas sed voluptatem. Sequi distinctio aperiam qui pariatur quae. Qui eos libero quis in minima minima laudantium.', 3.75, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(14, 'Raul Gibson', 'Brakus-Reilly', 'Sed quaerat maiores dolorem occaecati maiores. Consequatur debitis ut qui. In rerum consequuntur illo rerum dolorum rerum. Vel et commodi consequatur totam.', 91.01, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(15, 'Adolphus Mraz DDS', 'Crist-Wisozk', 'Id eligendi quod quo. Et necessitatibus vel aut molestias est optio praesentium. Natus molestiae ut ipsa fugit. Eaque velit aut est inventore et. Provident inventore fugit architecto praesentium.', 26.21, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(16, 'Joe Prohaska', 'Mills, Bogan and Leuschke', 'Neque qui qui dolore. Ut cupiditate laborum laboriosam ab. Ut repellendus fugit fugiat error. Sit nihil quis amet beatae vitae occaecati.', 44.90, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(17, 'Nicklaus Dare', 'Kshlerin PLC', 'Est quam dolor nihil et pariatur. Totam voluptates et fuga. Ad nostrum qui facere et. Quaerat culpa nam molestias est. Fugiat enim qui esse in.', 50.85, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(18, 'Dallin Swift', 'Spinka, Schumm and Becker', 'Qui facilis maxime voluptas facere. Quis qui id vel accusamus. Molestias molestiae nihil ut minima corporis voluptas veniam qui.', 22.22, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(19, 'Dion Cremin MD', 'Armstrong, Gleichner and Casper', 'Aspernatur dolore repellat dolorum rerum asperiores vel et. Laborum vitae placeat ea error vero asperiores.', 60.93, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(20, 'Gussie Greenholt', 'Schroeder, Schuster and Donnelly', 'Est sed sunt vel consequatur dolores molestias praesentium voluptas. Dolorum ad ipsam enim ducimus est esse. Accusantium autem neque ullam at excepturi.', 69.08, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(21, 'Ray Beer', 'Rice-Stark', 'Est aut repudiandae natus sit corporis quos. Rerum qui officia totam. Aut aut est voluptate harum exercitationem praesentium.', 5.49, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(22, 'Prof. Ephraim Torp V', 'Ferry-Ratke', 'Autem saepe quam sint et non harum id. Autem error qui molestiae cum deserunt at unde. Ut est debitis non et soluta et. Totam reiciendis voluptatem quam suscipit.', 27.59, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(23, 'Dr. Kaley Crooks', 'Kemmer Inc', 'Aut eum sint ratione iusto qui eaque. Veritatis ut quibusdam quis impedit neque nesciunt. Quia id porro rerum atque sit. Ipsum ut in provident.', 77.08, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(24, 'Juwan Koepp', 'Corwin Group', 'Ex dolorem quia omnis recusandae. Illo et qui et similique consequuntur culpa. Sapiente iste sint corporis laboriosam.', 81.05, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(25, 'Flo Bartoletti', 'Heller-Halvorson', 'Officia eos debitis beatae dolorem ducimus facere. Dolorem aut labore praesentium at eos. Amet est suscipit nam accusantium. Dolorum vel inventore placeat.', 28.56, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(26, 'Hellen Corwin', 'Purdy, Padberg and Turcotte', 'Et eligendi ex ab sed molestiae maiores. Delectus nihil provident consequatur qui. Consequuntur optio non harum pariatur. Ut unde provident non dolorem.', 32.39, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(27, 'Mr. Barton Gutkowski V', 'Lubowitz Ltd', 'Aut nam incidunt nisi debitis saepe. Quisquam accusamus velit voluptatem non quasi cumque esse. Et et dolores distinctio. Similique aut aperiam ad omnis adipisci.', 3.44, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(28, 'Devin Rohan', 'Adams Group', 'Quas odio eos tempora suscipit beatae non. Quisquam sit blanditiis sunt et quo fugiat. Ea eos consequatur nihil consequatur atque.', 51.21, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(29, 'Virginie Daniel PhD', 'Schaefer-Hahn', 'Ipsam consequatur optio voluptatem numquam velit. Repellendus temporibus cumque nulla excepturi harum et.', 91.63, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(30, 'Dr. Luna Cronin PhD', 'Gleichner, Keebler and Bergnaum', 'Libero hic et nobis sunt eaque qui. Voluptas at est unde aperiam temporibus. Neque asperiores nihil qui quae minima. Voluptatem sequi est at id unde.', 65.57, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(31, 'Shayna Hilpert', 'Abbott, Emmerich and Stark', 'Qui expedita inventore eius dolorem eaque quasi. Aperiam nihil iusto magni tempore enim ut nobis. Magnam neque quia voluptatem eveniet.', 13.93, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(32, 'Jermaine Senger', 'Bergstrom, Senger and Roberts', 'Qui voluptas officia officia nulla fuga ullam ipsa. Aliquid recusandae blanditiis minima quis. Natus at et libero dolores. Praesentium officia aut culpa voluptas aut aut animi.', 67.37, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(33, 'Delaney Schmitt', 'Rolfson and Sons', 'Qui nesciunt illum modi porro vel totam modi. Error sit repellat rerum tenetur. Facilis nesciunt suscipit perferendis hic aut.', 78.49, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(34, 'Fermin Hettinger', 'Cronin-Wilkinson', 'Eveniet inventore voluptatem est nulla quasi maxime. Itaque voluptatem harum dolor occaecati. Omnis vero libero suscipit atque asperiores minima. Quia in est ut nam non eos dolores.', 25.64, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(35, 'Mr. Clint Kris Jr.', 'Schultz-Kassulke', 'Quibusdam in explicabo aliquid est qui eius. Architecto numquam libero quam quis consequatur quam. Facilis et totam repellendus dicta totam optio molestiae.', 4.17, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(36, 'Anjali Hill DVM', 'Breitenberg-Rogahn', 'Deleniti dolor esse labore impedit quasi sed eaque. Debitis corporis molestiae quis at ut explicabo. Deserunt architecto corporis sit maxime. Eum tempore animi dolor vel voluptatem voluptatum.', 62.22, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(37, 'Prof. Kaylee Mann', 'Romaguera-Hirthe', 'Facilis cumque cumque earum ipsam molestias. Et consequatur explicabo et ratione modi. Magni earum cumque voluptatem numquam necessitatibus.', 56.74, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(38, 'Dr. Jed D\'Amore IV', 'Satterfield Inc', 'Soluta aliquid qui consectetur maxime dolor quis quasi rem. Soluta voluptas aut voluptates maiores. Quia odio consequatur est quia dolores.', 41.87, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(39, 'Dr. Annabel Crist IV', 'Hammes PLC', 'Odit enim aut voluptatem repellendus quibusdam reiciendis consequatur. Vitae consequuntur aspernatur et praesentium unde. Natus deserunt quos consequatur eos ad omnis.', 3.41, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39'),
(40, 'Tracey Hammes', 'Witting-Murazik', 'Quasi ducimus sed voluptas. Voluptates sed animi perspiciatis a rem. Voluptate fugiat quo consectetur dicta. Suscipit labore at temporibus.', 28.96, 1, 'male', '2024-06-04 08:01:39', '2024-06-04 08:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2024-06-04 08:01:39', '$2y$10$bJi/BE6vLdPJQvtNz5EYH.nCwVngi.nz9cWSoeWMZgoSqojK4LDUC', 1234567890, 'eIbwZdAZyP', '2024-06-04 08:01:39', '2024-06-04 08:01:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitams`
--
ALTER TABLE `orderitams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orderitams`
--
ALTER TABLE `orderitams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
