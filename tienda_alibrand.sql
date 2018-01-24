-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-01-2018 a las 22:58:00
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_alibrand`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `balon`
--

CREATE TABLE `balon` (
  `id_balon` int(11) NOT NULL,
  `nombre_balon` varchar(75) NOT NULL,
  `id_talla_balon` int(11) NOT NULL,
  `foto` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camisola`
--

CREATE TABLE `camisola` (
  `id_camisola` int(11) NOT NULL,
  `nombre_camisola` varchar(100) NOT NULL,
  `id_talla` int(11) NOT NULL,
  `foto` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chumpa`
--

CREATE TABLE `chumpa` (
  `id_chumpa` int(11) NOT NULL,
  `nombre_chumpa` varchar(75) NOT NULL,
  `id_talla` int(11) NOT NULL,
  `foto` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `no_rut` bigint(18) NOT NULL,
  `nombre_completo` varchar(130) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` int(8) NOT NULL,
  `id_compania` int(11) NOT NULL,
  `email` varchar(75) NOT NULL,
  `telefono_2` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compania`
--

CREATE TABLE `compania` (
  `id_compania` int(11) NOT NULL,
  `nombre_compania` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `compania`
--

INSERT INTO `compania` (`id_compania`, `nombre_compania`) VALUES
(10, 'Claro'),
(11, 'Movistar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion`
--

CREATE TABLE `cotizacion` (
  `id_cotizacion` int(11) NOT NULL,
  `no_rut` bigint(18) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `nombre_cliente` varchar(100) NOT NULL,
  `fecha` varchar(15) NOT NULL,
  `id_producto_1` int(11) NOT NULL,
  `cantidad_1` int(11) NOT NULL,
  `precio_unitario_1` double NOT NULL,
  `total_1` double NOT NULL,
  `id_producto_2` int(11) NOT NULL,
  `cantidad_2` int(11) NOT NULL,
  `precio_unitario_2` double NOT NULL,
  `total_2` double NOT NULL,
  `id_producto_3` int(11) NOT NULL,
  `cantidad_3` int(11) NOT NULL,
  `precio_unitario_3` double NOT NULL,
  `total_3` double NOT NULL,
  `id_producto_4` int(11) NOT NULL,
  `precio_unitario_4` double NOT NULL,
  `canitadad_4` int(11) NOT NULL,
  `total_4` double NOT NULL,
  `id_producto_5` int(11) NOT NULL,
  `precio_unitario_5` double NOT NULL,
  `cantidad_5` int(11) NOT NULL,
  `total_5` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_sucursal`
--

CREATE TABLE `detalle_sucursal` (
  `id_empleado` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `nombre_empleado` varchar(100) NOT NULL,
  `telefono` int(8) NOT NULL,
  `telefono_2` int(8) DEFAULT NULL,
  `id_compania` int(11) NOT NULL,
  `id_puesto` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envio`
--

CREATE TABLE `envio` (
  `id_envio` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_factutra` int(11) NOT NULL,
  `direccion` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espinillera`
--

CREATE TABLE `espinillera` (
  `id_espinillera` int(11) NOT NULL,
  `nombre_espinillera` varchar(75) NOT NULL,
  `id_talla_espinillera` int(11) NOT NULL,
  `foto` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_factura` int(11) NOT NULL,
  `no_serie` varchar(25) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `no_rut` bigint(18) NOT NULL,
  `nombre_cliente` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_inventario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licra`
--

CREATE TABLE `licra` (
  `id_licra` int(11) NOT NULL,
  `nombre_licra` varchar(75) NOT NULL,
  `foto` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `id_media` int(11) NOT NULL,
  `nombre_media` varchar(75) NOT NULL,
  `foto` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pantaloneta`
--

CREATE TABLE `pantaloneta` (
  `id_pantaloneta` int(11) NOT NULL,
  `nombre_pantaloneta` varchar(75) NOT NULL,
  `id_talla_pantaloneta` int(11) NOT NULL,
  `foto` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pescador`
--

CREATE TABLE `pescador` (
  `id_pescador` int(11) NOT NULL,
  `nombre_pescador` varchar(75) NOT NULL,
  `id_talla` int(11) NOT NULL,
  `foto` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `precio_costo` double NOT NULL,
  `precio_venta` double NOT NULL,
  `margen_ganancia` int(8) NOT NULL,
  `descripcion` varchar(130) NOT NULL,
  `cantidad_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE `puesto` (
  `id_puesto` int(11) NOT NULL,
  `nombre_puesto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `id_sucursal` int(11) NOT NULL,
  `nombre_sucursal` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` int(8) NOT NULL,
  `id_compania` int(11) NOT NULL,
  `email` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talla`
--

CREATE TABLE `talla` (
  `id_talla` int(11) NOT NULL,
  `nombre_talla` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talla_balon`
--

CREATE TABLE `talla_balon` (
  `id_talla_balon` int(11) NOT NULL,
  `nombre_talla_balon` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talla_espinillera`
--

CREATE TABLE `talla_espinillera` (
  `id_talla_espinillera` int(11) NOT NULL,
  `nombre_talla_espinillera` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talla_pantaloneta`
--

CREATE TABLE `talla_pantaloneta` (
  `id_talla_pantaloneta` int(11) NOT NULL,
  `nombre_talla_pantaloneta` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_zapatilla`
--

CREATE TABLE `tipo_zapatilla` (
  `id_tipo_zapatilla` int(11) NOT NULL,
  `nombre_tipo_zapatilla` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `nombre_usuario` varchar(75) NOT NULL,
  `contrasena` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zapatilla`
--

CREATE TABLE `zapatilla` (
  `id_zapatilla` int(11) NOT NULL,
  `nombre_zapatilla` varchar(75) NOT NULL,
  `id_tipo_zapatilla` int(11) NOT NULL,
  `foto` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `balon`
--
ALTER TABLE `balon`
  ADD PRIMARY KEY (`id_balon`),
  ADD KEY `id_talla_balon` (`id_talla_balon`);

--
-- Indices de la tabla `camisola`
--
ALTER TABLE `camisola`
  ADD PRIMARY KEY (`id_camisola`),
  ADD KEY `id_talla` (`id_talla`);

--
-- Indices de la tabla `chumpa`
--
ALTER TABLE `chumpa`
  ADD PRIMARY KEY (`id_chumpa`),
  ADD KEY `id_talla` (`id_talla`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_compania` (`id_compania`);

--
-- Indices de la tabla `compania`
--
ALTER TABLE `compania`
  ADD PRIMARY KEY (`id_compania`);

--
-- Indices de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD PRIMARY KEY (`id_cotizacion`),
  ADD KEY `id_cliente` (`id_empleado`);

--
-- Indices de la tabla `detalle_sucursal`
--
ALTER TABLE `detalle_sucursal`
  ADD KEY `id_empleado` (`id_empleado`),
  ADD KEY `id_sucursal` (`id_sucursal`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `id_compania` (`id_compania`),
  ADD KEY `id_puesto` (`id_puesto`),
  ADD KEY `id_sucursal` (`id_sucursal`);

--
-- Indices de la tabla `envio`
--
ALTER TABLE `envio`
  ADD PRIMARY KEY (`id_envio`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_factutra` (`id_factutra`);

--
-- Indices de la tabla `espinillera`
--
ALTER TABLE `espinillera`
  ADD PRIMARY KEY (`id_espinillera`),
  ADD KEY `id_talla_espinillera` (`id_talla_espinillera`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_inventario`);

--
-- Indices de la tabla `licra`
--
ALTER TABLE `licra`
  ADD PRIMARY KEY (`id_licra`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id_media`);

--
-- Indices de la tabla `pantaloneta`
--
ALTER TABLE `pantaloneta`
  ADD PRIMARY KEY (`id_pantaloneta`),
  ADD KEY `id_talla_pantaloneta` (`id_talla_pantaloneta`);

--
-- Indices de la tabla `pescador`
--
ALTER TABLE `pescador`
  ADD PRIMARY KEY (`id_pescador`),
  ADD KEY `id_talla` (`id_talla`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_sucursal` (`id_sucursal`);

--
-- Indices de la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`id_puesto`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id_sucursal`),
  ADD KEY `id_compania` (`id_compania`);

--
-- Indices de la tabla `talla`
--
ALTER TABLE `talla`
  ADD PRIMARY KEY (`id_talla`);

--
-- Indices de la tabla `talla_balon`
--
ALTER TABLE `talla_balon`
  ADD PRIMARY KEY (`id_talla_balon`);

--
-- Indices de la tabla `talla_espinillera`
--
ALTER TABLE `talla_espinillera`
  ADD PRIMARY KEY (`id_talla_espinillera`);

--
-- Indices de la tabla `talla_pantaloneta`
--
ALTER TABLE `talla_pantaloneta`
  ADD PRIMARY KEY (`id_talla_pantaloneta`);

--
-- Indices de la tabla `tipo_zapatilla`
--
ALTER TABLE `tipo_zapatilla`
  ADD PRIMARY KEY (`id_tipo_zapatilla`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `zapatilla`
--
ALTER TABLE `zapatilla`
  ADD PRIMARY KEY (`id_zapatilla`),
  ADD KEY `id_tipo_zapatilla` (`id_tipo_zapatilla`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `balon`
--
ALTER TABLE `balon`
  MODIFY `id_balon` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `chumpa`
--
ALTER TABLE `chumpa`
  MODIFY `id_chumpa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `compania`
--
ALTER TABLE `compania`
  MODIFY `id_compania` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  MODIFY `id_cotizacion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `envio`
--
ALTER TABLE `envio`
  MODIFY `id_envio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `espinillera`
--
ALTER TABLE `espinillera`
  MODIFY `id_espinillera` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_inventario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `licra`
--
ALTER TABLE `licra`
  MODIFY `id_licra` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `id_media` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pantaloneta`
--
ALTER TABLE `pantaloneta`
  MODIFY `id_pantaloneta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pescador`
--
ALTER TABLE `pescador`
  MODIFY `id_pescador` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `puesto`
--
ALTER TABLE `puesto`
  MODIFY `id_puesto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `id_sucursal` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `talla`
--
ALTER TABLE `talla`
  MODIFY `id_talla` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `talla_balon`
--
ALTER TABLE `talla_balon`
  MODIFY `id_talla_balon` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `talla_espinillera`
--
ALTER TABLE `talla_espinillera`
  MODIFY `id_talla_espinillera` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `talla_pantaloneta`
--
ALTER TABLE `talla_pantaloneta`
  MODIFY `id_talla_pantaloneta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo_zapatilla`
--
ALTER TABLE `tipo_zapatilla`
  MODIFY `id_tipo_zapatilla` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `zapatilla`
--
ALTER TABLE `zapatilla`
  MODIFY `id_zapatilla` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `balon`
--
ALTER TABLE `balon`
  ADD CONSTRAINT `balon_ibfk_1` FOREIGN KEY (`id_talla_balon`) REFERENCES `talla_balon` (`id_talla_balon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `balon_ibfk_2` FOREIGN KEY (`id_balon`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `camisola`
--
ALTER TABLE `camisola`
  ADD CONSTRAINT `camisola_ibfk_1` FOREIGN KEY (`id_talla`) REFERENCES `talla` (`id_talla`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `camisola_ibfk_2` FOREIGN KEY (`id_camisola`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `chumpa`
--
ALTER TABLE `chumpa`
  ADD CONSTRAINT `chumpa_ibfk_1` FOREIGN KEY (`id_talla`) REFERENCES `talla` (`id_talla`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chumpa_ibfk_2` FOREIGN KEY (`id_chumpa`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_compania`) REFERENCES `compania` (`id_compania`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD CONSTRAINT `cotizacion_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_sucursal`
--
ALTER TABLE `detalle_sucursal`
  ADD CONSTRAINT `detalle_sucursal_ibfk_1` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_sucursal_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_puesto`) REFERENCES `puesto` (`id_puesto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`id_compania`) REFERENCES `compania` (`id_compania`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `envio`
--
ALTER TABLE `envio`
  ADD CONSTRAINT `envio_ibfk_1` FOREIGN KEY (`id_factutra`) REFERENCES `factura` (`id_factura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `envio_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `espinillera`
--
ALTER TABLE `espinillera`
  ADD CONSTRAINT `espinillera_ibfk_1` FOREIGN KEY (`id_talla_espinillera`) REFERENCES `talla_espinillera` (`id_talla_espinillera`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `espinillera_ibfk_2` FOREIGN KEY (`id_espinillera`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `licra`
--
ALTER TABLE `licra`
  ADD CONSTRAINT `licra_ibfk_1` FOREIGN KEY (`id_licra`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`id_media`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pantaloneta`
--
ALTER TABLE `pantaloneta`
  ADD CONSTRAINT `pantaloneta_ibfk_1` FOREIGN KEY (`id_talla_pantaloneta`) REFERENCES `talla_pantaloneta` (`id_talla_pantaloneta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pantaloneta_ibfk_2` FOREIGN KEY (`id_pantaloneta`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pescador`
--
ALTER TABLE `pescador`
  ADD CONSTRAINT `pescador_ibfk_1` FOREIGN KEY (`id_talla`) REFERENCES `talla` (`id_talla`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pescador_ibfk_2` FOREIGN KEY (`id_pescador`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`id_compania`) REFERENCES `compania` (`id_compania`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `zapatilla`
--
ALTER TABLE `zapatilla`
  ADD CONSTRAINT `zapatilla_ibfk_1` FOREIGN KEY (`id_tipo_zapatilla`) REFERENCES `tipo_zapatilla` (`id_tipo_zapatilla`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `zapatilla_ibfk_2` FOREIGN KEY (`id_zapatilla`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
