-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2025 a las 21:23:44
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `irvin_romero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centros`
--

CREATE TABLE `centros` (
  `NO_CENTRO` varchar(10) NOT NULL,
  `NOMBRE_CENTRO` varchar(100) NOT NULL,
  `DIRECCION` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `centros`
--

INSERT INTO `centros` (`NO_CENTRO`, `NOMBRE_CENTRO`, `DIRECCION`) VALUES
('10A', 'SEDE CENTRAL', 'PANAMA, MARBELLA'),
('20A', 'RELACION CON CLIENTES', 'PANAMA, VIA ESPAÑA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaboradores`
--

CREATE TABLE `colaboradores` (
  `COD_EMP` int(11) NOT NULL,
  `COD_DEPTO` varchar(10) NOT NULL,
  `EXTENSION` int(11) DEFAULT NULL,
  `FECHA_NAC` date NOT NULL,
  `FECHA_ING` date NOT NULL,
  `SALARIO` decimal(10,2) NOT NULL,
  `COMISION` decimal(10,2) DEFAULT NULL,
  `HIJOS` int(11) DEFAULT 0,
  `NOMBRE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `colaboradores`
--

INSERT INTO `colaboradores` (`COD_EMP`, `COD_DEPTO`, `EXTENSION`, `FECHA_NAC`, `FECHA_ING`, `SALARIO`, `COMISION`, `HIJOS`, `NOMBRE`) VALUES
(110, '21', 350, '1939-11-10', '1950-02-10', 1310.00, NULL, 3, 'PONS, CESAR'),
(120, '12', 840, '1945-06-09', '1968-10-01', 1350.00, 110.00, 1, 'LASA, MARIO'),
(130, '12', 810, '1955-11-09', '1969-02-01', 1290.00, 110.00, 2, 'TEROL, LUCIANO'),
(150, '21', 340, '1940-08-10', '1948-01-15', 1440.00, NULL, 0, 'PEREZ, JULIO'),
(160, '11', 740, '1949-07-09', '1968-11-11', 1310.00, 110.00, 2, 'AGUIRRE, AUREO'),
(180, '10', 508, '1944-10-18', '1956-03-18', 1480.00, 50.00, 2, 'PEREZ, MARCOS'),
(190, '21', 350, '1942-05-12', '1962-02-11', 1300.00, NULL, 4, 'VEIGA, JULIANA'),
(210, '00', 200, '1950-09-28', '1959-01-22', 1380.00, NULL, 2, 'GALVEZ, PILAR'),
(240, '11', 760, '1952-02-26', '1966-02-24', 1280.00, 100.00, 3, 'SANZ, LAVINIA'),
(250, '00', 250, '1956-10-27', '1967-03-01', 1450.00, NULL, 0, 'ALBA, ADRIANA'),
(260, '00', 220, '1953-12-03', '1968-07-12', 1720.00, NULL, 6, 'LOPEZ, ANTONIO'),
(270, '12', 800, '1955-05-21', '1966-09-10', 1380.00, 80.00, 3, 'GARCIA, OCTAVIO'),
(280, '30', 410, '1958-01-11', '1971-10-08', 1290.00, NULL, 5, 'FLOR, DOROTEA'),
(290, '20', 910, '1957-11-30', '1968-02-14', 1270.00, NULL, 3, 'GIL, GLORIA'),
(310, '30', 480, '1956-11-21', '1971-01-15', 1420.00, NULL, 0, 'GARCIA, AUGUSTO'),
(320, '22', 620, '1967-12-25', '1978-02-05', 1405.00, NULL, 2, 'SANZ, CORNELIO'),
(330, '12', 850, '1958-08-19', '1972-03-01', 1280.00, 90.00, 0, 'DIEZ, AMELIA'),
(360, '11', 750, '1958-10-29', '1968-10-10', 1250.00, 100.00, 2, 'LARA, DORINDA'),
(370, '21', 360, '1977-06-22', '1987-01-20', 1190.00, NULL, 1, 'RUIZ, FABIOLA'),
(380, '12', 880, '1978-03-30', '1988-01-01', 1180.00, NULL, 0, 'MARTÍN, MICAELA'),
(390, '10', 500, '1976-02-19', '1986-10-08', 1215.00, NULL, 1, 'MORAN, CARMEN'),
(400, '11', 780, '1979-08-18', '1987-11-01', 1185.00, NULL, 0, 'LARA, LUCRECIA'),
(410, '22', 660, '1978-07-14', '1988-10-13', 1175.00, NULL, 0, 'MUÑOZ, AZUCENA'),
(420, '30', 450, '1976-10-22', '1988-11-19', 1400.00, NULL, 0, 'FIERRO, CLAUDIA'),
(430, '22', 650, '1977-10-26', '1988-11-19', 1210.00, NULL, 1, 'MORA, VALERIANA'),
(440, '11', 760, '1976-09-27', '1986-02-28', 1210.00, 100.00, 0, 'DURAN, LIVIA'),
(450, '12', 880, '1976-10-21', '1986-02-28', 1210.00, 100.00, 0, 'PEREZ, SABINA'),
(480, '11', 760, '1975-04-04', '1986-02-28', 1210.00, 100.00, 1, 'PINO, DIANA'),
(490, '12', 880, '1974-06-06', '1988-01-01', 1180.00, 100.00, 0, 'TORRES, HORACIO'),
(500, '11', 750, '1975-10-08', '1987-01-01', 1200.00, 100.00, 0, 'VASQUEZ, HONORIA'),
(510, '10', 550, '1976-05-04', '1986-11-01', 1200.00, NULL, 1, 'CAMPOS, ROMULO'),
(550, '11', 780, '1988-01-10', '1988-01-21', 1100.00, 120.00, 0, 'SANTOS, SANCHO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `NO_DEPTO` varchar(10) NOT NULL,
  `CENTRO` varchar(10) NOT NULL,
  `DIRECTOR` int(11) DEFAULT NULL,
  `PRESUPUESTO` decimal(10,2) DEFAULT NULL,
  `DEPTO_JEFE` varchar(10) DEFAULT NULL,
  `NOMBRE_DEPTO` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`NO_DEPTO`, `CENTRO`, `DIRECTOR`, `PRESUPUESTO`, `DEPTO_JEFE`, `NOMBRE_DEPTO`) VALUES
('00', '10A', 260, 12.00, NULL, 'DIRECCIÓN GENERAL'),
('10', '20A', 180, 15.00, '00', 'DIRECCIÓN COMERCIAL'),
('11', '20A', 180, 11.00, '10', 'SECTOR INDUSTRIAL'),
('12', '20A', 270, 9.00, '00', 'SECTOR SERVICIOS'),
('20', '10A', 150, 3.00, '00', 'ORGANIZACIÓN'),
('21', '10A', 150, 2.00, '20', 'PERSONAL'),
('22', '10A', NULL, 6.00, '20', 'PROCESO DE DATOS'),
('30', '10A', NULL, 2.00, '00', 'FINANZAS');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `centros`
--
ALTER TABLE `centros`
  ADD PRIMARY KEY (`NO_CENTRO`);

--
-- Indices de la tabla `colaboradores`
--
ALTER TABLE `colaboradores`
  ADD PRIMARY KEY (`COD_EMP`),
  ADD KEY `COD_DEPTO` (`COD_DEPTO`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`NO_DEPTO`),
  ADD KEY `CENTRO` (`CENTRO`),
  ADD KEY `DEPTO_JEFE` (`DEPTO_JEFE`),
  ADD KEY `DIRECTOR` (`DIRECTOR`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `colaboradores`
--
ALTER TABLE `colaboradores`
  ADD CONSTRAINT `colaboradores_ibfk_1` FOREIGN KEY (`COD_DEPTO`) REFERENCES `departamentos` (`NO_DEPTO`);

--
-- Filtros para la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD CONSTRAINT `departamentos_ibfk_1` FOREIGN KEY (`CENTRO`) REFERENCES `centros` (`NO_CENTRO`),
  ADD CONSTRAINT `departamentos_ibfk_2` FOREIGN KEY (`DEPTO_JEFE`) REFERENCES `departamentos` (`NO_DEPTO`),
  ADD CONSTRAINT `departamentos_ibfk_3` FOREIGN KEY (`DIRECTOR`) REFERENCES `colaboradores` (`COD_EMP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
