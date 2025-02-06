Use Exercici5;
INSERT INTO Cliente(idCliente, Nombre, Apellidos, Correo, Telefono, Usuario, Contraseña) 
VALUES
(0, 'Pedro', 'Picapiedras', 'picapiedras@gmail.com', '672534333', 'Pedrito12', 'Picapiedritas33'),
(1, 'Maria', 'Antonieta', 'reynafrançia@gmail.com', '666766776', 'Francesita2', 'Baggette45'),
(2, 'David', 'Sánchez', 'PSOEsanchez@gmail.com', '6662024747', 'Davidito88', 'VivaelPP66');
INSERT INTO Empleado(idEmpleado, Nombre, Apellidos, Telefono)
VALUES 
(0, 'Pepe', 'Dominguez', '667843355'),
(1, 'Marcos', 'Gutierrez', '627473215');

INSERT INTO Vehiculo(idVehiculo, Carroceria, Matricula, Marca, Modelo, Cliente_idCliente)
VALUES 
(0, 'Blanco', '9873FPS', 'Ford', 'Fiesta', 0),
(1, 'Rojo', '6623DBL', 'Audi', 'R7', 1),
(2, 'Negro mate', '7777VGT', 'Lamborghini', 'Huracán', 2);
INSERT INTO Cita(idCita, Fecha, Hora, Box, Empleado_idEmpleado, Vehiculo_idVehiculo)
VALUES 
(0, '2021-12-01', '12:00', '3', 0, 0),
(1, '2023-01-30', '20:00', '1', 1, 2),
(2, '2023-12-18', '10:30', '2', 0, 1);
