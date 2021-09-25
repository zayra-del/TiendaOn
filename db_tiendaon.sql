-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-09-2021 a las 03:56:20
-- Versión del servidor: 8.0.21
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tiendaon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `idcategoria` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'Sudaderas', 'Sudaderas de algodón', 'img_cff9786206c3f933b2c54d0b1797615e.jpg', '2020-10-23 03:14:08', 'sudaderas', 1),
(2, 'Figuras', 'Figuras de Anime', 'img_1f3ef73f552725dbbb955930f1008949.jpg', '2020-10-23 03:17:26', 'figuras', 1),
(3, 'Lámparas', 'Lámparas LED', 'img_e99d2c47111fe28336ad928f04efc7a6.jpg', '2020-10-23 03:17:42', 'lamparas', 1),
(4, 'Cojines', 'Cojines personalizados', 'img_dc4c932b4e501c7457fad6c8b8d7a2b5.jpg', '2020-10-28 03:45:12', 'cojines', 1),
(5, 'Dakimakuras', 'Dakimakuras', 'img_5e672bac6d2c09cb1888032b89f52cd0.jpg', '2020-10-30 03:05:09', 'dakimakuras', 1),
(6, 'Mangas', 'Mangas de Anime', 'img_617d41c552788f307c7356908c614772.jpg', '2020-11-14 00:21:15', 'mangas', 1),
(7, 'T-shirts', 'Diseños personalizados', 'img_d5351eda5885449d374d48a66f04a4ac.jpg', '2020-12-05 22:38:27', 't-shirts', 1),
(8, 'Pachones', 'Pachones con figuras de anime', 'img_137129411a2e1f4c9e7c91fb7590c055.jpg', '2020-12-05 23:00:16', 'pachones', 1),
(9, 'Accesorios', 'Accesorios', 'img_33b0cf5b4a020b47cc2a03b67ef8e269.jpg', '2021-05-20 01:50:17', 'accesorios', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

DROP TABLE IF EXISTS `contacto`;
CREATE TABLE IF NOT EXISTS `contacto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `mensaje` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `dispositivo` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `useragent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
CREATE TABLE IF NOT EXISTS `detalle_pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pedidoid` bigint NOT NULL,
  `productoid` bigint NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidoid` (`pedidoid`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `pedidoid`, `productoid`, `precio`, `cantidad`) VALUES
(6, 4, 12, '110.00', 1),
(7, 4, 11, '100.00', 2),
(8, 5, 12, '110.00', 1),
(9, 5, 13, '100.00', 1),
(18, 10, 12, '89000.00', 1),
(19, 10, 13, '105000.00', 1),
(20, 10, 11, '69000.00', 1),
(21, 10, 10, '75000.00', 1),
(32, 15, 12, '250.00', 1),
(33, 15, 8, '50.00', 1),
(34, 15, 6, '50.00', 1),
(40, 18, 12, '250.00', 1),
(41, 18, 9, '120.00', 1),
(46, 21, 11, '690.00', 1),
(47, 21, 8, '50.00', 1),
(48, 22, 9, '120.00', 1),
(49, 22, 4, '50.00', 2),
(50, 23, 13, '150.00', 1),
(51, 23, 6, '50.00', 1),
(54, 25, 7, '100.00', 1),
(55, 25, 2, '110.00', 1),
(56, 26, 13, '150.00', 1),
(57, 26, 6, '50.00', 1),
(58, 27, 7, '100.00', 1),
(59, 27, 4, '50.00', 1),
(60, 27, 2, '110.00', 1),
(61, 28, 12, '250.00', 1),
(62, 29, 9, '120.00', 1),
(63, 29, 3, '200.00', 1),
(64, 29, 8, '50.00', 1),
(67, 31, 8, '50.00', 2),
(68, 32, 9, '120.00', 1),
(69, 32, 3, '200.00', 1),
(70, 33, 12, '250.00', 2),
(73, 35, 12, '250.00', 1),
(74, 35, 13, '150.00', 1),
(75, 35, 4, '50.00', 4),
(76, 36, 13, '150.00', 1),
(77, 36, 1, '200.00', 1),
(78, 36, 11, '690.00', 1),
(79, 37, 12, '250.00', 1),
(82, 39, 12, '250.00', 3),
(85, 41, 8, '50.00', 1),
(86, 41, 6, '50.00', 1),
(89, 43, 9, '120.00', 1),
(90, 43, 8, '50.00', 1),
(91, 43, 7, '100.00', 1),
(92, 44, 9, '120.00', 1),
(93, 44, 8, '50.00', 1),
(94, 44, 7, '100.00', 1),
(95, 44, 13, '150.00', 1),
(96, 45, 11, '690.00', 1),
(97, 45, 9, '120.00', 1),
(98, 46, 11, '690.00', 1),
(99, 46, 9, '120.00', 1),
(100, 46, 12, '250.00', 1),
(101, 47, 12, '250.00', 1),
(102, 47, 11, '690.00', 1),
(106, 49, 12, '250.00', 2),
(107, 50, 13, '150.00', 1),
(108, 50, 10, '470.00', 1),
(111, 52, 1, '200.00', 1),
(112, 52, 2, '110.00', 1),
(113, 53, 8, '50.00', 1),
(114, 53, 3, '200.00', 1),
(115, 53, 6, '50.00', 1),
(116, 54, 13, '150.00', 1),
(117, 54, 3, '200.00', 1),
(118, 55, 12, '250.00', 1),
(119, 55, 11, '690.00', 1),
(120, 56, 12, '250.00', 1),
(121, 56, 11, '690.00', 1),
(126, 59, 13, '150.00', 1),
(127, 60, 13, '150.00', 2),
(128, 60, 12, '250.00', 1),
(129, 61, 13, '50.00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

DROP TABLE IF EXISTS `detalle_temp`;
CREATE TABLE IF NOT EXISTS `detalle_temp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `personaid` bigint NOT NULL,
  `productoid` bigint NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int NOT NULL,
  `transaccionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`),
  KEY `personaid` (`personaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

DROP TABLE IF EXISTS `imagen`;
CREATE TABLE IF NOT EXISTS `imagen` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `productoid` bigint NOT NULL,
  `img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(37, 4, 'pro_c27e2beafc13a0672920b83300b9e189.jpg'),
(38, 1, 'pro_d006eb24b08f6e32b361bfa333f6b97f.jpg'),
(39, 2, 'pro_0b39c21076db64dee13f576f5b0693d5.jpg'),
(40, 3, 'pro_6a14e7056854a39c30457fa36dae495d.jpg'),
(41, 5, 'pro_174848b9515530a041625182b0e7d21c.jpg'),
(42, 6, 'pro_adf7912f4c26ec3c65d90463da2bd0f9.jpg'),
(43, 7, 'pro_ee206e60a1dc00f2ea1cf9edb4bc0def.jpg'),
(44, 8, 'pro_fa1399676b11ffacfce5c0d995ead147.jpg'),
(47, 9, 'pro_08ea52ba3d4c2f53d044d2b775656a03.jpg'),
(48, 9, 'pro_831b269b86b33a5e6cf55267dc86596f.jpg'),
(49, 10, 'pro_ad60dca2dab7613bef95b7a17e8cbba7.jpg'),
(50, 10, 'pro_676c1fcc0d4acf296f4ca6872737538f.jpg'),
(51, 10, 'pro_360328637d21b67986085004ff3871f8.jpg'),
(52, 11, 'pro_a20a139db99b7c4ace6354210a18a9f1.jpg'),
(53, 11, 'pro_289626c2553f3a103f4905030f3196ef.jpg'),
(54, 12, 'pro_efb0bea8f4c20cc2a4e1c0beff3e3638.jpg'),
(55, 12, 'pro_3f2cb3da9f9cbe329342314920c1d898.jpg'),
(56, 13, 'pro_78a9461e48e1ef47bca2a01ce075c778.jpg'),
(66, 13, 'pro_04173926f8b9fa7113a184de301dbb31.jpg'),
(67, 13, 'pro_db35a0bd3a6b671b1a026710f217ddf0.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

DROP TABLE IF EXISTS `modulo`;
CREATE TABLE IF NOT EXISTS `modulo` (
  `idmodulo` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idmodulo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Caterogías', 'Caterogías Productos', 1),
(7, 'Suscriptores', 'Suscriptores del sitio web', 1),
(8, 'Contactos', 'Mensajes del formulario contacto', 1),
(9, 'Páginas', 'Páginas del sitio web', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `idpedido` bigint NOT NULL AUTO_INCREMENT,
  `referenciacobro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `idtransaccionpaypal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datospaypal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci,
  `personaid` bigint NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `costo_envio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint NOT NULL,
  `direccion_envio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`idpedido`),
  KEY `personaid` (`personaid`),
  KEY `tipopagoid` (`tipopagoid`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idpedido`, `referenciacobro`, `idtransaccionpaypal`, `datospaypal`, `personaid`, `fecha`, `costo_envio`, `monto`, `tipopagoid`, `direccion_envio`, `status`) VALUES
(4, '11122233', NULL, NULL, 10, '2021-01-20 00:21:26', '0.00', '310.00', 2, 'Antigua Guatemala, Guatemala', 'Completo'),
(5, '121212121', NULL, NULL, 9, '2021-01-23 00:42:25', '10.00', '220.00', 3, 'Avenida Las Américas, Guatemala', 'Entregado'),
(10, '465465454455', NULL, NULL, 9, '2021-01-29 22:35:52', '20.00', '338020.00', 3, 'Antigua Guatemala, Guatemala', 'Pendiente'),
(15, '465468798', NULL, NULL, 21, '2021-03-09 22:13:29', '50.00', '400.00', 3, 'Guatemala, Guatemala', 'Completo'),
(18, '654657898', NULL, NULL, 21, '2021-04-01 23:39:32', '50.00', '420.00', 3, 'Antigua Guatemala, Guatemala', 'Completo'),
(21, '24091989', NULL, NULL, 20, '2021-04-04 19:20:24', '50.00', '790.00', 5, 'Zaragoza, Guatemala, Guatemala', 'Completo'),
(22, '65132864415', NULL, NULL, 20, '2021-04-05 23:24:50', '50.00', '270.00', 2, 'Guatemala, Guatemala', 'Completo'),
(23, '78448954655', NULL, NULL, 21, '2021-04-06 23:40:09', '50.00', '250.00', 3, 'Guatemala, Guatemala', 'Completo'),
(25, '7854851269', NULL, NULL, 9, '2021-04-08 23:30:57', '50.00', '260.00', 3, 'Guatemala, Guatemala', 'Completo'),
(26, '8784469857', NULL, NULL, 9, '2021-04-09 23:31:33', '50.00', '250.00', 2, 'Guatemala, Guatemala', 'Completo'),
(27, '7844855485', NULL, NULL, 3, '2021-04-10 23:33:30', '50.00', '310.00', 5, 'Guatemala, Guatemala', 'Completo'),
(28, '8445678954', NULL, NULL, 3, '2021-04-11 23:34:08', '50.00', '300.00', 2, 'Antigua Guatemala, Guatemala', 'Completo'),
(29, '78454857895', NULL, NULL, 3, '2021-04-12 23:35:18', '50.00', '420.00', 3, 'Antigua Guatemala, Guatemala', 'Completo'),
(31, '789465487', NULL, NULL, 21, '2021-04-14 00:12:16', '50.00', '150.00', 3, 'Guatemala, Guatemala', 'Completo'),
(32, '7894655', NULL, NULL, 9, '2021-04-15 00:13:13', '50.00', '370.00', 5, 'Guatemala, Guatemala', 'Completo'),
(33, '98746548', NULL, NULL, 3, '2021-04-16 01:31:29', '50.00', '550.00', 3, 'Guatemala, Guatemala', 'Completo'),
(35, '789413545', NULL, NULL, 20, '2021-04-18 02:00:32', '50.00', '650.00', 2, 'Chimaltenango, Chimaltenango', 'Completo'),
(36, '7846586456', NULL, NULL, 20, '2021-04-19 02:01:09', '50.00', '1090.00', 5, 'Guatemala, Guatemala', 'Completo'),
(37, '465138789', NULL, NULL, 9, '2021-04-20 02:02:18', '50.00', '300.00', 3, 'Sololá Guatemala, Guatemala', 'Completo'),
(39, '4455220011', NULL, NULL, 21, '2021-04-22 02:08:19', '50.00', '800.00', 3, 'Guatemala, Guatemala', 'Completo'),
(41, '44112250003', NULL, NULL, 3, '2021-04-23 02:09:49', '50.00', '150.00', 2, 'Guatemala, Guatemala', 'Completo'),
(43, '6523100002', NULL, NULL, 21, '2021-04-24 02:14:50', '50.00', '320.00', 3, 'Guatemala, Guatemala', 'Completo'),
(44, '986548521', NULL, NULL, 21, '2021-04-24 02:17:55', '50.00', '470.00', 5, 'Guatemala, Guatemala', 'Completo'),
(45, '9854785212', NULL, NULL, 9, '2021-04-25 02:13:33', '50.00', '860.00', 3, 'Guatemala, Guatemala', 'Completo'),
(46, '7854785487', NULL, NULL, 9, '2021-04-26 02:13:58', '50.00', '1110.00', 5, 'Guatemala, Guatemala', 'Completo'),
(47, '78945656587', NULL, NULL, 9, '2021-04-27 02:46:24', '50.00', '990.00', 2, 'Antigua Guatemala, Guatemala', 'Completo'),
(49, '45878548578', NULL, NULL, 3, '2021-04-29 02:12:46', '50.00', '550.00', 3, 'Guatemala, Guatemala', 'Completo'),
(50, '458789846487', NULL, NULL, 9, '2021-04-30 02:14:41', '50.00', '670.00', 2, 'Antigua Guatemala, Antigua Guatemala', 'Completo'),
(52, '785456232594', NULL, NULL, 9, '2021-05-02 02:16:38', '50.00', '360.00', 5, 'Guatemala, Guatemala', 'Completo'),
(53, '652136547854', NULL, NULL, 9, '2021-05-03 02:17:18', '50.00', '350.00', 3, 'Guatemala, Guatemala', 'Completo'),
(54, '235456987855', NULL, NULL, 3, '2021-05-04 02:24:54', '50.00', '400.00', 2, 'Guatemala, Guatemala', 'Completo'),
(55, '8545236', NULL, NULL, 10, '2021-08-17 02:44:18', '50.00', '990.00', 2, 'Guatemala, Guatemala', 'Completo'),
(56, '78945987', NULL, NULL, 10, '2021-08-17 02:47:34', '50.00', '990.00', 3, 'Antigua Guatemala, Antigua Guatemala', 'Completo'),
(59, NULL, NULL, NULL, 1, '2021-09-24 12:01:28', '50.00', '200.00', 5, 'sanarate, el progreso', 'Pendiente'),
(60, NULL, NULL, NULL, 1, '2021-09-24 16:50:42', '35.00', '585.00', 5, 'guasta, el progreso', 'Pendiente'),
(61, '13457976653764', NULL, NULL, 1, '2021-09-24 20:11:49', '35.00', '85.00', 5, 'guastatoya, El progresos', 'Completo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

DROP TABLE IF EXISTS `permisos`;
CREATE TABLE IF NOT EXISTS `permisos` (
  `idpermiso` bigint NOT NULL AUTO_INCREMENT,
  `rolid` bigint NOT NULL,
  `moduloid` bigint NOT NULL,
  `r` int NOT NULL DEFAULT '0',
  `w` int NOT NULL DEFAULT '0',
  `u` int NOT NULL DEFAULT '0',
  `d` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpermiso`),
  KEY `rolid` (`rolid`),
  KEY `moduloid` (`moduloid`)
) ENGINE=InnoDB AUTO_INCREMENT=924 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(698, 3, 1, 1, 0, 0, 0),
(699, 3, 2, 0, 0, 0, 0),
(700, 3, 3, 0, 0, 0, 0),
(701, 3, 4, 1, 0, 0, 0),
(702, 3, 5, 1, 0, 0, 0),
(703, 3, 6, 0, 0, 0, 0),
(745, 2, 1, 1, 0, 0, 0),
(746, 2, 2, 0, 0, 0, 0),
(747, 2, 3, 0, 0, 0, 0),
(748, 2, 4, 0, 0, 0, 0),
(749, 2, 5, 0, 0, 0, 0),
(750, 2, 6, 0, 0, 0, 0),
(751, 2, 7, 0, 0, 0, 0),
(752, 2, 8, 0, 0, 0, 0),
(906, 7, 1, 0, 0, 0, 0),
(907, 7, 2, 0, 0, 0, 0),
(908, 7, 3, 0, 0, 0, 0),
(909, 7, 4, 0, 0, 0, 0),
(910, 7, 5, 1, 0, 0, 0),
(911, 7, 6, 0, 0, 0, 0),
(912, 7, 7, 0, 0, 0, 0),
(913, 7, 8, 0, 0, 0, 0),
(914, 7, 9, 0, 0, 0, 0),
(915, 1, 1, 1, 1, 1, 1),
(916, 1, 2, 1, 1, 1, 1),
(917, 1, 3, 1, 1, 1, 1),
(918, 1, 4, 1, 1, 1, 1),
(919, 1, 5, 1, 1, 1, 1),
(920, 1, 6, 1, 1, 1, 1),
(921, 1, 7, 1, 1, 1, 1),
(922, 1, 8, 1, 1, 1, 1),
(923, 1, 9, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `idpersona` bigint NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `nombres` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `telefono` bigint NOT NULL,
  `email_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `nombrefiscal` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `direccionfiscal` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `rolid` bigint NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpersona`),
  KEY `rolid` (`rolid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '2409198920', 'Zayra', 'Moscoso', 34391445, 'zayrimoscoso@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '24252622', 'Abel OSH', 'Antigua Guatemala', '2bb94be2b1e49d494507-6b1f34c4d814e68c235a-cb8ec3f8552aa298df27-ec99a91aeee728b5f769', 1, '2020-08-13 00:51:44', 1),
(2, '131313131313', 'Carlos', 'Hernández', 121212121, 'carlos@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '2c52a34f7988a0afc63e-dfe4badca8d2cb2b93e6-94824d050567a0ccd851-56165c5603c4ca020', 2, '2020-08-13 00:54:08', 1),
(3, '879846545454', 'Pablo', 'Arana', 784858856, 'pablo@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 7, '2020-08-14 01:42:34', 1),
(4, '65465465', 'Jorge David', 'Arana', 987846545, 'jorge@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 1, '2020-08-22 00:27:17', 1),
(5, '4654654', 'Carme Elena', 'Arana', 12121221, 'carmen@infom.com', 'be63ad947e82808780278e044bcd0267a6ac6b3cd1abdb107cc10b445a182eb0', '', '', '', '', 2, '2020-08-22 00:35:04', 1),
(6, '8465484', 'Alex Fernando', 'Méndez', 222222222, 'alex@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 3, '2020-08-22 00:48:50', 1),
(7, '54684987', 'Francisco', 'Herrera', 6654456545, 'francisco@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 2, '2020-08-22 01:55:57', 1),
(8, '54646849844', 'Axel Gudiel', 'Vela', 654687454, 'axel@info.com', '993fdea29acd1f7c6a6423c038601b175bb282382fc85b306a85f134fff4a63e', '', '', '', '', 3, '2020-09-07 01:30:52', 1),
(9, '46548454', 'Alan', 'Arenales', 45687954, 'alan@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Alan', 'Ciudad', '', 7, '2020-10-11 01:30:23', 1),
(10, '89898989', 'Rafa', 'Arana', 25478548, 'toolsfordeveloper@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Rafa Arana', 'Ciudad de Guatemala', '', 7, '2020-10-11 01:43:30', 1),
(11, '54789656458', 'Joel Eduardo', 'Cabrera', 54124528, 'joel@joel.com', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'CF', 'Joel Eduardo', 'Antigua Guatemala', '', 7, '2020-10-11 01:44:30', 1),
(12, '56874654', 'Pablo', 'Herrera', 65468464, 'pabloh@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Pablo', 'Antigua Guatemala', '', 7, '2020-10-11 01:59:45', 1),
(13, '46584645', 'Elena', 'Rosales', 46876454, 'elena123@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 7, '2020-12-03 04:23:40', 1),
(14, '654654654547', 'Alexa', 'Cardona', 487546878, 'alexa@info.com', '74d7f333ede0080c542c95522969be8dbc5a127d4cd3b1f765944e318f087bec', '', '', '', '', 2, '2020-12-04 01:49:58', 1),
(15, '6546546545', 'Alan', 'Estrada', 464564564, 'aaaa@info.com', '739ed90c2e5568537d3b3e37550d467e8469a9c2efee57b8ea0faf50bc54f8a2', '', '', '', '', 2, '2020-12-04 02:45:37', 1),
(16, '65465465478', 'Jorge', 'Mendoza', 6545644, 'jmendoza@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Jorge Mendoza', 'Ciudad', '', 2, '2020-12-05 01:58:08', 1),
(17, '65465455', 'Jorge', 'Mendoza', 6545644, 'jjjj@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Jorge Mendoza', 'Ciudad', '', 2, '2020-12-05 01:59:25', 1),
(18, '46584654711', 'Arnold', 'Gutierrez', 78465454, 'arnold@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Arnold', 'Ciudad', '', 7, '2020-12-05 02:02:31', 1),
(19, '64894654', 'Julieta', 'Estrada', 4654564, 'julieta@info.com', 'b6602f58690ca41488e97cd28153671356747c951c55541b6c8d8b8493eb7143', 'CF', 'Julieta', 'Ciudad', '', 7, '2020-12-05 02:22:30', 1),
(20, '785741200', 'Jon', 'Beta', 456546545, 'jon@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Jon', 'Ciudad de Guatemala', '', 7, '2020-12-28 03:36:39', 1),
(21, '745845214558', 'Ale', 'Pérez', 4654798878, 'ale@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Ale', 'Ciudad', '', 7, '2020-12-28 03:42:23', 1),
(22, '24091989', 'Zayra', 'Mos', 689754, 'meribeth.mos@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, '3e966e3bd4e3d96bff06-6756420b91951613af13-0aba2193fc0d582b2fc4-e9034e267edd4e9c408d', 1, '2021-09-22 15:41:39', 0),
(23, '6345931405', 'Karla', 'Loaiza', 73493845093405, 'zaymos@gmail.com', '9b0633e6d7a213e00a96b61feafb66a2b2bb92103efc7c6fbad3d3757e25e7c4', '34728499034', 'K', 'Guastatoya', NULL, 7, '2021-09-22 17:52:18', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `idpost` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `contenido` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datecreate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpost`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`idpost`, `titulo`, `contenido`, `portada`, `datecreate`, `ruta`, `status`) VALUES
(1, 'Inicio', '<div class=\"p-t-80\"> <h3 class=\"ltext-103 cl5\">Nuestras marcas</h3> </div> <div> <p>Trabajamos con las mejores marcas del mundo ...</p> </div> <div class=\"row\"> <div class=\"col-md-3\"><img src=\"Assets/images/m1.png\" alt=\"Marca 1\" width=\"110\" height=\"110\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m2.png\" alt=\"Marca 2\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m3.png\" alt=\"Marca 3\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m4.png\" alt=\"Marca 4\" /></div> </div>', '', '2021-07-20 02:40:15', 'inicio', 1),
(2, 'Tienda', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:27', 'tienda', 1),
(3, 'Carrito', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:52', 'carrito', 1),
(4, 'Nosotros', '<section class=\"bg0 p-t-75 p-b-120\"> <div class=\"container\"> <div class=\"row p-b-148\"> <div class=\"col-md-7 col-lg-8\"> <div class=\"p-t-7 p-r-85 p-r-15-lg p-r-0-md\"> <h3 class=\"mtext-111 cl2 p-b-16\">Historia</h3> <p class=\"stext-113 cl6 p-b-26\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris consequat consequat enim, non auctor massa ultrices non. Morbi sed odio massa. Quisque at vehicula tellus, sed tincidunt augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas varius egestas diam, eu sodales metus scelerisque congue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas gravida justo eu arcu egestas convallis. Nullam eu erat bibendum, tempus ipsum eget, dictum enim. Donec non neque ut enim dapibus tincidunt vitae nec augue. Suspendisse potenti. Proin ut est diam. Donec condimentum euismod tortor, eget facilisis diam faucibus et. Morbi a tempor elit.</p> <p class=\"stext-113 cl6 p-b-26\">Donec gravida lorem elit, quis condimentum ex semper sit amet. Fusce eget ligula magna. Aliquam aliquam imperdiet sodales. Ut fringilla turpis in vehicula vehicula. Pellentesque congue ac orci ut gravida. Aliquam erat volutpat. Donec iaculis lectus a arcu facilisis, eu sodales lectus sagittis. Etiam pellentesque, magna vel dictum rutrum, neque justo eleifend elit, vel tincidunt erat arcu ut sem. Sed rutrum, turpis ut commodo efficitur, quam velit convallis ipsum, et maximus enim ligula ac ligula.</p> <p class=\"stext-113 cl6 p-b-26\">Any questions? Let us know in store at 8th floor, 379 Hudson St, New York, NY 10018 or call us on (+1) 96 716 6879</p> </div> </div> <div class=\"col-11 col-md-5 col-lg-4 m-lr-auto\"> <div class=\"how-bor1 \"> <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div> </div> </div> </div> <div class=\"row\"> <div class=\"order-md-2 col-md-7 col-lg-8 p-b-30\"> <div class=\"p-t-7 p-l-85 p-l-15-lg p-l-0-md\"> <h2 class=\"mtext-111 cl2 p-b-16\"><span style=\"color: #236fa1;\">Nuestra Misi&oacute;n</span></h2> <p class=\"stext-113 cl6 p-b-26\">Mauris non lacinia magna. Sed nec lobortis dolor. Vestibulum rhoncus dignissim risus, sed consectetur erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam maximus mauris sit amet odio convallis, in pharetra magna gravida. Praesent sed nunc fermentum mi molestie tempor. Morbi vitae viverra odio. Pellentesque ac velit egestas, luctus arcu non, laoreet mauris. Sed in ipsum tempor, consequat odio in, porttitor ante. Ut mauris ligula, volutpat in sodales in, porta non odio. Pellentesque tempor urna vitae mi vestibulum, nec venenatis nulla lobortis. Proin at gravida ante. Mauris auctor purus at lacus maximus euismod. Pellentesque vulputate massa ut nisl hendrerit, eget elementum libero iaculis.</p> <div class=\"bor16 p-l-29 p-b-9 m-t-22\"> <p class=\"stext-114 cl6 p-r-40 p-b-11\">Creativity is just connecting things. When you ask creative people how they did something, they feel a little guilty because they didn\'t really do it, they just saw something. It seemed obvious to them after a while.</p> <span class=\"stext-111 cl8\"> - Steve Job&rsquo;s </span></div> </div> </div> <div class=\"order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30\"> <div class=\"how-bor2\"> <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849822_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div> </div> </div> </div> </div> </section>', 'img_2f644b056a9fd3624c7595d24b1d9273.jpg', '2021-08-09 03:09:44', 'nosotros', 1),
(5, 'Contacto', '<p>Hola Mundo&nbsp;</p>', 'img_3024f13dc010ffab8c22da05ac6a32b9.jpg', '2021-08-09 03:11:08', 'contacto', 1),
(6, 'Preguntas frecuentes', '<ol> <li><strong>&iquest;Cu&aacute;l es el tiempo de entrega de los producto? </strong>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</li> <li><strong>&iquest;C&oacute;mo es la forma de env&iacute;o de los productos?</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur.</li> <li><strong>&iquest;Cu&aacute;l es el tiempo m&aacute;ximo para solicitar un reembolso?</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt!</li> </ol> <p>&nbsp;</p> <p>Otras preguntas</p> <ul> <li><strong>&iquest;Qu&eacute; formas de pago aceptan? </strong><span style=\"color: #666666; font-family: Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</span></li> </ul>', '', '2021-08-11 01:24:19', 'preguntas-frecuentes', 1),
(7, 'Términos y Condiciones', '<p>A continuaci&oacute;n se describen los t&eacute;rmino y condiciones de la Tienda Virtual!</p> <ol> <li>Pol&iacute;tica uno</li> <li>Termino dos</li> <li>Condici&oacute;n tres</li> </ol> <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</p>', '', '2021-08-11 01:51:06', 'terminos-y-condiciones', 1),
(8, 'Sucursales', '<section class=\"py-5 text-center\"> <div class=\"container\"> <p>Visitanos y obten los mejores precios del mercado, cualquier art&iacute;culo que necestas para vivir mejor</p> <a class=\"btn btn-info\" href=\"../../tienda_virtual/tienda\">VER PRODUCTOS</a></div> </section> <div class=\"py-5 bg-light\"> <div class=\"container\"> <div class=\"row\"> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s1.jpg\" alt=\"Tienda Uno\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s2.jpg\" alt=\"Sucural dos\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s3.jpg\" alt=\"Sucural tres\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> </div> </div> </div>', 'img_d72cb5712933863e051dc9c7fac5e253.jpg', '2021-08-11 02:26:45', 'sucursales', 0),
(9, 'Not Found', '<h1>Error 404: P&aacute;gina no encontrada</h1> <p>No se encuentra la p&aacute;gina que ha solicitado.</p>', '', '2021-08-12 02:30:49', 'not-found', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `idproducto` bigint NOT NULL AUTO_INCREMENT,
  `categoriaid` bigint NOT NULL,
  `codigo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int NOT NULL,
  `imagen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idproducto`),
  KEY `categoriaid` (`categoriaid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(1, 4, '45684545', 'Zero two', '<p>Cojines de Zero two</p>', '65.00', 10, '', '2020-11-15 00:57:57', 'zero-two', 1),
(2, 3, '465456465', 'Lámpara Jujutsu', '<p>Descripci&oacute;n producto</p> <ul> <li>Uno</li> <li>Dos</li> </ul>', '180.00', 10, '', '2020-11-15 03:13:35', 'lampara-jujutsu', 1),
(3, 1, '4654654', 'Sudadera negra', '<p>Sudadera de algod&oacute;n</p> <p>Tallas s, m, l y xl</p>', '190.00', 50, '', '2020-11-15 03:19:15', 'sudadera-negra', 1),
(4, 3, '45654654', 'Lámpara Nezuko', '<ul style=\"list-style-type: circle;\"> <li>L&aacute;mpara Led</li> <li>RGB</li> <li>Micro Usb (Compatible con cualquier cargador de culular y computadora)</li> <li>Bateria AA.</li> <li>Bot&oacute;n de encendido Touch</li> </ul>', '180.00', 4, '', '2020-11-23 02:59:44', 'lampara-nezuko', 1),
(5, 5, '6546546545', 'Tanjiro Kamado', '<p>Dakimura Kimetsu No yaiba</p> <p>Entra inmediata&nbsp;</p>', '275.00', 10, '', '2020-11-23 03:22:35', 'tanjiro-kamado', 1),
(6, 6, '646546547877', 'Beastars vol. 2', '<p style=\"text-align: center;\"><strong>Sinopsis</strong></p>', '95.00', 10, '', '2020-11-23 03:38:55', 'beastars-vol-2', 1),
(7, 7, '65465454', 'T-shirts', '<p>Jujustsu Kaisen</p> <p>del algod&oacute;n</p>', '95.00', 10, '', '2020-11-23 03:39:59', 't-shirts', 1),
(8, 9, '6546545', 'Collar', '<p>Collar de naruto</p>', '85.00', 10, '', '2020-11-23 03:43:29', 'collar', 1),
(9, 9, '546455456', 'Llavero de Naruto', '<p>Datos del producto</p>', '85.00', 50, '', '2020-12-01 12:52:33', 'llavero-de-naruto', 1),
(10, 9, '654546544', 'Llavero de SAO', '<p>Descripc&oacute;n</p>', '85.00', 0, '', '2020-12-02 03:52:09', 'llavero-de-sao', 1),
(11, 8, '4657897897', 'Pachones de Natzu', '<ul style=\"list-style-type: circle;\"> <li>Con capacidad de 500 ml</li> <li>Funda negra</li> </ul>', '50.00', 50, '', '2020-12-06 02:30:02', 'pachones-de-natzu', 1),
(12, 2, '4894647878', 'Mitsuri Kanroji Figura', '<p>Demon Slayer</p> <ul> <li>Vol. 13</li> <li>Bajo Pedio</li> <li>Tama&ntilde;o: 7&acute;&acute;</li> <li>Materia: pvc, abs</li> <li>Manufactura: Banpresto</li> </ul>', '520.00', 0, '', '2020-12-11 02:23:22', 'mitsuri-kanroji-figura', 1),
(13, 9, '4654654564', 'Monedero', '<p>Monedero de Rana</p> <p>&nbsp;</p>', '50.00', 5, '', '2020-12-18 00:44:28', 'monedero', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `idrol` bigint NOT NULL AUTO_INCREMENT,
  `nombrerol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 1),
(2, 'Supervisores', 'Supervisor de tienda', 1),
(3, 'Vendedores', 'Acceso a módulo ventas', 1),
(4, 'Servicio al cliente', 'Servicio al cliente sistema', 0),
(5, 'Bodega', 'Bodega', 0),
(6, 'Resporteria', 'Resporteria Sistema', 0),
(7, 'Cliente', 'Clientes tienda', 1),
(8, 'Ejemplo rol', 'Ejemplo rol sitema', 0),
(9, 'Coordinador', 'Coordinador', 0),
(10, 'Consulta Ventas', 'Consulta Ventas', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

DROP TABLE IF EXISTS `suscripciones`;
CREATE TABLE IF NOT EXISTS `suscripciones` (
  `idsuscripcion` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idsuscripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `suscripciones`
--

INSERT INTO `suscripciones` (`idsuscripcion`, `nombre`, `email`, `datecreated`) VALUES
(7, 'Zayra Moscoso', 'zayrimoscoso@gmail.com', '2021-09-24 18:05:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

DROP TABLE IF EXISTS `tipopago`;
CREATE TABLE IF NOT EXISTS `tipopago` (
  `idtipopago` bigint NOT NULL AUTO_INCREMENT,
  `tipopago` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idtipopago`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`idtipopago`, `tipopago`, `status`) VALUES
(2, 'Efectivo', 1),
(3, 'Transferencia Bancaria', 1),
(5, 'Depósito Bancario', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD CONSTRAINT `detalle_temp_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`tipopagoid`) REFERENCES `tipopago` (`idtipopago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
