-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2020 a las 02:58:33
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenda_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `fecha_inicio` varchar(20) NOT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `hora_inicio` varchar(20) DEFAULT NULL,
  `hora_fin` varchar(20) DEFAULT NULL,
  `allday` tinyint(1) DEFAULT NULL,
  `fk_usuarios` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `titulo`, `fecha_inicio`, `fecha_fin`, `hora_inicio`, `hora_fin`, `allday`, `fk_usuarios`) VALUES
(5, 'ranasd', '2020-11-26', '2020-11-28', '07:00:00', '07:00:00', 0, 'alejandro@mail.com'),
(6, 'Futbol-Partido Everton', '2020-12-19', '2020-12-12', '12:00:00', '14:00:00', 0, 'DiegoA@hotmail.com'),
(7, 'Futbol-Final futbol femenino Liga BetPlay', '2020-12-20', '2020-12-20', '17:00:00', '19:00:00', 0, 'DiegoA@hotmail.com'),
(8, 'Futbol-Semifinal Santafé-Equidad Liga BetPlay', '2020-12-12', '2020-12-12', '20:00:00', '22:00:00', 0, 'DiegoA@hotmail.com'),
(9, 'Vacaciones Yopal', '2020-12-26', '2020-12-30', '05:00:00', '22:00:00', 0, 'DiegoA@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `email` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`email`, `nombre`, `password`, `fecha_nacimiento`) VALUES
('alejandro@mail.com', 'alejandro', '$2y$10$5P5zHl5Hm5wW6S80dkIRFelpnyvIgPGZXu2opCV0hK/ShScp5iewa', '1998-12-08'),
('carlos@mail.com', 'carlos', '$2y$10$WCTw6XzRwINGUxbfp.lJle2wfLnFgCB36C85Uf1lvEaSVwYm3NKyu', '1997-12-03'),
('cristaMlopez@mail.com', 'Crista M Lope', '$2y$10$oehYLZno8Cm7g6799HRmietD/ps.turmjQ.RUcLZJv4oJ54mXdFc2', '1995-02-03'),
('DiegoA@hotmail.com', 'Diego Alejandro', '$2y$10$j9HNnXV5xvQd2H.NyIOH6.r1xB8N59VqgNkQmlNj6ueaGBf9tqxFe', '2011-12-27'),
('enmaMlopez@mail.com', 'Enma M Lopez', '$2y$10$TZRZt4cb/j54ZWfCGM9BoeN.1z4tES/rYlRRJc2tS7t0e5/mNmPOu', '1990-04-08'),
('joseAlopez@mail.com', 'Jose Lopez', '$2y$10$CKtvyp6EMBZHMnbA4bgLpOFnXOn./QLqHDsHQhiDJv2QP4kjy..rK', '2000-02-01'),
('juanJ@mail.com', 'Juan Jose', '$2y$10$OLwyAFahqQXnniZB0lbLQ.tKeKApIHtnqPTsX8K9bFcfWr/AmjJdG', '1997-12-21'),
('nelsaalmanzar@mail.com', 'Nelsa Almanzar', '$2y$10$Ha7A76KRykNP1GEK5AEjh.iOWdaj4YOJNn5KkxIG/pfL.MbrkIUH2', '1988-12-07'),
('raulrlopez@mail.com', 'Raul Lopez', '$2y$10$W8FD0TxTSe7SI9PcYjX/kOGacZDWI/2vog.D6G/jjNmY/Ss7ZYH9.', '1975-12-26');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuarios` (`fk_usuarios`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `fk_usuarioemail_evento` FOREIGN KEY (`fk_usuarios`) REFERENCES `usuarios` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
