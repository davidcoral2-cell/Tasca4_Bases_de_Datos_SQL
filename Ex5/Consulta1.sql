USE Exercici5;

SELECT 
    Cita.idCita,
    Cita.Fecha,
    Cita.Hora,
    Vehiculo.Matricula,
    Vehiculo.Marca,
    Vehiculo.Carroceria,
    Cliente.Nombre,
    Cliente.Usuario
FROM 
    Cita
JOIN 
    Vehiculo ON Cita.Vehiculo_idVehiculo = Vehiculo.idVehiculo
JOIN 
    Cliente ON Cita.Empleado_idEmpleado = Cliente.idCliente
WHERE 
    Cita.Fecha >= '2022-03-10';
