USE Cas_LA
GO

SET DATEFORMAT Dmy
GO


DELETE FROM AUTEURS_AUT

INSERT INTO AUTEURS_AUT VALUES (01,'Archer','Jeffrey');
INSERT INTO AUTEURS_AUT VALUES (02,'Christie','Agatha');
INSERT INTO AUTEURS_AUT VALUES (03,'Clarke','Arthur C.');
INSERT INTO AUTEURS_AUT VALUES (04,'Francis','Dick');
INSERT INTO AUTEURS_AUT VALUES (05,'Cussler','Clive');
INSERT INTO AUTEURS_AUT VALUES (06,'King','Stephen');
INSERT INTO AUTEURS_AUT VALUES (07,'Pratt','Philip');
INSERT INTO AUTEURS_AUT VALUES (08,'Adamski','Joseph');
INSERT INTO AUTEURS_AUT VALUES (10,'Harman','Willis');
INSERT INTO AUTEURS_AUT VALUES (11,'Rheingold','Howard');
INSERT INTO AUTEURS_AUT VALUES (12,'Owen','Barbara');
INSERT INTO AUTEURS_AUT VALUES (13,'Williams','Peter');
INSERT INTO AUTEURS_AUT VALUES (14,'Kafka','Franz');
INSERT INTO AUTEURS_AUT VALUES (15,'Novalis','');
INSERT INTO AUTEURS_AUT VALUES (16,'Lovecraft','H.P.');
INSERT INTO AUTEURS_AUT VALUES (17,'Paz','Octavio');
INSERT INTO AUTEURS_AUT VALUES (18,'Camus','Albert');
INSERT INTO AUTEURS_AUT VALUES (19,'Castleman','Riva');
INSERT INTO AUTEURS_AUT VALUES (20,'Zinbardo','Philip');
INSERT INTO AUTEURS_AUT VALUES (21,'Gimferrer','Pere');
INSERT INTO AUTEURS_AUT VALUES (22,'Southworth','Rod');
INSERT INTO AUTEURS_AUT VALUES (23,'Wray','Robert');



DELETE FROM BRABCHES_BRA

INSERT INTO BRABCHES_BRA VALUES (1,'Henrys Downtown','16 Riverview',10);
INSERT INTO BRABCHES_BRA VALUES (2,'Henrys On The Hill','1289 Bedford',06);
INSERT INTO BRABCHES_BRA VALUES (3,'Henrys Brentwood','Brentwood Mall',15);
INSERT INTO BRABCHES_BRA VALUES (4,'Henrys Eastshore','Eastshore Mall',09);



DELETE FROM EDITEURS_EDI

INSERT INTO EDITEURS_EDI VALUES ('AH','Arkham House Publ','Sauk City','WI');
INSERT INTO EDITEURS_EDI VALUES ('AP','Arcade Publishing','New York','NY');
INSERT INTO EDITEURS_EDI VALUES ('AW','Addison Wesley','Reading','MA');
INSERT INTO EDITEURS_EDI VALUES ('BB','Bantam Books','New York','NY');
INSERT INTO EDITEURS_EDI VALUES ('BF','Best and Furow','Boston','MA');
INSERT INTO EDITEURS_EDI VALUES ('JT','Jeremy P. Tarcher','Los Angeles','CA');
INSERT INTO EDITEURS_EDI VALUES ('MP','McPherson and Co.','Kingston','NY');
INSERT INTO EDITEURS_EDI VALUES ('PB','Pocket Books','New York','NY');
INSERT INTO EDITEURS_EDI VALUES ('RH','Random House','New York','NY');
INSERT INTO EDITEURS_EDI VALUES ('RZ','Rizzoli','New York','NY');
INSERT INTO EDITEURS_EDI VALUES ('SB','Schoken Books','New York','NY');
INSERT INTO EDITEURS_EDI VALUES ('SI','Signet','New York','NY');
INSERT INTO EDITEURS_EDI VALUES ('TH','Thames and Hudson','New York','NY');
INSERT INTO EDITEURS_EDI VALUES ('WN','W.W. Norton and Co.','New York','NY');





DELETE FROM LIVRES_LIV

INSERT INTO LIVRES_LIV VALUES ('0180','Shyness','BB','PSY','01-05-1984',7.65,'O');
INSERT INTO LIVRES_LIV VALUES ('0189','Kane and Abel','PB','FIC','01-09-1979',5.55,'O');
INSERT INTO LIVRES_LIV VALUES ('0200','Stranger','BB','FIC','01-06-1942',8.75,'O');
INSERT INTO LIVRES_LIV VALUES ('0378','Dunwich Horror and Others','PB','HOR','01-04-1985',19.75,'N');
INSERT INTO LIVRES_LIV VALUES ('079X','Smokescreen','PB','MYS','01-01-1993',4.55,'O');
INSERT INTO LIVRES_LIV VALUES ('0808','Knockdown','PB','MYS','01-10-1974',4.75,'O');
INSERT INTO LIVRES_LIV VALUES ('1351','Cujo','SI','HOR','01-12-1981',6.65,'O');
INSERT INTO LIVRES_LIV VALUES ('1382','Marcel Duchamp','PB','ART','01-02-1970',11.25,'O');
INSERT INTO LIVRES_LIV VALUES ('138X','Death on the Nde','BB','MYS','01-03-1937',3.95,'O');
INSERT INTO LIVRES_LIV VALUES ('2226','Ghost forte the Grand Banks','BB','SFI','01-06-1990',19.95,'N');
INSERT INTO LIVRES_LIV VALUES ('2281','Prints of the 20 Century','PB','ART','01-08-1976',13.25,'O');
INSERT INTO LIVRES_LIV VALUES ('2766','Prodigal Daughter','PB','FIC','01-08-1982',55,'O');
INSERT INTO LIVRES_LIV VALUES ('2908','Hyrnns to the Night','BB','POE','01-02-1994',6.75,'O');
INSERT INTO LIVRES_LIV VALUES ('3350','Higher Creativity','PB','PSY','01-02-2002',9.75,'O');
INSERT INTO LIVRES_LIV VALUES ('3743','First Among Equals','PB','FIC','01-03-1984',3.95,'O');
INSERT INTO LIVRES_LIV VALUES ('3906','Vortex','BB','SUS','01-06-1995',5.45,'O');
INSERT INTO LIVRES_LIV VALUES ('5163','Organ','SI','MUS','01-09-1988',16.95,'O');
INSERT INTO LIVRES_LIV VALUES ('5790','Database Systems','BF','CS','01-07-1991',54.95,'N');
INSERT INTO LIVRES_LIV VALUES ('6128','Evil under the Sun','PB','MYS','01-09-1941',4.45,'O');
INSERT INTO LIVRES_LIV VALUES ('6328','Vixen 03','BB','SUS','01-08-1999',5.55,'O');
INSERT INTO LIVRES_LIV VALUES ('669X','A Guide to SOL','BF','CS','01-12-2002',23.95,'O');
INSERT INTO LIVRES_LIV VALUES ('6908','DOS essentiels','BF','CS','01-05-1991',20.5,'O');
INSERT INTO LIVRES_LIV VALUES ('7405','Night Probe','BB','SUS','01-04-1981',5.55,'O');
INSERT INTO LIVRES_LIV VALUES ('7443','Canie','SI','HOR','01-05-1974',6.75,'O');
INSERT INTO LIVRES_LIV VALUES ('7559','Risk','PB','MYS','01-02-1988',3.95,'O');
INSERT INTO LIVRES_LIV VALUES ('7947','DBASE Programming','BF','CS','01-02-1992',39.9,'O');
INSERT INTO LIVRES_LIV VALUES ('8092','Magritte','SI','ART','01-04-1987',21.95,'N');
INSERT INTO LIVRES_LIV VALUES ('8720','Castle','BB','FIC','01-02-1926',12.15,'O');
INSERT INTO LIVRES_LIV VALUES ('9611','Amerika','BB','FIC','01-11-1927',10.95,'O');





DELETE FROM INVENTAIRE_INV

INSERT INTO INVENTAIRE_INV VALUES ('0180',1,2);
INSERT INTO INVENTAIRE_INV VALUES ('2908',4,1);
INSERT INTO INVENTAIRE_INV VALUES ('0189',2,2);
INSERT INTO INVENTAIRE_INV VALUES ('3350',1,2);
INSERT INTO INVENTAIRE_INV VALUES ('0200',1,1);
INSERT INTO INVENTAIRE_INV VALUES ('3906',2,1);
INSERT INTO INVENTAIRE_INV VALUES ('0200',2,3);
INSERT INTO INVENTAIRE_INV VALUES ('3906',3,2);
INSERT INTO INVENTAIRE_INV VALUES ('079X',2,1);
INSERT INTO INVENTAIRE_INV VALUES ('5163',1,1);
INSERT INTO INVENTAIRE_INV VALUES ('079X',3,2);
INSERT INTO INVENTAIRE_INV VALUES ('5790',4,2);
INSERT INTO INVENTAIRE_INV VALUES ('079X',4,3);
INSERT INTO INVENTAIRE_INV VALUES ('6128',2,4);
INSERT INTO INVENTAIRE_INV VALUES ('1351',1,1);
INSERT INTO INVENTAIRE_INV VALUES ('6128',3,3);
INSERT INTO INVENTAIRE_INV VALUES ('1351',2,4);
INSERT INTO INVENTAIRE_INV VALUES ('6328',2,2);
INSERT INTO INVENTAIRE_INV VALUES ('1351',3,2);
INSERT INTO INVENTAIRE_INV VALUES ('669X',1,1);
INSERT INTO INVENTAIRE_INV VALUES ('138X',2,3);
INSERT INTO INVENTAIRE_INV VALUES ('6908',2,2);
INSERT INTO INVENTAIRE_INV VALUES ('2226',1,3);
INSERT INTO INVENTAIRE_INV VALUES ('7405',3,2);
INSERT INTO INVENTAIRE_INV VALUES ('2226',3,2);
INSERT INTO INVENTAIRE_INV VALUES ('7559',2,2);
INSERT INTO INVENTAIRE_INV VALUES ('2226',4,1);
INSERT INTO INVENTAIRE_INV VALUES ('7947',2,2);
INSERT INTO INVENTAIRE_INV VALUES ('2281',4,3);
INSERT INTO INVENTAIRE_INV VALUES ('8092',3,1);
INSERT INTO INVENTAIRE_INV VALUES ('2766',3,2);
INSERT INTO INVENTAIRE_INV VALUES ('8720',1,3);
INSERT INTO INVENTAIRE_INV VALUES ('2908',1,3);
INSERT INTO INVENTAIRE_INV VALUES ('9611',1,2);


DELETE FROM ECRIT_PAR_ECR

INSERT INTO ECRIT_PAR_ECR VALUES ('0180',20,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('0189',01,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('0200',18,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('0378',16,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('079X',04,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('0808',04,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('1351',06,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('1382',17,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('138X',02,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('2226',03,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('2281',19,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('2766',01,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('2908',15,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('3350',10,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('3350',11,2);
INSERT INTO ECRIT_PAR_ECR VALUES ('3743',01,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('3906',05,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('5163',12,2);
INSERT INTO ECRIT_PAR_ECR VALUES ('5163',13,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('5790',07,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('5790',08,2);
INSERT INTO ECRIT_PAR_ECR VALUES ('6128',02,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('6328',05,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('669X',07,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('6908',22,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('7405',05,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('7443',06,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('7559',04,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('7947',07,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('7947',23,2);
INSERT INTO ECRIT_PAR_ECR VALUES ('8092',21,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('8720',14,1);
INSERT INTO ECRIT_PAR_ECR VALUES ('9611',14,1);

