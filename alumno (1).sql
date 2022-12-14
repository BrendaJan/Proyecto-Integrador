-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2022 a las 04:22:56
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alumno`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `cod_estudiante` int(11) NOT NULL,
  `dni` int(11) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `edad` int(10) NOT NULL,
  `asesor` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`cod_estudiante`, `dni`, `nombres`, `apellidos`, `edad`, `asesor`) VALUES
(103, 75854551, 'Jimena', 'Sandobal Gutierre', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesor`
--

CREATE TABLE `asesor` (
  `claveAsesor` int(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `edad` int(30) NOT NULL,
  `escolaridad` varchar(30) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `telefono` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asesor`
--

INSERT INTO `asesor` (`claveAsesor`, `nombre`, `edad`, `escolaridad`, `correo`, `telefono`) VALUES
(467, 'chucho', 34, 'ingeniero', 'lobos--789@hotmail.com', '..........................'),
(2, 'Asucena Hernandez Crisostomos', 33, 'Licenciada I', 'asucena88@gmail.com', '5566432128'),
(1, 'Raul Nava Lopez', 42, 'Ingeniero', '..................', '..........................');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesis`
--

CREATE TABLE `tesis` (
  `claveTesis` int(10) NOT NULL,
  `nombreTesis` varchar(30) NOT NULL,
  `cod_estudiante` int(30) NOT NULL,
  `nombreAutor` varchar(30) NOT NULL,
  `fechaPublicacion` varchar(30) NOT NULL,
  `modalidad` varchar(30) NOT NULL,
  `claveAsesor` varchar(2) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tesis`
--

INSERT INTO `tesis` (`claveTesis`, `nombreTesis`, `cod_estudiante`, `nombreAutor`, `fechaPublicacion`, `modalidad`, `claveAsesor`, `nombre`) VALUES
(12, 'sistema iweb', 2019330211, 'estefania ', '2020', 'tesis', '01', 'armando'),
(12, 'sistema iweb', 2019330211, 'estefania ', '2020', 'tesis', '01', 'armando');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `claveUsuario` varchar(10) NOT NULL,
  `user` varchar(10) NOT NULL,
  `contrasena` varchar(10) NOT NULL,
  `estado` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`claveUsuario`, `user`, `contrasena`, `estado`) VALUES
('01', 'zgamer', '1234', 1),
('02', 'anahi', '1234', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
