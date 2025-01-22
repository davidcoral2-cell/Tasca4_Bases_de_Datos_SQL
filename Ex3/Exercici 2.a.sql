-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Paciente` (
  `idPaciente` INT NOT NULL,
  `DNI` VARCHAR(9) NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellidos` VARCHAR(50) NULL,
  `Telefono` VARCHAR(13) NULL,
  `Poblacion` VARCHAR(45) NULL,
  `Codigo_postal` VARCHAR(45) NULL,
  `Calle` VARCHAR(45) NULL,
  `Piso_y_puerta` VARCHAR(45) NULL,
  `Número_Seguridad_Social` VARCHAR(12) NULL,
  PRIMARY KEY (`idPaciente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Doctor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Doctor` (
  `idDoctor` INT NOT NULL,
  `Numero_Colegiado` VARCHAR(9) NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellidos` VARCHAR(45) NULL,
  `Especialidad` VARCHAR(45) NULL,
  `Cargo` VARCHAR(45) NULL,
  PRIMARY KEY (`idDoctor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Consulta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Consulta` (
  `idConsulta` INT NOT NULL,
  `Paciente` VARCHAR(45) NULL,
  `Doctor` VARCHAR(45) NULL,
  `Fecha` VARCHAR(25) NULL,
  `Planta` VARCHAR(2) NULL,
  `Diagnostico` VARCHAR(45) NULL,
  `Paciente_ID Paciente` INT NOT NULL,
  `Doctor_ID Doctor` INT NOT NULL,
  PRIMARY KEY (`idConsulta`),
  INDEX `fk_Consulta_Paciente_idx` (`Paciente_ID Paciente` ASC) VISIBLE,
  INDEX `fk_Consulta_Doctor1_idx` (`Doctor_ID Doctor` ASC) VISIBLE,
  CONSTRAINT `fk_Consulta_Paciente`
    FOREIGN KEY (`Paciente_ID Paciente`)
    REFERENCES `mydb`.`Paciente` (`idPaciente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Consulta_Doctor1`
    FOREIGN KEY (`Doctor_ID Doctor`)
    REFERENCES `mydb`.`Doctor` (`idDoctor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
