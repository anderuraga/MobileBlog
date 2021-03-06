-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2015 a las 09:10:01
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `mb15`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE IF NOT EXISTS `articulo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha del artículo',
  `titulo` varchar(250) NOT NULL DEFAULT 'Sin titulo' COMMENT 'título del articulo',
  `contenido` text NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `foto` varchar(535) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id`, `fecha`, `titulo`, `contenido`, `id_usuario`, `foto`) VALUES
(8, '2015-03-16 16:15:35', 'Nuevo articulo sobre pec$$$$$$', '				  						  		Los PEZKEÃ‘IÃ‘IES (con nombre cientÃ­fico Pisces) son animales vertebrados acuÃ¡ticos, generalmente ectotÃ©rmicos,(regulan su temperatura a partir del medio ambiente) la mayorÃ­a de ellos recubiertos por escamas, y dotados de aletas, que permiten su movimiento continuo en los medios acuÃ¡ticos, y branquias, con las que captan el oxÃ­geno disuelto en el agua. Pisces es una superclase siendo un grupo parafilÃ©tico.        				  					  	', 1, 'Jellyfish.jpg'),
(9, '2015-03-16 16:17:15', 'PHP un lenguaje anarkiko', ' lengauje anarko  ', 3, 'Desert.jpg'),
(13, '2015-03-26 09:12:09', 'Billabong xxl ', ' The Big Wave Awards Wipeout, Surfline Overall Performance and Women''s Best Performance nominees are in and they are nothing short of legendary.', 3, 'Koala.jpg'),
(14, '2015-03-26 09:14:18', 'Nuevo articulo333', '', 1, 'Koala.jpg'),
(17, '2015-03-26 09:32:27', 'sssseeeerrr', ' ', 3, 'Koala.jpg'),
(18, '2015-03-26 09:33:41', 'Java mola mucho', '', 3, 'Koala.jpg'),
(19, '2015-03-26 09:38:32', 'Recien creado', '', 1, 'Koala.jpg'),
(20, '2015-04-30 09:22:29', 'New faro de san temlmo', '		body		  						  	', 1, 'Lighthouse.jpg'),
(21, '2015-04-30 09:22:42', 'New faro de san temlmo', '		body		  						  	', 1, 'Lighthouse.jpg'),
(22, '2015-04-30 09:23:05', 'New faro de san temlmo', '		body		  						  	', 1, 'Koala.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `rol` int(1) NOT NULL DEFAULT '1' COMMENT '0=Administrador  1=usuario',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `password`, `nombre`, `rol`) VALUES
(1, 'admin@admin.com', '123456', 'admin', 0),
(2, 'user2@user2.com', '123456', 'user2', 1),
(3, 'user3@user3.com', '123456', 'user3', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `articulo_necesita_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
