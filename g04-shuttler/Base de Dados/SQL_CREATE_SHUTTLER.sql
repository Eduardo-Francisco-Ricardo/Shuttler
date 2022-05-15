drop database Shuttler
create database Shuttler
use Shuttler
--------------
-------------------
CREATE SCHEMA Servico AUTHORIZATION [dbo]
--Trajetos,Reservas, endereços e tarifas
CREATE SCHEMA Pessoa AUTHORIZATION [dbo]
--Passageiros, avaliacoes e pontos,
CREATE SCHEMA Financas AUTHORIZATION [dbo]
--Faturas, ,Descontos,metodos de pagamento
CREATE SCHEMA RH AUTHORIZATION [dbo]
--Empresas,Condutores e Veiculos


-------------------
CREATE TABLE RH.Empresas
(
  emp_id INT NOT NULL PRIMARY KEY IDENTITY,
  emp_nome varchar (150) NOT NULL,
  emp_nif char(9) NOT NULL CHECK (emp_nif NOT LIKE '%[^0-9]%'), --RI03 - Apenas suporta numeros de 0 a 9 e tem de preencher o 9 digitos
  emp_morada varchar (200) NOT NULL,
  emp_email varchar (255) NOT NULL,
  emp_telefone char(9) NOT NULL CHECK (emp_telefone NOT LIKE '%[^0-9]%'),--RI03 - Apenas suporta numeros de 0 a 9 e tem de preencher os 9 digitos
  unique(emp_nif),
  unique(emp_email),
  unique(emp_telefone)
)


CREATE TABLE Utilizador(
  Ut_id int not null primary key identity(1,1),
  Ut_nomeP varchar(20) NOT NULL,
  Ut_nomeA varchar (20) NOT NULL,
  Ut_DataNasc date not null check (datediff(year,Ut_Datanasc,getdate())>18), --RI01-- tem de ter mais de 18 anos para poder efetuar registo
  Ut_idade as datediff(year,Ut_DataNasc,getdate()),
  Ut_tlm char(9) NOT NULL CHECK (Ut_tlm NOT LIKE '%[^0-9]%'),
  Ut_email varchar(255) NOT NULL,
  Ut_username varchar(50) NOT NULL,
  Ut_password varchar(255) NOT NULL,
)

Create table Categorias(
	cat_id int not null primary key identity,
	cat_tipo varchar(25) not null DEFAULT 'Standard'-- RI04 - Categoria predefinida é "Standart"
	check(cat_tipo='Standard' or cat_tipo='Quality' or cat_tipo='Premium') ,
	cat_desc varchar(250) not null ,
	cat_preco_base float not null,
	cat_preco_quilometro float not null
)

CREATE TABLE RH.Veiculos
(
  vcl_id INT NOT NULL PRIMARY KEY IDENTITY,
  vcl_numero INT NOT NULL,
  vcl_matricula varchar(8) NOT NULL,
  vcl_marca varchar(15) NOT NULL,
  vcl_modelo varchar(50) NOT NULL,
  vcl_lotacao INT NOT NULL,
  vcl_cat_id INT NOT NULL,
  FOREIGN KEY (vcl_cat_id) REFERENCES categorias(cat_id)
)

CREATE table RH.Condutores
(
  cdt_id INT NOT NULL PRIMARY KEY IDENTITY,
  cdt_Ut_id int not null,
  cdt_Cconducao varchar(15) NOT NULL,
  cdt_Data_Emissao_Cconducao date not null,
  cdt_vcl_id int not null,
  cdt_emp_id INT NOT NULL,
  FOREIGN KEY (cdt_emp_id) REFERENCES RH.Empresas(emp_id),
  FOREIGN KEY (cdt_Ut_id) references Utilizador (Ut_id),
  FOREIGN KEY (cdt_vcl_id) REFERENCES RH.Veiculos (vcl_id),
  UNIQUE (cdt_Cconducao),
  UNIQUE (cdt_vcl_id)
)




CREATE TABLE Pessoa.Passageiros
(
  psg_id INT NOT NULL PRIMARY KEY IDENTITY,
  psg_ut_id int not null,
  psg_num_CC char(8) not null CHECK (psg_num_CC NOT LIKE '%[^0-9]%'),--RI03 - Apenas suporta numeros de 0 a 9 e tem de preencher os 8 digitos
  psg_ranking varchar(15) not null DEFAULT 'Ocasional'-- RI04 - Ranking predefinido é "Ocasional"
	check(psg_ranking='Ocasional' or
	      psg_ranking='Regular' or
		  psg_ranking='Executivo'),--rankings atualizam consoante numero de pontos
  FOREIGN KEY (psg_ut_id) references Utilizador (Ut_id)
)



CREATE TABLE Servico.enderecos
(
  edr_id int not null primary key identity,
  edr_endereco varchar (200) not null,
  edr_cidade varchar (30) not null,
  edr_CPostal varchar (8) not null
)

CREATE TABLE Servico.Trajetos
(
  trj_id INT NOT NULL PRIMARY KEY IDENTITY,
  trj_psg_id int not null,
  trj_cdt_id INT NOT NULL,
  trj_vcl_cat int not null,
  trj_origem int NOT NULL,-- 
  trj_destino INT NOT NULL,
  trj_kms INT NOT NULL,
  trj_data_partida datetime NOT NULL,
  trj_data_chegada datetime NOT NULL,
  trj_duracao as datediff(minute,trj_data_partida,trj_data_chegada), 
  foreign key (trj_vcl_cat) references Categorias (cat_id),
  foreign key (trj_psg_id) references Pessoa.Passageiros (psg_id),
  FOREIGN KEY (trj_cdt_id) REFERENCES RH.Condutores(cdt_id),
  FOREIGN KEY (trj_origem) REFERENCES Servico.Enderecos(edr_id),
  FOREIGN KEY (trj_destino) REFERENCES Servico.Enderecos(edr_id),
  check (trj_data_chegada > trj_data_partida)
)

CREATE TABLE Financas.Descontos
(
  dct_id INT NOT NULL PRIMARY KEY IDENTITY(0,1),
  dct_desc varchar(35) NOT NULL,
  dct_pctg float NOT NULL,
  dct_data_validade date NOT NULL,
  dct_validade as (datediff(day,getdate(),dct_data_validade)),
)

CREATE TABLE Servico.Reservas
(
  rsv_id INT NOT NULL PRIMARY KEY IDENTITY,
  rsv_trj_id INT NOT NULL,
  rsv_psg_id INT NOT NULL,
  rsv_num_lugares INT NOT NULL,
  rsv_preco_unit float NOT NULL,
  rsv_id_desconto int NOT NULL,
  rsv_preco_total as ((rsv_preco_unit * rsv_num_lugares) - (rsv_preco_unit * (rsv_id_desconto*0.1))),
  rsv_data date NOT NULL,
  rsv_estado varchar(15) default 'pendente' check (rsv_estado='pendente' or rsv_estado ='concluida' or rsv_estado='cancelada'), -- estado da reserva
  rsv_penalizacao as ((rsv_preco_unit - (rsv_preco_unit * (rsv_id_desconto*0.1)))*0.2),
  unique (rsv_trj_id),
  FOREIGN KEY (rsv_psg_id) REFERENCES Pessoa.Passageiros(psg_id),
  FOREIGN KEY (rsv_trj_id) REFERENCES Servico.Trajetos(trj_id),
  FOREIGN KEY (rsv_id_desconto) REFERENCES Financas.Descontos(dct_id)
)


CREATE TABLE Avaliacoes
(
  av_id INT NOT NULL PRIMARY KEY IDENTITY,
  av_id_rsv int not null,
  av_id_psg INT NOT NULL,
  av_id_cdt INT NOT NULL,
  av_Avaliador varchar (1) check (av_Avaliador='C' or  av_Avaliador='P'), 
  av_numeroAv INT NOT NULL check (av_numeroAv<=5),  --RI05 - Aceita apenas numeros entre 1 e 5 
  FOREIGN KEY (av_id_cdt) REFERENCES RH.Condutores(cdt_id),
  FOREIGN KEY (av_id_psg) REFERENCES Pessoa.PassageiroS(psg_id),
  FOREIGN KEY (av_id_rsv) REFERENCES Servico.Reservas (rsv_id)
)

CREATE TABLE Pessoa.Pontos
(
  pnt_id INT NOT NULL PRIMARY KEY IDENTITY,
  pnt_pontos INT NOT NULL,
  pnt_id_psg int not null,
  pnt_id_reserva int not null,
  foreign key (pnt_id_reserva) references Servico.reservas (rsv_id)
)



CREATE TABLE Financas.Faturas(
  fat_id INT NOT NULL PRIMARY KEY IDENTITY,
  fat_rsv_id int not null,
  fat_nif_emp AS '501254785',--nif da SHUTTLER
  fat_nif_psg char(9) null CHECK (fat_nif_psg NOT LIKE '%[^0-9]%'), --RI03 - Apenas suporta numeros de 0 a 9 e tem de preencher os 9 digitos
  fat_data datetime NOT NULL,
  FOREIGN KEY (fat_rsv_id) REFERENCES Servico.Reservas (rsv_id)
)


CREATE TABLE Financas.metodos_pagamento
(
  mp_id int not null PRIMARY KEY IDENTITY (1,1),
  mp_tipo varchar(15) not null,
  mp_psg_id int not null,
  mp_rsv_id int not null,
  FOREIGN KEY (mp_psg_id) REFERENCES Pessoa.Passageiros (psg_id),
   FOREIGN KEY (mp_rsv_id) REFERENCES Servico.Reservas (rsv_id)
)

