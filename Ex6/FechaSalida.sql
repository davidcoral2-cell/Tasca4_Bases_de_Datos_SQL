Use Exercici6;

SELECT 
    Reserva.idReserva,
    Pasajero.Nombre,
    Pasajero.Apellidos,
    Reserva.Numero,
    Reserva.Importe
FROM 
    Reserva
JOIN 
    Pasajero ON Reserva.DNI = Pasajero.DNI
JOIN 
    Vuelo ON Reserva.Numero = Vuelo.Numero
WHERE 
    Vuelo.FechaSalida = '2022/05/06';	