CREATE TABLE nueva8(nombre varchar(20), usuario varchar(20));

INSERT INTO nueva8 VALUES('au_pix_1','Basedat1');
INSERT INTO nueva8 VALUES('Authors_2','Basedat2');
INSERT INTO nueva8 VALUES('Blurbs_3','Basedat3');
INSERT INTO nueva8 VALUES('Discounts_4','Basedat4');
INSERT INTO nueva8 VALUES('Publishers_5','Basedat5');
INSERT INTO nueva8 VALUES('Roysched_6','Basedat6');
INSERT INTO nueva8 VALUES('Sales_7','Basedat7');
INSERT INTO nueva8 VALUES('Salesdetail_8','Basedat8');
INSERT INTO nueva8 VALUES('Stores_9','Basedat9');
INSERT INTO nueva8 VALUES('Titleauthor_10','Basedat10');
INSERT INTO nueva8 VALUES('au_pix_11','Basedat11');
INSERT INTO nueva8 VALUES('Authors_12','Basedat12');
INSERT INTO nueva8 VALUES('Blurbs_13','Basedat13');
INSERT INTO nueva8 VALUES('Discounts_14','Basedat14');
INSERT INTO nueva8 VALUES('Publishers_15','Basedat15');
INSERT INTO nueva8 VALUES('Roysched_16','Basedat16');

GO

SET chained ON

SELECT @@tranchained
GO

SELECT * FROM nueva8
GO

DELETE FROM nueva8 WHERE nombre!=NULL

ROLLBACK TRAN

GO

SELECT * FROM nueva8
GO