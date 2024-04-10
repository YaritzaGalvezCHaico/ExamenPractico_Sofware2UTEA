create database empresa2
go
use empresa2
go

create table empleado(
idempleado int primary key IDENTITY(1,1),
Nombre varchar(70),
apellido varchar(100),
sueldo float,
categoria char(2),
sueldoneto float
);
insert into empleado values('hemmy','soria avendaño',1500.00,'A',1600.00),
('ELOY','soria avendaño',1500.00,'B',1700.00),
('GABRIEL','soria avendaño',1500.00,'C',1700.00)

--mostrara empleados
create proc Mostrarempleados
as
select *from empleado
go

create proc Insetarempleado
@nombre nvarchar (100),
@apellido nvarchar (100),
@sueldo float,
@categoria char(2),
@sueldoneto float
as
insert into empleado values (@nombre,@apellido,@sueldo,@categoria,@sueldoneto)
go

create proc Eliminarempleado
@idemp int
as
delete from empleado where idempleado=@idemp
go

create proc Editarempleado
@nombre nvarchar (100),
@apellido nvarchar (100),
@sueldo float,
@categoria char(2),
@sueldoneto float,
@idemp int
as
update empleado set Nombre=@nombre, apellido=@apellido, sueldo=@sueldo, categoria=@categoria, @sueldoneto=@sueldoneto where idempleado=@i
go