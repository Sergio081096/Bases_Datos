INSERT INTO alumno13 VALUES ( 984431, 'Pedro Lopez Juarez', 'Informática', 'Eleuterio Mendez no.37');
INSERT INTO alumno13 VALUES ( 990123, 'Ernesto Muñoz Perez', 'Psicología', 'Tomaz Vazquez 29');
INSERT INTO alumno13 VALUES ( 970205, 'Amaranta Benitez Castro', 'Derecho', 'Zamoras 45');
INSERT INTO alumno13 VALUES ( 990136, 'Jesus Arteaga Venegas', 'Administración', 'Canarias 93-3');
go

INSERT INTO cursa13 VALUES ( 984431, 'IN001', 10);
INSERT INTO cursa13 VALUES ( 990123, 'PS001', 7);
INSERT INTO cursa13 VALUES ( 970205, 'DE001', 10);
INSERT INTO cursa13 VALUES ( 990136, 'AD001', 8);
INSERT INTO cursa13 VALUES ( 984431, 'IN002', 9);
INSERT INTO cursa13 VALUES ( 990123, 'PS002', 9);
INSERT INTO cursa13 VALUES ( 970205, 'DE002', 7);
INSERT INTO cursa13 VALUES ( 990136, 'AD002', 6);
go

select *from alumno13
go


select *from cursa13
go


select NombreA, no_cta from alumno13
order by NombreA
go

select NombreA, no_cta from alumno13
order by no_cta
go


select NombreM from materia13
order by NombreM, créditos
go

select NombreA, Especialidad from alumno13
order by NombreA
go

select NombreA, Especialidad from alumno13
order by Especialidad
go

select NombreA, avg(Calificación) as "promedio", Especialidad from alumno13, cursa13
where alumno13.no_cta=alumno13.no_cta
group by Especialidad
having avg(Calificación) >8
order by NombreA, avg(Calificación)
go


select NombreA, Especialidad from alumno13
where Especialidad like 'P%'
order by NombreA
go


select Especialidad, sum(créditos) from alumno13, cursa13, materia13
where alumno13.no_cta=cursa13.no_cta and cursa13.claveM=materia13.claveM
group by Especialidad
go

