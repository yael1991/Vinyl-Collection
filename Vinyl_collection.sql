CREATE SCHEMA `discos` ;
USE discos;

#-----------------------------------
# Artista 

CREATE TABLE `Artista` (
  `idArtista` varchar(80) NOT NULL ,
  `Nombre Artista` varchar(80) NOT NULL ,
  PRIMARY KEY  (`idArtista`)
) ENGINE=InnoDB;


INSERT INTO `Artista` VALUES ('White Stripes,the', 'the White Stripes');
INSERT INTO `Artista` VALUES ('Tame Impala', 'Tame Impala');
INSERT INTO `Artista` VALUES ('Mac Demarco', 'Mac Demarco');


# Label

CREATE TABLE `Sello` (
  `idSello` varchar(10) NOT NULL ,
  `Nombre Sello` varchar(40) NOT NULL ,
  PRIMARY KEY  (`idSello`)
) ENGINE=InnoDB;

INSERT INTO `Sello` VALUES ('Modular', 'Modular Recordings');
INSERT INTO `Sello` VALUES ('V2', 'V2 Music Ltd');
INSERT INTO `Sello` VALUES ('Cap Tracks', 'Captured Tracks');


# Formato

CREATE TABLE `Formato` (
  `idFormato` varchar(6) NOT NULL ,
  `Nombre Formato` varchar(40) NOT NULL ,
  PRIMARY KEY  (`idFormato`)
) ENGINE=InnoDB;

INSERT INTO `Formato` VALUES ('12', '12 inch');
INSERT INTO `Formato` VALUES ('10', '10 inch');
INSERT INTO `Formato` VALUES ('7', '7 inch');


# Lugar

CREATE TABLE `Lugar` (
  `idLugar` varchar(10) NOT NULL ,
  `Nombre Lugar` varchar(40) NOT NULL ,
  PRIMARY KEY  (`idLugar`)
) ENGINE=InnoDB;	

INSERT INTO `Lugar` VALUES ('UK', 'Reino Unido');
INSERT INTO `Lugar` VALUES ('USA', 'Estados Unidos');
INSERT INTO `Lugar` VALUES ('D', 'Alemania');


# Sitio Almacenaje


CREATE TABLE `Sitio` (
  `idSitio` varchar(6) NOT NULL ,
  `Num estanteria` varchar(2) NOT NULL ,
  `Num celda` varchar(3) NOT NULL ,
  PRIMARY KEY  (`idSitio`)
) ENGINE=InnoDB;

INSERT `Sitio` VALUES ('01/12', '01','12');
INSERT `Sitio` VALUES ('03/24', '03','24');
INSERT `Sitio` VALUES ('02/05', '2','5');

#-----------------------------------

# Disco

CREATE TABLE `Disco` (
  `idDisco` varchar(40) NOT NULL ,
  `Disco` varchar(40) NOT NULL ,
  `Año` varchar(4) NOT NULL,
  `idArtista` varchar(80) NOT NULL ,
  PRIMARY KEY  (`idDisco`),
  CONSTRAINT `FK_disc_art` FOREIGN KEY (`idArtista`) REFERENCES `Artista` (`idArtista`)
) ENGINE=InnoDB;


INSERT `Disco` VALUES ('Elephant_WS','Elephant','2003','White Stripes,the');
INSERT `Disco` VALUES ('Elephant_TI','Elephant','2012','Tame Impala');
INSERT `Disco` VALUES ('Salad Days_MD','Salad Days','2014','Mac Demarco');


# Edición

CREATE TABLE `Edicion` (
  `idEdicion` varchar(30) NOT NULL ,
  `idDisco` varchar(40) NOT NULL ,
  `Catalogo` varchar(40) NOT NULL ,
  `Año` varchar(4) NOT NULL,
  `Lugar` varchar(10) NOT NULL, 
  `Formato` varchar(6) NOT NULL,
  `Sello` varchar(10) NOT NULL ,
  PRIMARY KEY  (`idEdicion`,`idDisco`),
  CONSTRAINT `FK_edicion_disco` FOREIGN KEY (`idDisco`) REFERENCES `Disco` (`idDisco`),
  CONSTRAINT `FK_edicion_sello` FOREIGN KEY (`Sello`) REFERENCES `Sello` (`idSello`),
  CONSTRAINT `FK_edicion_luegar` FOREIGN KEY (`Lugar`) REFERENCES `Lugar` (`idLugar`),
  CONSTRAINT `FK_edicion_formato` FOREIGN KEY (`Formato`) REFERENCES `Formato` (`idFormato`)
) ENGINE=InnoDB;


# Ejemplar

CREATE TABLE `Ejemplar` (
  `idEjemplar` varchar(30) NOT NULL ,
  `idEdicion` varchar(30) NOT NULL ,
  `idDisco` varchar(40) NOT NULL ,
  `Estado de conservacion` varchar(4) NOT NULL ,
  `Precio Compra` varchar(4) NOT NULL,
  `Sitio` varchar(10) NOT NULL, 
  PRIMARY KEY  (`idEjemplar`,`idEdicion`,`idDisco`),
  CONSTRAINT `FK_ejemplar_disco` FOREIGN KEY (`idDisco`) REFERENCES `Disco` (`idDisco`),
  CONSTRAINT `FK_ejemplar_edicion` FOREIGN KEY (`idEdicion`) REFERENCES `Edicion` (`idEdicion`),
  CONSTRAINT `FK_ejemplar_sitio` FOREIGN KEY (`Sitio`) REFERENCES `Sitio` (`idSitio`)
) ENGINE=InnoDB;












