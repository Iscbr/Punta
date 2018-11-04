-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 05-06-2018 a las 17:32:04
-- Versión del servidor: 5.7.19
-- Versión de PHP: 5.6.31

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

DROP TABLE IF EXISTS `bodega`;
CREATE TABLE IF NOT EXISTS `bodega` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `no_productos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `compra`;
CREATE TABLE IF NOT EXISTS `compra` (
  `id_producto` int(11) DEFAULT NULL,
  `no_productos` int(11) DEFAULT NULL,
  `total_compra` float DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id_producto`, `no_productos`, `total_compra`, `id_cliente`) VALUES
(1, 1, 18, 1),
(33, 1, 16, 1),
(94, 1, 28, 1),
(92, 2, 56, 2),
(82, 1, 34, 3),
(76, 3, 108, 3),
(22, 1, 34, 4),
(11, 1, 34, 4),
(90, 1, 39, 4),
(56, 1, 33, 4),
(3, 4, 100, 5),
(80, 1, 22, 5),
(60, 2, 66, 5),
(5, 1, 27, 6),
(7, 2, 58, 6),
(55, 2, 76, 7),
(32, 1, 36, 7),
(67, 1, 38, 7),
(78, 1, 36, 7),
(43, 1, 21, 7),
(3, 1, 25, 7),
(64, 1, 19, 7),
(1, 1, 18, 7),
(7, 1, 29, 7),
(9, 1, 27, 7),
(3, 3, 75, 8),
(10, 1, 32, 9),
(95, 3, 48, 9),
(8, 1, 2, 9),
(82, 6, 204, 10),
(22, 2, 68, 10),
(66, 1, 34, 11),
(30, 2, 60, 11),
(59, 1, 37, 11),
(44, 2, 48, 11),
(91, 1, 42, 12),
(4, 1, 29, 12),
(88, 2, 72, 12),
(12, 1, 28, 13),
(77, 2, 82, 13),
(29, 1, 47, 13),
(62, 1, 36, 13),
(50, 1, 26, 14),
(33, 1, 16, 14),
(48, 2, 36, 15),
(60, 1, 33, 15),
(88, 9, 324, 15),
(96, 3, 81, 16),
(8, 1, 2, 16),
(13, 1, 31, 17),
(12, 2, 56, 17),
(53, 1, 29, 17),
(22, 1, 34, 18),
(33, 1, 16, 18),
(24, 1, 33, 18),
(9, 1, 27, 19),
(14, 1, 34, 19),
(21, 1, 30, 19),
(94, 2, 56, 19),
(16, 1, 30, 19),
(13, 2, 62, 19),
(20, 4, 132, 20),
(45, 2, 68, 21),
(58, 1, 33, 21),
(91, 3, 126, 21),
(88, 1, 36, 21),
(34, 2, 38, 21),
(12, 2, 56, 21),
(76, 2, 72, 22),
(35, 1, 23, 22),
(79, 1, 40, 22),
(44, 1, 24, 22),
(52, 2, 38, 22),
(23, 1, 38, 23),
(14, 2, 68, 23),
(37, 1, 22, 23),
(48, 2, 36, 23),
(56, 1, 33, 24),
(67, 1, 38, 24),
(72, 2, 64, 24),
(82, 1, 34, 24),
(92, 3, 84, 24),
(3, 1, 25, 24),
(11, 2, 68, 25),
(22, 1, 34, 25),
(31, 2, 66, 25),
(41, 2, 48, 25),
(52, 1, 19, 26),
(61, 2, 76, 26),
(73, 1, 36, 26),
(81, 2, 50, 27),
(95, 2, 32, 27),
(7, 1, 29, 27),
(19, 1, 20, 27),
(23, 2, 76, 27),
(33, 1, 16, 28),
(46, 2, 74, 28),
(53, 1, 29, 28),
(66, 1, 34, 29),
(77, 2, 82, 29),
(88, 1, 36, 29),
(94, 2, 56, 29),
(9, 2, 54, 30),
(14, 1, 34, 30),
(22, 2, 68, 30),
(32, 1, 36, 31),
(45, 2, 68, 31),
(52, 2, 38, 31),
(67, 1, 38, 31),
(78, 1, 36, 31),
(83, 2, 76, 31),
(92, 1, 28, 32),
(6, 1, 33, 32),
(19, 1, 20, 32),
(23, 1, 38, 32),
(37, 2, 44, 33),
(48, 1, 18, 33),
(57, 2, 78, 33),
(62, 1, 36, 33),
(72, 1, 32, 34),
(83, 1, 38, 34),
(96, 1, 27, 34),
(7, 1, 29, 34),
(17, 1, 33, 35),
(100, 1, 106, 35),
(10, 1, 32, 35),
(20, 2, 66, 35),
(30, 2, 60, 36),
(40, 1, 21, 36),
(50, 2, 52, 36),
(60, 2, 66, 36),
(70, 1, 34, 37),
(80, 1, 22, 37),
(90, 1, 39, 37),
(122, 1, 109, 37),
(49, 1, 28, 37),
(53, 2, 58, 38),
(64, 1, 19, 38),
(77, 2, 82, 38),
(85, 2, 50, 38),
(95, 1, 16, 39),
(107, 1, 144, 39),
(8, 2, 4, 39),
(18, 1, 25, 39),
(29, 1, 47, 39),
(33, 1, 16, 40),
(123, 1, 109, 40),
(47, 1, 40, 40),
(52, 2, 38, 40),
(88, 3, 108, 40),
(3, 1, 25, 41),
(18, 3, 75, 42),
(5, 1, 27, 42),
(19, 2, 40, 42),
(78, 6, 216, 43),
(5, 1, 27, 44),
(8, 1, 2, 44),
(9, 3, 81, 45),
(89, 5, 195, 46),
(43, 2, 42, 46),
(21, 5, 150, 47),
(124, 1, 109, 48),
(12, 3, 84, 49),
(61, 5, 190, 50),
(79, 2, 80, 51),
(69, 5, 185, 52),
(13, 5, 155, 53),
(20, 7, 231, 54),
(45, 3, 102, 55),
(46, 4, 148, 55),
(81, 5, 125, 56),
(59, 3, 111, 57),
(33, 4, 64, 58),
(35, 2, 46, 59),
(38, 2, 50, 60),
(95, 2, 32, 60),
(63, 3, 117, 62),
(51, 1, 30, 62),
(38, 2, 50, 63),
(3, 1, 25, 63),
(6, 1, 33, 63),
(9, 1, 27, 63),
(18, 2, 50, 64),
(2, 1, 25, 64),
(4, 1, 29, 64),
(6, 1, 33, 65),
(24, 1, 33, 65),
(33, 2, 32, 65),
(90, 3, 117, 66),
(13, 3, 93, 67),
(17, 2, 66, 67),
(21, 2, 60, 67),
(26, 4, 156, 68),
(31, 3, 99, 69),
(33, 5, 80, 70),
(1, 1, 18, 70),
(9, 1, 27, 70),
(13, 1, 31, 71),
(4, 1, 29, 72),
(30, 1, 30, 72),
(15, 1, 27, 73),
(23, 1, 38, 73),
(1, 1, 18, 86),
(1, 1, 18, 86),
(7, 1, 29, 88),
(5, 1, 27, 89),
(14, 1, 34, 89),
(12, 1, 28, 89),
(9, 2, 54, 90),
(16, 1, 30, 91),
(1, 3, 54, 91),
(1, 1, 18, 92),
(25, 2, 74, 92),
(23, 3, 114, 93),
(24, 1, 33, 94),
(17, 3, 99, 94),
(20, 5, 165, 95);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_de_compra`
--

DROP TABLE IF EXISTS `detalle_de_compra`;
CREATE TABLE IF NOT EXISTS `detalle_de_compra` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `no_productos` int(11) DEFAULT NULL,
  `id_sucursal` int(11) DEFAULT NULL,
  `precio_total` float DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `tamanio` varchar(3) DEFAULT NULL,
  `codigo_barra` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE IF NOT EXISTS `proveedor` (
  `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `direccion` varchar(70) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `sucursal`;
CREATE TABLE IF NOT EXISTS `sucursal` (
  `id_sucursal` int(11) NOT NULL AUTO_INCREMENT,
  `direccion` varchar(80) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_sucursal`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
