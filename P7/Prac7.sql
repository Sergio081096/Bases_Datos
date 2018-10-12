select db_name()
go


CREATE PROC sp_existe (@nombre_tabla varchar (20) = NULL)
AS
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = @nombre_tabla)
BEGIN
DROP TABLE nombre_tabla
print 'La tabla YA existe en esta base de datos, SE HA BORRADO'
END
ELSE
BEGIN
print 'La tabla NO existe en esta base de datos'
END
go


exec sp_existe titles13
go


select * into student..titles13 from pubs2..titles
go
select * from titles13
go


CREATE PROC sp_titulo(@title_id char (6) = NULL) 
AS BEGIN 
IF @title_id IS null SELECT title_id, price, total_sales
FROM titles13 
ELSE SELECT title_id, price, total_sales 
FROM titles13 WHERE title_id = @title_id 
END
go


exec sp_titulo NULL
go


exec sp_titulo PC8888
go


drop proc sp_titulo
go
CREATE PROCEDURE sp_titulo(@title_id char (6) = NULL) 
AS BEGIN 
IF @title_id IS NULL SELECT title_id, price, total_sales 
FROM titles13 
ELSE IF EXISTS (SELECT * FROM titles13 WHERE title_id = @title_id) 
SELECT title_id, price, total_sales 
FROM titles13 WHERE title_id = @title_id 
ELSE raiserror 40213 "No existe un libro con ese identificador" 
END
go

exec sp_titulos MC2222
go
