use Exercici7;
select count(lt.id) as 'Número de linias de tickets'
from LineaTicket as lt, Empleado as e, Ticket as t
where t.Empleado_id=e.id and t.id=lt.Ticket_id and e.Nombre like "M%";