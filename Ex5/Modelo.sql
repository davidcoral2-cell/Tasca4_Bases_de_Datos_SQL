-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Exercici5
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Exercici5
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Exercici5` ;
USE `Exercici5` ;

-- -----------------------------------------------------
-- Table `Exercici5`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici5`.`Cliente` (
  `idCliente` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellidos` VARCHAR(45) NULL,
  `Correo` VARCHAR(45) NULL,
  `Telefono` VARCHAR(12) NULL,
  `Usuario` VARCHAR(45) NULL,
  `Contraseña` VARCHAR(20) NULL,
  PRIMARY KEY (`idCliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici5`.`Vehiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici5`.`Vehiculo` (
  `idVehiculo` INT NOT NULL,
  `Carroceria` VARCHAR(45) NULL,
  `Matricula` VARCHAR(7) NULL,
  `Marca` VARCHAR(45) NULL,
  `Modelo` VARCHAR(45) NULL,
  `Cliente_idCliente` INT NOT NULL,
  PRIMARY KEY (`idVehiculo`),
  UNIQUE INDEX `Matricula_UNIQUE` (`Matricula` ASC) VISIBLE,
  INDEX `fk_Vehiculo_Cliente1_idx` (`Cliente_idCliente` ASC) VISIBLE,
  CONSTRAINT `fk_Vehiculo_Cliente1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `Exercici5`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici5`.`Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici5`.`Empleado` (
  `idEmpleado` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellidos` VARCHAR(45) NULL,
  `Telefono` VARCHAR(12) NULL,
  PRIMARY KEY (`idEmpleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici5`.`Cita`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici5`.`Cita` (
  `idCita` INT NOT NULL,
  `Fecha` VARCHAR(10) NULL,
  `Hora` VARCHAR(5) NULL,
  `Box` VARCHAR(45) NULL,
  `Empleado_idEmpleado` INT NOT NULL,
  `Vehiculo_idVehiculo` INT NOT NULL,
  PRIMARY KEY (`idCita`),
  INDEX `fk_Cita_Empleado_idx` (`Empleado_idEmpleado` ASC) VISIBLE,
  INDEX `fk_Cita_Vehiculo1_idx` (`Vehiculo_idVehiculo` ASC) VISIBLE,
  CONSTRAINT `fk_Cita_Empleado`
    FOREIGN KEY (`Empleado_idEmpleado`)
    REFERENCES `Exercici5`.`Empleado` (`idEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cita_Vehiculo1`
    FOREIGN KEY (`Vehiculo_idVehiculo`)
    REFERENCES `Exercici5`.`Vehiculo` (`idVehiculo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
