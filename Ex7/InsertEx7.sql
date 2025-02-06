use Exercici7;
insert into Cliente(id, Nombre, Apellidos, Telefono, Email ,Direccion)
Values ("0","Martin","Perez","621384533","nalaronnnpp@gmail.com","Calle Puentes 23 3a");
insert into Cliente(id, Nombre, Apellidos, Telefono, Email ,Direccion)
Values ("1","Kiko","Sanchez","672435344","kioksk@gmail.com","C/ Morelul del valle 88 1b");
insert into Cliente(id, Nombre, Apellidos, Telefono, Email ,Direccion)
Values ("2","Juan","Cardona","616623244","ijgjios@gmail.com","Calle mianmar 143 2b");
insert into Empleado(id, Nombre, Apellidos, Telefono, Direccion ,FechaNacimiento, DNI)
Values ("0","Pepe","Coyas","623444122","Calle mianmar 143 2b", "19/09/1998", "45237722C");
insert into Empleado(id, Nombre, Apellidos, Telefono, Direccion ,FechaNacimiento, DNI)
Values ("1","Maria","Camacho","678795342","Calle Orejones 23 1a", "10/12/1989", "41623927E");
insert into Producto(id, Nombre, Descripcion, Precio, IVA, CodeBarras)
Values ("0","Anillo","Anillo de diamantes menorquines","6787","21", "620000001");
insert into Producto(id, Nombre, Descripcion, Precio, IVA, CodeBarras)
Values ("1","Pendientes","Pendientes de rubies africanos","19233","21", "620000002");
insert into Producto(id, Nombre, Descripcion, Precio, IVA, CodeBarras)
Values ("2","Pulsera","Pulsera de la Reina Isabel II","58923","21", "620000003");
insert into Producto(id, Nombre, Descripcion, Precio, IVA, CodeBarras)
Values ("3","Brazalete","Brazalete de oro mazizo 24 quilates","204634","21", "620000004");
insert into Ticket(id, NumFactura, Fecha, Hora, Cliente_id, Empleado_id)
Values ("0", "4324256", "13/01/2025", "17:55","0","0");
insert into Ticket(id, NumFactura, Fecha, Hora, Cliente_id, Empleado_id)
Values ("1", "72349234", "10/04/2024", "12:05","2","0");
insert into Ticket(id, NumFactura, Fecha, Hora, Cliente_id, Empleado_id)
Values ("2", "314598", "22/09/2024", "21:00","1","1");
insert into Ticket(id, NumFactura, Fecha, Hora, Cliente_id, Empleado_id)
Values ("3", "0234005", "117/11/2024", "16:30","0","1");
insert into LineaTicket(id, Descuento, Importe, Ticket_id, Producto_id)
Values("0","0","6787","0","0");
insert into LineaTicket(id, Descuento, Importe, Ticket_id, Producto_id)
Values("1","0","58923","1","2");
insert into LineaTicket(id, Descuento, Importe, Ticket_id, Producto_id)
Values("2","0","204634","3","3");
