# SQL Manager 2010 for MySQL 4.5.0.9
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : aqua_lorenzo


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;

SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE `aqua_lorenzo`
    CHARACTER SET 'latin1'
    COLLATE 'latin1_swedish_ci';

USE `aqua_lorenzo`;

#
# Structure for the `aporte` table : 
#

CREATE TABLE `aporte` (
  `id_ap` int(11) NOT NULL AUTO_INCREMENT,
  `motivo_ap` varchar(250) DEFAULT '-',
  `detalle_ap` varchar(150) DEFAULT '-',
  `monto_ap` float DEFAULT '0',
  `fechahora_ap` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mes_ap` varchar(20) DEFAULT '-',
  `gestion_ap` varchar(20) DEFAULT '-',
  `tipo_ap` varchar(30) DEFAULT 'PARCIAL',
  `estado_ap` varchar(20) DEFAULT 'ACTIVO',
  `id_usu` int(11) DEFAULT '0',
  `exento_ap` varchar(20) DEFAULT 'SI',
  `ice_ap` varchar(20) DEFAULT 'SI',
  PRIMARY KEY (`id_ap`),
  UNIQUE KEY `id_ap` (`id_ap`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Structure for the `asociado` table : 
#

CREATE TABLE `asociado` (
  `id_asoc` int(11) NOT NULL AUTO_INCREMENT,
  `id_emp` int(11) DEFAULT NULL,
  `estado` char(30) DEFAULT 'ACTIVO',
  `tipo_asoc` varchar(20) DEFAULT 'ASOCIADO',
  `ciudad` varchar(20) DEFAULT '-',
  `nombres_asoc` varchar(100) DEFAULT '-',
  `apellidos_asoc` varchar(100) DEFAULT '-',
  `ci_asoc` varchar(20) DEFAULT '-',
  `direccion_asoc` varchar(250) DEFAULT '-',
  `fechanac_asoc` date DEFAULT '0000-00-00',
  `telefono_asoc` varchar(100) DEFAULT '-',
  `codigo_asoc` varchar(20) DEFAULT '-',
  `nit_asoc` varchar(30) DEFAULT '0',
  `razon_asoc` varchar(100) DEFAULT '-',
  `foto_asoc` longblob,
  `fechahora_asoc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `zona_asoc` varchar(150) DEFAULT '-',
  `medidor_asoc` varchar(50) DEFAULT '-',
  `servicios_asoc` varchar(250) DEFAULT '-',
  `categoria_asoc` varchar(150) DEFAULT '-',
  `orden_asoc` int(11) DEFAULT '0',
  PRIMARY KEY (`id_asoc`)
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=latin1;

#
# Structure for the `asociado_aux` table : 
#

CREATE TABLE `asociado_aux` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `id_asoc` int(11) NOT NULL DEFAULT '0',
  `nombre_asoc` varchar(250) DEFAULT '-',
  `codigo` varchar(50) DEFAULT '-',
  `direccion` varchar(250) DEFAULT '-',
  `servicio` varchar(50) DEFAULT '-',
  `lectura_ant` double(15,3) DEFAULT '0.000',
  `lectura_act` double(15,3) DEFAULT '0.000',
  `consumo` double(15,3) DEFAULT '0.000',
  `fecha` date DEFAULT '1900-01-01',
  `hora` time DEFAULT '00:00:00',
  `estado` varchar(30) DEFAULT 'SIN LECTURA',
  `gestion` varchar(20) DEFAULT '-',
  `mes` varchar(20) DEFAULT '-',
  PRIMARY KEY (`num`),
  UNIQUE KEY `num` (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Structure for the `bitacora` table : 
#

CREATE TABLE `bitacora` (
  `id_bit` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT '1900-01-01',
  `hora` time DEFAULT '00:00:00',
  `ope` varchar(255) DEFAULT '-',
  `sentenc` longtext,
  `usuario` varchar(150) DEFAULT '-',
  PRIMARY KEY (`id_bit`),
  KEY `id_` (`id_bit`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

#
# Structure for the `bolsarol` table : 
#

CREATE TABLE `bolsarol` (
  `id_rol` int(11) DEFAULT '0',
  `rol` varchar(255) DEFAULT NULL,
  `estado_rol` tinyint(1) DEFAULT NULL,
  KEY `id_rol` (`id_rol`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `categoria_ingreso` table : 
#

CREATE TABLE `categoria_ingreso` (
  `id_cating` int(11) NOT NULL AUTO_INCREMENT,
  `nom_cating` varchar(50) DEFAULT '-',
  `id_ging` int(11) DEFAULT '0',
  PRIMARY KEY (`id_cating`),
  KEY `id_cat` (`id_cating`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 PACK_KEYS=0 ROW_FORMAT=DYNAMIC;

#
# Structure for the `categorias` table : 
#

CREATE TABLE `categorias` (
  `categoria` varchar(30) NOT NULL DEFAULT '-',
  PRIMARY KEY (`categoria`),
  UNIQUE KEY `categoria` (`categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for the `configuracion` table : 
#

CREATE TABLE `configuracion` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `opcion` varchar(150) DEFAULT NULL,
  `valor` tinyint(1) DEFAULT NULL,
  `parametro` varchar(20) DEFAULT '-',
  KEY `auto_increment_key` (`num`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

#
# Structure for the `detalle_factura` table : 
#

CREATE TABLE `detalle_factura` (
  `id_detfact` int(11) NOT NULL AUTO_INCREMENT,
  `id_fact` int(11) DEFAULT '0',
  `cant_detfact` int(11) DEFAULT '0',
  `descip_detfact` varchar(250) DEFAULT '-',
  `punit_detfact` float DEFAULT '0',
  `desc_detfact` float DEFAULT '0',
  `total_detfact` float DEFAULT '0',
  `tipo_detfact` int(11) DEFAULT '0',
  `exento_detfact` varchar(20) DEFAULT 'NO',
  `ice_detfact` varchar(20) DEFAULT 'NO',
  PRIMARY KEY (`id_detfact`),
  UNIQUE KEY `id_detfact` (`id_detfact`),
  KEY `fk_tiene_varios` (`id_fact`)
) ENGINE=InnoDB AUTO_INCREMENT=3117 DEFAULT CHARSET=latin1;

#
# Structure for the `direccion_orden` table : 
#

CREATE TABLE `direccion_orden` (
  `id_dir` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_dir` varchar(250) DEFAULT '-',
  `orden_dir` int(11) DEFAULT '0',
  PRIMARY KEY (`id_dir`),
  UNIQUE KEY `id_dir` (`id_dir`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

#
# Structure for the `dosificacion` table : 
#

CREATE TABLE `dosificacion` (
  `id_dosif` int(11) NOT NULL AUTO_INCREMENT,
  `numorden_dosif` varchar(20) DEFAULT '-',
  `llave_dosif` varchar(250) DEFAULT '-',
  `fechalim_dosif` date DEFAULT '0000-00-00',
  `estado_dosif` varchar(20) DEFAULT 'ACTIVO',
  `fechahora_dosif` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `numfact_dosif` int(11) DEFAULT '0',
  PRIMARY KEY (`id_dosif`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

#
# Structure for the `empresa` table : 
#

CREATE TABLE `empresa` (
  `id_emp` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_emp` varchar(150) DEFAULT NULL,
  `eslogan_emp` varchar(255) DEFAULT NULL,
  `direccion_emp` varchar(255) DEFAULT NULL,
  `telefono_emp` varchar(150) DEFAULT NULL,
  `sucursal_emp` varchar(255) DEFAULT NULL,
  `ubicacion_emp` varchar(255) DEFAULT NULL,
  `actividad_emp` varchar(255) DEFAULT NULL,
  `nit_emp` varchar(30) DEFAULT NULL,
  `logo_emp` longblob,
  `zona_emp` varchar(30) DEFAULT '-',
  `sis_emp` varchar(20) DEFAULT '-',
  `anuncio_emp` varchar(400) DEFAULT '-',
  PRIMARY KEY (`id_emp`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

#
# Structure for the `estado_factura` table : 
#

CREATE TABLE `estado_factura` (
  `estado_fact` varchar(30) NOT NULL,
  PRIMARY KEY (`estado_fact`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for the `estados` table : 
#

CREATE TABLE `estados` (
  `estado` char(30) NOT NULL,
  PRIMARY KEY (`estado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for the `expedido` table : 
#

CREATE TABLE `expedido` (
  `ciudad` varchar(20) NOT NULL,
  PRIMARY KEY (`ciudad`),
  UNIQUE KEY `ciudad` (`ciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for the `factura` table : 
#

CREATE TABLE `factura` (
  `id_fact` int(11) NOT NULL AUTO_INCREMENT,
  `id_lec` int(11) DEFAULT '0',
  `num_fact` int(11) DEFAULT '0',
  `nit_fact` varchar(30) DEFAULT '0',
  `razon_fact` varchar(100) DEFAULT 'SIN NOMBRE',
  `orden_fact` varchar(30) DEFAULT '0',
  `nitemisor_fact` varchar(30) DEFAULT '0',
  `llave_fact` varchar(250) DEFAULT '0',
  `fecha_fact` date DEFAULT '0000-00-00',
  `hora_fact` time DEFAULT '00:00:00',
  `fechaemision_fact` date DEFAULT '0000-00-00',
  `montoparc_fact` float DEFAULT '0',
  `desc_fact` float DEFAULT '0',
  `cadenaqr_fact` varchar(250) DEFAULT '-',
  `codcontrol_fact` varchar(250) DEFAULT '-',
  `literal_fact` varchar(250) DEFAULT '-',
  `fechahora_fact` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tipo_fact` int(11) DEFAULT '0',
  `fechavenc_fact` date DEFAULT '0000-00-00',
  `totalconsumo_fact` float(9,3) DEFAULT '0.000',
  `totalaportes_fact` float(9,3) DEFAULT '0.000',
  `totalrecargos_fact` float(9,3) DEFAULT '0.000',
  `montototal_fact` float DEFAULT '0',
  `estado_fact` varchar(30) DEFAULT 'PENDIENTE',
  `id_usu` int(11) DEFAULT '0',
  `exento_fact` float(9,3) DEFAULT '0.000',
  `ice_fact` float(9,3) DEFAULT '0.000',
  PRIMARY KEY (`id_fact`),
  KEY `fk_contiene` (`id_lec`),
  KEY `fk_se_aplica__a_` (`estado_fact`)
) ENGINE=InnoDB AUTO_INCREMENT=1878 DEFAULT CHARSET=latin1;

#
# Structure for the `gestion` table : 
#

CREATE TABLE `gestion` (
  `gestion_lec` varchar(20) NOT NULL,
  PRIMARY KEY (`gestion_lec`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for the `ingreso_egreso` table : 
#

CREATE TABLE `ingreso_egreso` (
  `id_ing` int(11) NOT NULL AUTO_INCREMENT,
  `id_usu` int(11) DEFAULT '0',
  `detalle_ing` varchar(255) CHARACTER SET latin1 DEFAULT '-',
  `nombre_ing` varchar(255) CHARACTER SET latin1 DEFAULT '-',
  `fechahora_ing` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monto_ing` double DEFAULT '0',
  `descripcion_ing` varchar(250) CHARACTER SET latin1 DEFAULT '-',
  `estado_ing` varchar(255) CHARACTER SET latin1 DEFAULT 'ACTIVO',
  `tipo_ing` varchar(20) DEFAULT 'INGRESO',
  `numrec_ing` int(11) DEFAULT '0',
  `numrec_egr` int(11) DEFAULT '0',
  PRIMARY KEY (`id_ing`),
  KEY `id_egr` (`id_ing`),
  KEY `id_usu` (`id_usu`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 PACK_KEYS=0 ROW_FORMAT=DYNAMIC;

#
# Structure for the `lectura` table : 
#

CREATE TABLE `lectura` (
  `id_lec` int(11) NOT NULL AUTO_INCREMENT,
  `id_usu` int(11) DEFAULT '0',
  `id_asoc` int(11) DEFAULT '0',
  `mes_lec` varchar(20) DEFAULT '-',
  `gestion_lec` varchar(20) DEFAULT '-',
  `anterior_lec` float DEFAULT '0',
  `actual_lec` float DEFAULT '0',
  `fechaant_lec` date DEFAULT '0000-00-00',
  `consumo_lec` float DEFAULT '0',
  `fecha_lec` date DEFAULT '0000-00-00',
  `hora_lec` time DEFAULT '00:00:00',
  `totalcons_lec` float DEFAULT '0',
  `fechahora_lec` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monto_lec` float DEFAULT '0',
  `estado_lec` varchar(20) DEFAULT 'SIN LECTURA',
  `tipo_asoc` varchar(30) DEFAULT '-',
  `servicios_asoc` varchar(50) DEFAULT NULL,
  `totalmultas_` int(11) DEFAULT NULL,
  `cantfact_lec` int(11) DEFAULT '0',
  `montofact_lec` double(15,3) DEFAULT '0.000',
  PRIMARY KEY (`id_lec`),
  UNIQUE KEY `id_lec` (`id_lec`),
  KEY `fk_pertenece` (`gestion_lec`),
  KEY `fk_pertenece_a` (`mes_lec`),
  KEY `fk_registra` (`id_usu`),
  KEY `fk_tiene` (`id_asoc`)
) ENGINE=InnoDB AUTO_INCREMENT=2168 DEFAULT CHARSET=latin1;

#
# Structure for the `zonas` table : 
#

CREATE TABLE `zonas` (
  `zona_med` varchar(50) NOT NULL,
  PRIMARY KEY (`zona_med`),
  UNIQUE KEY `zona_med` (`zona_med`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for the `medidor` table : 
#

CREATE TABLE `medidor` (
  `id_med` int(11) NOT NULL AUTO_INCREMENT,
  `estado` char(30) DEFAULT '-',
  `id_multa` int(11) DEFAULT '0',
  `id_tarifa` int(11) DEFAULT '0',
  `id_ap` int(11) DEFAULT '0',
  `zona_med` varchar(50) DEFAULT '-',
  `id_asoc` int(11) DEFAULT '0',
  `codigo_med` varchar(20) DEFAULT '-',
  `marca_med` varchar(100) DEFAULT '-',
  `modelo_med` varchar(100) DEFAULT '-',
  `direccion_med` varchar(250) DEFAULT '-',
  `categoria_med` varchar(20) DEFAULT '-',
  PRIMARY KEY (`id_med`),
  UNIQUE KEY `id_med` (`id_med`),
  KEY `fk_esta_sujeta_a` (`id_tarifa`),
  KEY `fk_relationship_14` (`id_multa`),
  KEY `fk_se_aplica_a` (`estado`),
  KEY `fk_se_asigna_un` (`id_ap`),
  KEY `fk_tiene_asignado` (`zona_med`),
  KEY `fk_tiene_un` (`id_asoc`),
  CONSTRAINT `fk_se_aplica_a` FOREIGN KEY (`estado`) REFERENCES `estados` (`estado`),
  CONSTRAINT `fk_se_asigna_un` FOREIGN KEY (`id_ap`) REFERENCES `aporte` (`id_ap`),
  CONSTRAINT `fk_tiene_asignado` FOREIGN KEY (`zona_med`) REFERENCES `zonas` (`zona_med`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for the `servicios` table : 
#

CREATE TABLE `servicios` (
  `servicio` varchar(250) NOT NULL DEFAULT '-',
  PRIMARY KEY (`servicio`),
  UNIQUE KEY `servicio` (`servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for the `medidor_servicios` table : 
#

CREATE TABLE `medidor_servicios` (
  `servicio` varchar(150) NOT NULL,
  `id_med` int(11) NOT NULL,
  `id_serv` int(11) NOT NULL AUTO_INCREMENT,
  `monto_serv` float DEFAULT NULL,
  `fecha_serv` date DEFAULT NULL,
  `hora_serv` time DEFAULT NULL,
  PRIMARY KEY (`id_serv`),
  KEY `fk_medidor_servicios` (`servicio`),
  KEY `fk_medidor_servicios2` (`id_med`),
  CONSTRAINT `fk_medidor_servicios` FOREIGN KEY (`servicio`) REFERENCES `servicios` (`servicio`),
  CONSTRAINT `fk_medidor_servicios2` FOREIGN KEY (`id_med`) REFERENCES `medidor` (`id_med`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for the `mes` table : 
#

CREATE TABLE `mes` (
  `mes_lec` varchar(20) DEFAULT '-',
  `id_mes` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_mes`),
  UNIQUE KEY `id_mes` (`id_mes`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

#
# Structure for the `multa` table : 
#

CREATE TABLE `multa` (
  `id_multa` int(11) NOT NULL AUTO_INCREMENT,
  `motivo_multa` varchar(250) DEFAULT '-',
  `detalle_multa` varchar(150) DEFAULT '-',
  `monto_multa` float DEFAULT '0',
  `fechahora_multa` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mes_multa` varchar(20) DEFAULT '-',
  `gestion_multa` varchar(20) DEFAULT '-',
  `tipo_multa` varchar(30) DEFAULT 'PARCIAL',
  `id_asoc` int(11) DEFAULT '0',
  `nombre_asoc` varchar(150) DEFAULT '-',
  `estado_multa` varchar(20) DEFAULT 'ACTIVO',
  `id_usu` int(11) DEFAULT '0',
  `exento_multa` varchar(20) DEFAULT 'SI',
  `ice_multa` varchar(20) DEFAULT 'SI',
  PRIMARY KEY (`id_multa`),
  UNIQUE KEY `id_multa` (`id_multa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

#
# Structure for the `parametros` table : 
#

CREATE TABLE `parametros` (
  `id_param` int(11) NOT NULL AUTO_INCREMENT,
  `descip_param` varchar(150) DEFAULT '-',
  `dias_param` int(11) NOT NULL DEFAULT '0',
  `monto_param` float(9,3) DEFAULT '0.000',
  `estado` varchar(30) DEFAULT 'ACTIVO',
  `detalle_param` varchar(150) DEFAULT '-',
  PRIMARY KEY (`id_param`),
  UNIQUE KEY `id_param` (`id_param`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

#
# Structure for the `rol` table : 
#

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `nom_rol` varchar(255) DEFAULT '-',
  `desc_rol` varchar(255) DEFAULT '-',
  `estado_rol` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_rol`),
  KEY `id_rol` (`id_rol`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

#
# Structure for the `rol_usuario` table : 
#

CREATE TABLE `rol_usuario` (
  `id_rol` int(11) DEFAULT '0',
  `id_usu` int(11) DEFAULT '0',
  `fecha` datetime DEFAULT NULL,
  `estado_rol` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `tarifa` table : 
#

CREATE TABLE `tarifa` (
  `id_tarifa` int(11) NOT NULL AUTO_INCREMENT,
  `desde` float DEFAULT '0',
  `hasta` float DEFAULT '0',
  `costo_agua` float DEFAULT '0',
  `costo_alcant` float DEFAULT '0',
  `tipo` varchar(30) DEFAULT '-',
  PRIMARY KEY (`id_tarifa`),
  UNIQUE KEY `id_tarifa` (`id_tarifa`)
) ENGINE=InnoDB AUTO_INCREMENT=503 DEFAULT CHARSET=latin1;

#
# Structure for the `tarifa_parametrizable` table : 
#

CREATE TABLE `tarifa_parametrizable` (
  `id_tarifa` int(11) NOT NULL AUTO_INCREMENT,
  `desde` double DEFAULT '0',
  `hasta` double DEFAULT '0',
  `costo_m3` double DEFAULT '0',
  `costo_fijo` double DEFAULT '0',
  `porc_alcant` double DEFAULT '0',
  `porc_factura` double DEFAULT '0',
  `montofijo_extra` double DEFAULT '0',
  `tipo` varchar(30) DEFAULT '-',
  PRIMARY KEY (`id_tarifa`),
  UNIQUE KEY `id_tarifa` (`id_tarifa`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

#
# Structure for the `tipo_aporte` table : 
#

CREATE TABLE `tipo_aporte` (
  `tipo` varchar(30) NOT NULL DEFAULT '-',
  PRIMARY KEY (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for the `tipo_asociado` table : 
#

CREATE TABLE `tipo_asociado` (
  `tipo_asoc` varchar(20) NOT NULL,
  PRIMARY KEY (`tipo_asoc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for the `tipo_multa` table : 
#

CREATE TABLE `tipo_multa` (
  `tipo` varchar(30) NOT NULL DEFAULT '-',
  PRIMARY KEY (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for the `tipo_usuario` table : 
#

CREATE TABLE `tipo_usuario` (
  `tipo_usuario` varchar(20) NOT NULL,
  UNIQUE KEY `tipo_usuario` (`tipo_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for the `usuario` table : 
#

CREATE TABLE `usuario` (
  `id_usu` int(11) NOT NULL AUTO_INCREMENT,
  `estado_usu` varchar(30) DEFAULT 'ACTIVO',
  `tipo_usuario` varchar(20) DEFAULT 'ADMINISTRADOR',
  `nombre_usu` varchar(100) DEFAULT '-',
  `login_usu` varchar(30) DEFAULT '-',
  `clave_usu` varchar(30) DEFAULT '-',
  `imagen_usu` longblob,
  `fechahora_usu` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `terminal_usu` int(11) DEFAULT '0',
  PRIMARY KEY (`id_usu`),
  UNIQUE KEY `id_usu` (`id_usu`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;