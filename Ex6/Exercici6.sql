-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Exercici6
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Exercici6
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Exercici6` DEFAULT CHARACTER SET binary ;
USE `Exercici6` ;

-- -----------------------------------------------------
-- Table `Exercici6`.`Pasajero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici6`.`Pasajero` (
  `idPasajero` INT NOT NULL,
  `DNI` VARCHAR(45) NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellidos` VARCHAR(45) NULL,
  `Telefono` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Direccion` VARCHAR(45) NULL,
  PRIMARY KEY (`idPasajero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici6`.`Avion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici6`.`Avion` (
  `idAvion` INT NOT NULL,
  `Companyia` VARCHAR(45) NULL,
  `Marca` VARCHAR(45) NULL,
  `Modelo` VARCHAR(45) NULL,
  `Capacidad` INT NULL,
  PRIMARY KEY (`idAvion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici6`.`Vuelo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici6`.`Vuelo` (
  `idVuelo` INT NOT NULL,
  `Numero` VARCHAR(7) NULL,
  `Origen` VARCHAR(45) NULL,
  `Destino` VARCHAR(45) NULL,
  `Avion_idAvion` INT NOT NULL,
  PRIMARY KEY (`idVuelo`),
  INDEX `fk_Vuelo_Avion1_idx` (`Avion_idAvion` ASC) VISIBLE,
  CONSTRAINT `fk_Vuelo_Avion1`
    FOREIGN KEY (`Avion_idAvion`)
    REFERENCES `Exercici6`.`Avion` (`idAvion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici6`.`Reserva`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici6`.`Reserva` (
  `idReserva` INT NOT NULL,
  `Fecha` VARCHAR(45) NULL,
  `Numero` VARCHAR(45) NULL,
  `Importe` INT NULL,
  `Pasajero_idPasajero` INT NOT NULL,
  `Vuelo_idVuelo` INT NOT NULL,
  PRIMARY KEY (`idReserva`),
  INDEX `fk_Reserva_Pasajero_idx` (`Pasajero_idPasajero` ASC) VISIBLE,
  INDEX `fk_Reserva_Vuelo1_idx` (`Vuelo_idVuelo` ASC) VISIBLE,
  CONSTRAINT `fk_Reserva_Pasajero`
    FOREIGN KEY (`Pasajero_idPasajero`)
    REFERENCES `Exercici6`.`Pasajero` (`idPasajero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reserva_Vuelo1`
    FOREIGN KEY (`Vuelo_idVuelo`)
    REFERENCES `Exercici6`.`Vuelo` (`idVuelo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici6`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici6`.`Cliente` (
  `id` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellidos` VARCHAR(45) NULL,
  `Telefono` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Direccion` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici6`.`Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici6`.`Empleado` (
  `id` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellidos` VARCHAR(45) NULL,
  `Direccion` VARCHAR(45) NULL,
  `Telefono` VARCHAR(45) NULL,
  `FechaNacimiento` VARCHAR(45) NULL,
  `DNI` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici6`.`Ticket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici6`.`Ticket` (
  `id` INT NOT NULL,
  `NumFactura` VARCHAR(45) NULL,
  `Fecha` VARCHAR(45) NULL,
  `Hora` VARCHAR(45) NULL,
  `Cliente_id` INT NOT NULL,
  `Empleado_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Ticket_Cliente1_idx` (`Cliente_id` ASC) VISIBLE,
  INDEX `fk_Ticket_Empleado1_idx` (`Empleado_id` ASC) VISIBLE,
  CONSTRAINT `fk_Ticket_Cliente1`
    FOREIGN KEY (`Cliente_id`)
    REFERENCES `Exercici6`.`Cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ticket_Empleado1`
    FOREIGN KEY (`Empleado_id`)
    REFERENCES `Exercici6`.`Empleado` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici6`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici6`.`Producto` (
  `id` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Descripcion` VARCHAR(45) NULL,
  `Precio` INT NULL,
  `IVA` INT NULL,
  `CodeBarras` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercici6`.`LineaTicket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercici6`.`LineaTicket` (
  `id` INT NOT NULL,
  `Descuento` INT NULL,
  `Importe` INT NULL,
  `Ticket_id` INT NOT NULL,
  `Producto_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_LineaTicket_Ticket1_idx` (`Ticket_id` ASC) VISIBLE,
  INDEX `fk_LineaTicket_Producto1_idx` (`Producto_id` ASC) VISIBLE,
  CONSTRAINT `fk_LineaTicket_Ticket1`
    FOREIGN KEY (`Ticket_id`)
    REFERENCES `Exercici6`.`Ticket` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_LineaTicket_Producto1`
    FOREIGN KEY (`Producto_id`)
    REFERENCES `Exercici6`.`Producto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
