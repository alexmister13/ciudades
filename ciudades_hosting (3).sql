-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2017 a las 19:00:27
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ciudades_hosting`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbciudades`
--

CREATE TABLE `tbciudades` (
  `id` int(3) NOT NULL,
  `ciudad` varchar(200) NOT NULL,
  `descripcion` varchar(800) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbciudades`
--

INSERT INTO `tbciudades` (`id`, `ciudad`, `descripcion`, `activo`) VALUES
(1, 'Londres', 'descripcion Londres', 1),
(2, 'Paris', 'descripcion Paris', 1),
(3, 'Roma', 'descripcion Roma', 1),
(6, 'Praga', 'descripcion praga', 1),
(7, 'Singapur', 'Singapur', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbimagenes`
--

CREATE TABLE `tbimagenes` (
  `id` int(3) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `idciudad` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbimagenes`
--

INSERT INTO `tbimagenes` (`id`, `imagen`, `idciudad`) VALUES
(18, 'uploads/18_londres1.jpg', 1),
(19, 'uploads/19_londres2.jpg', 1),
(20, 'uploads/20_', 2),
(21, 'uploads/21_paris3.jpg', 2),
(22, 'uploads/22_roma2.jpg', 3),
(23, 'uploads/23_roma3.jpg', 3),
(24, 'uploads/24_praga.jpg', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbusuarios`
--

CREATE TABLE `tbusuarios` (
  `id` int(3) NOT NULL,
  `nombreCompleto` varchar(200) NOT NULL,
  `user` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbusuarios`
--

INSERT INTO `tbusuarios` (`id`, `nombreCompleto`, `user`, `pass`) VALUES
(25, 'Pedro López', 'plopez', '81dc9bdb52d04dc20036dbd8313ed055'),
(27, 'María Ruíz', 'mruiz', '81dc9bdb52d04dc20036dbd8313ed055'),
(28, 'alex', 'alex', 'a6d414ac4f293187dd042025834925f7'),
(30, 'diego', 'diego', '35bc8cec895861697a0243c1304c7789'),
(31, 'ernesto', 'ernesto', 'ba636e688c212ed6486713d84cc587de');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbciudades`
--
ALTER TABLE `tbciudades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbimagenes`
--
ALTER TABLE `tbimagenes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbusuarios`
--
ALTER TABLE `tbusuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbciudades`
--
ALTER TABLE `tbciudades`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `tbimagenes`
--
ALTER TABLE `tbimagenes`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `tbusuarios`
--
ALTER TABLE `tbusuarios`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
