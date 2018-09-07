-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-09-2018 a las 14:30:50
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sisadmin`
--
CREATE DATABASE sisadmin;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `cedula` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(70) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contrasena` varchar(45) NOT NULL,
  `rol` varchar(30) NOT NULL,
  `rh` varchar(5) NOT NULL,
  `foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`cedula`, `nombre`, `direccion`, `telefono`, `email`, `contrasena`, `rol`, `rh`, `foto`) VALUES
(97090808, 'Danna Alejandra Diaz Fuentes', 'Carr 10a N 17b 53', '3125027062', 'dana@gmail.com', '1234', 'Adminstrador', 'b+', 'fgfdg.PNG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arrendatarios`
--

CREATE TABLE `arrendatarios` (
  `cedula` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `genero` varchar(7) NOT NULL,
  `rh` varchar(5) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contrasena` varchar(45) NOT NULL,
  `rol` varchar(15) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `arrendatarios`
--

INSERT INTO `arrendatarios` (`cedula`, `nombre`, `telefono`, `genero`, `rh`, `email`, `contrasena`, `rol`, `foto`) VALUES
(1073522345, 'Elkin Andres Diaz', '3124106459', 'hombre', 'B+', 'elkandi20@gmail.com', 'eee', 'arrendatario', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casas`
--

CREATE TABLE `casas` (
  `id` varchar(5) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `casas`
--

INSERT INTO `casas` (`id`, `nombre`) VALUES
('1-1', 'Interior 1 Casa 1'),
('1-10', 'Interior 1 Casa 10'),
('1-11', 'Interior 1 Casa 11'),
('1-2', 'Interior 1 Casa 2'),
('1-3', 'Interior 1 Casa 3'),
('1-4', 'Interior 1 Casa 4'),
('1-5', 'Interior 1 Casa 5'),
('1-6', 'Interior 1 Casa 6'),
('1-7', 'Interior 1 Casa 7'),
('1-8', 'Interior 1 Casa 8'),
('1-9', 'Interior 1 Casa 9'),
('11-1', 'Interior 11 Casa 1'),
('11-10', 'Interior 11 Casa 10'),
('11-11', 'Interior 11 Casa 11'),
('11-2', 'Interior 11 Casa 2'),
('11-3', 'Interior 11 Casa 3'),
('11-4', 'Interior 11 Casa 4'),
('11-5', 'Interior 11 Casa 5'),
('11-6', 'Interior 11 Casa 6'),
('11-7', 'Interior 11 Casa 7'),
('11-8', 'Interior 11 Casa 8'),
('11-9', 'Interior 11 Casa 9'),
('2-1', 'Interior 2 Casa 1'),
('2-10', 'Interior 2 Casa 10'),
('2-11', 'Interior 2 Casa 11'),
('2-2', 'Interior 2 Casa 2'),
('2-3', 'Interior 2 Casa 3'),
('2-4', 'Interior 2 Casa 4'),
('2-5', 'Interior 2 Casa 5'),
('2-6', 'Interior 2 Casa 6'),
('2-7', 'Interior 2 Casa 7'),
('2-8', 'Interior 2 Casa 8'),
('2-9', 'Interior 2 Casa 9'),
('3-1', 'Interior 3 Casa 1'),
('3-10', 'Interior 3 Casa 10'),
('3-11', 'Interior 3 Casa 11'),
('3-2', 'Interior 3 Casa 2'),
('3-3', 'Interior 3 Casa 3'),
('3-4', 'Interior 3 Casa 4'),
('3-5', 'Interior 3 Casa 5'),
('3-6', 'Interior 3 Casa 6'),
('3-7', 'Interior 3 Casa 7'),
('3-8', 'Interior 3 Casa 8'),
('3-9', 'Interior 3 Casa 9'),
('4-1', 'Interior 4 Casa 1'),
('4-10', 'Interior 4 Casa 10'),
('4-11', 'Interior 4 Casa 11'),
('4-2', 'Interior 4 Casa 2'),
('4-3', 'Interior 4 Casa 3'),
('4-4', 'Interior 4 Casa 4'),
('4-5', 'Interior 4 Casa 5'),
('4-6', 'Interior 4 Casa 6'),
('4-7', 'Interior 4 Casa 7'),
('4-8', 'Interior 4 Casa 8'),
('4-9', 'Interior 4 Casa 9'),
('5-1', 'Interior 5 Casa 1'),
('5-10', 'Interior 5 Casa 10'),
('5-11', 'Interior 5 Casa 11'),
('5-2', 'Interior 5 Casa 2'),
('5-3', 'Interior 5 Casa 3'),
('5-4', 'Interior 5 Casa 4'),
('5-5', 'Interior 5 Casa 5'),
('5-6', 'Interior 5 Casa 6'),
('5-7', 'Interior 5 Casa 7'),
('5-8', 'Interior 5 Casa 8'),
('5-9', 'Interior 5 Casa 9'),
('6-1', 'Interior 6 Casa 1'),
('6-10', 'Interior 6 Casa 10'),
('6-11', 'Interior 6 Casa 11'),
('6-2', 'Interior 6 Casa 2'),
('6-3', 'Interior 6 Casa 3'),
('6-4', 'Interior 6 Casa 4'),
('6-5', 'Interior 6 Casa 5'),
('6-6', 'Interior 6 Casa 6'),
('6-7', 'Interior 6 Casa 7'),
('6-8', 'Interior 6 Casa 8'),
('6-9', 'Interior 6 Casa 9'),
('7-1', 'Interior 7 Casa 1'),
('7-10', 'Interior 7 Casa 10'),
('7-11', 'Interior 7 Casa 11'),
('7-2', 'Interior 7 Casa 2'),
('7-3', 'Interior 7 Casa 3'),
('7-4', 'Interior 7 Casa 4'),
('7-5', 'Interior 7 Casa 5'),
('7-6', 'Interior 7 Casa 6'),
('7-7', 'Interior 7 Casa 7'),
('7-8', 'Interior 7 Casa 8'),
('7-9', 'Interior 7 Casa 9'),
('8-1', 'Interior 8 Casa 1'),
('8-10', 'Interior 8 Casa 10'),
('8-11', 'Interior 8 Casa 11'),
('8-2', 'Interior 8 Casa 2'),
('8-3', 'Interior 8 Casa 3'),
('8-4', 'Interior 8 Casa 4'),
('8-5', 'Interior 8 Casa 5'),
('8-6', 'Interior 8 Casa 6'),
('8-7', 'Interior 8 Casa 7'),
('8-8', 'Interior 8 Casa 8'),
('8-9', 'Interior 8 Casa 9'),
('9-1', 'Interior 9 Casa 1'),
('9-10', 'Interior 9 Casa 10'),
('9-11', 'Interior 9 Casa 11'),
('9-2', 'Interior 9 Casa 2'),
('9-3', 'Interior 9 Casa 3'),
('9-4', 'Interior 9 Casa 4'),
('9-5', 'Interior 9 Casa 5'),
('9-6', 'Interior 9 Casa 6'),
('9-7', 'Interior 9 Casa 7'),
('9-8', 'Interior 9 Casa 8'),
('9-9', 'Interior 9 Casa 9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcion`
--

CREATE TABLE `funcion` (
  `id` int(2) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guardas`
--

CREATE TABLE `guardas` (
  `cedula` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `genero` varchar(7) NOT NULL,
  `rh` varchar(5) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contrasena` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `rol` varchar(30) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `guardas`
--

INSERT INTO `guardas` (`cedula`, `nombre`, `telefono`, `genero`, `rh`, `email`, `contrasena`, `direccion`, `rol`, `foto`) VALUES
(12345, 'asd', '655466', 'hombre', 'AB+', 'a@g.com', 'guarda', 'caree s', 'guarda', NULL),
(1073423534, 'Camilo Vargas', '3109086523', 'hombre', 'B-', 'camilo@gmail.com', 'guarda', 'calle 13a N 14 54', 'guarda', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `fecha`, `hora`, `titulo`, `descripcion`) VALUES
(0, '2018-09-01', '07:31:00', 'yt', 'tyu'),
(19, '2016-06-15', '01:48:00', 'Ahora podrÃ¡s usar Google Translate en conversaciones de Whatsapp y otras aplicaciones', 'La nueva app resuelve los inconvenientes que muchos usuarios enfrentaban cuando querÃ­an traducir un texto que les enviaban por correo, en un mensaje de Whatsapp, en un artÃ­culo de prensa. Para hacer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE `novedades` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `id_casa` varchar(5) NOT NULL,
  `id_tiponovedad` int(2) NOT NULL,
  `respuesta` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `fecha`, `hora`, `descripcion`, `id_casa`, `id_tiponovedad`, `respuesta`) VALUES
(17, '2016-06-15', '01:51:00', 'La BÃºsqueda de Google estÃ¡ repleta de funciones Ãºtiles.\r\nPodrÃ¡s encontrarlas todas aquÃ­ para que no tengas que buscarlas.', '11-9', 1, 'estaremos atentos'),
(18, '2016-06-15', '01:55:00', 'No discuto de ninguna manera la reposiciÃ³n de los aparatos, pero alteran mis labores en forma latente, pues retrazan las entregas de los aparatos de computaciÃ³n que se me entregan para su compostura', '2-4', 2, 'oksa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietarios`
--

CREATE TABLE `propietarios` (
  `cedula` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `genero` varchar(7) NOT NULL,
  `rh` varchar(5) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contrasena` varchar(45) NOT NULL,
  `rol` varchar(15) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `propietarios`
--

INSERT INTO `propietarios` (`cedula`, `nombre`, `telefono`, `genero`, `rh`, `email`, `contrasena`, `rol`, `foto`) VALUES
(23521408, 'Maria Isabel Diaz', '3125037062', 'mujer', 'A+', 'chava@gmail.com', 'eee', 'propietario', ''),
(1073248424, 'Angie', '31234234', 'mujer', 'B+', 'angie@gmail.com', 'eee', 'propietario', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_final` time NOT NULL,
  `motivo` varchar(200) NOT NULL,
  `id_casa` varchar(5) DEFAULT NULL,
  `respuesta` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `fecha`, `hora_inicio`, `hora_final`, `motivo`, `id_casa`, `respuesta`) VALUES
(15, '2016-06-16', '06:00:00', '12:00:00', 'Matrimonio', '11-9', 'ok'),
(16, '0000-00-00', '12:00:00', '15:00:00', 'Fiesta de cumpleaÃ±os', '2-4', 'Libre para ese Dia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_casa_arrendatario`
--

CREATE TABLE `r_casa_arrendatario` (
  `id_casa` varchar(5) NOT NULL,
  `id_arrendatario` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `r_casa_arrendatario`
--

INSERT INTO `r_casa_arrendatario` (`id_casa`, `id_arrendatario`, `id`) VALUES
('2-4', 1073522345, 67);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_casa_propietarios`
--

CREATE TABLE `r_casa_propietarios` (
  `id_casa` varchar(5) NOT NULL,
  `id_propietarios` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `r_casa_propietarios`
--

INSERT INTO `r_casa_propietarios` (`id_casa`, `id_propietarios`, `id`) VALUES
('11-9', 23521408, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_guarda_turno`
--

CREATE TABLE `r_guarda_turno` (
  `id_guarda` int(11) NOT NULL,
  `id_turno` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_guasdas_visitas`
--

CREATE TABLE `r_guasdas_visitas` (
  `id_guarda` int(11) NOT NULL,
  `id_visita` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_turno_funcion`
--

CREATE TABLE `r_turno_funcion` (
  `id_turno` int(11) NOT NULL,
  `id_funcion` int(2) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_novedad`
--

CREATE TABLE `tipo_novedad` (
  `id` int(2) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_novedad`
--

INSERT INTO `tipo_novedad` (`id`, `nombre`) VALUES
(1, 'Sugerencias'),
(2, 'Quejas'),
(3, 'Reclamos'),
(4, 'Noticias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `id` int(11) NOT NULL,
  `fecha_entrada` date NOT NULL,
  `hora_entrada` time NOT NULL,
  `fecha_salida` date NOT NULL,
  `hora_salida` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE `visitas` (
  `id` int(11) NOT NULL,
  `cedula` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `hora_ingreso` time DEFAULT NULL,
  `fecha_salida` date DEFAULT NULL,
  `hora_salida` time DEFAULT NULL,
  `id_casa` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `visitas`
--

INSERT INTO `visitas` (`id`, `cedula`, `nombre`, `telefono`, `fecha_ingreso`, `hora_ingreso`, `fecha_salida`, `hora_salida`, `id_casa`) VALUES
(12, 1019242345, 'Paula Villamizar', '3193456576', NULL, NULL, NULL, NULL, '11-9'),
(13, 1073534523, 'Angie Buitrago', '3124567635', NULL, NULL, NULL, NULL, '2-4'),
(12, 1019242345, 'Paula Villamizar', '3193456576', NULL, NULL, NULL, NULL, '11-9'),
(13, 1073534523, 'Angie Buitrago', '3124567635', NULL, NULL, NULL, NULL, '2-4'),
(0, 46671514, 'yutyutut', 'tyut', NULL, NULL, NULL, NULL, '2-4');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `arrendatarios`
--
ALTER TABLE `arrendatarios`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `casas`
--
ALTER TABLE `casas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `funcion`
--
ALTER TABLE `funcion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `guardas`
--
ALTER TABLE `guardas`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_casa` (`id_casa`),
  ADD KEY `id_tiponovedad` (`id_tiponovedad`);

--
-- Indices de la tabla `propietarios`
--
ALTER TABLE `propietarios`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_casa` (`id_casa`);

--
-- Indices de la tabla `r_casa_arrendatario`
--
ALTER TABLE `r_casa_arrendatario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_casa` (`id_casa`),
  ADD KEY `id_arrendatario` (`id_arrendatario`);

--
-- Indices de la tabla `r_casa_propietarios`
--
ALTER TABLE `r_casa_propietarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_casa` (`id_casa`),
  ADD KEY `id_propietarios` (`id_propietarios`);

--
-- Indices de la tabla `r_guarda_turno`
--
ALTER TABLE `r_guarda_turno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guarda` (`id_guarda`),
  ADD KEY `id_turno` (`id_turno`);

--
-- Indices de la tabla `r_guasdas_visitas`
--
ALTER TABLE `r_guasdas_visitas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guarda` (`id_guarda`),
  ADD KEY `id_visita` (`id_visita`);

--
-- Indices de la tabla `r_turno_funcion`
--
ALTER TABLE `r_turno_funcion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_turno` (`id_turno`),
  ADD KEY `id_funcion` (`id_funcion`);

--
-- Indices de la tabla `tipo_novedad`
--
ALTER TABLE `tipo_novedad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
