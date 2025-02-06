Use Exercici6;
SELECT 
    Pasajero.Nombre AS "Nombre",
    Reserva.Numero AS "Número de vuelo",
    Reserva.Importe AS "Importe sin IVA",
    (Reserva.Importe * 1.21) AS "Importe con IVA"
FROM 
    Reserva	
JOIN 
    Pasajero ON Reserva.DNI = Pasajero.DNI;