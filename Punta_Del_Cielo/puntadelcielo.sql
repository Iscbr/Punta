-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-07-2018 a las 21:08:50
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `puntadelcielo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodega`
--

CREATE TABLE `bodega` (
  `id_producto` int(11) NOT NULL,
  `no_productos` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bodega`
--

INSERT INTO `bodega` (`id_producto`, `no_productos`) VALUES
(97, 123),
(98, 45),
(99, 23),
(100, 11),
(101, 34),
(102, 56),
(103, 40),
(104, 10),
(105, 33),
(106, 81),
(107, 36),
(108, 23),
(109, 62),
(110, 28),
(111, 76),
(112, 37),
(113, 96),
(114, 32),
(115, 49),
(116, 34),
(117, 23),
(118, 45),
(119, 20),
(120, 34),
(121, 27),
(122, 37),
(123, 52),
(124, 37),
(125, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id_producto` int(11) DEFAULT NULL,
  `no_productos` int(11) DEFAULT NULL,
  `total_compra` float DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `noTrabajador` varchar(5) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id_producto`, `no_productos`, `total_compra`, `id_cliente`, `noTrabajador`, `fecha`) VALUES
(1, 1, 18, 1, '', '0000-00-00'),
(33, 1, 16, 1, '', '0000-00-00'),
(94, 1, 28, 1, '', '0000-00-00'),
(92, 2, 56, 2, '', '0000-00-00'),
(82, 1, 34, 3, '', '0000-00-00'),
(76, 3, 108, 3, '', '0000-00-00'),
(22, 1, 34, 4, '', '0000-00-00'),
(11, 1, 34, 4, '', '0000-00-00'),
(90, 1, 39, 4, '', '0000-00-00'),
(56, 1, 33, 4, '', '0000-00-00'),
(3, 4, 100, 5, '', '0000-00-00'),
(80, 1, 22, 5, '', '0000-00-00'),
(60, 2, 66, 5, '', '0000-00-00'),
(5, 1, 27, 6, '', '0000-00-00'),
(7, 2, 58, 6, '', '0000-00-00'),
(55, 2, 76, 7, '', '0000-00-00'),
(32, 1, 36, 7, '', '0000-00-00'),
(67, 1, 38, 7, '', '0000-00-00'),
(78, 1, 36, 7, '', '0000-00-00'),
(43, 1, 21, 7, '', '0000-00-00'),
(3, 1, 25, 7, '', '0000-00-00'),
(64, 1, 19, 7, '', '0000-00-00'),
(1, 1, 18, 7, '', '0000-00-00'),
(7, 1, 29, 7, '', '0000-00-00'),
(9, 1, 27, 7, '', '0000-00-00'),
(3, 3, 75, 8, '', '0000-00-00'),
(10, 1, 32, 9, '', '0000-00-00'),
(95, 3, 48, 9, '', '0000-00-00'),
(8, 1, 2, 9, '', '0000-00-00'),
(82, 6, 204, 10, '', '0000-00-00'),
(22, 2, 68, 10, '', '0000-00-00'),
(66, 1, 34, 11, '', '0000-00-00'),
(30, 2, 60, 11, '', '0000-00-00'),
(59, 1, 37, 11, '', '0000-00-00'),
(44, 2, 48, 11, '', '0000-00-00'),
(91, 1, 42, 12, '', '0000-00-00'),
(4, 1, 29, 12, '', '0000-00-00'),
(88, 2, 72, 12, '', '0000-00-00'),
(12, 1, 28, 13, '', '0000-00-00'),
(77, 2, 82, 13, '', '0000-00-00'),
(29, 1, 47, 13, '', '0000-00-00'),
(62, 1, 36, 13, '', '0000-00-00'),
(50, 1, 26, 14, '', '0000-00-00'),
(33, 1, 16, 14, '', '0000-00-00'),
(48, 2, 36, 15, '', '0000-00-00'),
(60, 1, 33, 15, '', '0000-00-00'),
(88, 9, 324, 15, '', '0000-00-00'),
(96, 3, 81, 16, '', '0000-00-00'),
(8, 1, 2, 16, '', '0000-00-00'),
(13, 1, 31, 17, '', '0000-00-00'),
(12, 2, 56, 17, '', '0000-00-00'),
(53, 1, 29, 17, '', '0000-00-00'),
(22, 1, 34, 18, '', '0000-00-00'),
(33, 1, 16, 18, '', '0000-00-00'),
(24, 1, 33, 18, '', '0000-00-00'),
(9, 1, 27, 19, '', '0000-00-00'),
(14, 1, 34, 19, '', '0000-00-00'),
(21, 1, 30, 19, '', '0000-00-00'),
(94, 2, 56, 19, '', '0000-00-00'),
(16, 1, 30, 19, '', '0000-00-00'),
(13, 2, 62, 19, '', '0000-00-00'),
(20, 4, 132, 20, '', '0000-00-00'),
(45, 2, 68, 21, '', '0000-00-00'),
(58, 1, 33, 21, '', '0000-00-00'),
(91, 3, 126, 21, '', '0000-00-00'),
(88, 1, 36, 21, '', '0000-00-00'),
(34, 2, 38, 21, '', '0000-00-00'),
(12, 2, 56, 21, '', '0000-00-00'),
(76, 2, 72, 22, '', '0000-00-00'),
(35, 1, 23, 22, '', '0000-00-00'),
(79, 1, 40, 22, '', '0000-00-00'),
(44, 1, 24, 22, '', '0000-00-00'),
(52, 2, 38, 22, '', '0000-00-00'),
(23, 1, 38, 23, '', '0000-00-00'),
(14, 2, 68, 23, '', '0000-00-00'),
(37, 1, 22, 23, '', '0000-00-00'),
(48, 2, 36, 23, '', '0000-00-00'),
(56, 1, 33, 24, '', '0000-00-00'),
(67, 1, 38, 24, '', '0000-00-00'),
(72, 2, 64, 24, '', '0000-00-00'),
(82, 1, 34, 24, '', '0000-00-00'),
(92, 3, 84, 24, '', '0000-00-00'),
(3, 1, 25, 24, '', '0000-00-00'),
(11, 2, 68, 25, '', '0000-00-00'),
(22, 1, 34, 25, '', '0000-00-00'),
(31, 2, 66, 25, '', '0000-00-00'),
(41, 2, 48, 25, '', '0000-00-00'),
(52, 1, 19, 26, '', '0000-00-00'),
(61, 2, 76, 26, '', '0000-00-00'),
(73, 1, 36, 26, '', '0000-00-00'),
(81, 2, 50, 27, '', '0000-00-00'),
(95, 2, 32, 27, '', '0000-00-00'),
(7, 1, 29, 27, '', '0000-00-00'),
(19, 1, 20, 27, '', '0000-00-00'),
(23, 2, 76, 27, '', '0000-00-00'),
(33, 1, 16, 28, '', '0000-00-00'),
(46, 2, 74, 28, '', '0000-00-00'),
(53, 1, 29, 28, '', '0000-00-00'),
(66, 1, 34, 29, '', '0000-00-00'),
(77, 2, 82, 29, '', '0000-00-00'),
(88, 1, 36, 29, '', '0000-00-00'),
(94, 2, 56, 29, '', '0000-00-00'),
(9, 2, 54, 30, '', '0000-00-00'),
(14, 1, 34, 30, '', '0000-00-00'),
(22, 2, 68, 30, '', '0000-00-00'),
(32, 1, 36, 31, '', '0000-00-00'),
(45, 2, 68, 31, '', '0000-00-00'),
(52, 2, 38, 31, '', '0000-00-00'),
(67, 1, 38, 31, '', '0000-00-00'),
(78, 1, 36, 31, '', '0000-00-00'),
(83, 2, 76, 31, '', '0000-00-00'),
(92, 1, 28, 32, '', '0000-00-00'),
(6, 1, 33, 32, '', '0000-00-00'),
(19, 1, 20, 32, '', '0000-00-00'),
(23, 1, 38, 32, '', '0000-00-00'),
(37, 2, 44, 33, '', '0000-00-00'),
(48, 1, 18, 33, '', '0000-00-00'),
(57, 2, 78, 33, '', '0000-00-00'),
(62, 1, 36, 33, '', '0000-00-00'),
(72, 1, 32, 34, '', '0000-00-00'),
(83, 1, 38, 34, '', '0000-00-00'),
(96, 1, 27, 34, '', '0000-00-00'),
(7, 1, 29, 34, '', '0000-00-00'),
(17, 1, 33, 35, '', '0000-00-00'),
(100, 1, 106, 35, '', '0000-00-00'),
(10, 1, 32, 35, '', '0000-00-00'),
(20, 2, 66, 35, '', '0000-00-00'),
(30, 2, 60, 36, '', '0000-00-00'),
(40, 1, 21, 36, '', '0000-00-00'),
(50, 2, 52, 36, '', '0000-00-00'),
(60, 2, 66, 36, '', '0000-00-00'),
(70, 1, 34, 37, '', '0000-00-00'),
(80, 1, 22, 37, '', '0000-00-00'),
(90, 1, 39, 37, '', '0000-00-00'),
(122, 1, 109, 37, '', '0000-00-00'),
(49, 1, 28, 37, '', '0000-00-00'),
(53, 2, 58, 38, '', '0000-00-00'),
(64, 1, 19, 38, '', '0000-00-00'),
(77, 2, 82, 38, '', '0000-00-00'),
(85, 2, 50, 38, '', '0000-00-00'),
(95, 1, 16, 39, '', '0000-00-00'),
(107, 1, 144, 39, '', '0000-00-00'),
(8, 2, 4, 39, '', '0000-00-00'),
(18, 1, 25, 39, '', '0000-00-00'),
(29, 1, 47, 39, '', '0000-00-00'),
(33, 1, 16, 40, '', '0000-00-00'),
(123, 1, 109, 40, '', '0000-00-00'),
(47, 1, 40, 40, '', '0000-00-00'),
(52, 2, 38, 40, '', '0000-00-00'),
(88, 3, 108, 40, '', '0000-00-00'),
(3, 1, 25, 41, '', '0000-00-00'),
(18, 3, 75, 42, '', '0000-00-00'),
(5, 1, 27, 42, '', '0000-00-00'),
(19, 2, 40, 42, '', '0000-00-00'),
(78, 6, 216, 43, '', '0000-00-00'),
(5, 1, 27, 44, '', '0000-00-00'),
(8, 1, 2, 44, '', '0000-00-00'),
(9, 3, 81, 45, '', '0000-00-00'),
(89, 5, 195, 46, '', '0000-00-00'),
(43, 2, 42, 46, '', '0000-00-00'),
(21, 5, 150, 47, '', '0000-00-00'),
(124, 1, 109, 48, '', '0000-00-00'),
(12, 3, 84, 49, '', '0000-00-00'),
(61, 5, 190, 50, '', '0000-00-00'),
(79, 2, 80, 51, '', '0000-00-00'),
(69, 5, 185, 52, '', '0000-00-00'),
(13, 5, 155, 53, '', '0000-00-00'),
(20, 7, 231, 54, '', '0000-00-00'),
(45, 3, 102, 55, '', '0000-00-00'),
(46, 4, 148, 55, '', '0000-00-00'),
(81, 5, 125, 56, '', '0000-00-00'),
(59, 3, 111, 57, '', '0000-00-00'),
(33, 4, 64, 58, '', '0000-00-00'),
(35, 2, 46, 59, '', '0000-00-00'),
(38, 2, 50, 60, '', '0000-00-00'),
(95, 2, 32, 60, '', '0000-00-00'),
(63, 3, 117, 62, '', '0000-00-00'),
(51, 1, 30, 62, '', '0000-00-00'),
(38, 2, 50, 63, '', '0000-00-00'),
(3, 1, 25, 63, '', '0000-00-00'),
(6, 1, 33, 63, '', '0000-00-00'),
(9, 1, 27, 63, '', '0000-00-00'),
(18, 2, 50, 64, '', '0000-00-00'),
(2, 1, 25, 64, '', '0000-00-00'),
(4, 1, 29, 64, '', '0000-00-00'),
(6, 1, 33, 65, '', '0000-00-00'),
(24, 1, 33, 65, '', '0000-00-00'),
(33, 2, 32, 65, '', '0000-00-00'),
(90, 3, 117, 66, '', '0000-00-00'),
(13, 3, 93, 67, '', '0000-00-00'),
(17, 2, 66, 67, '', '0000-00-00'),
(21, 2, 60, 67, '', '0000-00-00'),
(26, 4, 156, 68, '', '0000-00-00'),
(31, 3, 99, 69, '', '0000-00-00'),
(33, 5, 80, 70, '', '0000-00-00'),
(1, 1, 18, 70, '', '0000-00-00'),
(9, 1, 27, 70, '', '0000-00-00'),
(13, 1, 31, 71, '', '0000-00-00'),
(4, 1, 29, 72, '', '0000-00-00'),
(30, 1, 30, 72, '', '0000-00-00'),
(15, 1, 27, 73, '', '0000-00-00'),
(23, 1, 38, 73, '', '0000-00-00'),
(1, 1, 18, 86, '', '0000-00-00'),
(1, 1, 18, 86, '', '0000-00-00'),
(7, 1, 29, 88, '', '0000-00-00'),
(5, 1, 27, 89, '', '0000-00-00'),
(14, 1, 34, 89, '', '0000-00-00'),
(12, 1, 28, 89, '', '0000-00-00'),
(9, 2, 54, 90, '', '0000-00-00'),
(16, 1, 30, 91, '', '0000-00-00'),
(1, 3, 54, 91, '', '0000-00-00'),
(1, 1, 18, 92, '', '0000-00-00'),
(25, 2, 74, 92, '', '0000-00-00'),
(23, 3, 114, 93, '', '0000-00-00'),
(24, 1, 33, 94, '', '0000-00-00'),
(17, 3, 99, 94, '', '0000-00-00'),
(20, 5, 165, 95, '', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_de_compra`
--

CREATE TABLE `detalle_de_compra` (
  `id_cliente` int(11) NOT NULL,
  `no_productos` int(11) DEFAULT NULL,
  `id_sucursal` int(11) DEFAULT NULL,
  `precio_total` float DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle_de_compra`
--

INSERT INTO `detalle_de_compra` (`id_cliente`, `no_productos`, `id_sucursal`, `precio_total`, `fecha`) VALUES
(1, 3, 10, 62, '2017-01-06 10:14:00'),
(2, 2, 30, 56, '2017-01-06 09:18:00'),
(3, 4, 80, 142, '2017-01-12 10:29:00'),
(4, 4, 50, 140, '2017-01-16 10:34:00'),
(5, 7, 60, 188, '2017-01-23 10:44:00'),
(6, 3, 80, 85, '2017-01-26 10:46:00'),
(7, 11, 50, 325, '2017-02-06 10:50:00'),
(8, 3, 70, 75, '2017-02-06 14:14:00'),
(9, 5, 20, 82, '2017-02-21 15:33:00'),
(10, 8, 30, 272, '2017-02-26 18:29:00'),
(11, 6, 30, 179, '2017-03-06 18:14:00'),
(12, 4, 40, 143, '2017-03-08 13:47:00'),
(13, 5, 60, 193, '2017-03-15 21:13:00'),
(14, 2, 10, 42, '2017-04-06 11:14:00'),
(15, 12, 40, 393, '2017-04-19 20:41:00'),
(16, 4, 30, 83, '2017-04-24 22:31:00'),
(17, 4, 40, 116, '2017-03-03 18:24:00'),
(18, 3, 20, 83, '2017-03-06 20:54:00'),
(19, 8, 30, 239, '2017-04-24 21:00:00'),
(20, 4, 70, 132, '2017-04-03 22:50:00'),
(21, 11, 40, 357, '2017-04-16 23:07:00'),
(22, 7, 30, 197, '2017-03-18 10:14:00'),
(23, 6, 20, 164, '2017-05-15 08:02:00'),
(24, 9, 10, 278, '2017-05-15 10:22:00'),
(25, 7, 50, 216, '2017-05-23 14:54:00'),
(26, 4, 30, 131, '2017-06-04 18:00:00'),
(27, 8, 20, 207, '2017-06-17 10:14:00'),
(28, 4, 40, 119, '2017-06-24 17:44:00'),
(29, 6, 60, 208, '2017-06-24 17:54:00'),
(30, 5, 60, 156, '2017-07-04 19:20:00'),
(31, 9, 20, 292, '2017-07-08 21:55:00'),
(32, 4, 40, 119, '2017-07-12 22:34:00'),
(33, 6, 60, 176, '2017-07-23 13:02:00'),
(34, 4, 70, 126, '2017-07-27 12:09:00'),
(35, 5, 30, 237, '2017-08-04 13:55:00'),
(36, 7, 20, 199, '2017-08-06 10:38:00'),
(37, 5, 30, 232, '2017-08-12 17:15:00'),
(38, 7, 10, 209, '2017-08-16 20:11:00'),
(39, 6, 40, 236, '2017-08-23 07:24:00'),
(40, 8, 10, 311, '2017-08-29 10:38:00'),
(41, 1, 50, 25, '2017-09-06 14:09:00'),
(42, 6, 70, 142, '2017-09-10 16:27:00'),
(43, 6, 30, 216, '2017-09-14 21:03:00'),
(44, 2, 60, 29, '2017-09-18 17:12:00'),
(45, 3, 80, 81, '2017-09-23 17:12:00'),
(46, 7, 20, 237, '2017-09-27 07:01:00'),
(47, 5, 80, 150, '2017-10-06 16:20:00'),
(48, 1, 30, 109, '2017-10-09 21:00:00'),
(49, 3, 80, 84, '2017-10-18 08:25:00'),
(50, 5, 10, 190, '2017-10-23 12:30:00'),
(51, 2, 80, 80, '2017-11-06 11:34:00'),
(52, 5, 20, 185, '2017-11-09 14:21:00'),
(53, 5, 70, 155, '2017-11-13 09:28:00'),
(54, 7, 30, 231, '2017-11-17 17:02:00'),
(55, 7, 60, 250, '2017-11-19 16:04:00'),
(56, 5, 40, 125, '2017-11-21 12:50:00'),
(57, 3, 50, 111, '2017-11-29 11:11:00'),
(58, 4, 70, 64, '2017-12-04 22:05:00'),
(59, 2, 40, 46, '2017-12-10 23:07:00'),
(60, 4, 20, 82, '2017-12-14 21:27:00'),
(61, 0, 30, 0, '2017-12-16 11:47:00'),
(62, 4, 60, 147, '2017-12-18 23:40:00'),
(63, 5, 80, 135, '2017-12-21 10:12:00'),
(64, 4, 50, 104, '2017-12-24 16:33:00'),
(65, 4, 10, 98, '2017-12-27 11:01:00'),
(66, 3, 30, 117, '2017-05-04 22:44:00'),
(67, 7, 50, 219, '2017-12-28 18:55:00'),
(68, 4, 60, 156, '2017-12-28 20:15:00'),
(69, 3, 80, 99, '2017-12-31 19:39:00'),
(70, 5, 20, 80, '2017-12-31 11:08:00'),
(71, 1, 10, 31, '2017-11-28 15:53:33'),
(72, 2, 60, 59, '2017-11-28 17:25:40'),
(73, 2, 70, 65, '2017-11-28 19:10:28'),
(74, 0, 60, 0, '2017-11-29 12:36:12'),
(75, 0, 60, 0, '2017-11-29 12:39:25'),
(76, 0, 60, 0, '2017-11-29 12:40:44'),
(77, 0, 60, 0, '2017-11-29 12:41:25'),
(78, 0, 60, 0, '2017-11-29 12:41:29'),
(79, 0, 60, 0, '2017-11-29 12:42:23'),
(80, 0, 60, 0, '2017-11-29 12:42:26'),
(81, 0, 60, 0, '2017-11-29 12:42:34'),
(82, 0, 60, 0, '2017-11-29 12:43:04'),
(83, 0, 60, 0, '2017-11-29 12:43:50'),
(84, 0, 60, 0, '2017-11-29 12:44:12'),
(85, 0, 60, 0, '2017-11-29 12:44:38'),
(86, 2, 60, 36, '2017-11-29 12:44:45'),
(87, 0, 60, 0, '2017-11-29 12:59:01'),
(88, 1, 60, 29, '2017-11-29 12:59:08'),
(89, 3, 20, 89, '2017-11-29 13:36:53'),
(90, 2, 70, 54, '2018-05-29 21:48:35'),
(91, 4, 10, 84, '2018-05-30 16:45:35'),
(92, 3, 10, 92, '2018-05-30 16:49:01'),
(93, 3, 10, 114, '2018-05-30 16:52:42'),
(94, 4, 10, 132, '2018-06-05 11:53:49'),
(95, 5, 10, 165, '2018-06-05 12:09:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `tamanio` varchar(3) DEFAULT NULL,
  `codigo_barra` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `precio`, `descripcion`, `tamanio`, `codigo_barra`) VALUES
(1, 'Espresso', 18, 'Bebida caliente', 'S', NULL),
(2, 'Espresso', 25, 'Bebida caliente', 'D', NULL),
(3, 'Espresso Cubano', 25, 'Espresso con azúcar', 'S', NULL),
(4, 'Espresso Cubano', 29, 'Espresso con azúcar', 'D', NULL),
(5, 'Espresso moka', 27, 'Espresso con chocolate', 'S', NULL),
(6, 'Espresso moka', 33, 'Espresso con chocolate', 'D', NULL),
(7, 'Dulce de espresso ', 29, 'Bebida caliente', 'D', NULL),
(8, 'Espresso cortado', 2, 'El espresso de tu elección más un toque de leche', 'S', NULL),
(9, 'Capuccino', 27, 'Café espresso con leche al vapor y espuma', 'R', NULL),
(10, 'Capuccino', 32, 'Café espresso con leche al vapor y espuma', 'M', NULL),
(11, 'Capuccino', 34, 'Café espresso con leche al vapor y espuma', 'G', NULL),
(12, 'Café latte', 28, 'Café espresso con leche al vapor', 'R', NULL),
(13, 'Café latte', 31, 'Café espresso con leche al vapor', 'M', NULL),
(14, 'Café latte', 34, 'Café espresso con leche al vapor', 'G', NULL),
(15, 'Au lait', 27, 'Café americano con espuma de leche', 'R', NULL),
(16, 'Au lait', 30, 'Café americano con espuma de leche', 'M', NULL),
(17, 'Au lait', 33, 'Café americano con espuma de leche', 'G', NULL),
(18, 'Espresso corto', 25, 'Espresso doble concentrado', 'R', NULL),
(19, 'Espresso largo', 20, 'Espresso sencillo suave', 'R', NULL),
(20, 'Café de olla', 33, 'Bebida caliente', 'M', NULL),
(21, 'Moka Chocolate Oaxaca', 30, 'Bebidas Calientes', 'R', NULL),
(22, 'Moka Chocolate Oaxaca', 34, 'Bebidas Calientes', 'M', NULL),
(23, 'Moka Chocolate Oaxaca', 38, 'Bebidas Calientes', 'G', NULL),
(24, 'Moka Chocolate Blanco', 33, 'Bebidas Calientes', 'R', NULL),
(25, 'Moka Chocolate Blanco', 37, 'Bebidas Calientes', 'M', NULL),
(26, 'Moka Chocolate Blanco', 39, 'Bebidas Calientes', 'G', NULL),
(27, 'Chocolate Oaxaca (barra)', 37, 'Bebidas Calientes', 'R', NULL),
(28, 'Chocolate Oaxaca (barra)', 42, 'Bebidas Calientes', 'M', NULL),
(29, 'Chocolate Oaxaca (barra)', 47, 'Bebidas Calientes', 'G', NULL),
(30, 'Chocolate Caliente', 30, 'Bebidas Calientes', 'R', NULL),
(31, 'Chocolate Caliente', 33, 'Bebidas Calientes', 'M', NULL),
(32, 'Chocolate Caliente', 36, 'Bebidas Calientes', 'G', NULL),
(33, 'Americano del dia', 16, 'Bebidas Calientes', 'R', NULL),
(34, 'Americano del dia', 19, 'Bebidas Calientes', 'M', NULL),
(35, 'Americano del dia', 23, 'Bebidas Calientes', 'G', NULL),
(36, 'Tisana', 19, 'Bebidas Calientes', 'R', NULL),
(37, 'Tisana', 22, 'Bebidas Calientes', 'M', NULL),
(38, 'Tisana', 25, 'Bebidas Calientes', 'G', NULL),
(39, 'Te verde', 19, 'Bebidas Calientes', 'R', NULL),
(40, 'Te verde', 21, 'Bebidas Calientes', 'M', NULL),
(41, 'Te verde', 24, 'Bebidas Calientes', 'G', NULL),
(42, 'Te negro', 19, 'Bebidas Calientes', 'R', NULL),
(43, 'Te negro', 21, 'Bebidas Calientes', 'M', NULL),
(44, 'Te negro', 24, 'Bebidas Calientes', 'G', NULL),
(45, 'Te chai', 34, 'Bebidas Calientes', 'R', NULL),
(46, 'Te chai', 37, 'Bebidas Calientes', 'M', NULL),
(47, 'Te chai', 40, 'Bebidas Calientes', 'G', NULL),
(48, 'Espresso helado', 18, 'Bebida fria', 'M', NULL),
(49, 'Espresso helado', 28, 'Bebida fria', 'G', NULL),
(50, 'Espresso cubano helado', 26, 'Bebida fria', 'M', NULL),
(51, 'Espresso cubano helado', 30, 'Bebida fria', 'G', NULL),
(52, 'Espresso frappé', 19, 'Bebida fria', 'M', NULL),
(53, 'Espresso frappé', 29, 'Bebida fria', 'G', NULL),
(54, 'Espresso frappé coco', 33, 'Bebida fria', 'M', NULL),
(55, 'Espresso frappé coco', 38, 'Bebida fria', 'M', NULL),
(56, 'Espresso frappé caramelo', 33, 'Bebida fria', 'M', NULL),
(57, 'Espresso frappé caramelo', 39, 'Bebida fria', 'G', NULL),
(58, 'XZO', 33, 'Bebida fria', 'M ', NULL),
(59, 'XZO', 37, 'Bebida fria', 'G', NULL),
(60, 'Capuccino helado', 33, 'Bebida fria', 'M', NULL),
(61, 'Capuccino helado', 38, 'Bebida fria', 'G', NULL),
(62, 'Capuccino frappé', 36, 'Bebida fria', 'M', NULL),
(63, 'Capuccino frappé', 39, 'Bebida fria', 'G', NULL),
(64, 'Americano helado', 19, 'Bebida fria', 'M', NULL),
(65, 'Americano helado', 23, 'Bebida fria', 'G', NULL),
(66, 'Moka Oaxaca oscuro o blanco frappé', 34, 'Bebidas frías', 'M', NULL),
(67, 'Moka Oaxaca oscuro o blanco frappé', 38, 'Bebidas frías', 'G', NULL),
(68, 'Chocolate helado', 33, 'Bebidas frías', 'M', NULL),
(69, 'Chocolate helado', 37, 'Bebidas frías', 'G', NULL),
(70, 'Chocolate frappé', 34, 'Bebidas frías', 'M', NULL),
(71, 'Chocolate frappé', 37, 'Bebidas frías', 'G', NULL),
(72, 'Granizados', 32, 'Bebidas frías', 'M', NULL),
(73, 'Granizados', 36, 'Bebidas frías', 'G', NULL),
(74, 'Smoothies', 35, 'Bebidas frías', 'M', NULL),
(75, 'Smoothies', 39, 'Bebidas frías', 'G', NULL),
(76, 'Chamoyadas', 36, 'Bebidas frías', 'M', NULL),
(77, 'Chamoyadas', 41, 'Bebidas frías', 'G', NULL),
(78, 'Té menta espresso frappé', 36, 'Bebidas frías', 'M', NULL),
(79, 'Té menta espresso frappé', 40, 'Bebidas frías', 'G', NULL),
(80, 'Tisana helada', 22, 'Bebidas frías', 'M', NULL),
(81, 'Tisana helada', 25, 'Bebidas frías', 'G', NULL),
(82, 'Tisana frappé', 34, 'Bebidas frías', 'M', NULL),
(83, 'Tisana frappé', 38, 'Bebidas frías', 'G', NULL),
(84, 'Té negro helado', 22, 'Bebidas frías', 'M', NULL),
(85, 'Té negro helado', 25, 'Bebidas frías', 'G', NULL),
(86, 'Té negro frappé', 34, 'Bebidas frías', 'M', NULL),
(87, 'Té negro frappé', 38, 'Bebidas frías', 'G', NULL),
(88, 'Té Chai helado', 36, 'Bebidas frías', 'M', NULL),
(89, 'Té Chai helado', 39, 'Bebidas frías', 'G', NULL),
(90, 'Té Chai frappé', 39, 'Bebidas frías', 'M', NULL),
(91, 'Té Chai frappé', 42, 'Bebidas frías', 'G', NULL),
(92, 'Soda Italiana', 28, 'Bebidas frías', 'M', NULL),
(93, 'Soda italiana', 33, 'Bebidas frías', 'G', NULL),
(94, 'Ice Cap y XZO en lata', 28, 'Bebidas frías', 'M', NULL),
(95, 'Agua natural', 16, 'Bebidas frías', 'M', NULL),
(96, 'Agua Mineral', 27, 'Bebidas frías', 'M', NULL),
(97, 'Café Soluble Liofilizado', 114, 'Cafe de grano', 'C', NULL),
(98, 'Capsulas para Americano', 106, 'Compatible con Dolce Gusto', 'C', NULL),
(99, 'Capsulas region Oaxaca', 122, 'Compatible con Dolce Gusto', 'C', NULL),
(100, 'Capsulas para Capuchino', 106, 'Compatible con Dolce Gusto', 'C', NULL),
(101, 'Capsulas Espressocaps', 160, 'Americano Corto', 'C', NULL),
(102, 'Capsulas Espressocaps', 160, 'Té Negro', 'C', NULL),
(103, 'Capsulas Espressocaps', 160, 'Té Verde', 'C', NULL),
(104, 'Capsulas Espressocaps', 160, 'Té de Manzanilla', 'C', NULL),
(105, 'Capsulas Espressocaps', 160, 'Descafeinado', 'C', NULL),
(106, 'Capsulas Espressocaps', 160, 'Espresso', 'C', NULL),
(107, 'PODS M1', 144.5, 'Espresso Descafeinado', 'C', NULL),
(108, 'PODS M2', 144.5, 'Espresso Oscuro', 'C', NULL),
(109, 'PODS M1', 144.5, 'Espresso', 'C', NULL),
(110, 'PODS M4', 144.5, 'Espresso robusta Oscuro', 'C', NULL),
(111, 'PODS M2', 144.5, 'Espresso oscuro Descafeinado', 'C', NULL),
(112, 'PODS M3', 144.5, 'Robusto M3', 'C', NULL),
(113, 'Region Oaxaca', 105, 'cosecha premium', 'C', NULL),
(114, 'Region Veracruz', 105, 'cosecha premium', 'C', NULL),
(115, 'Capsulas Region Oaxaca', 122, 'compatible con Dolce Gusto', 'C', NULL),
(116, 'Capsulas Region Chiapas', 122, 'compatible con Dolce Gusto', 'C', NULL),
(117, 'Capsulas Region Veracruz', 122, 'compatible con Dolce Gusto', 'C', NULL),
(118, 'Region Chiapas', 105, 'cosecha premium', 'C', NULL),
(119, 'Saborizado Canela', 109, 'Ninguna', 'C', NULL),
(120, 'Saborizado Chocolate', 109, 'Ninguna', 'C', NULL),
(121, 'Saborizado Amaretto', 109, 'Ninguna', 'C', NULL),
(122, 'Saborizado Vainilla Nuez', 109, 'Ninguna', 'C', NULL),
(123, 'Saborizado Avellana', 109, 'Ninguna', 'C', NULL),
(124, 'Saborizado Crema Irlandesa', 109, 'Ninguna', 'C', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `direccion`, `nombre`, `telefono`, `email`) VALUES
(10, '11 Sur 5673', 'Café Punta del cielo', '2223242123 ', 'cafe_puntaC@gmail.com'),
(11, 'Carmel, Indiana EE.UU', 'Splenda	', '018007775363', 'splenda@gmail.com'),
(12, 'Avenida 12 Oriente 212, Centro', 'Ciel', '2222295900', 'coca_cola@gmail.com'),
(13, 'Francisco I. Madero 345, colonia Las Palmas, Tlaxcala', 'Desechables Ruiz', '2234456578', 'Desechables_Ruiz@yahoo.com.mx'),
(14, 'Manuel Acuña, 345 colonia La soledad, Mexico DF', 'Muebles Troncoso', '5556942137', 'Troncoso_M@yahoo.com.mx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `id_sucursal` int(11) NOT NULL,
  `direccion` varchar(80) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`id_sucursal`, `direccion`, `telefono`) VALUES
(10, 'Calle 18 sur 5120, Jardines de San Manuel 72570', '2222330719'),
(20, 'Avenida 43 Oriente Local B, Huexotitla.', '2222114498'),
(30, 'Atlixcayotl 4931, Reserva Territorial Atlixcayotl', '2221292377'),
(40, 'Avenida Juarez 2302-A, La Paz', '5555168020'),
(50, 'Sitio Histórico De Los Fuertes', '2534267172'),
(60, 'calle 11 sur 11904', '2221609256'),
(70, 'Ex Hacienda Santa Catarina Martir, San Andrés Cholula', '2223242526'),
(80, 'Interior Nave 61 Planta vw', '2228161674');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` varchar(5) COLLATE latin1_spanish_ci NOT NULL,
  `nombre` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `mail` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `clave` varchar(200) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bodega`
--
ALTER TABLE `bodega`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `detalle_de_compra`
--
ALTER TABLE `detalle_de_compra`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id_sucursal`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bodega`
--
ALTER TABLE `bodega`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT de la tabla `detalle_de_compra`
--
ALTER TABLE `detalle_de_compra`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `id_sucursal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
