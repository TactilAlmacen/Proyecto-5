-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-02-2018 a las 12:06:25
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(3, 'Lamapara de sostre'),
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
  `lloc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_estoc`
--

INSERT INTO `tbl_estoc` (`estoc_id`, `estoc_q_max`, `estoc_q_min`, `prod_id`, `lloc_id`) VALUES
(1, 100, 30, 1, 2),
(2, 50, 10, 6, 13),
(3, 90, 30, 13, 10),
(4, 50, 10, 14, 3),
(5, 30, 5, 7, 5),
(6, 40, 10, 13, 16),
(7, 50, 10, 12, 12),
(8, 70, 10, 34, 13),
(9, 70, 20, 35, 13),
(10, 80, 20, 33, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_lloc`
--

CREATE TABLE `tbl_lloc` (
  `lloc_id` int(11) NOT NULL,
  `num_bloc` enum('Bloc 1','Bloc 2','Bloc3','Bloc 4','Bloc 5','Bloc 6','Bloc 7','Bloc 8') COLLATE utf8_unicode_ci NOT NULL,
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
(1, 'Lampara vintage', '', 1, 'Lampara antigua de metal', 20, 25.56),
(2, 'Lampara de cristal', '', 1, 'Lampara de cristal', 30, 35.55),
(3, 'lampara arcade', '', 2, 'lampara de dibujos', 0, 78.33),
(4, 'lampara de presion', '', 2, 'lampara accionada con boton de suelo a presion', 40, 52.45),
(5, 'lampara tactil', '', 3, 'lampara accionada con dispositivo tactil', 0, 241.54),
(6, 'lampara bluethoot', '', 3, 'lampara accionada por control bluethoot', 0, 457.27),
(7, 'lampara por voz', '', 4, 'lampara accionada por voz', 60, 543.25),
(8, 'lampara vasca', '', 5, 'lampara vasca ', 20, 366.00),
(9, 'lampara', '', 5, 'lampara', 54, 65.00),
(10, 'lampara', '', 6, NULL, 51, 254.00),
(11, 'lampara', '', 6, 'lampara', 12, 422.00),
(12, 'lampara', '', 7, 'lampara', 0, 534.00),
(13, 'lampara', '', 7, 'lampara', 0, 132.00),
(14, 'lampara', '', 8, 'lampara', 20, 45.00),
(15, 'lampara', '', 8, 'lampara', 40, 90.00),
(16, 'lampara', '', 9, 'lampara', 10, 547.00),
(17, 'lampara', '', 9, 'lampara', 0, 410.00),
(18, 'lampara', '', 10, 'lampara', 20, 100.00),
(19, 'lampara', '', 10, 'lampara', 10, 300.00),
(20, 'lampara', '', 11, 'lampara', 20, 60.00),
(21, 'lampara', '', 11, 'lampara', 30, 90.00),
(22, 'lampara', '', 12, 'lampara', 0, 40.00),
(23, 'lampara', '', 12, 'lampara', 25, 75.00),
(24, 'lampara', '', 13, 'lampara', 40, 150.00),
(25, 'lampara', '', 13, 'lampara', 80, 100.00),
(26, 'lampara', '', 14, 'lampara', 0, 564.00),
(27, 'lampara', '', 14, 'lampara', 10, 39.00),
(28, 'lampara', '', 15, 'lampara', 20, 80.00),
(29, 'lampara', '', 15, 'lampara', 22, 80.00),
(30, 'lampara', '', 16, 'lampara', 20, 150.00),
(31, 'lampara', '', 16, 'lampara', 30, 99.00),
(32, 'lampara', '', 17, 'lampara', 0, 40.00),
(33, 'lampara', '', 17, 'lampara', 50, 149.00),
(34, 'lampara', '', 18, 'lampara', 50, 180.00),
(35, 'lampara', '', 18, 'lampara', 20, 130.00);

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
(1, 'Dolly', 1),
(2, 'Melburne', 1),
(3, 'Redstone', 1),
(4, 'Renglon', 2),
(5, 'Houver', 2),
(6, 'Haas', 2),
(7, 'Viceroy', 3),
(8, 'Imperial', 3),
(9, 'Boulier', 3),
(10, 'Lotus', 4),
(11, 'Sellroc', 4),
(12, 'Evergreen', 4),
(13, 'Sandor', 5),
(14, 'Blotec', 5),
(15, 'Chandon', 5),
(16, 'White', 6),
(17, 'Colors', 6),
(18, 'Leds', 6);

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
(3, 'Davidm@gmail.com', 'QAZqaz123', 'David', 'Marin');

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
  MODIFY `estoc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `tbl_lloc`
--
ALTER TABLE `tbl_lloc`
  MODIFY `lloc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `tbl_producte`
--
ALTER TABLE `tbl_producte`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `tbl_serie`
--
ALTER TABLE `tbl_serie`
  MODIFY `serie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `tbl_usuari`
--
ALTER TABLE `tbl_usuari`
  MODIFY `usu_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
