use HarlanTonguino

/**/
select * from Cliente

/**/
select CONCAT(Nombre,' ',Apellido) as NombreCliente from Cliente

/**/
select top 3 * 
from Cliente
order by IdCliente ASC, FNacimiento ASC

/**/
select distinct IdPais from Cliente

/**/
update Cliente
set Email = '200@gmail.es'
where IdCliente = 1

/**/
select avg(Monto) as MontoPromedio from Compra

/**/
select * 
from HoraCaptacion
where FechaCaptacion between '20240101' and '20240130'

/**/
declare @IdPais char(3)
set @IdPais = 'ESP'

if @IdPais = 'ESP'
begin
	select * from Cliente where IdPais = @IdPais
end
else
	select 'Ningun Cliente es de Nacionalidad Española' as Resultado

if exists(	select * 
			from Cliente
			where IdPais = 'ESP')
begin
	select * 
	from Cliente
	where IdPais = 'ESP'
end
else
	select 'Ningun Cliente es de Nacionalidad Española' as Resultado

/**/
select 
	*,
	(case when IdPais = 'ESP' or IdPais = 'GRC' or IdPais = 'DEU' then 'Europa'
		  when IdPais = 'USA' or IdPais = 'MEX' then 'NorteAmerica'
		  when IdPais = 'BRA' then 'Suramerica'
		  when IdPais = 'IND' then 'Asia'
		  else 'No Registra'
		  end) as Continente
from cliente

/**/
