select *from Blurbs_13
go


create unique index auid
on Blurbs_13(au_id)
go

Declare au_id_update cursor Global
for select au_id, copy
from Blurbs_13 for update
open au_id_update
fetch au_id_update into @au_id, @copy
while(@@fetch_status=0)
begin
update Blurbs_13
set copy=@copy+'Modificado'
where current of au_id_update
fetch au_id_update into @au_id, @copy
end
close au_id_update
go

Declare @au_id varchar(12),
@copy varchar(200)
go

begin transaction tran_blurbs
go

Declare @au_id varchar(15),
@copy varchar(200)
go
Declare au_id_updates cursor 
for select au_id, copy
from Blurbs_13 for update
go
open au_id_updates
go
fetch au_id_updates into @au_id, @copy
go
while(@@fetch_status=0)
go
begin
go
begin transaction tran_blurbs
go
update Blurbs_13
set copy=@copy+'-Modificado'
go
commit transaction
go
where current of au_id_updates
go
fetch au_id_updates into @au_id, @copy
go
end
go
close au_id_updates
go
deallocate au_id_updates
go
