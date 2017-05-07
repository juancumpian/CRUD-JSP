-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2017 a las 19:12:49
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ratones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ratones`
--

CREATE TABLE `ratones` (
  `raton_id` int(11) NOT NULL,
  `modelo` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `marca` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `DPI` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ratones`
--

INSERT INTO `ratones` (`raton_id`, `modelo`, `marca`, `DPI`, `precio`) VALUES
(1, 'B-Move BG Vyper Ratón Gaming', 'BG', 3200, 12.95),
(2, 'mifhndsio', 'fdsafs', 456, 45.8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ratones`
--
ALTER TABLE `ratones`
  ADD PRIMARY KEY (`raton_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
