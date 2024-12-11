-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2024 a las 03:17:28
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
-- Base de datos: `final_prog2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre_categoria`) VALUES
(1, 'Planchas'),
(2, 'Packs'),
(3, 'Individual'),
(4, 'Marcapáginas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `precio`, `imagen`, `descripcion`, `id_categoria`) VALUES
(1, 'Plancha para recortar (papel)', 1500.00, '8.png', 'Planchas de papel para recortar entran 9 stickers de 6*6 cm o 12 de 4*4cm', 1),
(2, 'Plancha para recortar (vinilo)', 1800.00, '8.png', 'Planchas de vinilo resistente al agua para recortar entran 9 stickers de 6*6 cm o 12 de 4*4cm', 1),
(3, 'Pack por 5 stickers (papel)', 800.00, '9.png', 'Stickers de papel \r\nResistencia a decoloración 55%\r\nResistente a salpicaduras\r\npegamento resistente', 2),
(4, 'Pack por 5 stickers (vinilo)', 1800.00, '10.png', 'Stickers de vinilo \r\nResistencia a decoloración 55%\r\nResistencia al agua 80%\r\npegamento resistente', 2),
(5, 'Pack por 5 (Premium)', 2000.00, '9.png', 'Stickers premium \r\nResistencia a decoloración 100%\r\nResistencia al agua 100%\r\npegamento resistente', 2),
(6, 'Sticker de papel (unidad)', 200.00, '12.png', 'Sticker de papel \r\nResistencia a decoloración 55%\r\nResistente a salpicaduras\r\npegamento resistente', 3),
(7, 'Sticker vinilo (unidad)', 500.00, '5.png', 'Sticker de papel  \r\nResistencia a decoloración 55%\r\nResistencia al agua 80%\r\npegamento resistente', 3),
(8, 'Sticker premium (unidad)', 800.00, '6.png', 'Sticker premium \r\nResistencia a decoloración 100%\r\nResistencia al agua 100%\r\npegamento resistente', 3),
(9, 'Marcapáginas', 2000.00, '11.png', 'Marcapáginas práctico y resistente. Ideal para libros y agendas.', 4),
(16, 'Marcapáginas magnético', 2000.00, '11.png', 'Marcapáginas magnético ideal para tus lecturas. Diseños varios.													', 4),
(17, 'Marcapáginas personalizado', 2600.00, '11.png', 'Marcapáginas personalizado, hacemos realidad tu idea!								', 4),
(18, 'Sticker personalizado', 500.00, '12.png', 'Elige un diseño y lo creamos. Material a elección', 3),
(19, 'Plancha para recortar premium', 3000.00, '8.png', 'Plancha de stickers calidad premium', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(100) NOT NULL,
  `clave` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `clave`) VALUES
('Cande Sarasua', 'sol'),
('Demmy Gonzalez', 'dem');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_productos_categorias` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
