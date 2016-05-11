create database uptime_v2;
use uptime_v2;

create table area(
	id int auto_increment,
    nombre varchar(50),
    porcentaje float,
    primary key(id)
);

create table subArea(
	id int auto_increment,
    nombre varchar(50),
    area int,
    porcentaje float, /*Manual*/
    primary key(id),
    foreign key(area) references area(id)
);

create table origen(
	id int auto_increment,
    nombre varchar(50),
    subArea int,
    porcentaje float,/*Manual*/
    tieneSector boolean,
    primary key(id),
    foreign key(subArea) references subArea(id)
);


create table sector(
	id int auto_increment,
    nombre varchar(50),
    origen int,
    porcentaje float,/*Calculado (% manual del origen / la cantidad de sectores del origen)*/
    primary key(id),
    foreign key(origen) references origen(id)
);

create table evento(
	id int auto_increment,
    porcIncidencia float,
    tiempo int, /*En horas*/
    falta float, /*Calculado, %incidencia * tiempo*/
    acum int, /*suma de faltas (getAcumFaltas(dia))*/
    uAcu int, /*suma de dias (getAcuDias(dia))*/
    upMes int, /*Calculado --> 1-(falta/uAcu)*/
    upDia int, /*1-(falta / 24)*/
    descripcion varchar(200),
    fecha datetime,
    horasMinutos varchar(200),
    efectoNegocio varchar(200),
    accionMiti varchar(200),
	planAccion varchar(200),
	sector int,
	origen int,
    primary key(id),
    foreign key(sector) references sector(id),
    foreign key(origen) references origen(id)
);

select * from area;
select * from subArea;
select * from origen;
select * from sector;
select * from evento;

show tables;

drop database uptime_v2;