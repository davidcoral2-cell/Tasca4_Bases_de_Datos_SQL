Use `Exercici 4`;
select count(*) as numpolizas
from Poliza, Clients
where Clients.idCliente=Poliza.Clients_idCliente and Clients.Nombre like "%David%";