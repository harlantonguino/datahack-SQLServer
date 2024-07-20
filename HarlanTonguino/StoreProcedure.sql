use HarlanTonguino
go

--select * from Cliente
/*
declare @fecha varchar(20)
set @fecha = convert(char(8),getdate(),112) + ' ' + convert(char(5),getdate(),108)
exec Nuevo_cliente '2351365','Raúl','Stuart','19850521','Las regasta 25','ESP','655821545','Raul@krokimail.com','',@fecha
*/

create proc Nuevo_cliente (
	@Dni varchar(20),
	@Nombre varchar(50),
	@Apellido varchar(50),
	@FNacimiento varchar(8),
	@Domicilio varchar(50),
	@IdPais char(3),
	@Telefono varchar(12),
	@Email varchar(30),
	@observaciones varchar(1000),
	@FechaAlta datetime
)
as

if not exists(select * from Cliente where Dni=@Dni)
begin
	insert into cliente(Dni,Nombre,Apellido,FNacimiento,Domicilio,IdPais,Telefono,Email,Observaciones,FechaAlta)
	values (@Dni,@Nombre,@Apellido,@FNacimiento,@Domicilio,@IdPais,@Telefono,@Email,@observaciones,@FechaAlta)
	print 'El cliente se agrego correctamente'
	return
end
else
begin
	print 'El cliente ya existe'
	return
end
