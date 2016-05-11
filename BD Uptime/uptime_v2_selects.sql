use uptime_v2;

select * from evento;

select e.porcIncidencia, e.tiempo, e.falta,
s.nombre as 'sector', o.nombre as 'origen', sa.nombre as 'subArea',
a.nombre as 'area'
from evento e, sector s, origen o, subArea sa,
area a
where s.id = e.sector and
o.id = s.origen and
sa.id = o.subarea and
a.id = sa.area;