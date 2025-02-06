use Exercici7;
select t.NumFactura as Factura, t.Fecha as Data, t.Hora as Hora, e.Nombre as Empleado, SUM(lt.Importe*p.IVA)
from Ticket as t, Empleado as e, LineaTicket as lt, Producto as p
where e.id = t.Empleado_id and t.id=lt.Ticket_id 