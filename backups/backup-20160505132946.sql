#
# TABLE STRUCTURE FOR: almacen
#
USE `polosite`;
DROP TABLE IF EXISTS almacen;

CREATE TABLE `almacen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Tipo` tinyint(4) NOT NULL COMMENT '1 Entrada / 2 Salida / 3 Devolucion',
  `Usuario_id` int(11) NOT NULL,
  `Producto_id` int(11) NOT NULL,
  `ProductoNombre` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `UnidadMedida_id` varchar(10) COLLATE utf16_spanish_ci DEFAULT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Precio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Fecha` varchar(10) COLLATE utf16_spanish_ci NOT NULL,
  `Empresa_id` int(11) NOT NULL,
  `Comprobante_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `almacen_producto` (`Producto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

INSERT INTO almacen (`id`, `Tipo`, `Usuario_id`, `Producto_id`, `ProductoNombre`, `UnidadMedida_id`, `Cantidad`, `Precio`, `Fecha`, `Empresa_id`, `Comprobante_id`) VALUES (28, 2, 6, 1, '[CODEN] - PERSIANA SISTEMA', 'Kg', '123.00', '35670.00', '2016/05/05', 4, 1);
INSERT INTO almacen (`id`, `Tipo`, `Usuario_id`, `Producto_id`, `ProductoNombre`, `UnidadMedida_id`, `Cantidad`, `Precio`, `Fecha`, `Empresa_id`, `Comprobante_id`) VALUES (29, 3, 6, 1, '[CODEN] - PERSIANA SISTEMA', 'Kg', '80.00', '0.00', '2016/05/05', 4, 1);
INSERT INTO almacen (`id`, `Tipo`, `Usuario_id`, `Producto_id`, `ProductoNombre`, `UnidadMedida_id`, `Cantidad`, `Precio`, `Fecha`, `Empresa_id`, `Comprobante_id`) VALUES (30, 2, 6, 1, '[CODEN] - PERSIANA SISTEMA', 'Kg', '12.00', '3480.00', '2016/05/05', 4, 2);
INSERT INTO almacen (`id`, `Tipo`, `Usuario_id`, `Producto_id`, `ProductoNombre`, `UnidadMedida_id`, `Cantidad`, `Precio`, `Fecha`, `Empresa_id`, `Comprobante_id`) VALUES (31, 2, 6, 1, '[CODEN] - PERSIANA SISTEMA', 'Kg', '19.00', '5510.00', '2016/05/05', 4, 3);
INSERT INTO almacen (`id`, `Tipo`, `Usuario_id`, `Producto_id`, `ProductoNombre`, `UnidadMedida_id`, `Cantidad`, `Precio`, `Fecha`, `Empresa_id`, `Comprobante_id`) VALUES (32, 2, 6, 1, '[CODEN] - PERSIANA SISTEMA', 'Kg', '200.00', '58000.00', '2016/05/05', 4, 4);
INSERT INTO almacen (`id`, `Tipo`, `Usuario_id`, `Producto_id`, `ProductoNombre`, `UnidadMedida_id`, `Cantidad`, `Precio`, `Fecha`, `Empresa_id`, `Comprobante_id`) VALUES (33, 1, 6, 2, '[POLIFORMAS] - RESINA A', 'Kg', '123.00', '200.00', '2016/05/05', 4, NULL);
INSERT INTO almacen (`id`, `Tipo`, `Usuario_id`, `Producto_id`, `ProductoNombre`, `UnidadMedida_id`, `Cantidad`, `Precio`, `Fecha`, `Empresa_id`, `Comprobante_id`) VALUES (34, 1, 6, 2, '[POLIFORMAS] - RESINA A', 'Kg', '1200.00', '230.00', '2016/05/05', 4, NULL);
INSERT INTO almacen (`id`, `Tipo`, `Usuario_id`, `Producto_id`, `ProductoNombre`, `UnidadMedida_id`, `Cantidad`, `Precio`, `Fecha`, `Empresa_id`, `Comprobante_id`) VALUES (35, 1, 6, 1, '[CODEN] - PERSIANA SISTEMA', 'Kg', '123.00', '126.00', '2016/05/05', 4, NULL);
INSERT INTO almacen (`id`, `Tipo`, `Usuario_id`, `Producto_id`, `ProductoNombre`, `UnidadMedida_id`, `Cantidad`, `Precio`, `Fecha`, `Empresa_id`, `Comprobante_id`) VALUES (36, 2, 6, 2, '[POLIFORMAS] - RESINA A', 'Kg', '780.00', '273000.00', '2016/05/05', 4, 5);
INSERT INTO almacen (`id`, `Tipo`, `Usuario_id`, `Producto_id`, `ProductoNombre`, `UnidadMedida_id`, `Cantidad`, `Precio`, `Fecha`, `Empresa_id`, `Comprobante_id`) VALUES (37, 2, 11, 1, '[CODEN] - PERSIANA SISTEMA', 'Kg', '1.00', '290.00', '2016/05/05', 4, 7);
INSERT INTO almacen (`id`, `Tipo`, `Usuario_id`, `Producto_id`, `ProductoNombre`, `UnidadMedida_id`, `Cantidad`, `Precio`, `Fecha`, `Empresa_id`, `Comprobante_id`) VALUES (38, 1, 12, 3, '[POLIFORMAS] - RESINA B', 'Kg', '123.00', '231.00', '2016/05/05', 4, NULL);


#
# TABLE STRUCTURE FOR: cliente
#

DROP TABLE IF EXISTS cliente;

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Rfc` varchar(13) COLLATE utf16_spanish_ci DEFAULT NULL,
  `Curp` varchar(18) COLLATE utf16_spanish_ci DEFAULT NULL,
  `Nombre` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `Correo` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `Telefono1` varchar(20) COLLATE utf16_spanish_ci NOT NULL,
  `Telefono2` varchar(20) COLLATE utf16_spanish_ci NOT NULL,
  `Direccion` text COLLATE utf16_spanish_ci NOT NULL,
  `Empresa_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

INSERT INTO cliente (`id`, `Rfc`, `Curp`, `Nombre`, `Correo`, `Telefono1`, `Telefono2`, `Direccion`, `Empresa_id`) VALUES (1, 'HFGT912393191', '', 'POLOWEB SISTEMAS', 'info@para.ti.com', '5591287346', '5510293874', 'POLO\nES\nPPOLO', 4);
INSERT INTO cliente (`id`, `Rfc`, `Curp`, `Nombre`, `Correo`, `Telefono1`, `Telefono2`, `Direccion`, `Empresa_id`) VALUES (2, 'SISPOL2834252', '', 'SISTEMAS DE POLETA', 'info@delsitema.com', '55381991', '42384129834', 'Isajdfsa\nSadfasf\nAsdf', 4);


#
# TABLE STRUCTURE FOR: comprobante
#

DROP TABLE IF EXISTS comprobante;

CREATE TABLE `comprobante` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Empresa_id` int(11) NOT NULL DEFAULT '0',
  `Serie` varchar(5) COLLATE utf16_spanish_ci DEFAULT NULL,
  `Correlativo` varchar(20) COLLATE utf16_spanish_ci DEFAULT NULL,
  `Cliente_id` varchar(13) COLLATE utf16_spanish_ci NOT NULL DEFAULT '0',
  `ClienteIdentidad` varchar(13) COLLATE utf16_spanish_ci DEFAULT '',
  `ClienteNombre` varchar(100) COLLATE utf16_spanish_ci NOT NULL DEFAULT '',
  `ClienteDireccion` text COLLATE utf16_spanish_ci,
  `ComprobanteTipo_id` tinyint(4) NOT NULL DEFAULT '0',
  `Estado` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 Pendiente 2 Aprobada 3 Anulada',
  `FechaRegistro` varchar(10) COLLATE utf16_spanish_ci NOT NULL DEFAULT '0',
  `FechaEmitido` varchar(10) COLLATE utf16_spanish_ci NOT NULL DEFAULT '0',
  `Iva` decimal(10,2) NOT NULL DEFAULT '0.00',
  `IvaTotal` decimal(10,2) NOT NULL DEFAULT '0.00',
  `SubTotal` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `TotalCompra` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Ganancia` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Usuario_id` int(11) NOT NULL DEFAULT '0',
  `Glosa` text COLLATE utf16_spanish_ci,
  `Impresion` tinyint(4) NOT NULL DEFAULT '0',
  `UsuarioImprimiendo_id` int(11) DEFAULT NULL,
  `Devolucion` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 Pendiente 1 Cerrado',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Serie_Correlativo_Empresa_id` (`Serie`,`Correlativo`,`Empresa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

INSERT INTO comprobante (`id`, `Empresa_id`, `Serie`, `Correlativo`, `Cliente_id`, `ClienteIdentidad`, `ClienteNombre`, `ClienteDireccion`, `ComprobanteTipo_id`, `Estado`, `FechaRegistro`, `FechaEmitido`, `Iva`, `IvaTotal`, `SubTotal`, `Total`, `TotalCompra`, `Ganancia`, `Usuario_id`, `Glosa`, `Impresion`, `UsuarioImprimiendo_id`, `Devolucion`) VALUES (1, 4, NULL, NULL, '1', '', 'POLOWEB SISTEMAS', 'POLOESPPOLO', 2, 3, '2016/05/05', '2016/05/05', '0.00', '0.00', '0.00', '35670.00', '15498.00', '20172.00', 6, '', 0, NULL, 1);
INSERT INTO comprobante (`id`, `Empresa_id`, `Serie`, `Correlativo`, `Cliente_id`, `ClienteIdentidad`, `ClienteNombre`, `ClienteDireccion`, `ComprobanteTipo_id`, `Estado`, `FechaRegistro`, `FechaEmitido`, `Iva`, `IvaTotal`, `SubTotal`, `Total`, `TotalCompra`, `Ganancia`, `Usuario_id`, `Glosa`, `Impresion`, `UsuarioImprimiendo_id`, `Devolucion`) VALUES (2, 4, NULL, NULL, '1', 'HFGT912393191', 'POLOWEB SISTEMAS', 'POLOESPPOLO', 3, 2, '2016/05/05', '2016/05/05', '16.00', '480.00', '3000.00', '3480.00', '1512.00', '1968.00', 6, '', 0, NULL, 0);
INSERT INTO comprobante (`id`, `Empresa_id`, `Serie`, `Correlativo`, `Cliente_id`, `ClienteIdentidad`, `ClienteNombre`, `ClienteDireccion`, `ComprobanteTipo_id`, `Estado`, `FechaRegistro`, `FechaEmitido`, `Iva`, `IvaTotal`, `SubTotal`, `Total`, `TotalCompra`, `Ganancia`, `Usuario_id`, `Glosa`, `Impresion`, `UsuarioImprimiendo_id`, `Devolucion`) VALUES (3, 4, NULL, NULL, '1', 'HFGT912393191', 'POLOWEB SISTEMAS', 'POLOESPPOLO', 3, 2, '2016/05/05', '2016/05/05', '16.00', '760.00', '4750.00', '5510.00', '2394.00', '3116.00', 6, '', 0, NULL, 0);
INSERT INTO comprobante (`id`, `Empresa_id`, `Serie`, `Correlativo`, `Cliente_id`, `ClienteIdentidad`, `ClienteNombre`, `ClienteDireccion`, `ComprobanteTipo_id`, `Estado`, `FechaRegistro`, `FechaEmitido`, `Iva`, `IvaTotal`, `SubTotal`, `Total`, `TotalCompra`, `Ganancia`, `Usuario_id`, `Glosa`, `Impresion`, `UsuarioImprimiendo_id`, `Devolucion`) VALUES (4, 4, NULL, NULL, '1', 'HFGT912393191', 'POLOWEB SISTEMAS', 'POLOESPPOLO', 3, 2, '2016/05/05', '2016/05/05', '16.00', '8000.00', '50000.00', '58000.00', '25200.00', '32800.00', 6, '', 0, NULL, 0);
INSERT INTO comprobante (`id`, `Empresa_id`, `Serie`, `Correlativo`, `Cliente_id`, `ClienteIdentidad`, `ClienteNombre`, `ClienteDireccion`, `ComprobanteTipo_id`, `Estado`, `FechaRegistro`, `FechaEmitido`, `Iva`, `IvaTotal`, `SubTotal`, `Total`, `TotalCompra`, `Ganancia`, `Usuario_id`, `Glosa`, `Impresion`, `UsuarioImprimiendo_id`, `Devolucion`) VALUES (5, 4, '002', '00003', '2', 'SISPOL2834252', 'SISTEMAS DE POLETA', 'IsajdfsaSadfasfAsdf', 3, 2, '2016/05/05', '2016/05/05', '16.00', '37655.17', '235344.83', '273000.00', '179400.00', '93600.00', 6, '', 2, NULL, 0);
INSERT INTO comprobante (`id`, `Empresa_id`, `Serie`, `Correlativo`, `Cliente_id`, `ClienteIdentidad`, `ClienteNombre`, `ClienteDireccion`, `ComprobanteTipo_id`, `Estado`, `FechaRegistro`, `FechaEmitido`, `Iva`, `IvaTotal`, `SubTotal`, `Total`, `TotalCompra`, `Ganancia`, `Usuario_id`, `Glosa`, `Impresion`, `UsuarioImprimiendo_id`, `Devolucion`) VALUES (6, 4, NULL, '00001', '2', 'SISPOL2834252', 'SISTEMAS DE POLETA', 'IsajdfsaSadfasfAsdf', 1, 2, '2016/05/05', '2016/05/05', '0.00', '0.00', '0.00', '290.00', '126.00', '164.00', 11, '', 0, NULL, 0);
INSERT INTO comprobante (`id`, `Empresa_id`, `Serie`, `Correlativo`, `Cliente_id`, `ClienteIdentidad`, `ClienteNombre`, `ClienteDireccion`, `ComprobanteTipo_id`, `Estado`, `FechaRegistro`, `FechaEmitido`, `Iva`, `IvaTotal`, `SubTotal`, `Total`, `TotalCompra`, `Ganancia`, `Usuario_id`, `Glosa`, `Impresion`, `UsuarioImprimiendo_id`, `Devolucion`) VALUES (7, 4, '002', '00002', '1', 'HFGT912393191', 'POLOWEB SISTEMAS', 'POLOESPPOLO', 3, 2, '2016/05/05', '2016/05/05', '16.00', '40.00', '250.00', '290.00', '126.00', '164.00', 11, '', 2, NULL, 0);


#
# TABLE STRUCTURE FOR: comprobantedetalle
#

DROP TABLE IF EXISTS comprobantedetalle;

CREATE TABLE `comprobantedetalle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Tipo` tinyint(4) DEFAULT NULL COMMENT '1 Producto / 2 Servicio',
  `Comprobante_Id` bigint(20) NOT NULL DEFAULT '0',
  `Producto_id` int(11) NOT NULL DEFAULT '0',
  `ProductoNombre` varchar(100) COLLATE utf16_spanish_ci DEFAULT NULL,
  `PrecioUnitarioCompra` decimal(10,2) NOT NULL DEFAULT '0.00',
  `PrecioTotalCompra` decimal(10,2) NOT NULL DEFAULT '0.00',
  `UnidadMedida_id` char(10) COLLATE utf16_spanish_ci NOT NULL DEFAULT '0',
  `PrecioUnitario` decimal(10,2) NOT NULL DEFAULT '0.00',
  `PrecioTotal` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Cantidad` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Devuelto` decimal(10,2) DEFAULT '0.00',
  `Ganancia` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

INSERT INTO comprobantedetalle (`id`, `Tipo`, `Comprobante_Id`, `Producto_id`, `ProductoNombre`, `PrecioUnitarioCompra`, `PrecioTotalCompra`, `UnidadMedida_id`, `PrecioUnitario`, `PrecioTotal`, `Cantidad`, `Devuelto`, `Ganancia`) VALUES (1, 1, 1, 1, '[CODEN] - PERSIANA SISTEMA', '126.00', '15498.00', 'Kg', '290.00', '35670.00', '123.00', '80.00', '20172.00');
INSERT INTO comprobantedetalle (`id`, `Tipo`, `Comprobante_Id`, `Producto_id`, `ProductoNombre`, `PrecioUnitarioCompra`, `PrecioTotalCompra`, `UnidadMedida_id`, `PrecioUnitario`, `PrecioTotal`, `Cantidad`, `Devuelto`, `Ganancia`) VALUES (2, 1, 2, 1, '[CODEN] - PERSIANA SISTEMA', '126.00', '1512.00', 'Kg', '290.00', '3480.00', '12.00', '0.00', '1968.00');
INSERT INTO comprobantedetalle (`id`, `Tipo`, `Comprobante_Id`, `Producto_id`, `ProductoNombre`, `PrecioUnitarioCompra`, `PrecioTotalCompra`, `UnidadMedida_id`, `PrecioUnitario`, `PrecioTotal`, `Cantidad`, `Devuelto`, `Ganancia`) VALUES (3, 1, 3, 1, '[CODEN] - PERSIANA SISTEMA', '126.00', '2394.00', 'Kg', '290.00', '5510.00', '19.00', '0.00', '3116.00');
INSERT INTO comprobantedetalle (`id`, `Tipo`, `Comprobante_Id`, `Producto_id`, `ProductoNombre`, `PrecioUnitarioCompra`, `PrecioTotalCompra`, `UnidadMedida_id`, `PrecioUnitario`, `PrecioTotal`, `Cantidad`, `Devuelto`, `Ganancia`) VALUES (4, 1, 4, 1, '[CODEN] - PERSIANA SISTEMA', '126.00', '25200.00', 'Kg', '290.00', '58000.00', '200.00', '0.00', '32800.00');
INSERT INTO comprobantedetalle (`id`, `Tipo`, `Comprobante_Id`, `Producto_id`, `ProductoNombre`, `PrecioUnitarioCompra`, `PrecioTotalCompra`, `UnidadMedida_id`, `PrecioUnitario`, `PrecioTotal`, `Cantidad`, `Devuelto`, `Ganancia`) VALUES (5, 1, 5, 2, '[POLIFORMAS] - RESINA A', '230.00', '179400.00', 'Kg', '350.00', '273000.00', '780.00', '0.00', '93600.00');
INSERT INTO comprobantedetalle (`id`, `Tipo`, `Comprobante_Id`, `Producto_id`, `ProductoNombre`, `PrecioUnitarioCompra`, `PrecioTotalCompra`, `UnidadMedida_id`, `PrecioUnitario`, `PrecioTotal`, `Cantidad`, `Devuelto`, `Ganancia`) VALUES (6, 1, 6, 1, '[CODEN] - PERSIANA SISTEMA', '126.00', '126.00', 'Kg', '290.00', '290.00', '1.00', '0.00', '164.00');
INSERT INTO comprobantedetalle (`id`, `Tipo`, `Comprobante_Id`, `Producto_id`, `ProductoNombre`, `PrecioUnitarioCompra`, `PrecioTotalCompra`, `UnidadMedida_id`, `PrecioUnitario`, `PrecioTotal`, `Cantidad`, `Devuelto`, `Ganancia`) VALUES (7, 1, 7, 1, '[CODEN] - PERSIANA SISTEMA', '126.00', '126.00', 'Kg', '290.00', '290.00', '1.00', '0.00', '164.00');


#
# TABLE STRUCTURE FOR: configuracion
#

DROP TABLE IF EXISTS configuracion;

CREATE TABLE `configuracion` (
  `Empresa_id` int(11) NOT NULL,
  `RazonSocial` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `Rfc` varchar(13) COLLATE utf16_spanish_ci NOT NULL,
  `Direccion` text COLLATE utf16_spanish_ci,
  `Iva` decimal(4,2) NOT NULL,
  `Moneda_id` varchar(10) COLLATE utf16_spanish_ci NOT NULL,
  `SBoleta` varchar(5) COLLATE utf16_spanish_ci NOT NULL,
  `NBoleta` varchar(20) COLLATE utf16_spanish_ci NOT NULL,
  `SFactura` varchar(5) COLLATE utf16_spanish_ci NOT NULL,
  `NFactura` varchar(20) COLLATE utf16_spanish_ci NOT NULL,
  `BoletaFormato` text COLLATE utf16_spanish_ci NOT NULL,
  `FacturaFormato` text COLLATE utf16_spanish_ci NOT NULL,
  `BoletaFoto` varchar(50) COLLATE utf16_spanish_ci DEFAULT NULL,
  `FacturaFoto` varchar(50) COLLATE utf16_spanish_ci DEFAULT NULL,
  `Lineas` tinyint(4) NOT NULL DEFAULT '15',
  `Impresion` tinyint(4) NOT NULL DEFAULT '1',
  `Zeros` tinyint(4) DEFAULT '5',
  `Anio` int(4) DEFAULT '2013',
  PRIMARY KEY (`Empresa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

INSERT INTO configuracion (`Empresa_id`, `RazonSocial`, `Rfc`, `Direccion`, `Iva`, `Moneda_id`, `SBoleta`, `NBoleta`, `SFactura`, `NFactura`, `BoletaFormato`, `FacturaFormato`, `BoletaFoto`, `FacturaFoto`, `Lineas`, `Impresion`, `Zeros`, `Anio`) VALUES (4, 'Poloplast Componentes S.A. de C.V.', 'PCO030225I46', 'PROLONGACION ORIENTE 5 LOTE 3 Y 4 MZA VII SUBDIVISION LOTE 5 S/N ZONA INDUSTRIAL', '16.00', '$', '002', '14', '002', '4', '#fecha?left: 674px; top: 58px;|#cliente?left: 94px; top: 105px;|#rfc?left: 94px; top: 196px;|#direccion?left: 93px; top: 134px;|#serie?left: 674px; top: 41px;|#SubTotal?left: 708px; top: 413px;|#total?left: 701px; top: 429px;|#TotalLetras?left: 175px; top: 472px;|#IvaTotal?left: 220px; top: 474px;|#Iva?left: 743px; top: 406px;|#detalle?left: 23px; top: 214px;|#detalle .row?width: 74px;!width: 428px;!width: 107px;!width: 110px;', '#fecha?left: 674px; top: 219px;|#cliente?left: 94px; top: 159px;|#rfc?left: 93px; top: 215px;|#direccion?left: 94px; top: 189px;|#serie?left: 650px; top: 110px;|#SubTotal?left: 691px; top: 490px;|#total?left: 686px; top: 533px;|#TotalLetras?left: 72px; top: 481px;|#IvaTotal?left: 695px; top: 512px;|#Iva?left: 602px; top: 511px;|#detalle?left: 2px; top: 250px;|#detalle .row?width: 74px;!width: 428px;!width: 107px;!width: 110px;', '4_boleta.jpg', '4_factura.jpg', 15, 1, 5, 2013);


#
# TABLE STRUCTURE FOR: empresa
#

DROP TABLE IF EXISTS empresa;

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `Estado` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

INSERT INTO empresa (`id`, `Nombre`, `Estado`) VALUES (4, 'Poloplast Componentes', 1);


#
# TABLE STRUCTURE FOR: menu
#

DROP TABLE IF EXISTS menu;

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Class` varchar(50) COLLATE utf16_spanish_ci NOT NULL DEFAULT '',
  `Css` varchar(50) COLLATE utf16_spanish_ci NOT NULL DEFAULT '',
  `Nombre` varchar(50) COLLATE utf16_spanish_ci NOT NULL DEFAULT '0',
  `Url` varchar(100) COLLATE utf16_spanish_ci NOT NULL DEFAULT '',
  `Padre` int(11) NOT NULL DEFAULT '0',
  `Orden` tinyint(4) DEFAULT '1',
  `Separador` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

INSERT INTO menu (`id`, `Class`, `Css`, `Nombre`, `Url`, `Padre`, `Orden`, `Separador`) VALUES (1, 'inicio', 'glyphicon-home', 'Inicio', '', 0, 1, 0);
INSERT INTO menu (`id`, `Class`, `Css`, `Nombre`, `Url`, `Padre`, `Orden`, `Separador`) VALUES (2, 'ventas', 'glyphicon-credit-card', 'Ventas', '#', 0, 2, 0);
INSERT INTO menu (`id`, `Class`, `Css`, `Nombre`, `Url`, `Padre`, `Orden`, `Separador`) VALUES (3, 'mantenimiento', 'glyphicon-cog', 'Mantenimiento', '#', 0, 4, 0);
INSERT INTO menu (`id`, `Class`, `Css`, `Nombre`, `Url`, `Padre`, `Orden`, `Separador`) VALUES (4, '', '', 'Comprobantes', 'ventas/comprobantes', 2, 1, 0);
INSERT INTO menu (`id`, `Class`, `Css`, `Nombre`, `Url`, `Padre`, `Orden`, `Separador`) VALUES (5, '', '', 'Reportes', 'ventas/reportes', 2, 2, 1);
INSERT INTO menu (`id`, `Class`, `Css`, `Nombre`, `Url`, `Padre`, `Orden`, `Separador`) VALUES (6, '', '', 'Usuarios', 'mantenimiento/usuarios', 3, 1, 0);
INSERT INTO menu (`id`, `Class`, `Css`, `Nombre`, `Url`, `Padre`, `Orden`, `Separador`) VALUES (7, '', '', 'Clientes', 'mantenimiento/clientes', 3, 2, 0);
INSERT INTO menu (`id`, `Class`, `Css`, `Nombre`, `Url`, `Padre`, `Orden`, `Separador`) VALUES (8, '', '', 'Productos', 'mantenimiento/productos', 3, 3, 0);
INSERT INTO menu (`id`, `Class`, `Css`, `Nombre`, `Url`, `Padre`, `Orden`, `Separador`) VALUES (9, '', '', 'Servicios', 'mantenimiento/servicios', 3, 4, 0);
INSERT INTO menu (`id`, `Class`, `Css`, `Nombre`, `Url`, `Padre`, `Orden`, `Separador`) VALUES (10, '', '', 'Configuración', 'mantenimiento/configuracion', 3, 6, 1);
INSERT INTO menu (`id`, `Class`, `Css`, `Nombre`, `Url`, `Padre`, `Orden`, `Separador`) VALUES (11, '', '', 'Copia De Seguridad', 'respaldo/index', 3, 5, 1);
INSERT INTO menu (`id`, `Class`, `Css`, `Nombre`, `Url`, `Padre`, `Orden`, `Separador`) VALUES (12, 'almacen', 'glyphicon-th', 'Almacen', '#', 0, 3, 0);
INSERT INTO menu (`id`, `Class`, `Css`, `Nombre`, `Url`, `Padre`, `Orden`, `Separador`) VALUES (13, '', '', 'Entrada/Salida', 'almacen/index', 12, 1, 0);
INSERT INTO menu (`id`, `Class`, `Css`, `Nombre`, `Url`, `Padre`, `Orden`, `Separador`) VALUES (14, '', '', 'Kardex', 'almacen/kardex', 12, 2, 1);


#
# TABLE STRUCTURE FOR: menusuario
#

DROP TABLE IF EXISTS menusuario;

CREATE TABLE `menusuario` (
  `UsuarioTipo_id` int(11) NOT NULL,
  `Menu_id` int(11) NOT NULL,
  PRIMARY KEY (`UsuarioTipo_id`,`Menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (1, 1);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (1, 2);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (1, 3);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (1, 4);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (1, 5);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (1, 6);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (1, 7);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (1, 8);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (1, 9);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (1, 10);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (1, 11);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (1, 12);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (1, 13);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (1, 14);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (2, 1);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (2, 2);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (2, 3);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (2, 4);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (2, 7);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (2, 8);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (2, 9);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (2, 12);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (2, 13);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (4, 1);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (4, 3);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (4, 8);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (4, 9);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (4, 12);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (4, 13);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (5, 1);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (5, 2);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (5, 3);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (5, 4);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (5, 5);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (5, 7);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (5, 8);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (5, 9);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (5, 12);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (5, 13);
INSERT INTO menusuario (`UsuarioTipo_id`, `Menu_id`) VALUES (5, 14);


#
# TABLE STRUCTURE FOR: producto
#

DROP TABLE IF EXISTS producto;

CREATE TABLE `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `UnidadMedida_id` char(5) COLLATE utf16_spanish_ci NOT NULL,
  `PrecioCompra` decimal(10,2) NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `Stock` decimal(10,2) NOT NULL DEFAULT '0.00',
  `StockMinimo` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Marca` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `Empresa_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci CHECKSUM=1;

INSERT INTO producto (`id`, `Nombre`, `UnidadMedida_id`, `PrecioCompra`, `Precio`, `Stock`, `StockMinimo`, `Marca`, `Empresa_id`) VALUES (1, 'PERSIANA SISTEMA', 'Kg', '126.00', '290.00', '8040.00', '0.00', 'CODEN', 4);
INSERT INTO producto (`id`, `Nombre`, `UnidadMedida_id`, `PrecioCompra`, `Precio`, `Stock`, `StockMinimo`, `Marca`, `Empresa_id`) VALUES (2, 'RESINA A', 'Kg', '230.00', '350.00', '2543.00', '0.00', 'POLIFORMAS', 4);
INSERT INTO producto (`id`, `Nombre`, `UnidadMedida_id`, `PrecioCompra`, `Precio`, `Stock`, `StockMinimo`, `Marca`, `Empresa_id`) VALUES (3, 'RESINA B', 'Kg', '231.00', '900.00', '2123.00', '0.00', 'POLIFORMAS', 4);


#
# TABLE STRUCTURE FOR: servicio
#

DROP TABLE IF EXISTS servicio;

CREATE TABLE `servicio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) COLLATE utf16_spanish_ci NOT NULL DEFAULT '0',
  `PrecioCompra` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Precio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `UnidadMedida_id` char(5) COLLATE utf16_spanish_ci NOT NULL DEFAULT 'UND',
  `Empresa_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

#
# TABLE STRUCTURE FOR: tabladato
#

DROP TABLE IF EXISTS tabladato;

CREATE TABLE `tabladato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Relacion` varchar(20) COLLATE utf16_spanish_ci NOT NULL DEFAULT '0',
  `Value` varchar(10) COLLATE utf16_spanish_ci NOT NULL DEFAULT '0',
  `Nombre` varchar(50) COLLATE utf16_spanish_ci NOT NULL DEFAULT '0',
  `Orden` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

INSERT INTO tabladato (`id`, `Relacion`, `Value`, `Nombre`, `Orden`) VALUES (1, 'comprobantetipo', '1', 'Proforma', 1);
INSERT INTO tabladato (`id`, `Relacion`, `Value`, `Nombre`, `Orden`) VALUES (2, 'comprobantetipo', '2', 'Boleta', 2);
INSERT INTO tabladato (`id`, `Relacion`, `Value`, `Nombre`, `Orden`) VALUES (3, 'comprobantetipo', '3', 'Factura', 3);
INSERT INTO tabladato (`id`, `Relacion`, `Value`, `Nombre`, `Orden`) VALUES (5, 'comprobanteestado', '2', 'Aprobado', 1);
INSERT INTO tabladato (`id`, `Relacion`, `Value`, `Nombre`, `Orden`) VALUES (6, 'comprobanteestado', '3', 'Anulado', 2);
INSERT INTO tabladato (`id`, `Relacion`, `Value`, `Nombre`, `Orden`) VALUES (7, 'comprobantetipo', '4', 'Menudeo', 3);
INSERT INTO tabladato (`id`, `Relacion`, `Value`, `Nombre`, `Orden`) VALUES (8, 'moneda', '$', 'MXN', 1);
INSERT INTO tabladato (`id`, `Relacion`, `Value`, `Nombre`, `Orden`) VALUES (9, 'comprobanteestado', '1', 'Pendiente', 1);
INSERT INTO tabladato (`id`, `Relacion`, `Value`, `Nombre`, `Orden`) VALUES (10, 'comprobanteestado', '4', 'Revisión', 2);
INSERT INTO tabladato (`id`, `Relacion`, `Value`, `Nombre`, `Orden`) VALUES (11, 'usuariotipo', '1', 'Administrador', 1);
INSERT INTO tabladato (`id`, `Relacion`, `Value`, `Nombre`, `Orden`) VALUES (12, 'usuariotipo', '2', 'Vendedor', 3);
INSERT INTO tabladato (`id`, `Relacion`, `Value`, `Nombre`, `Orden`) VALUES (13, 'usuariotipo', '3', 'Suspendido', 5);
INSERT INTO tabladato (`id`, `Relacion`, `Value`, `Nombre`, `Orden`) VALUES (14, 'estilo', 'light', 'Light Theme', 0);
INSERT INTO tabladato (`id`, `Relacion`, `Value`, `Nombre`, `Orden`) VALUES (15, 'estilo', 'dark', 'Dark Theme', 0);
INSERT INTO tabladato (`id`, `Relacion`, `Value`, `Nombre`, `Orden`) VALUES (16, 'almacentipo', '1', 'Entrada', 0);
INSERT INTO tabladato (`id`, `Relacion`, `Value`, `Nombre`, `Orden`) VALUES (17, 'almacentipo', '2', 'Salida', 0);
INSERT INTO tabladato (`id`, `Relacion`, `Value`, `Nombre`, `Orden`) VALUES (18, 'almacentipo', '3', 'Devolución', 0);
INSERT INTO tabladato (`id`, `Relacion`, `Value`, `Nombre`, `Orden`) VALUES (19, 'usuariotipo', '4', 'Almacenero', 4);
INSERT INTO tabladato (`id`, `Relacion`, `Value`, `Nombre`, `Orden`) VALUES (20, 'usuariotipo', '5', 'Super Usuario', 2);


#
# TABLE STRUCTURE FOR: usuario
#

DROP TABLE IF EXISTS usuario;

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo` int(11) NOT NULL DEFAULT '2' COMMENT '1 Administrador 2 Vendedor 3 Suspendido',
  `Nombre` varchar(100) COLLATE utf16_spanish_ci NOT NULL,
  `Usuario` varchar(20) COLLATE utf16_spanish_ci NOT NULL,
  `Contrasena` varchar(32) COLLATE utf16_spanish_ci NOT NULL,
  `Empresa_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

INSERT INTO usuario (`id`, `Tipo`, `Nombre`, `Usuario`, `Contrasena`, `Empresa_id`) VALUES (6, 1, 'German', 'ggalvan', '506f2f9b50f85d96cca725c056afe298', 4);
INSERT INTO usuario (`id`, `Tipo`, `Nombre`, `Usuario`, `Contrasena`, `Empresa_id`) VALUES (10, 5, 'Super Usuario', 'super', 'e10adc3949ba59abbe56e057f20f883e', 4);
INSERT INTO usuario (`id`, `Tipo`, `Nombre`, `Usuario`, `Contrasena`, `Empresa_id`) VALUES (11, 2, 'Vendedor', 'vendedor', 'e10adc3949ba59abbe56e057f20f883e', 4);
INSERT INTO usuario (`id`, `Tipo`, `Nombre`, `Usuario`, `Contrasena`, `Empresa_id`) VALUES (12, 4, 'Almacenero', 'almacen', 'e10adc3949ba59abbe56e057f20f883e', 4);
INSERT INTO usuario (`id`, `Tipo`, `Nombre`, `Usuario`, `Contrasena`, `Empresa_id`) VALUES (13, 3, 'Suspendido', 'Suspendido', 'e10adc3949ba59abbe56e057f20f883e', 4);


