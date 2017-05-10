-- MySQL Script generated by MySQL Workbench
-- Fri May  5 14:50:33 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema ExplAgora
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema new_schema1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `Réponse`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Réponse` ;

CREATE TABLE IF NOT EXISTS `Réponse` (
  `idRéponse` INT NOT NULL,
  `idControverse` VARCHAR(45) NULL,
  `idIndices` VARCHAR(45) NULL,
  `idJoueur` VARCHAR(45) NULL,
  `idEquipe` VARCHAR(45) NULL,
  PRIMARY KEY (`idRéponse`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Livre`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Livre` ;

CREATE TABLE IF NOT EXISTS `Livre` (
  `idLivre` INT NOT NULL AUTO_INCREMENT,
  `titre` VARCHAR(250) NULL,
  PRIMARY KEY (`idLivre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Liste`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Liste` ;

CREATE TABLE IF NOT EXISTS `Liste` (
  `idListe` INT NOT NULL AUTO_INCREMENT,
  `titre` VARCHAR(300) NULL,
  PRIMARY KEY (`idListe`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Indice`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Indice` ;

CREATE TABLE IF NOT EXISTS `Indice` (
  `idIndice` INT NOT NULL AUTO_INCREMENT,
  `ordre` INT NULL,
  `valeur` VARCHAR(100) NULL,
  PRIMARY KEY (`idIndice`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Joueur`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Joueur` ;

CREATE TABLE IF NOT EXISTS `Joueur` (
  `idJoueur` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(100) NULL,
  `role` VARCHAR(45) NULL,
  PRIMARY KEY (`idJoueur`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Equipe`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Equipe` ;

CREATE TABLE IF NOT EXISTS `Equipe` (
  `idEquipe` INT NOT NULL AUTO_INCREMENT,
  `uti_id` INT NULL,
  `nom` VARCHAR(45) NULL,
  PRIMARY KEY (`idEquipe`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Controverse`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Controverse` ;

CREATE TABLE IF NOT EXISTS `Controverse` (
  `idControverse` INT NOT NULL AUTO_INCREMENT,
  `doc_idi_livres` INT NOT NULL,
  `doc_id_liste` INT NOT NULL,
  `idIndice` INT NOT NULL,
  `uti_id` INT NOT NULL,
  `idEquipe` INT NOT NULL,
  `maj` DATETIME NULL,
  `viable` INT NULL,
  PRIMARY KEY (`idControverse`, `doc_idi_livres`, `doc_id_liste`, `idIndice`, `uti_id`, `idEquipe`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Reponse`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Reponse` ;

CREATE TABLE IF NOT EXISTS `Reponse` (
  `idReponses` INT NOT NULL AUTO_INCREMENT,
  `valeur` VARCHAR(500) NULL,
  PRIMARY KEY (`idReponses`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Question`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Question` ;

CREATE TABLE IF NOT EXISTS `Question` (
  `idQuestion` INT NOT NULL AUTO_INCREMENT,
  `valeur` VARCHAR(200) NULL,
  PRIMARY KEY (`idQuestion`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
