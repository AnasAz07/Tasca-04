-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Mer Ex 4
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Mer Ex 4
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Mer Ex 4` ;
USE `Mer Ex 4` ;

-- -----------------------------------------------------
-- Table `Mer Ex 4`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mer Ex 4`.`Client` (
  `DNI` VARCHAR(9) NOT NULL,
  `Nom` VARCHAR(15) NULL,
  `Cognom` VARCHAR(30) NULL,
  `Adreça` VARCHAR(45) NULL,
  `Telefon` INT(9) NULL,
  `Es_VIP?` VARCHAR(5) NULL,
  PRIMARY KEY (`DNI`));


-- -----------------------------------------------------
-- Table `Mer Ex 4`.`Tipus_Polissa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mer Ex 4`.`Tipus_Polissa` (
  `ID` INT NOT NULL,
  `Nom` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`));


-- -----------------------------------------------------
-- Table `Mer Ex 4`.`Venedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mer Ex 4`.`Venedor` (
  `ID` INT NOT NULL,
  `Nom` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`));


-- -----------------------------------------------------
-- Table `Mer Ex 4`.`Polissa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mer Ex 4`.`Polissa` (
  `Num_Polissa` INT NOT NULL,
  `Preu_Anual` VARCHAR(45) NULL,
  `Tipus_Pagament` VARCHAR(45) NULL,
  `Data_Contractació` VARCHAR(45) NULL,
  `Data_Inici_Vigencia` VARCHAR(45) NULL,
  `Data_Final_Vigencia` VARCHAR(45) NULL,
  `Client_DNI` VARCHAR(9) NULL,
  `Tipus_Polissa_ID` INT NULL,
  `Venedor_ID` INT NULL,
  PRIMARY KEY (`Num_Polissa`),
  INDEX `fk_Polissa_Client_idx` (`Client_DNI` ASC) VISIBLE,
  INDEX `fk_Polissa_Tipus_Polissa1_idx` (`Tipus_Polissa_ID` ASC) VISIBLE,
  INDEX `fk_Polissa_Venedor1_idx` (`Venedor_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Polissa_Client`
    FOREIGN KEY (`Client_DNI`)
    REFERENCES `Mer Ex 4`.`Client` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Polissa_Tipus_Polissa1`
    FOREIGN KEY (`Tipus_Polissa_ID`)
    REFERENCES `Mer Ex 4`.`Tipus_Polissa` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Polissa_Venedor1`
    FOREIGN KEY (`Venedor_ID`)
    REFERENCES `Mer Ex 4`.`Venedor` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
