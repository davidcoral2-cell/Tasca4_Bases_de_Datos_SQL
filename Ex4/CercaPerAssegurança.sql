use `Exercici 4`;
SELECT *
FROM Clients, Poliza, TipoPoliza, Vendedor
Where Clients.idCliente=Poliza.Clients_idCliente and TipoPoliza.idTipoPoliza=Vendedor.Poliza_idPoliza and TipoPoliza.Nombre like "%Vida%";