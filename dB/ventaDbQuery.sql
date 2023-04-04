use ventaDb

create table cliente (
id_cliente int primary key not null,
nombre varchar(100) not null,
contrasena varchar(50) not null,
correo varchar(50) not null,
numero varchar(20) not null,
direccion varchar(100) not null
)


create table venta (
nboleta int not null,
id_cliente int not null,
id_album int not null,
primary key (nboleta, id_cliente, id_album),
fecha date not null,
foreign key (id_album) references album_musica(id_album),
foreign key (id_cliente) references cliente(id_cliente)
)

create table tipo_album (
id_tipo int primary key not null,
nombre varchar(50) not null,
descripcion varchar(max) not null
)

create table genero_album (
id_genero int primary key not null,
nombre varchar(50) not null,
descripcion varchar(max) not null
)

create table album_musica (
id_album int primary key not null,
id_tipo int not null,
id_genero int not null,
nombre varchar(100) not null,
precio int not null,
stock int not null
foreign key (id_tipo) references tipo_album(id_tipo),
foreign key (id_genero) references genero_album(id_genero)
)

create table proveedor (
rut varchar(15) primary key not null,
nombre varchar(50) not null,
direccion varchar(100) not null,
correo varchar(50) not null,
numero varchar(20) not null
)

drop table proveedor

create table compra (
factura int not null,
rut varchar(15) not null,
id_album int not null,
fecha date not null,
primary key (factura, rut, id_album),
foreign key (rut) references proveedor(rut),
foreign key (id_album) references album_musica(id_album)
)

create table Comunas(
id_comuna int primary key identity (1,1) not null,
id_region int not null,
nombre varchar(max) not null,
foreign key (id_region) references Region (id_region)
)

drop table Comunas

create table Region (
id_region int primary key not null,
nombre varchar(max)
)

INSERT INTO Region (id_region,nombre) VALUES (1, 'Arica y Parinacota');
INSERT INTO Region (id_region,nombre) VALUES (2, 'Tarapac�');
INSERT INTO Region (id_region,nombre) VALUES (3, 'Antofagasta');
INSERT INTO Region (id_region,nombre) VALUES (4, 'Atacama');
INSERT INTO Region (id_region,nombre) VALUES (5, 'Coquimbo');
INSERT INTO Region (id_region,nombre) VALUES (6, 'Valpara�so');
INSERT INTO Region (id_region,nombre) VALUES (7, 'Regi�n del Libertador Gral. Bernardo O�Higgins');
INSERT INTO Region (id_region,nombre) VALUES (8, 'Regi�n del Maule');
INSERT INTO Region (id_region,nombre) VALUES (9, 'Regi�n de �uble');
INSERT INTO Region (id_region,nombre) VALUES (10, 'Regi�n del Biob�o');
INSERT INTO Region (id_region,nombre) VALUES (11, 'Regi�n de la Araucan�a');
INSERT INTO Region (id_region,nombre) VALUES (12, 'Regi�n de Los R�os');
INSERT INTO Region (id_region,nombre) VALUES (13, 'Regi�n de Los Lagos');
INSERT INTO Region (id_region,nombre) VALUES (14, 'Regi�n Ays�n del Gral. Carlos Ib��ez del Campo');
INSERT INTO Region (id_region,nombre) VALUES (15, 'Regi�n de Magallanes y de la Ant�rtica Chilena');
INSERT INTO Region (id_region,nombre) VALUES (16, 'Regi�n Metropolitana de Santiago');

INSERT INTO Comunas (id_region,nombre) VALUES (1,'Arica');
INSERT INTO Comunas (id_region,nombre) VALUES (1,'Camarones');
INSERT INTO Comunas (id_region,nombre) VALUES (1,'Putre');
INSERT INTO Comunas (id_region,nombre) VALUES (1,'General Lagos');
INSERT INTO Comunas (id_region,nombre) VALUES (2,'Iquique');
INSERT INTO Comunas (id_region,nombre) VALUES (2,'Alto Hospicio');
INSERT INTO Comunas (id_region,nombre) VALUES (2,'Pozo Almonte');
INSERT INTO Comunas (id_region,nombre) VALUES (2,'Cami�a');
INSERT INTO Comunas (id_region,nombre) VALUES (2,'Colchane');
INSERT INTO Comunas (id_region,nombre) VALUES (2,'Huara');
INSERT INTO Comunas (id_region,nombre) VALUES (2,'Pica');
INSERT INTO Comunas (id_region,nombre) VALUES (3,'Antofagasta');
INSERT INTO Comunas (id_region,nombre) VALUES (3,'Mejillones');
INSERT INTO Comunas (id_region,nombre) VALUES (3,'Sierra Gorda');
INSERT INTO Comunas (id_region,nombre) VALUES (3,'Taltal');
INSERT INTO Comunas (id_region,nombre) VALUES (3,'Calama');
INSERT INTO Comunas (id_region,nombre) VALUES (3,'Ollag�e');
INSERT INTO Comunas (id_region,nombre) VALUES (3,'San Pedro de Atacama');
INSERT INTO Comunas (id_region,nombre) VALUES (3,'Tocopilla');
INSERT INTO Comunas (id_region,nombre) VALUES (3,'Mar�a Elena');
INSERT INTO Comunas (id_region,nombre) VALUES (4,'Copiap�');
INSERT INTO Comunas (id_region,nombre) VALUES (4,'Caldera');
INSERT INTO Comunas (id_region,nombre) VALUES (4,'Tierra Amarilla');
INSERT INTO Comunas (id_region,nombre) VALUES (4,'Cha�aral');
INSERT INTO Comunas (id_region,nombre) VALUES (4,'Diego de Almagro');
INSERT INTO Comunas (id_region,nombre) VALUES (4,'Vallenar');
INSERT INTO Comunas (id_region,nombre) VALUES (4,'Alto del Carmen');
INSERT INTO Comunas (id_region,nombre) VALUES (4,'Freirina');
INSERT INTO Comunas (id_region,nombre) VALUES (4,'Huasco');
INSERT INTO Comunas (id_region,nombre) VALUES (5,'La Serena');
INSERT INTO Comunas (id_region,nombre) VALUES (5,'Coquimbo');
INSERT INTO Comunas (id_region,nombre) VALUES (5,'Andacollo');
INSERT INTO Comunas (id_region,nombre) VALUES (5,'La Higuera');
INSERT INTO Comunas (id_region,nombre) VALUES (5,'Paiguano');
INSERT INTO Comunas (id_region,nombre) VALUES (5,'Vicu�a');
INSERT INTO Comunas (id_region,nombre) VALUES (5,'Illapel');
INSERT INTO Comunas (id_region,nombre) VALUES (5,'Canela');
INSERT INTO Comunas (id_region,nombre) VALUES (5,'Los Vilos');
INSERT INTO Comunas (id_region,nombre) VALUES (5,'Salamanca');
INSERT INTO Comunas (id_region,nombre) VALUES (5,'Ovalle');
INSERT INTO Comunas (id_region,nombre) VALUES (5,'Combarbal�');
INSERT INTO Comunas (id_region,nombre) VALUES (5,'Monte Patria');
INSERT INTO Comunas (id_region,nombre) VALUES (5,'Punitaqui');
INSERT INTO Comunas (id_region,nombre) VALUES (5,'R�o Hurtado');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Valpara�so');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Casablanca');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Conc�n');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Juan Fern�ndez');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Puchuncav�');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Quintero');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Vi�a del Mar');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Isla de Pascua');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Los Andes');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Calle Larga');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Rinconada');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'San Esteban');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'La Ligua');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Cabildo');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Papudo');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Petorca');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Zapallar');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Quillota');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Calera');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Hijuelas');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'La Cruz');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Nogales');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'San Antonio');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Algarrobo');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Cartagena');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'El Quisco');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'El Tabo');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Santo Domingo');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'San Felipe');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Catemu');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Llaillay');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Panquehue');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Putaendo');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Santa Mar�a');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Quilpu�');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Limache');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Olmu�');
INSERT INTO Comunas (id_region,nombre) VALUES (6,'Villa Alemana');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Rancagua');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Codegua');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Coinco');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Coltauco');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Do�ihue');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Graneros');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Las Cabras');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Machal�');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Malloa');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Mostazal');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Olivar');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Peumo');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Pichidegua');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Quinta de Tilcoco');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Rengo');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Requ�noa');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'San Vicente');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Pichilemu');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'La Estrella');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Litueche');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Marchihue');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Navidad');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Paredones');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'San Fernando');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Ch�pica');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Chimbarongo');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Lolol');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Nancagua');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Palmilla');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Peralillo');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Placilla');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Pumanque');
INSERT INTO Comunas (id_region,nombre) VALUES (7,'Santa Cruz');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Talca');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Constituci�n');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Curepto');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Empedrado');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Maule');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Pelarco');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Pencahue');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'R�o Claro');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'San Clemente');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'San Rafael');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Cauquenes');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Chanco');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Pelluhue');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Curic�');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Huala��');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Licant�n');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Molina');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Rauco');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Romeral');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Sagrada Familia');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Teno');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Vichuqu�n');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Linares');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Colb�n');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Longav�');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Parral');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Retiro');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'San Javier');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Villa Alegre');
INSERT INTO Comunas (id_region,nombre) VALUES (8,'Yerbas Buenas');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'Cobquecura');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'Coelemu');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'Ninhue');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'Portezuelo');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'Quirihue');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'R�nquil');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'Treguaco');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'Bulnes');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'Chill�n Viejo');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'Chill�n');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'El Carmen');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'Pemuco');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'Pinto');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'Quill�n');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'San Ignacio');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'Yungay');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'Coihueco');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'�iqu�n');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'San Carlos');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'San Fabi�n');
INSERT INTO Comunas (id_region,nombre) VALUES (9,'San Nicol�s');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Concepci�n');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Coronel');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Chiguayante');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Florida');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Hualqui');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Lota');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Penco');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'San Pedro de la Paz');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Santa Juana');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Talcahuano');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Tom�');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Hualp�n');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Lebu');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Arauco');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Ca�ete');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Contulmo');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Curanilahue');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Los �lamos');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Tir�a');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Los �ngeles');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Antuco');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Cabrero');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Laja');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Mulch�n');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Nacimiento');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Negrete');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Quilaco');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Quilleco');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'San Rosendo');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Santa B�rbara');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Tucapel');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Yumbel');
INSERT INTO Comunas (id_region,nombre) VALUES (10,'Alto Biob�o');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Temuco');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Carahue');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Cunco');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Curarrehue');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Freire');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Galvarino');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Gorbea');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Lautaro');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Loncoche');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Melipeuco');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Nueva Imperial');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Padre las Casas');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Perquenco');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Pitrufqu�n');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Puc�n');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Saavedra');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Teodoro Schmidt');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Tolt�n');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Vilc�n');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Villarrica');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Cholchol');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Angol');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Collipulli');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Curacaut�n');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Ercilla');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Lonquimay');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Los Sauces');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Lumaco');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Pur�n');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Renaico');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Traigu�n');
INSERT INTO Comunas (id_region,nombre) VALUES (11,'Victoria');
INSERT INTO Comunas (id_region,nombre) VALUES (12,'Valdivia');
INSERT INTO Comunas (id_region,nombre) VALUES (12,'Corral');
INSERT INTO Comunas (id_region,nombre) VALUES (12,'Lanco');
INSERT INTO Comunas (id_region,nombre) VALUES (12,'Los Lagos');
INSERT INTO Comunas (id_region,nombre) VALUES (12,'M�fil');
INSERT INTO Comunas (id_region,nombre) VALUES (12,'Mariquina');
INSERT INTO Comunas (id_region,nombre) VALUES (12,'Paillaco');
INSERT INTO Comunas (id_region,nombre) VALUES (12,'Panguipulli');
INSERT INTO Comunas (id_region,nombre) VALUES (12,'La Uni�n');
INSERT INTO Comunas (id_region,nombre) VALUES (12,'Futrono');
INSERT INTO Comunas (id_region,nombre) VALUES (12,'Lago Ranco');
INSERT INTO Comunas (id_region,nombre) VALUES (12,'R�o Bueno');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Puerto Montt');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Calbuco');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Cocham�');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Fresia');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Frutillar');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Los Muermos');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Llanquihue');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Maull�n');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Puerto Varas');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Castro');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Ancud');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Chonchi');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Curaco de V�lez');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Dalcahue');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Puqueld�n');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Queil�n');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Quell�n');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Quemchi');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Quinchao');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Osorno');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Puerto Octay');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Purranque');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Puyehue');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'R�o Negro');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'San Juan de la Costa');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'San Pablo');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Chait�n');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Futaleuf�');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Hualaihu�');
INSERT INTO Comunas (id_region,nombre) VALUES (13,'Palena');
INSERT INTO Comunas (id_region,nombre) VALUES (14,'Coihaique');
INSERT INTO Comunas (id_region,nombre) VALUES (14,'Lago Verde');
INSERT INTO Comunas (id_region,nombre) VALUES (14,'Ais�n');
INSERT INTO Comunas (id_region,nombre) VALUES (14,'Cisnes');
INSERT INTO Comunas (id_region,nombre) VALUES (14,'Guaitecas');
INSERT INTO Comunas (id_region,nombre) VALUES (14,'Cochrane');
INSERT INTO Comunas (id_region,nombre) VALUES (14,'O�Higgins');
INSERT INTO Comunas (id_region,nombre) VALUES (14,'Tortel');
INSERT INTO Comunas (id_region,nombre) VALUES (14,'Chile Chico');
INSERT INTO Comunas (id_region,nombre) VALUES (14,'R�o Ib��ez');
INSERT INTO Comunas (id_region,nombre) VALUES (15,'Punta Arenas');
INSERT INTO Comunas (id_region,nombre) VALUES (15,'Laguna Blanca');
INSERT INTO Comunas (id_region,nombre) VALUES (15,'R�o Verde');
INSERT INTO Comunas (id_region,nombre) VALUES (15,'San Gregorio');
INSERT INTO Comunas (id_region,nombre) VALUES (15,'Cabo de Hornos (Ex Navarino)');
INSERT INTO Comunas (id_region,nombre) VALUES (15,'Ant�rtica');
INSERT INTO Comunas (id_region,nombre) VALUES (15,'Porvenir');
INSERT INTO Comunas (id_region,nombre) VALUES (15,'Primavera');
INSERT INTO Comunas (id_region,nombre) VALUES (15,'Timaukel');
INSERT INTO Comunas (id_region,nombre) VALUES (15,'Natales');
INSERT INTO Comunas (id_region,nombre) VALUES (15,'Torres del Paine');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Cerrillos');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Cerro Navia');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Conchal�');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'El Bosque');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Estaci�n Central');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Huechuraba');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Independencia');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'La Cisterna');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'La Florida');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'La Granja');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'La Pintana');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'La Reina');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Las Condes');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Lo Barnechea');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Lo Espejo');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Lo Prado');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Macul');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Maip�');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'�u�oa');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Pedro Aguirre Cerda');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Pe�alol�n');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Providencia');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Pudahuel');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Quilicura');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Quinta Normal');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Recoleta');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Renca');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Santiago');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'San Joaqu�n');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'San Miguel');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'San Ram�n');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Vitacura');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Puente Alto');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Pirque');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'San Jos� de Maipo');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Colina');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Lampa');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Tiltil');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'San Bernardo');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Buin');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Calera de Tango');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Paine');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Melipilla');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Alhu�');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Curacav�');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Mar�a Pinto');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'San Pedro');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Talagante');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'El Monte');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Isla de Maipo');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Padre Hurtado');
INSERT INTO Comunas (id_region,nombre) VALUES (16,'Pe�aflor'); 







drop table compra