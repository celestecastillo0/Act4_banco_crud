-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2021 a las 05:36:59
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `banco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `NoCliente` int(10) NOT NULL,
  `NombreCliente` varchar(150) NOT NULL,
  `NoPrestamosCliente` int(100) NOT NULL,
  `SaldoCliente` int(100) NOT NULL,
  `TelefonoCliente` bigint(10) NOT NULL,
  `DomicilioCliente` varchar(150) NOT NULL,
  `CorreoCliente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`NoCliente`, `NombreCliente`, `NoPrestamosCliente`, `SaldoCliente`, `TelefonoCliente`, `DomicilioCliente`, `CorreoCliente`) VALUES
(1, 'Celeste Castillo Flores', 5, 10000, 6561099703, 'AV TECNOLOGICO 2903 , MAGISTERIAL UNIVERSIDAD , CHIHUAHUA , CHIH , C.P. 31200', 'celestecastillo735@gmail.com'),
(2, 'Luis Eduardo Robles Ramos', 2, 200000, 6561098803, 'AV. JUAN ESCUTIA 1404 , LOMAS KARIKE , CHIHUAHUA , CHIH , C.P. 31120', 'Luisrobles08@gmail.com'),
(3, 'Brenda Flores Garcia', 1, 1000000, 6565513517, 'AVENIDA 5A PONIENTE 105 , CENTRO , DELICIAS , CHIH , C.P. 33000', 'Brenda566@gmail.com'),
(4, 'Jessica Fong Arredondo', 0, 50000, 6561099804, 'VENUSTIANO CARRANZA 803 , ROMA SUR , CHIHUAHUA , CHIH , C.P. 31350', '16jessica@gmail.com'),
(5, 'Selene Castillo Flores', 0, 300000000, 6562450909, 'ALDAMA Y V CARRANZA S/N , ZONA CENTRO , CHIHUAHUA , CHIH , C.P. 31000', 'Flornoire1409@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `NoEmp` int(10) NOT NULL,
  `NombreEmp` varchar(150) NOT NULL,
  `FechaIngEmp` date NOT NULL,
  `PuestoEmp` varchar(100) NOT NULL,
  `TelefonoEmp` bigint(10) NOT NULL,
  `DomicilioEmp` varchar(150) NOT NULL,
  `CorreoEmp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`NoEmp`, `NombreEmp`, `FechaIngEmp`, `PuestoEmp`, `TelefonoEmp`, `DomicilioEmp`, `CorreoEmp`) VALUES
(1, 'Jazmin Mendrano Mendoza', '2014-09-08', 'Subgerente', 6561099859, 'ALLENDE 1912 , ZONA CENTRO , CHIHUAHUA , CHIH , C.P. 31000', 'Jazminm0908@gmail.com'),
(2, 'Arturo Betancourt Cortez', '2011-10-03', 'Cajero', 6561985678, 'ALDAMA Y V CARRANZA S/N , ZONA CENTRO , CHIHUAHUA , CHIH , C.P. 31000', 'Arturob@gmail.com'),
(3, 'Yara Anchondo Blaz', '2020-11-10', 'Contador', 6561075692, 'CALLE 3 A NO. 604 , ZONA CENTRO , CHIHUAHUA , CHIH , C.P. 31000', 'Yanc123@gmail.com'),
(4, 'Mariana Acosta Rodriguez', '2017-12-09', 'Gerente', 6562098769, 'AVE TEOFILO BORUNDA 500 , ZONA CENTRO , CHIHUAHUA , CHIH , C.P. 31000', 'Mta2388@gmail.com'),
(5, 'Ramses Tovar Castillo', '2016-10-18', 'Contador', 6562099876, 'OJINAGA 309 , ZONA CENTRO , CHIHUAHUA , CHIH , C.P. 31000', 'Rams2@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `CuentaBanc` bigint(20) NOT NULL,
  `MontoCompras` bigint(255) NOT NULL,
  `PagoCreditos` bigint(255) NOT NULL,
  `MontoDeudas` bigint(255) NOT NULL,
  `MontoServicios` bigint(255) NOT NULL,
  `Ahorros` bigint(255) NOT NULL,
  `SaldoTotal` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`CuentaBanc`, `MontoCompras`, `PagoCreditos`, `MontoDeudas`, `MontoServicios`, `Ahorros`, `SaldoTotal`) VALUES
(1, 1322, 122, 222, 211, 200, 199),
(2, 24, 987, 7373, 132883, 9138391, 31883433),
(5, 600, 500, 6777, 23400, 200044, 233333);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

CREATE TABLE `transacciones` (
  `CuentaBancaria` int(10) NOT NULL,
  `TipoTransferencia` varchar(100) NOT NULL,
  `MontoTransferencia` bigint(100) NOT NULL,
  `FechaTransferencia` date NOT NULL,
  `NoTransacciones` int(100) NOT NULL,
  `EmpBeneficiaria` varchar(100) NOT NULL,
  `RefBancaria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transacciones`
--

INSERT INTO `transacciones` (`CuentaBancaria`, `TipoTransferencia`, `MontoTransferencia`, `FechaTransferencia`, `NoTransacciones`, `EmpBeneficiaria`, `RefBancaria`) VALUES
(1, 'Inmediata', 4000, '2021-11-09', 1, '', ''),
(2, 'Urgente', 100, '2021-10-25', 1, 'Banamex', '193920012'),
(3, 'Ordinaria', 10000, '2021-11-01', 7, 'Bancoppel', '1353221'),
(4, 'Inmediata', 100, '2021-09-08', 1, 'Santander', '8765432'),
(5, 'Ordinaria', 200000, '2021-11-10', 3, 'Banorte', '09876543');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`NoCliente`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`NoEmp`);

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`CuentaBanc`);

--
-- Indices de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  ADD PRIMARY KEY (`CuentaBancaria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `NoCliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `NoEmp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  MODIFY `CuentaBanc` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  MODIFY `CuentaBancaria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
