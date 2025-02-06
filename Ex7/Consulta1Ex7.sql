USE Exercici7;
SELECT * 
FROM Producto 
WHERE CodeBarras IS NOT NULL 
AND IVA = 10;
