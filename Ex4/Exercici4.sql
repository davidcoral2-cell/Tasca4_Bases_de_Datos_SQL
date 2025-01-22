-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Exercici 4
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Exercici 4
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Exercici 4` ;
USE `Exercici 4` ;

-- -----------------------------------------------------
-- Table `Exercici 4`.`Clients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 4`.`Clients` (
  `idCliente` INT NOT NULL,
  `DNI` VARCHAR(9) NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellidos` VARCHAR(45) NULL,
  `VIP` VARCHAR(45) NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE INDEX `DNI_UNIQUE` (`DNI` ASC) VISIBLE,
  UNIQUE INDEX `Nombre_UNIQUE` (`Nombre` ASC) VISIBLE,
  UNIQUE INDEX `Apellidos_UNIQUE` (`Apellidos` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 4`.`Vendedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 4`.`Vendedor` (
  `idVendedor` INT NOT NULL,
  `DNI` VARCHAR(9) NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellidos` VARCHAR(45) NULL,
  PRIMARY KEY (`idVendedor`),
  UNIQUE INDEX `DNI_UNIQUE` (`DNI` ASC) VISIBLE,
  UNIQUE INDEX `Nombre_UNIQUE` (`Nombre` ASC) VISIBLE,
  UNIQUE INDEX `Apellidos_UNIQUE` (`Apellidos` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 4`.`TipoPoliza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 4`.`TipoPoliza` (
  `idTipoPoliza` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Descripcion` VARCHAR(250) NULL,
  PRIMARY KEY (`idTipoPoliza`),
  UNIQUE INDEX `Nombre_UNIQUE` (`Nombre` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici 4`.`Poliza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici 4`.`Poliza` (
  `idPoliza` INT NOT NULL,
  `NumPoliza` VARCHAR(25) NULL,
  `TipoPago` VARCHAR(45) NULL,
  `PrecioAnual` INT NOT NULL,
  `FinVigencia` VARCHAR(10) NULL,
  `DatosContrato` VARCHAR(10) NULL,
  `Clients_idCliente` INT NULL,
  `Vendedor_idVendedor` INT NULL,
  `TipoPoliza_idTipoPoliza` INT NULL,
  PRIMARY KEY (`idPoliza`),
  UNIQUE INDEX `NumPoliza_UNIQUE` (`NumPoliza` ASC) VISIBLE,
  INDEX `fk_Poliza_Clients_idx` (`Clients_idCliente` ASC) VISIBLE,
  INDEX `fk_Poliza_Vendedor1_idx` (`Vendedor_idVendedor` ASC) VISIBLE,
  INDEX `fk_Poliza_TipoPoliza1_idx` (`TipoPoliza_idTipoPoliza` ASC) VISIBLE,
  CONSTRAINT `fk_Poliza_Clients`
    FOREIGN KEY (`Clients_idCliente`)
    REFERENCES `Exercici 4`.`Clients` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Poliza_Vendedor1`
    FOREIGN KEY (`Vendedor_idVendedor`)
    REFERENCES `Exercici 4`.`Vendedor` (`idVendedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Poliza_TipoPoliza1`
    FOREIGN KEY (`TipoPoliza_idTipoPoliza`)
    REFERENCES `Exercici 4`.`TipoPoliza` (`idTipoPoliza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
