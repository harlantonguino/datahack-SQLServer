use HarlanTonguino

insert into Pais (IdPais,NombrePais) values ('ESP','España')
insert into Pais (IdPais,NombrePais) values ('GRC','Grecia')
insert into Pais (IdPais,NombrePais) values ('IND','India')
insert into Pais (IdPais,NombrePais) values ('USA','Estados Unidos')
insert into Pais (IdPais,NombrePais) values ('MEX','Mexico')
insert into Pais (IdPais,NombrePais) values ('BRA','Brasil')
insert into Pais (IdPais,NombrePais) values ('DEU','Alemania')

insert into Campania (NombreCampaña) values ('Producto Estrella 1')
insert into Campania (NombreCampaña) values ('Producto Estrella 2')
insert into Campania (NombreCampaña) values ('Producto Estrella 3')

insert into HorarioEstado (Descripcion) values ('Prime tarde-noche')
insert into HorarioEstado (Descripcion) values ('Valle Media tarde, media mañana')
insert into HorarioEstado (Descripcion) values ('Breakfast antes de las 10 AM')
insert into HorarioEstado (Descripcion) values ('Nocturno después de las 00:00')

insert into ConceptoCompra (Concepto) values ('Compra producto Estrella 1')
insert into ConceptoCompra (Concepto) values ('Compra producto Estrella 2')
insert into ConceptoCompra (Concepto) values ('Compra producto Estrella 3')

insert into Cliente (Nombre,Apellido,Fnacimiento,Domicilio,IdPais,Telefono,Email,Observaciones,FechaAlta) values ('Raúl','Gonzalez','19860525','Gualtatas 2526','ESP','664859632','donraul@gmail.es','No hay observaciones','20240105 00:00:00.000')
insert into Cliente (Nombre,Apellido,Fnacimiento,Domicilio,IdPais,Telefono,Email,Observaciones,FechaAlta) values ('James','Nicole','19900302','O"niell Jack 2568','USA','125486532','wuarden@green.us','No hay observaciones','20240106 00:01:00.000')
insert into Cliente (Nombre,Apellido,Fnacimiento,Domicilio,IdPais,Telefono,Email,Observaciones,FechaAlta) values ('Marta','Perez','19950503','Brasilia 25','BRA','56432225','mPerezbra@getmail.com','No hay observaciones','20240201 00:00:00.000')
insert into Cliente (Nombre,Apellido,Fnacimiento,Domicilio,IdPais,Telefono,Email,Observaciones,FechaAlta) values ('Claudio','Ramirez','19840802','Cheguan 225','ESP','66852125','clauRami@gmail.es','No hay observaciones','20240201 00:02:02.000')
insert into Cliente (Nombre,Apellido,Fnacimiento,Domicilio,IdPais,Telefono,Email,Observaciones,FechaAlta) values ('Markuis','Papadopulus','19820206','Grikindier 223','GRC','2548542355','papadopulusm@gmail.com','Es griego','20240201 00:06:00.000')
insert into Cliente (Nombre,Apellido,Fnacimiento,Domicilio,IdPais,Telefono,Email,Observaciones,FechaAlta) values ('Carlos','Trebor','19660503','Pedro pastor 2','MEX','135852133','Carlitos@gmail.es','No hay observaciones','20240201 00:00:00.000')
insert into Cliente (Nombre,Apellido,Fnacimiento,Domicilio,IdPais,Telefono,Email,Observaciones,FechaAlta) values ('Otto','Von Kunstmann','19750901','Öttigen str 3','DEU','6582216335','elaleman@aleman.com','Es Aleman','20240102 00:08:00.000')
insert into Cliente (Nombre,Apellido,Fnacimiento,Domicilio,IdPais,Telefono,Email,Observaciones,FechaAlta) values ('Uit','Tlinnlinie','19770505','Intrati 22','IND','1325865523','uit@quit.in','Es Indio','20240206 00:00:00.000')

insert into HoraCaptacion (FechaCaptacion,IdEstado,Observaciones) values ('20240105','1','Lead')
insert into HoraCaptacion (FechaCaptacion,IdEstado,Observaciones) values ('20240105','2','Lead')
insert into HoraCaptacion (FechaCaptacion,IdEstado,Observaciones) values ('20240201','1','Cliente')
insert into HoraCaptacion (FechaCaptacion,IdEstado,Observaciones) values ('20240201','3','Prospecto')
insert into HoraCaptacion (FechaCaptacion,IdEstado,Observaciones) values ('20240201','1','Lead')

insert into Compra (IdConcepto,Fecha,Monto,Observaciones) values ('1','20240102 00:00:00.000','5000','Comprador de producto estrella 1')
insert into Compra (IdConcepto,Fecha,Monto,Observaciones) values ('2','20240103 00:00:00.000','3500','Comprador de producto estrella 2')
insert into Compra (IdConcepto,Fecha,Monto,Observaciones) values ('3','20240104 00:00:00.000','5000','Comprador de producto estrella 1')

insert into CompraCliente (IdCompra,IdCliente,IdHCaptacion) values ('1','1','1')
insert into CompraCliente (IdCompra,IdCliente,IdHCaptacion) values ('2','2','2')
insert into CompraCliente (IdCompra,IdCliente,IdHCaptacion) values ('3','3','3')


/*
---------------------
*/
insert into HoraCaptacion (FechaCaptacion,IdEstado,Observaciones) values ('20240101 10:00','1','Desconocido')

insert into HoraCapClienteCampania (IdHCaptacion,IdCliente,IdCampania) values ('6','1','1')