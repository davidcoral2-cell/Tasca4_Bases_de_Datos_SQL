USE Exercici6;

SELECT 
    p.DNI AS "DNI/Passaport",
    p.Nombre AS "Nom",
    p.Apellidos AS "Cognoms",
    v.Numero AS "Número de vol",
    v.Origen AS "Origen",
    v.Destino AS "Destí",
    r.Importe AS "Import Total"
FROM Reserva r
JOIN Pasajero p ON r.idReserva = p.DNI
JOIN Vuelo v ON r.Numero = v.Numero;
