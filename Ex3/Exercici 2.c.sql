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
-- Table `mydb`.`Alumnos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Alumnos` (
  `idAlumnos` INT NOT NULL,
  `DNI` VARCHAR(9) NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellidos` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(60) NOT NULL,
  `Telefono` VARCHAR(45) NOT NULL,
  `Direccion` VARCHAR(45) NOT NULL,
  `Curso` VARCHAR(45) NULL,
  PRIMARY KEY (`idAlumnos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Departamento` (
  `idDepartamento` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idDepartamento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Profesores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Profesores` (
  `idProfesores` INT NOT NULL,
  `DNI` VARCHAR(9) NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellidos` VARCHAR(45) NOT NULL,
  `Titulacion` VARCHAR(45) NULL,
  `Asignatura` VARCHAR(45) NOT NULL,
  `JefeDepartamento` VARCHAR(45) NULL,
  `EsJefe` VARCHAR(2) NOT NULL,
  `Departamento_idDepartamento` INT NOT NULL,
  PRIMARY KEY (`idProfesores`, `Departamento_idDepartamento`),
  INDEX `fk_Profesores_Departamento1_idx` (`Departamento_idDepartamento` ASC) VISIBLE,
  CONSTRAINT `fk_Profesores_Departamento1`
    FOREIGN KEY (`Departamento_idDepartamento`)
    REFERENCES `mydb`.`Departamento` (`idDepartamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Matricula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Matricula` (
  `idMatricula` INT NOT NULL,
  `Fecha` VARCHAR(25) NOT NULL,
  `Precio` VARCHAR(45) NOT NULL,
  `NombreAlumno` VARCHAR(45) NOT NULL,
  `ApellidosAlumno` VARCHAR(45) NOT NULL,
  `Asignatura` VARCHAR(45) NOT NULL,
  `Alumnos_idAlumnos` INT NOT NULL,
  PRIMARY KEY (`idMatricula`),
  INDEX `fk_Matricula_Alumnos1_idx` (`Alumnos_idAlumnos` ASC) VISIBLE,
  CONSTRAINT `fk_Matricula_Alumnos1`
    FOREIGN KEY (`Alumnos_idAlumnos`)
    REFERENCES `mydb`.`Alumnos` (`idAlumnos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Asignatura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Asignatura` (
  `idAsignatura` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Plazas` VARCHAR(45) NULL,
  `Departamento` VARCHAR(45) NOT NULL,
  `Profesor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idAsignatura`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`MAP`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`MAP` (
  `idMAP` VARCHAR(45) NOT NULL,
  `NombreHora` VARCHAR(45) NULL,
  `Asignatura_idAsignatura` INT NOT NULL,
  `Matricula_idMatricula` INT NOT NULL,
  `Profesores_idProfesores` INT NOT NULL,
  INDEX `fk_MAP_Asignatura_idx` (`Asignatura_idAsignatura` ASC) VISIBLE,
  INDEX `fk_MAP_Matricula1_idx` (`Matricula_idMatricula` ASC) VISIBLE,
  INDEX `fk_MAP_Profesores1_idx` (`Profesores_idProfesores` ASC) VISIBLE,
  PRIMARY KEY (`idMAP`),
  CONSTRAINT `fk_MAP_Asignatura`
    FOREIGN KEY (`Asignatura_idAsignatura`)
    REFERENCES `mydb`.`Asignatura` (`idAsignatura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_MAP_Matricula1`
    FOREIGN KEY (`Matricula_idMatricula`)
    REFERENCES `mydb`.`Matricula` (`idMatricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_MAP_Profesores1`
    FOREIGN KEY (`Profesores_idProfesores`)
    REFERENCES `mydb`.`Profesores` (`idProfesores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
