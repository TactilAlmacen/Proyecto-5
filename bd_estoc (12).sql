-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-03-2018 a las 15:40:16
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_estoc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categoria`
--

CREATE TABLE `tbl_categoria` (
  `categoria_id` int(11) NOT NULL,
  `categoria_nom` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_categoria`
--

INSERT INTO `tbl_categoria` (`categoria_id`, `categoria_nom`) VALUES
(1, 'Lampara de paret'),
(2, 'Lampara de peu'),
(3, 'Lampara de sostre'),
(4, 'Lampara que penja'),
(5, 'Ulls de bou'),
(6, 'Bombetes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estoc`
--

CREATE TABLE `tbl_estoc` (
  `estoc_id` int(11) NOT NULL,
  `estoc_q_max` int(5) NOT NULL,
  `estoc_q_min` int(5) NOT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `lloc_id` int(11) DEFAULT NULL,
  `estoc_q_actual` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_estoc`
--

INSERT INTO `tbl_estoc` (`estoc_id`, `estoc_q_max`, `estoc_q_min`, `prod_id`, `lloc_id`, `estoc_q_actual`) VALUES
(1, 100, 30, 1, 2, 75),
(2, 50, 10, 2, 13, 40),
(3, 90, 30, 3, 10, 64),
(4, 50, 10, 4, 3, 24),
(5, 30, 5, 5, 5, 15),
(6, 40, 10, 6, 16, 25),
(7, 50, 10, 7, 12, 22),
(8, 70, 10, 8, 13, 32),
(9, 70, 20, 9, 13, 44),
(10, 80, 20, 10, 9, 29),
(11, 50, 15, 11, 11, 35),
(12, 70, 20, 12, 12, 50),
(13, 40, 10, 13, 13, 15),
(14, 90, 20, 14, 14, 75),
(15, 40, 10, 15, 15, 20),
(16, 80, 10, 16, 16, 60);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_lloc`
--

CREATE TABLE `tbl_lloc` (
  `lloc_id` int(11) NOT NULL,
  `num_bloc` enum('Bloc 1','Bloc 2','Bloc 3','Bloc 4','Bloc 5','Bloc 6','Bloc 7','Bloc 8') COLLATE utf8_unicode_ci NOT NULL,
  `num_passadis` enum('passadis 1','passadis 2','passadis 3','passadis 4','passadis 5','passadis 6','passadis 7','passadis 8','passadis 9','passadis 10','passadis 11','passadis 12') COLLATE utf8_unicode_ci NOT NULL,
  `num_lleixa` enum('lleixa 1','lleixa 2','lleixa 3','lleixa 4','lleixa 5','lleixa 6','lleixa 7','lleixa 8') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_lloc`
--

INSERT INTO `tbl_lloc` (`lloc_id`, `num_bloc`, `num_passadis`, `num_lleixa`) VALUES
(1, 'Bloc 1', 'passadis 1', 'lleixa 1'),
(2, 'Bloc 1', 'passadis 1', 'lleixa 2'),
(3, 'Bloc 1', 'passadis 1', 'lleixa 3'),
(4, 'Bloc 1', 'passadis 1', 'lleixa 4'),
(5, 'Bloc 1', 'passadis 1', 'lleixa 5'),
(6, 'Bloc 1', 'passadis 1', 'lleixa 6'),
(7, 'Bloc 1', 'passadis 1', 'lleixa 7'),
(8, 'Bloc 1', 'passadis 1', 'lleixa 8'),
(9, 'Bloc 1', 'passadis 2', 'lleixa 1'),
(10, 'Bloc 1', 'passadis 2', 'lleixa 2'),
(11, 'Bloc 1', 'passadis 2', 'lleixa 3'),
(12, 'Bloc 1', 'passadis 2', 'lleixa 4'),
(13, 'Bloc 1', 'passadis 2', 'lleixa 5'),
(14, 'Bloc 1', 'passadis 2', 'lleixa 6'),
(15, 'Bloc 1', 'passadis 2', 'lleixa 7'),
(16, 'Bloc 1', 'passadis 2', 'lleixa 8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_producte`
--

CREATE TABLE `tbl_producte` (
  `prod_id` int(11) NOT NULL,
  `prod_nom` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `prod_foto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `serie_id` int(11) DEFAULT NULL,
  `prod_descripcio` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prod_descompte` int(3) DEFAULT NULL,
  `prod_preu` double(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_producte`
--

INSERT INTO `tbl_producte` (`prod_id`, `prod_nom`, `prod_foto`, `serie_id`, `prod_descripcio`, `prod_descompte`, `prod_preu`) VALUES
(1, 'Lampara vintage', '1.jpg', 1, 'Lampara antiga de metall', 20, 255.56),
(2, 'Lampara de vidre', '2.jpg', 1, 'Lampara de vidre', 30, 70.55),
(3, 'Lampara dragon ball', '3.jpg', 2, 'Lampara recreativa', 0, 38.33),
(4, 'Lampara de peu a pressió', '4.jpg', 2, 'Lampara accionada amb botó de terra a pressió', 40, 52.45),
(5, 'Lampara tàctil', '5.jpg', 18, 'Lampara accionada amb dispositiu tàctil', 0, 101.54),
(6, 'Lampara bluetooth', '6.jpg', 5, 'Lampara accionada per control bluetooth', 0, 247.27),
(7, 'Lampara per veu', '7.jpg', 4, 'Lampara accionada per veu', 60, 180.00),
(8, 'Lampara de peu vasca', '8.jpg', 2, 'Lampara vasca ', 20, 99.99),
(9, 'Lampara triple', '9.jpg', 5, 'Lampara de tres focus', 54, 65.00),
(10, 'Lampara moderna', '10.jpg', 4, 'Lampara moderna de tres bombetes', 51, 120.00),
(11, 'Bombeta', '11.jpg', 6, 'Bombeta led', 0, 5.00),
(12, 'Lampara plafó', '12.jpg', 3, 'Lampara de sostre rodona de dues bombetas', 0, 72.00),
(13, 'Lampara que penja de vidre', '13.jpg', 7, 'Lampara moderna de vidre amb forma de fulles ', 0, 132.00),
(14, 'Lampara que penja unillum', '14.jpg', 7, 'Lampara rodona que penja d\'un ferro decorat', 20, 45.00),
(15, 'Ull de bou marc daurat', '15.jpg', 8, 'Ull de bou amb el marc de color daurat', 40, 32.00),
(16, 'Ull de bou marc platejat', '16.jpg', 9, 'Ull de bou amb el marc de color platejat', 10, 32.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_serie`
--

CREATE TABLE `tbl_serie` (
  `serie_id` int(11) NOT NULL,
  `serie_nom` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `categoria_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_serie`
--

INSERT INTO `tbl_serie` (`serie_id`, `serie_nom`, `categoria_id`) VALUES
(1, 'Dolly', 4),
(2, 'Melburne', 2),
(3, 'Redstone', 3),
(4, 'Renglon', 3),
(5, 'Houver', 3),
(6, 'Haas', 6),
(7, 'Viceroy', 4),
(8, 'Imperial', 5),
(9, 'Boulier', 5),
(10, 'Lotus', 4),
(11, 'Sellroc', 4),
(12, 'Evergreen', 4),
(13, 'Sandor', 5),
(14, 'Blotec', 5),
(15, 'Chandon', 5),
(16, 'White', 6),
(17, 'Colors', 6),
(18, 'Leds', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuari`
--

CREATE TABLE `tbl_usuari` (
  `usu_id` int(3) NOT NULL,
  `usu_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usu_password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `usu_nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `usu_apellido` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_usuari`
--

INSERT INTO `tbl_usuari` (`usu_id`, `usu_email`, `usu_password`, `usu_nombre`, `usu_apellido`) VALUES
(1, 'davidmp@gmail.com', 'QWEqwe123', 'David', 'Martinez'),
(2, 'Marthaf@gmail.com', 'QAZqaz123', 'Martha', 'Fernandez'),
(3, 'Davidm@gmail.com', 'QAZqaz123', 'David', 'Marin'),
(4, 'omrfob@b,kfolmg', 'hola', 'rfgrgrfgbrfbfrt', 'vkfrolbfobmf'),
(5, 'gvfrfrfdbfr@bftbgtb', 'hola', 'rfmgkfrknrfvgrfdrvgdr', 'dvdrvdrvdfrvgrf'),
(6, 'gvfrfrfdbfr@bftbgtb.com', 'hola', 'rfmgkfrknrfvgrfdrvgdr', 'dvdrvdrvdfrvgrf'),
(7, 'gvfrfrfdbfr@bftbgtb.es', 'hola', 'rfmgkfrknrfvgrfdrvgdr', 'dvdrvdrvdfrvgrf'),
(8, 'efrrgrgrfgrfg@gtgt.com', 'hola', 'edffgedgfrbhfr', 'gdgdgdrgdrg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `tbl_estoc`
--
ALTER TABLE `tbl_estoc`
  ADD PRIMARY KEY (`estoc_id`),
  ADD KEY `FK_estoc_prod` (`prod_id`),
  ADD KEY `FK_estoc_lloc` (`lloc_id`);

--
-- Indices de la tabla `tbl_lloc`
--
ALTER TABLE `tbl_lloc`
  ADD PRIMARY KEY (`lloc_id`);

--
-- Indices de la tabla `tbl_producte`
--
ALTER TABLE `tbl_producte`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `FK_prod_serie` (`serie_id`);

--
-- Indices de la tabla `tbl_serie`
--
ALTER TABLE `tbl_serie`
  ADD PRIMARY KEY (`serie_id`),
  ADD KEY `FK_serie_categoria` (`categoria_id`);

--
-- Indices de la tabla `tbl_usuari`
--
ALTER TABLE `tbl_usuari`
  ADD PRIMARY KEY (`usu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  MODIFY `categoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_estoc`
--
ALTER TABLE `tbl_estoc`
  MODIFY `estoc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tbl_lloc`
--
ALTER TABLE `tbl_lloc`
  MODIFY `lloc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tbl_producte`
--
ALTER TABLE `tbl_producte`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tbl_serie`
--
ALTER TABLE `tbl_serie`
  MODIFY `serie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `tbl_usuari`
--
ALTER TABLE `tbl_usuari`
  MODIFY `usu_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_estoc`
--
ALTER TABLE `tbl_estoc`
  ADD CONSTRAINT `FK_estoc_lloc` FOREIGN KEY (`lloc_id`) REFERENCES `tbl_lloc` (`lloc_id`),
  ADD CONSTRAINT `FK_estoc_prod` FOREIGN KEY (`prod_id`) REFERENCES `tbl_producte` (`prod_id`);

--
-- Filtros para la tabla `tbl_producte`
--
ALTER TABLE `tbl_producte`
  ADD CONSTRAINT `FK_prod_serie` FOREIGN KEY (`serie_id`) REFERENCES `tbl_serie` (`serie_id`);

--
-- Filtros para la tabla `tbl_serie`
--
ALTER TABLE `tbl_serie`
  ADD CONSTRAINT `FK_serie_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `tbl_categoria` (`categoria_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
