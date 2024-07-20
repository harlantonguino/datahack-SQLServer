use HarlanTonguino

create table Cliente(
	IdCliente int identity(1,1) not null,
	Nombre varchar(50) not null,
	Apellido varchar(50) not null,
	FNacimiento date not null,
	Domicilio varchar(50) not null,
	IdPais char(3) not null,
	Telefono varchar(12),
	Email varchar(30) not null,
	Observaciones varchar(1000),
	FechaAlta datetime not null,
	constraint pk_Clientes primary key (IdCliente)
)

create table Record(
	IdRecord int identity(1,1) not null,
	FechaRecord date not null,
	Observaciones varchar(1000),
	constraint pk_Record primary key (IdRecord)
)

create table Campania(
	IdCampania int identity(1,1) not null,
	NombreCampaña varchar(50) not null,
	constraint pk_Campania primary key (IdCampania)
)

create table RecordCliente(
	IdRecord int not null,
	IdCliente int not null,
	IdCampania int not null,
	constraint pk_RecordCliente primary key (IdRecord, IdCliente, IdCampania)
)

create table Pais(
	IdPais char(3) not null,
	NombrePais varchar(100) not null,
	constraint pk_Pais primary key (IdPais)
)

create table HoraCaptacion(
	IdHCaptacion int identity(1,1) not null,
	FechaCaptacion date not null,
	IdEstado smallint not null,
	Observaciones varchar(1000),
	constraint pk_HoraCaptacion primary key (IdHCaptacion)
)

create table HoraCapClienteCampania(
	IdHCaptacion int not null,
	IdCliente int not null,
	IdCampania int not null,
	constraint pk_HoraCapClienteCampania primary key (IdHCaptacion, IdCliente, IdCampania)
)

create table HorarioEstado(
	IdEstado smallint identity(1,1) not null,
	Descripcion varchar(50) not null,
	constraint pk_HorarioEstado primary key (IdEstado)
)

create table Producto(
	IdProducto int identity(1,1) not null,
	Producto varchar(100) not null,
	constraint pk_Producto primary key (IdProducto)
)

create table Compra(
	IdCompra int identity(1,1) not null,
	IdConcepto int not null,
	Fecha datetime not null,
	Monto money not null,
	Observaciones varchar(1000),
	constraint pk_Compra primary key (IdCompra)
)

create table CompraCliente(
	IdCompra int not null,
	IdCliente int not null,
	IdHCaptacion int not null,
	constraint pk_CompraCliente primary key (IdCompra, IdCliente, IdHCaptacion)
)

create table CampaniaProducto(
	IdCampania int not null,
	IdProducto int not null,
	Descripcion varchar (100) not null
	constraint pk_CampaniaProducto primary key (IdCampania, IdProducto)
)

create table ConceptoCompra(
	IdConcepto int identity(1,1) not null,
	Concepto varchar(100) not null,
	constraint pk_ConceptoCompra primary key (IdConcepto)
)

