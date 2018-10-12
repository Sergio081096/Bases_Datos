Use student; 
Go
CREATE TABLE alumno13 (no_cta int, NombreA varchar(40), Especialidad varchar(20), Direcci�n varchar(20) );
INSERT INTO alumno13 VALUES ( 984433, 'Juan Rodr�guez Olvera', 'Inform�tica', 'Abasolo no.133');
INSERT INTO alumno13 VALUES ( 990122, 'Jos� Ortega Mart�nez', 'Derecho', 'Independencia 26');
INSERT INTO alumno13 VALUES ( 970204, 'Laura Sandoval Rodr�guez', 'Psicolog�a', 'Oriente 42');
INSERT INTO alumno13 VALUES ( 990124, 'Lucia Orta Mendez', 'Administraci�n', 'San Antonio 23-2');
GO

CREATE TABLE materia13 (NombreM varchar(35), claveM char(5), cr�ditos int);
INSERT INTO materia13 VALUES ( 'Finanzas', 'AD001', 6);
INSERT INTO materia13 VALUES ( 'Base de Datos', 'IN001', 5);
INSERT INTO materia13 VALUES ( 'Estructura de Datos', 'IN002', 6);
INSERT INTO materia13 VALUES ( 'Contabilidad', 'AD002', 5);
INSERT INTO materia13 VALUES ( 'Psicometr�a', 'PS001', 6);
INSERT INTO materia13 VALUES ( 'Psicolog�a empresarial', 'PS002', 5);
INSERT INTO materia13 VALUES ( 'Derecho Administrativo', 'DE001', 6);
INSERT INTO materia13 VALUES ( 'Derecho I', 'DE002', 5);
GO

CREATE TABLE cursa13 (no_cta int, claveM char(5), Calificaci�n int);
INSERT INTO cursa13 VALUES ( 984433, 'IN001', 10);
INSERT INTO cursa13 VALUES ( 990122, 'DE001', 9);
INSERT INTO cursa13 VALUES ( 970204, 'PS001', 7);
INSERT INTO cursa13 VALUES ( 990124, 'AD001', 5);
INSERT INTO cursa13 VALUES ( 984433, 'IN002', 9);
INSERT INTO cursa13 VALUES ( 990122, 'DE002', 7);
INSERT INTO cursa13 VALUES ( 970204, 'PS002', 9);
INSERT INTO cursa13 VALUES ( 990124, 'AD002', 10);
GO

ALTER TABLE alumno13 ADD CONSTRAINT PK_alumno13 PRIMARY KEY (no_cta);
GO
ALTER TABLE materia13 ADD CONSTRAINT PK_materia13 PRIMARY KEY (claveM);
Go
ALTER TABLE cursa13 ADD CONSTRAINT PK_cursa13 PRIMARY KEY (no_cta,claveM);
GO

ALTER TABLE cursa13 ADD CONSTRAINT FK_cursa13_no_cta FOREIGN KEY (no_cta) REFERENCES alumno13(no_cta);
GO
ALTER TABLE cursa13 ADD CONSTRAINT FK_cursa13_ claveM FOREIGN KEY (claveM) REFERENCES materia13(claveM);
GO
