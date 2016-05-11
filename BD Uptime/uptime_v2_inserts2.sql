use uptime_v2;

insert into area values(null,'Comercial','50');
insert into area values(null,'Producción','22.9');
insert into area values(null,'Corporativa','17.10');
insert into area values(null,'Apoyo','10');

select * from area;

insert into subArea values(null, 'Servicio comercial','1','41');
insert into subArea values(null, 'Despacho sucursales','1','21');
insert into subArea values(null, 'Exportaciones','1','10.9');
insert into subArea values(null, 'Faenadoras','1','20.4');
insert into subArea values(null, 'Cecinas','1','6.7');
insert into subArea values(null, 'Alimentos','2','19.5');
insert into subArea values(null, 'Aves','2','18.5');
insert into subArea values(null, 'Cerdos','2','20.5');
insert into subArea values(null, 'Pavos','2','19.5');
insert into subArea values(null, 'Fiordos','2','18.5');
insert into subArea values(null, 'Labser','2','3.5');
insert into subArea values(null, 'RRHH','3','25');
insert into subArea values(null, 'Admintracion Finanzas','3','65');
insert into subArea values(null, 'Asuntos corporativos','3','10');
insert into subArea values(null, 'Servicios de apoyo','4','100');

select * from subArea;

insert into origen values(null, 'Poll telefónico','1','3.5',false);
insert into origen values(null, 'Call center','1','17',false);
insert into origen values(null, 'Gestión Comercial','1','3.5',false);
insert into origen values(null, 'Sap Movil','1','17',false);

insert into origen values(null, 'Viña del Mar','2','1.93',false);
insert into origen values(null, 'Concepcion','2','1.93',false);
insert into origen values(null, 'Huechuraba','2','1.93',false);
insert into origen values(null, 'Lo Espejo','2','1.93',false);
insert into origen values(null, 'Macul','2','1.93',false);
insert into origen values(null, 'La Calera','2','1.93',false);
insert into origen values(null, 'San Felipe','2','1.93',false);
insert into origen values(null, 'San Antonio','2','1.93',false);
insert into origen values(null, 'Pollos King','2','1.93',false);
insert into origen values(null, 'Lo Boza','2','1.93',false);
insert into origen values(null, 'Rancagua','2','1.93',false);
insert into origen values(null, 'Parral','2','1.93',false);
insert into origen values(null, 'Chillan','2','1.93',false);
insert into origen values(null, 'Los Angeles','2','1.93',false);
insert into origen values(null, 'Temuco','2','1.93',false);
insert into origen values(null, 'Valdivia','2','1.93',false);
insert into origen values(null, 'Osorno','2','1.93',false);
insert into origen values(null, 'Puerto Montt','2','1.93',false);
insert into origen values(null, 'Punta Arenas','2','1.93',false);
insert into origen values(null, 'Fruto del maipo','2','1.93',false);
insert into origen values(null, 'Arica','2','1.93',false);
insert into origen values(null, 'Iquique','2','1.93',false);
insert into origen values(null, 'Antofagasta','2','1.93',false);
insert into origen values(null, 'Calama','2','1.93',false);
insert into origen values(null, 'La Serena','2','1.93',false);
insert into origen values(null, 'Copiapo','2','1.93',false);
insert into origen values(null, 'Vallenar','2','1.93',false);
insert into origen values(null, 'Ovalle','2','1.93',false);
insert into origen values(null, 'Curico','2','1.93',false);
insert into origen values(null, 'Talca','2','1.93',false);
insert into origen values(null, 'Castro','2','1.93',false);
insert into origen values(null, 'Coihayque','2','1.93',false);

insert into origen values(null, 'LoMiranda','3','4.88',false);
insert into origen values(null, 'Longovilo','3','5.85',false);
insert into origen values(null, 'Casa Blanca','3','4.88',false);
insert into origen values(null, 'Huasco','3','5.85',false);

insert into origen values(null, 'Reproductora','4','6.4',true);
insert into origen values(null, 'Incubadora','4','6.4',true);
insert into origen values(null, 'Crianza','4','6.4',true);
insert into origen values(null, 'Reproductores','4','6.4',true);
insert into origen values(null, 'Destete Ventas','4','6.4',true);
insert into origen values(null, 'Engorda','4','6.4',true);
insert into origen values(null, 'Melinka','4','6.4',true);
insert into origen values(null, 'Puerto Cisnes','4','6.4',true);
insert into origen values(null, 'Agua Dulce','4','6.4',true);


insert into origen values(null, 'RRHH(DBnet)','5','5',false);
insert into origen values(null, 'RRHH(CAF Rgua)','5','5',false);
insert into origen values(null, 'RRHH(CAF Melipilla)','5','5',false);
insert into origen values(null, 'RRHH','5','5',false);


insert into origen values(null, 'Colegio','6','2.5',false);
insert into origen values(null, 'Ejecutivo','6','2.5',false);


insert into origen values(null, 'Correo','7','50',false);
insert into origen values(null, 'Navegación','7','10',false);

select * from origen;

insert into sector values(null,'Abuelas Ramirana','7','2.31');
insert into sector values(null,'Coya','7','2.31');
insert into sector values(null,'Lo Miranda','8','11.54');
insert into sector values(null,'Las Arañas','8','11.54');

select * from sector;

/*Evento sólo origen (5 de mayo de 2016)
No ha habido ninguna falta hasta ese dia
*/
insert into evento values
(null, 
'50', /* % de incidencia (Manual)*/
'2',/*Tiempo en horas (Manual)*/
'1',/*Falta --> Tiempo * %incicendia (Calculado)*/
'1',/*Suma de faltas a la fecha (Calculado) getAcumFaltas(dia)*/
'120',/*Suma de las horas del dia hasta esa fecha(hasta el 5 de mayo) (getHorasAcu(dia))*/
'99.17',/* upMes --> (1-(falta/uacu)) x 100 --> en porcentajes*/
'95.83',/* upDia --> (1-(falta/24)) x 100 --> en porcentajes*/
'Descripcion',/*Descripcion*/
now(),/*Horario en que ocurrio*/
'2 horas',/*Horas minutos --> String*/
'Efecto en el negocio',/*Efecto en el negocio*/
'accion mitigadora',/*accion mitigadora*/
'Plan',/*PLan de accion*/
null,/*Sector, no tiene sector el Poll*/
'1'); /*Poll Telefónico*/

/*Evento con sector (5 de mayo de 2016)*/
insert into evento values
(null, 
'50', /* % de incidencia (Manual)*/
'2',/*Tiempo en horas (Manual)*/
'1',/*Falta --> Tiempo * %incicendia (Calculado)*/
'1',/*Suma de faltas a la fecha (Calculado) getAcumFaltas(dia)*/
'120',/*Suma de las horas del dia hasta esa fecha(hasta el 5 de mayo) (getHorasAcu(dia))*/
'99.17',/* upMes --> (1-(falta/uacu)) x 100 --> en porcentajes*/
'95.83',/* upDia --> (1-(falta/24)) x 100 --> en porcentajes*/
'Descripcion',/*Descripcion*/
now(),/*Horario en que ocurrio*/
'2 horas',/*Horas minutos --> String*/
'Efecto en el negocio',/*Efecto en el negocio*/
'accion mitigadora',/*accion mitigadora*/
'Plan',/*PLan de accion*/
'1',/*Sector Abuelas Ramirana*/
null); /*No tiene origen*/


/*Evento con sector (5 de mayo de 2016)*/
insert into evento values
(null, 
'50', /* % de incidencia (Manual)*/
'2',/*Tiempo en horas (Manual)*/
'1',/*Falta --> Tiempo * %incicendia (Calculado)*/
'1',/*Suma de faltas a la fecha (Calculado) getAcumFaltas(dia)*/
'120',/*Suma de las horas del dia hasta esa fecha(hasta el 5 de mayo) (getHorasAcu(dia))*/
'99.17',/* upMes --> (1-(falta/uacu)) x 100 --> en porcentajes*/
'95.83',/* upDia --> (1-(falta/24)) x 100 --> en porcentajes*/
'Descripcion',/*Descripcion*/
now(),/*Horario en que ocurrio*/
'2 horas',/*Horas minutos --> String*/
'Efecto en el negocio',/*Efecto en el negocio*/
'accion mitigadora',/*accion mitigadora*/
'Plan',/*PLan de accion*/
'2',/*Sector coya*/
null); /*No tiene origen*/

select * from evento;