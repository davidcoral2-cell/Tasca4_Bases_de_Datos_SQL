USE Exercici6;

SELECT 
    a.Marca AS "Marca",
    a.Modelo AS "Model",
    a.Capacidad AS "Capacitat",
    v.Numero AS "Número de Vol",
    v.Origen AS "Origen",
    v.Destino AS "Destí"
FROM Avion a
JOIN Vuelo v ON a.idAvion = v.Avion_idAvion
WHERE a.Modelo LIKE 'Airbus%';
