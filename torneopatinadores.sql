-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2024 at 11:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `torneopatinadores`
--

-- --------------------------------------------------------

--
-- Table structure for table `participaciones`
--

CREATE TABLE `participaciones` (
  `id_participacion` int(11) NOT NULL,
  `patinador_id` int(11) NOT NULL,
  `torneo_id` int(11) NOT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `sede_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `participaciones`
--

INSERT INTO `participaciones` (`id_participacion`, `patinador_id`, `torneo_id`, `categoria`, `sede_id`) VALUES
(1, 1, 1, 'Mini-infantil', 1),
(2, 2, 1, 'Mini-infantil', 1),
(3, 3, 1, 'Mini-infantil', 2),
(4, 4, 1, 'Mini-infantil', 2),
(5, 5, 1, 'Infantil', 1),
(6, 6, 1, 'Mini-infantil', 0),
(7, 7, 1, 'Infantil', 3),
(8, 8, 1, 'Infantil', 2),
(9, 9, 1, 'Juvenil', 2),
(10, 10, 1, 'Juvenil', 1),
(11, 11, 2, 'Infantil', 1),
(12, 12, 2, 'Juvenil', 2),
(13, 13, 2, 'Mayores', 1),
(14, 14, 2, 'Mayores', 3),
(15, 15, 2, 'Mayores', 3),
(16, 16, 2, 'Mayores', 2),
(17, 17, 2, 'Mayores', 2),
(18, 18, 2, 'Mayores', 1),
(19, 19, 2, 'Mayores', 1),
(20, 20, 2, 'Mayores', 3),
(21, 1, 3, 'Mini-infantil', 2),
(22, 2, 3, 'Mini-infantil', 2),
(23, 3, 3, 'Mini-infantil', 1),
(24, 4, 3, 'Mini-infantil', 1),
(25, 5, 3, 'Mini-infantil', 2),
(26, 6, 3, 'No definido', NULL),
(27, 7, 3, 'Mini-infantil', NULL),
(28, 8, 3, 'Mini-infantil', NULL),
(29, 9, 3, 'Juvenil', NULL),
(30, 10, 3, 'Infantil', NULL),
(31, 1, 3, 'Categoría A', 1),
(32, 2, 3, 'Categoría A', 1),
(33, 3, 3, 'Categoría B', 2),
(34, 4, 3, 'Categoría B', 2),
(35, 5, 3, 'Categoría C', 1),
(36, 6, 3, 'Categoría C', 2);

-- --------------------------------------------------------

--
-- Table structure for table `patinadores`
--

CREATE TABLE `patinadores` (
  `nro_socio` int(11) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sede_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patinadores`
--

INSERT INTO `patinadores` (`nro_socio`, `apellido`, `nombre`, `fecha_nacimiento`, `sede_id`) VALUES
(1, 'Fernández', 'Lucía', '2014-05-15', 1),
(2, 'Martínez', 'Pedro', '2014-07-22', 1),
(3, 'Luna', 'Solange', '2014-10-03', 2),
(4, 'Ramos', 'Mateo', '2015-01-19', 2),
(5, 'López', 'Carly', '2012-09-10', 1),
(6, 'Altamirano', 'Zoey', '2013-03-05', 1),
(7, 'Nicollini', 'Martina', '2011-11-12', 2),
(8, 'Ruiz', 'Austen', '2012-07-21', 2),
(9, 'Santillana', 'Angeles', '2007-03-30', 2),
(10, 'Lubev', 'Martin', '2008-11-12', 1),
(11, 'Romero', 'Lucy', '2009-06-07', 2),
(12, 'Acosta', 'Ian', '2007-12-04', 1),
(13, 'Torres', 'Victoria', '2005-02-18', 1),
(14, 'Benítez', 'Julién', '2000-08-15', 2),
(15, 'Moreno', 'Florencia', '1999-05-01', 1),
(16, 'Silva', 'Nicolás', '1995-03-22', 2),
(17, 'Díaz', 'Pablo', '1990-11-10', 1),
(18, 'Sosa', 'Claudia', '1987-09-09', 2),
(19, 'Castro', 'Sebastián', '1992-01-30', 1),
(20, 'Molina', 'Valeria', '1985-06-17', 2);

-- --------------------------------------------------------

--
-- Table structure for table `profesores`
--

CREATE TABLE `profesores` (
  `id_profesor` int(11) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nro_legajo` int(11) NOT NULL,
  `cargo` enum('Titular','Suplente') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profesores`
--

INSERT INTO `profesores` (`id_profesor`, `apellido`, `nombre`, `nro_legajo`, `cargo`) VALUES
(1, 'Kim', 'Young Zah', 1001, 'Titular'),
(2, 'Varslovika', 'Lara', 1002, 'Suplente'),
(3, 'Staropolis', 'Clara', 1003, 'Titular'),
(4, 'Guerra', 'Carlos', 1004, 'Suplente');

-- --------------------------------------------------------

--
-- Table structure for table `sedes`
--

CREATE TABLE `sedes` (
  `id_sede` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `profesor_titular_id` int(11) DEFAULT NULL,
  `profesor_suplente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sedes`
--

INSERT INTO `sedes` (`id_sede`, `nombre`, `profesor_titular_id`, `profesor_suplente_id`) VALUES
(1, 'Club_Centro', 1, 2),
(2, 'Club_Sur', 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sede_profesores`
--

CREATE TABLE `sede_profesores` (
  `id` int(11) NOT NULL,
  `sede_id` int(11) NOT NULL,
  `profesor_id` int(11) NOT NULL,
  `rol` enum('titular','suplente') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `torneos`
--

CREATE TABLE `torneos` (
  `id_torneo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `año` int(11) NOT NULL,
  `fecha_1` date NOT NULL,
  `fecha_2` date NOT NULL,
  `fecha_3` date NOT NULL,
  `sede_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `torneos`
--

INSERT INTO `torneos` (`id_torneo`, `nombre`, `año`, `fecha_1`, `fecha_2`, `fecha_3`, `sede_id`) VALUES
(1, 'Torneo Homenaje a Lucía Fernández', 2023, '2023-03-01', '2023-06-01', '2023-09-01', 1),
(2, 'Torneo Homenaje a Pedro Martínez', 2022, '2022-03-01', '2022-06-01', '2022-09-01', 2),
(3, 'Torneo Homenaje a Sofía Gómez', 2021, '2021-03-01', '2021-06-01', '2021-09-01', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `participaciones`
--
ALTER TABLE `participaciones`
  ADD PRIMARY KEY (`id_participacion`),
  ADD KEY `patinador_id` (`patinador_id`),
  ADD KEY `torneo_id` (`torneo_id`);

--
-- Indexes for table `patinadores`
--
ALTER TABLE `patinadores`
  ADD PRIMARY KEY (`nro_socio`),
  ADD KEY `sede_id` (`sede_id`);

--
-- Indexes for table `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id_profesor`);

--
-- Indexes for table `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`id_sede`),
  ADD KEY `fk_profesor_titular` (`profesor_titular_id`),
  ADD KEY `fk_profesor_suplente` (`profesor_suplente_id`);

--
-- Indexes for table `sede_profesores`
--
ALTER TABLE `sede_profesores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sede_id` (`sede_id`),
  ADD KEY `profesor_id` (`profesor_id`);

--
-- Indexes for table `torneos`
--
ALTER TABLE `torneos`
  ADD PRIMARY KEY (`id_torneo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `participaciones`
--
ALTER TABLE `participaciones`
  MODIFY `id_participacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `patinadores`
--
ALTER TABLE `patinadores`
  MODIFY `nro_socio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id_sede` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sede_profesores`
--
ALTER TABLE `sede_profesores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `torneos`
--
ALTER TABLE `torneos`
  MODIFY `id_torneo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `participaciones`
--
ALTER TABLE `participaciones`
  ADD CONSTRAINT `participaciones_ibfk_1` FOREIGN KEY (`patinador_id`) REFERENCES `patinadores` (`nro_socio`),
  ADD CONSTRAINT `participaciones_ibfk_2` FOREIGN KEY (`torneo_id`) REFERENCES `torneos` (`id_torneo`);

--
-- Constraints for table `patinadores`
--
ALTER TABLE `patinadores`
  ADD CONSTRAINT `patinadores_ibfk_1` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id_sede`);

--
-- Constraints for table `sedes`
--
ALTER TABLE `sedes`
  ADD CONSTRAINT `fk_profesor_suplente` FOREIGN KEY (`profesor_suplente_id`) REFERENCES `profesores` (`id_profesor`),
  ADD CONSTRAINT `fk_profesor_titular` FOREIGN KEY (`profesor_titular_id`) REFERENCES `profesores` (`id_profesor`);

--
-- Constraints for table `sede_profesores`
--
ALTER TABLE `sede_profesores`
  ADD CONSTRAINT `sede_profesores_ibfk_1` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id_sede`),
  ADD CONSTRAINT `sede_profesores_ibfk_2` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id_profesor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
