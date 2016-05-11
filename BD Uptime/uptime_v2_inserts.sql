use uptime_v2;

insert into area values(null,'Comercial','50');
insert into area values(null,'Producción','22.9');
insert into area values(null,'Corporativa','17.10');
insert into area values(null,'Apoyo','10');

select * from area;

insert into subArea values(null, 'Servicio comercial','1','41');
insert into subArea values(null, 'Despacho sucursales','1','21');
insert into subArea values(null, 'Alimentos','2','19.5');
insert into subArea values(null, 'Aves','2','18.5');
insert into subArea values(null, 'RRHH','3','25');
insert into subArea values(null, 'Asuntos corporativos','3','10');
insert into subArea values(null, 'Servicios de apoyo','4','100');

select * from subArea;

insert into origen values(null, 'Poll telefónico','1','3.5',false);
insert into origen values(null, 'Call center','1','17',false);
insert into origen values(null, 'Viña','2','1.93',false);
insert into origen values(null, 'Conce','2','1.93',false);
insert into origen values(null, 'LoMiranda','3','4.88',false);
insert into origen values(null, 'Longovilo','3','5.85',false);
insert into origen values(null, 'Reproductora','4','6.4',true);
insert into origen values(null, 'Incubadora','4','6.4',true);
insert into origen values(null, 'RRHH(DBnet)','5','5',false);
insert into origen values(null, 'RRHH(CAF Rgua)','5','5',false);
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