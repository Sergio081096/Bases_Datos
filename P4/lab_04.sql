create unique index no_cuenta
on alumno13(no_acta)
go

create unique index clave_materia
on materia13(claveM)
go

create index cuenta_clave
on cursa13(no_cta,claveM)
go

ALTER TABLE cursa13
DROP CONSTRAINT FK_cursa13
go

ALTER TABLE cursa13
DROP CONSTRAINT PK_cursa13
go

create trigger deletealumno
on alumno13
for delete as
delete cursa13
from cursa13, deleted
where cursa13.no_cta=deleted.no_cta
go

create trigger deletemateria
on materia13
for delete as
if(
select count(*)
from deleted, cursa13
where cursa13.claveM=deleted.claveM)>0
begin   
    delete cursa13
    from cursa13, deleted
    where cursa13.claveM=deleted.claveM
end
go


create trigger ChecaAlumno on alumno13
for insert as
if (      select count(*) from alumno13, inserted 
      where (alumno13.no_cta = inserted.no_cta) and (inserted.no_cta <> null)
) != @@rowcount 
begin rollback transaction
end
go


create trigger ChecaCursa on cursa13
for insert as
if (      select count(*) from cursa13,alumno13,materia13, inserted 
      where (cursa13.no_cta = inserted.no_cta) and (alumno13.no_cta = inserted.no_cta) 
	and (cursa13.claveM= inserted.claveM)and (materia13.claveM = inserted.claveM)
) != @@rowcount 
begin rollback transaction
end
go

create trigger ChecaMateria on materia13
for insert as
if (      select count(*) from materia13, inserted 
      where (materia13.claveM = inserted.claveM)
         and (inserted.claveM <> null)
) != @@rowcount 
begin rollback transaction
end
go
