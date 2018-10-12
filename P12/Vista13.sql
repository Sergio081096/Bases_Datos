Select au_id, [copy] 
from Blurbs_13
go

Create view vista_13 (Vista_au_id, VistaCopy)
As
(Select au_id, [copy] from Blurbs_13)
go

Select * from vista_13
go

sp_help vista_13
go

sp_helptext vista_13
go

Select Vista_au_id from vista_13
go

select * from vista_13 where Vista_au_id = '409-56-7008'
go

Drop view vista_13
go