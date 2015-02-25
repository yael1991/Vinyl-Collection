CREATE SCHEMA `discos` ;
USE discos;


# Artista 

CREATE TABLE `Artista` (
  `idArtista` varchar(6) NOT NULL ,
  `Artista` varchar(40) NOT NULL ,
  PRIMARY KEY  (`idArtista`)
) ENGINE=InnoDB;


# Label

CREATE TABLE `Sello` (
  `idSello` varchar(6) NOT NULL ,
  `Sello` varchar(40) NOT NULL ,
  PRIMARY KEY  (`idSello`)
) ENGINE=InnoDB;


# Formato

CREATE TABLE `Formato` (
  `idFormato` varchar(6) NOT NULL ,
  `Formato` varchar(40) NOT NULL ,
  PRIMARY KEY  (`idFormato`)
) ENGINE=InnoDB;


# Lugar

CREATE TABLE `Lugar` (
  `idLugar` varchar(6) NOT NULL ,
  `Lugar` varchar(40) NOT NULL ,
  PRIMARY KEY  (`Lugar`)
) ENGINE=InnoDB;	