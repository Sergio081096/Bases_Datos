create proc proc_Blurbs_13 (@parinput int =null, @resultado int OUTPUT)
as set @resultado= @parinput/2
return
go

create proc proc_Blurbs_13(@parinput char(10)=null, @resultado char(13) OUTPUT)
as select @resultado=convert(char,[copy])
from Blurbs_13
where au_id=@parinput
return
go

declare @salida char
exec proc_Blurbs_13 '648-92-1852', @salida OUTPUT
select @salida
go

