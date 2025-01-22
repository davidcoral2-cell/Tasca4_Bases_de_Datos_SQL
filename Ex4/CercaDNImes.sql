use `Exercici 4`;
SELECT Clients.DNI as "DNI", Clients.Nombre as "Nombre", Clients.Apellidos as "Apellidos", Poliza.NumPoliza as "Numero", TipoPoliza.Nombre as "Tipo"
FROM Clients, Poliza, TipoPoliza
WHere Clients.idCliente=Poliza.Clients_idCliente and TipoPoliza.idTipoPoliza=Poliza.TipoPoliza_idTipoPoliza and TipoPoliza.Nombre like "%Vida%";