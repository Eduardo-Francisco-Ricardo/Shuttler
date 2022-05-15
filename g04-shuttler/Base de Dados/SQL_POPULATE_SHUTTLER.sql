/**********************************************
*  POPULATES BASE DE DADOS SHUTTLER
***********************************************/

/**********************************************
*	Grupo: 4    |  Curso: Inform�tica de Gest�o
*  	UC: Administra��o e Gest�o de Informa��o
*
*	Projeto: SHUTTLER
*
*  	Nome: Eduardo Domingues (20200377)
*  	Nome: Francisco Cabreiro (20200538)
*  	Nome: Ricardo Fontes (2020003)
***********************************************/
use Shuttler
go
SET NOCOUNT ON -- n�o regista as linhas inseridas
/************************************
*  INSERIR DADOS NA TABELA CATEGORIAS
*************************************/
insert into Categorias values
	('Standard', 'Bancos inclin�veis;Ar Condicionado;Apoio de p�s',2.6,0.8),
	('Quality', 'Bancos inclin�veis;Ar Condicionado;Apoio de p�s;TV e DVD; Wifi;',3.1,2.2),
	('Premium', 'Bancos inclin�veis;Ar Condicionado;Apoio de p�s;TV e DVD; Wifi;Frigorifico; Colunas de Som integradas/Headsets;',4.2,1.4); 
/**********************************
*  INSERIR DADOS NA TABELA EMPRESAS
***********************************/
INSERT INTO RH.Empresas VALUES
('EuroBus, Lda',501264154,'Rua Estev�o Amaral 22A','ebus@gmail.com',213521425),
('StarShuttle, Lda',501278414,'Rua Rosario Freitas 12','sshuttle@gmail.com',214171425),
('GoBus, Lda',501635244,'Avenida Diogo Lobo 147A','gbus@gmail.com',213528529),
('NovaBus, Lda',501395364,'Rua Tiago C�o 34F','nbus@gmail.com',213295675),
('BusGon�alves, Lda',501297485,'Rua Emiliano Jorge 31','bgoncalves@hotmail.com',213159255)

/**********************************
*  INSERIR DADOS NA TABELA VEICULOS
***********************************/

INSERT INTO RH.Veiculos VALUES 
	(1, '20-WJ-48', 'Ford', 'Transit MiniBus', 15,1),
	(2, '10-L8-4J', 'Hyundai', 'H-1', 9,1),
	(3, '23-AE-10', 'Ford', '2022 TRANSIT CONNECT PASSENGER WAGON', 7,1),
	(4, '20-WJ-89', 'Hyundai', 'H-1', 9,1),
	(5, '20-WJ-12', 'Ford', '2022 TRANSIT CONNECT PASSENGER WAGON', 7,1),
	(6, '20-WJ-42', 'Ford', 'Transit MiniBus', 15,1),
	(7, '20-WJ-03', 'Hyundai', 'H-1', 9,2),
	(8, '21-WJ-48', 'Ford', 'Transit MiniBus', 15,2),
	(9, '20-WJ-48', 'Ford', 'Transit MiniBus', 15,2),
	(10, '23-WJ-48', 'Hyundai', 'H-1', 9,2),
	(11, '20-WJ-48', 'Ford', '2022 TRANSIT CONNECT PASSENGER WAGON', 7,2),
	(12, '25-WJ-48', 'Hyundai', 'H-1', 9,3),
	(13, '20-JG-48', 'Ford', 'Transit MiniBus', 15,3),
	(14, '21-AJ-48', 'Ford', '2022 TRANSIT CONNECT PASSENGER WAGON', 7,3),
	(15, '20-AB-67', 'Hyundai', 'H-1', 9,3),
	(16, '21-WJ-48', 'Ford', 'Transit MiniBus', 15,2),
	(17, '20-WJ-48', 'Ford', 'Transit MiniBus', 15,2);
	--(18, '23-WJ-48', 'Hyundai', 'H-1', 9,2,2),
	--(19, '20-WJ-48', 'Ford', '2022 TRANSIT CONNECT PASSENGER WAGON', 7,3,2),
	--(20, '25-WJ-48', 'Hyundai', 'H-1', 9,4,3),
	--(21, '20-JG-48', 'Ford', 'Transit MiniBus', 15,5,3),
	--(22, '21-AJ-48', 'Ford', '2022 TRANSIT CONNECT PASSENGER WAGON', 7,4,3),
	--(23, '20-AB-67', 'Hyundai', 'H-1', 9,3,3),
	--(24, '21-WJ-48', 'Ford', 'Transit MiniBus', 15,3,2),
	--(25, '20-WJ-48', 'Ford', 'Transit MiniBus', 15,2,2),
	--(26, '23-WJ-48', 'Hyundai', 'H-1', 9,2,2),
	--(27, '20-WJ-48', 'Ford', '2022 TRANSIT CONNECT PASSENGER WAGON', 7,3,2),
	--(28, '25-WJ-48', 'Hyundai', 'H-1', 9,4,3),
	--(29, '20-JG-48', 'Ford', 'Transit MiniBus', 15,5,3),
	--(30, '21-AJ-48', 'Ford', '2022 TRANSIT CONNECT PASSENGER WAGON', 7,4,3),
	--(31, '20-AB-67', 'Hyundai', 'H-1', 9,3,3),
	--(32, '20-WJ-48', 'Ford', 'Transit MiniBus', 15,2,2),
	--(33, '23-WJ-48', 'Hyundai', 'H-1', 9,2,2),
	--(34, '20-WJ-48', 'Ford', '2022 TRANSIT CONNECT PASSENGER WAGON', 7,3,2);
/**********************************
*  INSERIR DADOS NA TABELA UTILIZADORES
***********************************/
Insert into Utilizador values
('Jo�o', 'Pedro','1985-05-14',912547415,'jpedro@gmail.com','joao', '0001'),
('Francisco', 'Santos','1975-02-04',923768192,'jpedro@gmail.com','Francisco', '0001'),
('Pedro', 'Afonso','1982-01-13',    923768192,'jpedro@gmail.com','Pedro',     '0001'),
('Alfredo', 'Santos','1991-06-22',  923721192,'jpedro@gmail.com','Alfredo',   '0001'),
('Mafalda', 'Amaral','1989-03-30',  923768192,'jpedro@gmail.com','Mafalda',   '0001'),
('Patr�cia', 'Fonseca','1993-04-07',923768192,'jpedro@gmail.com','Patr�cia',  '0001'),
('Francisca', 'Rocha','1987-05-08', 923768321,'jpedro@gmail.com','Francisca', '0001'),
('Rita', 'Maria','1985-05-14' ,     921765192,'jpedro@gmail.com','Rita',      '0001'),
('Maria', 'Jo�o', '1990-02-11',     921253492,'jpedro@gmail.com','Maria',     '0001'),
('Carlos', 'Manuel','1986-05-18'   ,928568192,'jpedro@gmail.com','Carlos',    '0001'),
('Catarina', 'Matias','1991-05-05' ,922641921,'jpedro@gmail.com','Catarina',  '0001'),
('Cristina', 'afonso','1982-05-07' ,909892425,'jpedro@gmail.com','Cristina',  '0001'),
('Ricardo', 'Ferreira','1999-01-30',923768192,'jpedro@gmail.com','Ricardo',   '0001'),
('Eduardo', 'Almeida','1985-07-16' ,927468192,'jpedro@gmail.com','Eduardo',   '0001'),
('Gon�alo', 'Andrade','2000-08-13' ,923768192,'jpedro@gmail.com','Gon�alo',   '0001'),
('Jo�o', 'Ramos','1991-02-02',      927428192,'jpedro@gmail.com','jota',      '0001'),
('Rafael', 'Menezes','2000-05-12',  923768724,'jpedro@gmail.com','Rmenezes',  '0001'),
('Luis', 'Pedro','1985-05-14',     923768192, 'luispedro@gmail.com', 'jp123', '12345678'    ),
('Filipe','Santos','1985-05-14',   923768192, 'filipesantos@gmail.com', 'FilipeS', '12345'  ),
('Paulo','Afonso', '1985-05-14',   923768192, 'paulofonso@gmail.com', 'Pauloo', '12345678'  ),
('Antonio','Santos', '1985-05-14', 923721192, 'antoniosantos@yahoo.com','AlferedoS','12378' ),
('Maria', 'Amaral','1985-05-14',   923768192, 'mariamaral@gmail.com', 'Mafaldinha', '15678' ),
('Patr�cia','Fonseca','1985-05-14',923768192, 'patriciafonseca@gmail.com', 'Fonseca', '1278'),
('Francisca','Rocha', '1985-05-14',923768321, 'franciscarocha@icloud.com','Francar','121278'),
('Rute', 'Maria','1985-05-14',     921765192, 'rutamaria@hotmail.com', 'Rmaria', 'rm1278'   ),
('Maria', 'Jo�o','1985-05-14',     921253492, 'mariajoao@gmail.com', 'MariaJoao', '12314328'),
('Carlos', 'Manuel', '1985-05-14', 928568192, 'Carlosmanuel@yahoo.com', 'carloss', 'carlooo'),
('Catarina','Matias','1985-05-14', 922641927,'Catarinamatias@gmail.com','CatarinaM','123cata'),
('Cristina','afonso','1985-05-14', 909892254, 'Cristinaafonso@gmail.com','Cristina1','1cris'),
('Ricardo','Ferreira','1985-05-14',923768192, 'Ricardoferreira@gmail.com', 'Ferreira','fer2'),
('Eduardo', 'Almeida','1985-05-14',927468192, 'eduardoalmeida@gmail.com', 'Edu', '12345678' ),
('Gon�alo', 'Andrade','1985-05-14',923768192, 'goncaloandrade@gmail.com','Goncas','gonca123'),
('Jo�o', 'Massa', '1985-05-14',    913468192, 'joaom@hotmail.com', 'jm123', '12345677'      ),
('Jo�o', 'Ramos', '1985-05-14',    927428192, 'joaoramos@hotmail.com', 'Ramos', 'raminhos'  );


/**********************************
*  INSERIR DADOS NA TABELA CONDUTORES
***********************************/
INSERT INTO RH.Condutores VALUES
	( 1,'LL-152485415','2010-07-24',1,1),
	( 3,'LL-152415945','2004-03-04',2,3),
	( 2,'LL-152265847','2000-03-11',3,1),
	( 4,'LL-152698547','2013-11-17',4,1),
	( 5,'LL-152168524','2012-12-16',5,3),
	( 6,'LL-152439515','2015-07-14',6,4),
	( 7,'LL-152854765','2008-05-14',7,5),
	( 8,'LL-153952495','2007-05-18',8,4),
	( 9,'LL-152485416','2016-05-05',9,5),
	(10,'LL-185295475','2008-05-13',10,2),
	(11,'LL-152352145','2014-05-14',11,2),
	(12,'LL-152452115','2005-05-14',12,1),
	(13,'LL-152480015','2021-01-14',13,3),
	(14,'LL-152521415','2009-05-14',14,1),
	(15,'LL-185415815','2022-03-14',15,3),
	(16,'LL-152157515','2013-05-20',16,5),
	(17,'LL-152489248','2006-07-24',17,1);
	select*from RH.Condutores
/*************************************
*  INSERIR DADOS NA TABELA PASSAGEIROS
**************************************/
INSERT INTO Pessoa.Passageiros VALUES
	(18,'12151891','Ocasional'),
	(19,'11242189','Executivo'),
	(20,'11876189','Regular'  ),
	(21,'15242189','Ocasional'),
	(22,'22532189','Regular'  ),
	(3,'11254389','Ocasional'),
	(24,'12901189','Regular'  ),
	(25,'13212189','Executivo'),
	(26,'19574389','Ocasional'),
	(27,'16289019','Regular'  ),
	(2,'15876189','Executivo'),
	(29,'16543218','Ocasional'),
	(30,'11209889','Ocasional'),
	(31,'13542189','Regular'  ),
	(32,'11242181','Ocasional'),
	(33,'12565264','Regular'  ),
	(34,'18675189','Ocasional');
	select*from Pessoa.Passageiros
/*******************************
*  INSERIR DADOS NA TABELA ENDERECOS
********************************/
INSERT INTO Servico.enderecos VALUES
('Rua das Fiqueiras','Lisboa','1350-541'),
('Rua Castelo Branco','Lisboa','1200-147'),
('Avenida Santos','Coimbra','3000-221'),
('Rua Paiva Douro','Braga','4700-514'),
('Rua Estrela','Lisboa','1100-174'),
('Rua Maria Manuela','Faro','8000-851'),
('Rua das Presas','Leiria','2400-321'),
('Rua Formosa','Braga','4700-214'),
('Rua Baltazar','Coimbra','3000-324'),
('Avenida Fidalgo','Faro','8000-841'),
('Avenida Gon�alves',' Faro','8000-427'),
('Rua das Maldivas','Braga','4700-943'),
('Rua dos Pratos','Lisboa','1200-246'),
('Rua Teresa','Leiria','2400-553'),
('Rua das Tropas','Coimbra','3000-845'),
('Rua Helio Ferreira','Lisboa','1200-258');

select cdt_id,vcl_cat_id from RH.Condutores inner join rh.Veiculos on RH.Condutores.cdt_vcl_id = RH.Veiculos.vcl_id
/*******************************
*  INSERIR DADOS NA TABELA TRAJETOS
********************************/
select*from Servico.Trajetos

INSERT INTO Servico.Trajetos VALUES
	(2,2,3,2,3, 13,'2022-04-11 09:00', '2022-04-11 09:30'),
	(1,5,3, 4,6, 17,'2022-04-05 12:00','2022-04-05 15:00'),
	(3,3,3, 6,4, 18,'2022-03-01 17:00','2022-03-01 22:00'),
	(5,8,1, 4,9, 15,'2022-01-11 08:00','2022-01-11 09:00'),
	(7,10,1,1,11,19,'2022-02-11 04:00','2022-02-11 05:00'),
	(9,6,2, 3,7, 120,'2022-02-17 06:00','2022-02-17 10:00'),
	(6,1,3, 1,2, 35,'2022-02-17 13:00','2022-02-17 15:00'),
	(4,7,3, 2,8, 150,'2022-03-17 10:00','2022-03-17 15:00'),
	(11,4,3,9, 5, 123,'2022-03-17 14:00','2022-03-17 20:00'),
	(14,9,,7, 10,60,'2022-03-17 08:00','2022-03-17 12:00'),
	(16,15,,10,16,250,'2022-02-28 09:00','2022-02-28 12:00'),
	(17,14,,12,15,350,'2022-02-02 10:00','2022-02-02 13:00'),
	(13,11,,11,12,15,'2022-02-07 18:00','2022-02-07 19:00'),
	(15,7,, 2,8, 3,'2022-02-13 20:00','2022-02-13 20:30'),
	(10,4,, 8,5, 150,'2022-02-13 06:00','2022-02-13 11:00'),
	(1,13,,11,14,24,'2022-02-11 08:00','2022-02-11 11:00'),
	(3,9,,10,1, 12,'2022-05-11 10:00','2022-05-11 11:00'),
	(5,11,,12,1,190,'2022-05-10 05:00','2022-05-10 11:00'),
	(7,2, ,3,1, 210,'2022-05-10 09:00','2022-05-10 14:00'),
	(9,12,,13,2,15,'2022-05-10 12:00','2022-05-10 13:00'),
	(9,11,,2,8,40,'2022-05-10 12:00','2022-05-10 14:30'),
	(2,2, ,2,3, 13,'2022-04-11 09:00','2022-04-11 09:30'),
	(1,5, ,4,6, 17,'2022-04-05 12:00','2022-04-05 15:00'),
	(3,3, ,6,4, 18,'2022-03-01 17:00','2022-03-01 22:00'),
	(5,8, ,4,9, 15,'2022-01-11 08:00','2022-01-11 09:00'),
	(7,10,,1,11,19,'2022-02-11 04:00','2022-02-11 05:00'),
	(9,6, ,3,7, 120,'2022-02-17 06:00','2022-02-17 10:00'),
	(6,1, ,1,2, 35,'2022-02-17 13:00','2022-02-17 15:00'),
	(4,7, ,2,8, 150,'2022-03-17 10:00','2022-03-17 15:00'),
	(11,4,,9, 5, 123,'2022-03-17 14:00','2022-03-17 20:00'),
	(14,9,,7, 10,60,'2022-03-17 08:00','2022-03-17 12:00'),
	(16,15,,10,16,250,'2022-02-28 09:00','2022-02-28 12:00'),
	(17,14,,12,15,350,'2022-02-02 10:00','2022-02-02 13:00'),
	(13,11,,11,12,15,'2022-02-07 18:00','2022-02-07 19:00' ),
	(15,7,, 2,8, 3,'2022-02-13 20:00','2022-02-13 20:30'   ),
	(10,4, 8,5, 150,'2022-02-13 06:00','2022-02-13 11:00' ),
	(1,13,11,14,24,'2022-02-11 08:00','2022-02-11 11:00'  ),
	(3,9,10,1, 12,'2022-05-11 10:00','2022-05-11 11:00'   ),
	(5,11,12,1,190,'2022-05-10 05:00','2022-05-10 11:00'  ),
	(7,2, 3,1, 210,'2022-05-10 09:00','2022-05-10 14:00'  ),
	(9,12,13,2,15,'2022-05-10 12:00','2022-05-10 13:00'   ),
	(9,11,2,8,40,'2022-05-10 12:00','2022-05-10 14:30'    ),
	(2,2, 2,3, 13,'2022-04-11 09:00','2022-04-11 09:30'   ),
	(1,5, 4,6, 17,'2022-04-05 12:00','2022-04-05 15:00'   ),
	(3,3, 6,4, 18,'2022-03-01 17:00','2022-03-01 22:00'   ),
	(5,8, 4,9, 15,'2022-01-11 08:00','2022-01-11 09:00'   ),
	(7,10,1,11,19,'2022-02-11 04:00','2022-02-11 05:00'   ),
	(9,6, 3,7, 120,'2022-02-17 06:00','2022-02-17 10:00'  ),
	(6,1, 1,2, 35,'2022-02-17 13:00','2022-02-17 15:00'   ),
	(4,7, 2,8, 150,'2022-03-17 10:00','2022-03-17 15:00'  ),
	(11,4,9, 5, 123,'2022-03-17 14:00','2022-03-17 20:00' ),
	(14,9,7, 10,60,'2022-03-17 08:00','2022-03-17 12:00'  ),
	(16,15,10,16,250,'2022-02-28 09:00','2022-02-28 12:00'),
	(17,14,12,15,350,'2022-02-02 10:00','2022-02-02 13:00'),
	(13,11,11,12,15,'2022-02-07 18:00','2022-02-07 19:00' ),
	(15,7, 2,8, 3,'2022-02-13 20:00','2022-02-13 20:30'   ),
	(10,4, 8,5, 150,'2022-02-13 06:00','2022-02-13 11:00' ),
	(1,13,11,14,24,'2022-02-11 08:00','2022-02-11 11:00'  ),
	(3,9,10,1, 12,'2022-05-11 10:00','2022-05-11 11:00'   ),
	(5,11,12,1,190,'2022-05-10 05:00','2022-05-10 11:00'  ),
	(7,2, 3,1, 210,'2022-05-10 09:00','2022-05-10 14:00'  ),
	(9,12,13,2,15,'2022-05-10 12:00','2022-05-10 13:00'   ),
	(9,11,2,8,40,'2022-05-10 12:00','2022-05-10 14:30'    ),
	(2,2, 2,3, 13,'2022-04-11 09:00','2022-04-11 09:30'   ),
	(1,5, 4,6, 17,'2022-04-05 12:00','2022-04-05 15:00'   ),
	(3,3, 6,4, 18,'2022-03-01 17:00','2022-03-01 22:00'   ),
	(5,8, 4,9, 15,'2022-01-11 08:00','2022-01-11 09:00'   ),
	(7,10,1,11,19,'2022-02-11 04:00','2022-02-11 05:00'   ),
	(9,6, 3,7, 120,'2022-02-17 06:00','2022-02-17 10:00'  ),
	(6,1, 1,2, 35,'2022-02-17 13:00','2022-02-17 15:00'   ),
	(4,7, 2,8, 150,'2022-03-17 10:00','2022-03-17 15:00'  ),
	(11,4,9, 5, 123,'2022-03-17 14:00','2022-03-17 20:00' ),
	(14,9,7, 10,60,'2022-03-17 08:00','2022-03-17 12:00'  ),
	(16,15,10,16,250,'2022-02-28 09:00','2022-02-28 12:00'),
	(17,14,12,15,350,'2022-02-02 10:00','2022-02-02 13:00'),
	(13,11,11,12,15,'2022-02-07 18:00','2022-02-07 19:00' ),
	(15,7, 2,8, 3,'2022-02-13 20:00','2022-02-13 20:30'   ),
	(10,4, 8,5, 150,'2022-02-13 06:00','2022-02-13 11:00' ),
	(1,13,11,14,24,'2022-02-11 08:00','2022-02-11 11:00'  ),
	(3,9,10,1, 12,'2022-05-11 10:00','2022-05-11 11:00'   ),
	(5,11,12,1,190,'2022-05-10 05:00','2022-05-10 11:00'  ),
	(7,2, 3,1, 210,'2022-05-10 09:00','2022-05-10 14:00'  ),
	(9,12,13,2,15,'2022-05-10 12:00','2022-05-10 13:00'   ),
	(9,11,2,8,40,'2022-05-10 12:00','2022-05-10 14:30'    ),
	(2,2, 2,3, 13,'2022-04-11 09:00','2022-04-11 09:30'   ),
	(1,5, 4,6, 17,'2022-04-05 12:00','2022-04-05 15:00'   ),
	(3,3, 6,4, 18,'2022-03-01 17:00','2022-03-01 22:00'   ),
	(5,8, 4,9, 15,'2022-01-11 08:00','2022-01-11 09:00'   ),
	(7,10,1,11,19,'2022-02-11 04:00','2022-02-11 05:00'   ),
	(9,6, 3,7, 120,'2022-02-17 06:00','2022-02-17 10:00'  ),
	(6,1, 1,2, 35,'2022-02-17 13:00','2022-02-17 15:00'   ),
	(4,7, 2,8, 150,'2022-03-17 10:00','2022-03-17 15:00'  ),
	(11,4,9, 5, 123,'2022-03-17 14:00','2022-03-17 20:00' ),
	(14,9,7, 10,60,'2022-03-17 08:00','2022-03-17 12:00'  ),
	(16,15,10,16,250,'2022-02-28 09:00','2022-02-28 12:00'),
	(17,14,12,15,350,'2022-02-02 10:00','2022-02-02 13:00'),
	(13,11,11,12,15,'2022-02-07 18:00','2022-02-07 19:00' ),
	(15,7, 2,8, 3,'2022-02-13 20:00','2022-02-13 20:30'   ),
	(10,4, 8,5, 150,'2022-02-13 06:00','2022-02-13 11:00' ),
	(1,13,11,14,24,'2022-02-11 08:00','2022-02-11 11:00'  ),
	(6,5,1,2, 12,'2022-05-11 10:00','2022-05-11 11:00'    ),
	(4,6,12,1,35,'2022-05-10 05:00','2022-05-10 11:00'    ),
	(11,1, 3,1, 210,'2022-05-10 09:00','2022-05-10 14:00' ),
	(1,9,13,2,15,'2022-05-10 12:00','2022-05-10 13:00'    ),
	(12,15,2,8,40,'2022-05-10 12:00','2022-05-10 14:30'   ),
	(17,12, 2,3, 13,'2022-04-11 09:00','2022-04-11 09:30' ),
	(13,10, 4,6, 180,'2022-04-05 12:00','2022-04-05 15:00'),
	(15,15, 6,4, 60,'2022-03-01 17:00','2022-03-01 22:00' ),
	(10,14, 4,9, 150,'2022-01-11 08:00','2022-01-11 09:00'),
	(1,3,11,14,24,'2022-02-11 04:00','2022-02-11 05:00'   ),
	(2,2, 1,3, 20,'2022-02-17 06:00','2022-02-17 10:00'   );
	
/**********************************
*  INSERIR DADOS NA TABELA DESCONTOS
***********************************/
INSERT INTO Financas.Descontos values
('Sem desconto',0,'2099-05-30'),
('10% de Desconto',0.1,'2022-04-30'),
('20% de Desconto',0.2,'2099-05-31'),
('30% de Desconto',0.3,'2099-05-31'),
('40% de Desconto',0.4,'2099-05-31'),
('50% de Desconto',0.5,'2099-05-31'),
('60% de Desconto',0.6,'2022-04-30'),
('70% de Desconto',0.7,'2099-05-31'),
('80% de Desconto',0.8,'2099-05-31'),
('90% de Desconto',0.9,'2099-05-31');

select*from Financas.Descontos
/**********************************
* INSERIR DADOS NA TABELA RESERVAS
***********************************/
INSERT INTO Servico.Reservas VALUES
	(1, 2, 8, 4,1 ,  '2022-03-17','concluida'),
	(2, 1, 3, 5, 1,  '2020-03-19','pendente'),
    (3, 3, 1, 4.2,1, '2020-03-20','concluida'),
    (4, 5, 1, 6, 1,  '2020-03-16','pendente'),
    (5, 7, 2, 3, 1,  '2020-05-03','concluida'),
    (6, 9, 5, 4, 1,  '2020-03-21','concluida'),
    (7, 6, 1, 8,1,   '2020-04-01','concluida'),
    (8, 4, 1, 10, 1, '2020-04-20','concluida'),
    (9, 11, 2, 12, 1,'2020-03-30','concluida'),
	(10, 14, 2, 12,1,'2020-03-30','concluida'),
	(11, 4, 2, 4, 1, '2020-03-30','concluida'),
	(12, 5, 2, 5, 1, '2020-03-30','concluida'),
	(13, 6, 2, 4.2,1,'2020-03-30','concluida'),
	(14, 9, 2, 6, 1, '2020-03-30','concluida'),
	(15, 11, 2, 3, 1,'2020-03-30','concluida'),
	(16, 13, 2, 4, 1,'2020-03-30','concluida'),
	(17, 14, 2, 8, 1,'2020-03-30','concluida'),
	(18, 11, 2, 10,1,'2020-03-30','concluida'),
	(19, 13, 2, 12,1,'2020-03-30','concluida'),
	(20, 14, 2, 12,1,'2020-03-30','pendente'),
	(21, 4, 2, 4, 1, '2020-03-30','cancelada'),
	(22, 5, 2, 5, 1, '2020-03-30','concluida'),
	(23, 6, 2,4.2,1, '2020-03-30','concluida'),
	(24, 9, 2, 6, 1, '2020-03-30','pendente'),
	(25, 11, 2,3, 1, '2020-03-30','concluida'),
	(26, 5, 2, 4, 1, '2020-03-30','concluida'),
	(27, 6, 2, 8, 1, '2020-03-30','concluida'),
	(28, 9, 2, 10, 1,'2020-03-30','concluida'),
	(29, 14, 2, 12,1,'2020-03-30','concluida'),
	(30, 14, 2, 12,1,'2020-03-30','pendente'),
	(31, 4, 2, 4, 1, '2020-03-30','cancelada'),
	(32, 5, 2, 5, 1, '2020-03-30','concluida'),
	(33, 6, 2, 4.2,1,'2020-03-30','concluida'),
	(34, 9, 2, 6, 1, '2020-03-30','concluida'),
	(35, 11, 2,3, 1, '2020-03-30','concluida'),
	(36, 13, 2,4, 1, '2020-03-30','cancelada'),
	(37, 4, 2,8, 1,  '2020-03-30','concluida'),
	(38, 6, 2, 10, 1,'2020-03-30','concluida'),
	(39, 11, 2, 12,1,'2020-03-30','concluida'),
	(40, 11, 2, 12,1,'2020-03-30','concluida'),
	(41, 4, 2, 4, 1, '2020-03-30','concluida'),
	(42, 5, 2, 5, 1, '2020-03-30','concluida'),
	(43, 6, 2, 4.2,1,'2020-03-30','concluida'),
	(44, 9, 2, 6, 1, '2020-03-30','concluida'),
	(45, 11, 2, 3, 1,'2020-03-30','concluida'),
	(46, 13, 2, 4, 1,'2020-03-30','pendente'),
	(47, 14, 2, 8, 1,'2020-03-30','concluida'),
	(48, 15, 2, 10,1,'2020-03-30','concluida'),
	(49, 14, 2, 12,1,'2020-03-30','concluida'),
	(50, 14, 2, 12,1,'2020-03-30','concluida'),
	(51, 4, 2, 4, 1, '2020-03-30','cancelada'),
	(52, 5, 2, 5, 1, '2020-03-30','pendente'),
	(53, 6, 2, 4.2,1,'2020-03-30','concluida'),
	(54, 9, 2, 6,1,  '2020-03-30','concluida'),
	(55, 11, 2, 3,1, '2020-03-30','concluida'),
	(56, 13, 2, 4, 1,'2020-03-30','concluida'),
	(57, 14, 2, 4, 1,'2020-03-30','concluida'),
	(58, 15, 2, 10,1,'2020-03-30','concluida'),
	(59, 14, 2, 12,1,'2020-03-30','pendente'),
	(60, 14, 2, 12,1,'2020-03-30','pendente'),
	(61, 4, 2, 4, 1, '2020-03-30','cancelada'),
	(62, 5, 2, 5, 1, '2020-03-30','pendente'),
	(63, 6, 2, 4.2,1,'2020-03-30','concluida'),
	(64, 9, 2, 6, 1, '2020-03-30','concluida'),
	(65, 11, 2,3, 1, '2020-03-30','concluida'),
	(66, 13, 2,4, 1, '2020-03-30','concluida'),
	(67, 14, 2,8, 1, '2020-03-30','concluida'),
	(68, 15, 2,10, 1,'2020-03-30','concluida'),
	(69, 14, 2,12, 1,'2020-03-30','pendente'),
	(70, 14, 2,12, 1,'2020-03-30','concluida'),
	(71, 4, 2, 4, 1, '2020-03-30','cancelada'),
	(72, 5, 2, 5, 1, '2020-03-30','pendente'),
	(73, 6, 2, 4.2,1,'2020-03-30','concluida'),
	(74, 9, 2, 6, 1, '2020-03-30','concluida'),
	(75, 11, 2,3, 1, '2020-03-30','concluida'),
	(76, 13, 2,4, 1, '2020-03-30','concluida'),
	(77, 14, 2,4, 1, '2020-03-30','concluida'),
	(78, 15, 2,10, 1,'2020-03-30','concluida'),
	(79, 14, 2,12, 1,'2020-03-30','concluida'),
	(80, 14, 2,12, 1,'2020-03-30','pendente'),
	(81, 4, 2, 4, 1, '2020-03-30','cancelada'),
	(82, 5, 2, 5, 1, '2020-03-30','concluida'),
	(83, 6, 2, 4.2,1,'2020-03-30','concluida'),
	(84, 9, 2, 6, 1, '2020-03-30','pendente'),
	(85, 11, 2,3, 1, '2020-03-30','concluida'),
	(86, 13, 2,4, 1, '2020-03-30','concluida'),
	(87, 14, 2,8, 1, '2020-03-30','pendente'),
	(88, 15, 2,10, 1,'2020-03-30','concluida'),
	(89, 14, 2,12, 1,'2020-03-30','concluida'),
	(90, 14, 2,12, 1,'2020-03-30','pendente'),
	(91, 4, 2, 4, 1, '2020-03-30','cancelada'),
	(92, 5, 2, 5, 1, '2020-03-30','concluida'),
	(93, 6, 2, 4.2,1,'2020-03-30','cancelada'),
	(94, 9, 2, 6, 1, '2020-03-30','concluida'),
	(95, 11, 2, 3, 1,'2020-03-30','concluida'),
	(96, 13, 2, 4, 1,'2020-03-30','concluida'),
	(97, 14, 2, 8, 1,'2020-03-30','concluida'),
	(98, 15, 2, 10,1,'2020-03-30','concluida'),
	(99, 14, 2, 12,1,'2020-03-30','concluida'),
	(100, 14, 2,12,1,'2020-03-30','concluida'),
	(101, 4, 2, 4, 1,'2020-03-30','cancelada'),
	(102, 5, 2, 5, 1,'2020-03-30','concluida'),
	(103, 6, 2,4.2,1,'2020-03-30','cancelada'),
	(104, 9, 2, 6, 1,'2020-03-30','concluida'),
	(105, 11, 2, 3,1,'2020-03-30','concluida'),
	(106, 13, 2,4,1, '2020-03-30','concluida'),
	(107, 14, 2, 8,1,'2020-03-30','concluida'),
	(108, 15, 2,10,1,'2020-03-30','pendente'),
	(109, 14, 2,12,1,'2020-03-30','pendente'),
	(110, 14, 2,12,1,'2020-03-30','pendente');
		select*from Servico.Reservas
/************************************
*  INSERIR DADOS NA TABELA FATURAS
*************************************/
INSERT INTO Financas.Faturas VALUES
(1,265080790,506040500,'2022-04-11 09:30'), 
(3,265080790,506040500,'2022-04-11 09:30'),
(5,265080790,506040500,'2022-04-11 09:30'),
(6,265080790,506040500,'2022-04-11 09:30'),
(7,265080790,506040500,'2022-04-11 09:30'),
(8,265080790,506040500,'2022-04-11 09:30'),
(9,265080790,506040500,'2022-04-11 09:30'),
(10,265080790,506040500,'2022-04-11 09:30'),
(11,265080790,506040500,'2022-04-11 09:30'),
(12,265080790,506040500,'2022-04-11 09:30'),
(13,265080790,506040500,'2022-04-11 09:30'),
(14,265080790,506040500,'2022-04-11 09:30'),
(15,265080790,506040500,'2022-04-11 09:30'),
(16,265080790,506040500,'2022-04-11 09:30'),
(17,265080790,506040500,'2022-04-11 09:30'),
(18,265080790,506040500,'2022-04-11 09:30'),
(19,265080790,506040500,'2022-04-11 09:30'),
(22,265080790,506040500,'2022-04-11 09:30'),
(23,265080790,506040500,'2022-04-11 09:30'),
(25,265080790,506040500,'2022-04-11 09:30'),
(26,265080790,506040500,'2022-04-11 09:30'),
(27,265080790,506040500,'2022-04-11 09:30'),
(28,265080790,506040500,'2022-04-11 09:30'),
(29,265080790,506040500,'2022-04-11 09:30'),
(32,265080790,506040500,'2022-04-11 09:30'),
(33,265080790,506040500,'2022-04-11 09:30'),
(34,265080790,506040500,'2022-04-11 09:30'),
(35,265080790,506040500,'2022-04-11 09:30'),
(37,265080790,506040500,'2022-04-11 09:30'),
(38,265080790,506040500,'2022-04-11 09:30'),
(39,265080790,506040500,'2022-04-11 09:30'),
(40,265080790,506040500,'2022-04-11 09:30'),
(41,265080790,506040500,'2022-04-11 09:30'),
(42,265080790,506040500,'2022-04-11 09:30'),
(43,265080790,506040500,'2022-04-11 09:30'),
(44,265080790,506040500,'2022-04-11 09:30'),
(45,265080790,506040500,'2022-04-11 09:30'),
(47,265080790,506040500,'2022-04-11 09:30'),
(48,265080790,506040500,'2022-04-11 09:30'),
(49,265080790,506040500,'2022-04-11 09:30'),
(50,265080790,506040500,'2022-04-11 09:30'),
(53,265080790,506040500,'2022-04-11 09:30'),
(54,265080790,506040500,'2022-04-11 09:30'),
(55,265080790,506040500,'2022-04-11 09:30'),
(56,265080790,506040500,'2022-04-11 09:30'),
(57,265080790,506040500,'2022-04-11 09:30'),
(58,265080790,506040500,'2022-04-11 09:30'),
(63,265080790,506040500,'2022-04-11 09:30'),
(64,265080790,506040500,'2022-04-11 09:30'),
(65,265080790,506040500,'2022-04-11 09:30'),
(66,265080790,506040500,'2022-04-11 09:30'),
(67,265080790,506040500,'2022-04-11 09:30'),
(68,265080790,506040500,'2022-04-11 09:30'),
(70,265080790,506040500,'2022-04-11 09:30'),
(73,265080790,506040500,'2022-04-11 09:30'),
(74,265080790,506040500,'2022-04-11 09:30'),
(75,265080790,506040500,'2022-04-11 09:30'),
(76,265080790,506040500,'2022-04-11 09:30'),
(77,265080790,506040500,'2022-04-11 09:30'),
(78,265080790,506040500,'2022-04-11 09:30'),
(79,265080790,506040500,'2022-04-11 09:30'),
(82,265080790,506040500,'2022-04-11 09:30'),
(83,265080790,506040500,'2022-04-11 09:30'),
(85,265080790,506040500,'2022-04-11 09:30'),
(86,265080790,506040500,'2022-04-11 09:30'),
(88,265080790,506040500,'2022-04-11 09:30'),
(89,265080790,506040500,'2022-04-11 09:30'),
(92,265080790,506040500,'2022-04-11 09:30'),
(94,265080790,506040500,'2022-04-11 09:30'),
(95,265080790,506040500,'2022-04-11 09:30'),
(96,265080790,506040500,'2022-04-11 09:30'),
(97,265080790,506040500,'2022-04-11 09:30'),
(98,265080790,506040500,'2022-04-11 09:30'),
(99,265080790,506040500,'2022-04-11 09:30'),
(100,265080790,506040500,'2022-04-11 09:30'),
(102,265080790,506040500,'2022-04-11 09:30'),
(104,265080790,506040500,'2022-04-11 09:30'),
(105,265080790,506040500,'2022-04-11 09:30'),
(106,265080790,506040500,'2022-04-11 09:30'),
(107,265080790,506040500,'2022-04-11 09:30');

/************************************
*  INSERIR DADOS NA TABELA PONTOS
*************************************/
INSERT INTO Pessoa.Pontos VALUES
(10,2,1),
(10,3,3),
(10,7,5),
(10,9,6),
(10,6,7),
(10,4,8),
(10,11,9),
(10,14,10),
(10,4,11),
(10,5,12),
(10,6,13),
(10,9,14),
(10,11,15),
(10,13,16),
(10,14,17),
(10,11,18),
(10,13,19),
(10,5,22),
(10,6,23),
(10,11,25),
(10,5,26),
(10,6,27),
(10,9,28),
(10,14,29),
(10,5,32),
(10,6,33),
(10,9,34),
(10,11,35),
(10,4,37),
(10,6,38),
(10,11,39),
(10,11,40),
(10,4,41),
(10,5,42),
(10,6,43),
(10,9,44),
(10,11,45),
(10,14,47),
(10,15,48),
(10,14,49),
(10,14,50),
(10,6,53),
(10,9,54),
(10,11,55),
(10,13,56),
(10,14,57),
(10,15,58),
(10,6,63),
(10,9,64),
(10,11,65),
(10,13,66),
(10,14,67),
(10,15,68),
(10,14,70),
(10,6,73),
(10,9,74),
(10,11,75),
(10,13,76),
(10,14,77),
(10,15,78),
(10,14,79),
(10,5,82),
(10,6,83),
(10,11,85),
(10,13,86),
(10,15,88),
(10,14,89),
(10,5,92),
(10,9,94),
(10,11,95),
(10,13,96),
(10,14,97),
(10,15,98),
(10,14,99),
(10,14,100),
(10,5,102),
(10,9,104),
(10,11,105),
(10,13,106),
(10,14,107);


/************************************
*  INSERIR DADOS NA TABELA METODOS PAGAMENTO
*************************************/
INSERT INTO Financas.metodos_pagamento VALUES
('Multibanco',2,1),
('Paypal',3,3),
('Multibanco',7,5),
('MBway',9,6),
('Multibanco',6,7),
('Paypal',4,8),
('Multibanco',11,9),
('MBway',14,10),
('Multibanco',4,11),
('Multibanco',5,12),
('Multibanco',6,13),
('Paypal',9,14),
('MBway',11,15),
('Multibanco',13,16),
('Paypal',14,17),
('Multibanco',11,18),
('Multibanco',13,19),
('Multibanco',5,22),
('Paypal',6,23),
('Multibanco',11,25),
('MBway',5,26),
('MBway',6,27),
('Multibanco',9,28),
('Multibanco',14,29),
('Multibanco',5,32),
('MBway',6,33),
('Multibanco',9,34),
('Multibanco',11,35),
('Paypal',4,37),
('Multibanco',6,38),
('MBway',11,39),
('Multibanco',11,40),
('Multibanco',4,41),
('Multibanco',5,42),
('MBway',6,43),
('Multibanco',9,44),
('Multibanco',11,45),
('MBway',14,47),
('Multibanco',15,48),
('Paypal',14,49),
('Multibanco',14,50),
('Multibanco',6,53),
('MBway',9,54),
('Paypal',11,55),
('Multibanco',13,56),
('Paypal',14,57),
('Multibanco',15,58),
('Multibanco',6,63),
('Multibanco',9,64),
('MBway',11,65),
('Multibanco',13,66),
('MBway',14,67),
('Multibanco',15,68),
('Multibanco',14,70),
('Paypal',6,73),
('Multibanco',9,74),
('Multibanco',11,75),
('Paypal',13,76),
('Multibanco',14,77),
('MBway',15,78),
('Multibanco',14,79),
('Multibanco',5,82),
('Multibanco',6,83),
('MBway',11,85),
('Paypal',13,86),
('Multibanco',15,88),
('Multibanco',14,89),
('Multibanco',5,92),
('Paypal',9,94),
('Multibanco',11,95),
('Multibanco',13,96),
('MBway',14,97),
('Multibanco',15,98),
('Multibanco',14,99),
('Paypal',14,100),
('MBway',5,102),
('Multibanco',9,104),
('Paypal',11,105),
('Multibanco',13,106),
('MBway',14,107);


/************************************
*  INSERIR DADOS NA TABELA AVALIA��ES
*************************************/
INSERT INTO Avaliacoes VALUES
(1,2,2,'P',4),
(1,2,2,'C',4),
(3,3,3,'P',4),
(3,3,3,'C',5),
(5,7,10,'P',3),
(5,7,10,'C',2),
(6,9,6,'P',1),
(6,9,6,'C',5),
(7,6,1,'P',2),
(7,6,1,'C',4),
(8,4,7,'P',1),
(8,4,7,'C',5),
(9,11,4,'P',4),
(9,11,4,'C',5),
(10,14,9,'P',3),
(10,14,9,'C',1),
(11,4,15,'P',1),
(11,4,15,'C',4),
(12,5,14,'P',3),
(12,5,14,'C',5),
(13,6,11,'P',3),
(13,6,11,'C',1),
(14,9,7,'P',1),
(14,9,7,'C',3),
(15,11,4,'P',5),
(15,11,4,'C',5),
(16,13,13,'P',3),
(16,13,13,'C',1),
(17,14,9,'P',1),
(17,14,9,'C',4),
(18,11,11,'P',5),
(18,11,11,'C',5),
(19,13,2,'P',3),
(19,13,2,'C',1),
(22,5,2,'P',1),
(22,5,2,'C',5),
(23,6,5,'P',4),
(23,6,5,'C',5),
(25,11,8,'P',3),
(25,11,8,'C',1),
(26,5,10,'P',1),
(26,5,10,'C',4),
(27,6,6,'P',5),
(27,6,6,'C',5),
(28,9,1,'P',3),
(28,9,1,'C',1),
(29,14,7,'P',1),
(29,14,7,'C',5),
(32,5,15,'P',5),
(32,5,15,'C',5),
(33,6,14,'P',3),
(33,6,14,'C',1),
(34,9,11,'P',1),
(34,9,11,'C',5),
(35,11,7,'P',5),
(35,11,7,'C',5),
(37,4,13,'P',3),
(37,4,13,'C',1),
(38,6,9,'P',1),
(38,6,9,'C',4),
(39,11,11,'P',4),
(39,11,11,'C',5),
(40,11,2,'P',3),
(40,11,2,'C',1),
(41,4,12,'P',1),
(41,4,12,'C',4),
(42,5,12,'P',5),
(42,5,12,'C',5),
(43,6,2,'P',3),
(43,6,2,'C',1),
(44,9,5,'P',1),
(44,9,5,'C',3),
(45,11,3,'P',4),
(45,11,3,'C',5),
(47,14,10,'P',3),
(47,14,10,'C',1),
(48,15,6,'P',1),
(48,15,6,'C',3),
(49,14,1,'P',5),
(49,14,1,'C',5),
(50,14,7,'P',3),
(50,14,7,'C',1),
(53,6,15,'P',1),
(53,6,15,'C',3),
(54,9,14,'P',4),
(54,9,14,'C',5),
(55,11,11,'P',3),
(55,11,11,'C',1),
(56,13,7,'P',1),
(56,13,7,'C',3),
(57,14,4,'P',2),
(57,14,4,'C',5),
(58,15,13,'P',3),
(58,15,13,'C',1),
(63,6,12,'P',1),
(63,6,12,'C',3),
(64,9,2,'P',4),
(64,9,2,'C',5),
(65,11,5,'P',3),
(65,11,5,'C',1),
(66,13,3,'P',5),
(66,13,3,'C',5),
(67,14,8,'P',3),
(67,14,8,'C',1),
(68,15,10,'P',5),
(68,15,10,'C',5),
(70,14,1,'P',3),
(70,14,1,'C',1),
(73,6,9,'P',4),
(73,6,9,'C',5),
(74,9,15,'P',3),
(74,9,15,'C',1),
(75,11,14,'P',3),
(75,11,14,'C',5),
(76,13,11,'P',3),
(76,13,11,'C',1),
(77,14,7,'P',3),
(77,14,7,'C',5),
(78,15,4,'P',3),
(78,15,4,'C',1),
(79,14,13,'P',5),
(79,14,13,'C',5),
(82,5,2,'P',3),
(82,5,2,'C',1),
(83,6,12,'P',5),
(83,6,12,'C',5),
(85,11,2,'P',3),
(85,11,2,'C',1),
(86,13,5,'P',5),
(86,13,5,'C',5),
(88,15,8,'P',3),
(88,15,8,'C',1),
(89,14,10,'P',4),
(89,14,10,'C',5),
(92,5,7,'P',3),
(92,5,7,'C',1),
(94,9,9,'P',3),
(94,9,9,'C',5),
(95,11,15,'P',3),
(95,11,15,'C',1),
(96,13,14,'P',4),
(96,13,14,'C',5),
(97,14,11,'P',3),
(97,14,11,'C',1),
(98,15,7,'P',4),
(98,15,7,'C',5),
(99,14,4,'P',3),
(99,14,4,'C',1),
(100,14,13,'P',3),
(100,14,13,'C',5),
(102,5,6,'P',3),
(102,5,6,'C',1),
(104,9,9,'P',3),
(104,9,9,'C',5),
(105,11,15,'P',3),
(105,11,15,'C',1),
(106,13,12,'P',4),
(106,13,12,'C',5),
(107,14,10,'P',3),
(107,14,10,'C',1);


