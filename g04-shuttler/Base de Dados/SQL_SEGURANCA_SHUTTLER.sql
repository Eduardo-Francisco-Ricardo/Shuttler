
USE master
GO

CREATE LOGIN [DbAdmin] WITH PASSWORD=N'pword'
CREATE LOGIN [DbJunior] WITH PASSWORD=N'pword'
CREATE LOGIN [DbAssistant] WITH PASSWORD=N'pword'
CREATE LOGIN [DbReader] WITH PASSWORD=N'pword'


CREATE USER [User1] FOR LOGIN [DbAdmin] WITH DEFAULT_SCHEMA=RH
CREATE USER [User2] FOR LOGIN [DbAssistant] WITH DEFAULT_SCHEMA=Financas
CREATE USER [User3] FOR LOGIN [DbJunior] WITH DEFAULT_SCHEMA=Pessoa
CREATE USER [User4] FOR LOGIN [DbReader] WITH DEFAULT_SCHEMA=Servico



CREATE ROLE [Gestor] AUTHORIZATION [dbo]
GO
CREATE ROLE [Leitor] AUTHORIZATION [dbo]
GO


GRANT ALTER ON SCHEMA::Financas TO [Gestor]
GO
GRANT CONTROL ON SCHEMA::[Financas] TO [Gestor]
GO
GRANT SELECT ON SCHEMA::[Financas] TO [Gestor]

GRANT ALTER ON SCHEMA::RH TO [Gestor]
GO
GRANT CONTROL ON SCHEMA::RH TO [Gestor]
GO
GRANT SELECT ON SCHEMA::RH TO [Gestor]

GRANT ALTER ON SCHEMA::Pessoa TO [Gestor]
GO
GRANT CONTROL ON SCHEMA::Pessoa TO [Gestor]
GO
GRANT SELECT ON SCHEMA::Pessoa TO [Gestor]

GRANT ALTER ON SCHEMA::Servico TO [Gestor]
GO
GRANT CONTROL ON SCHEMA::Servico TO [Gestor]
GO
GRANT SELECT ON SCHEMA::Servico TO [Gestor]

GRANT ALTER ON SCHEMA::Servico TO [Gestor]
GO
GRANT CONTROL ON SCHEMA::Servico TO [Gestor]
GO
GRANT SELECT ON SCHEMA::Servico TO [Gestor]

GO
GRANT CONTROL ON SCHEMA::[dbo] TO [Gestor]
GO
GRANT DELETE ON SCHEMA::[dbo] TO [Gestor]
GO
GRANT INSERT ON SCHEMA::[dbo] TO [Gestor]
GO
GRANT SELECT ON SCHEMA::[dbo] TO [Gestor]
GO
GRANT UPDATE ON SCHEMA::[dbo] TO [Gestor]
GO
GRANT REFERENCES ON SCHEMA::[dbo] TO [Gestor]
GO
GRANT CREATE TABLE TO [Gestor]
GO

GRANT SELECT ON SCHEMA::[dbo] TO [Leitor]
GRANT SELECT ON OBJECT::RankingPontosPassageiros TO [Leitor]
DENY SELECT ON OBJECT::Media_Estrelas_PSG TO Leitor


EXEC sp_addrolemember N'Gestor', N'User1'
GO
EXEC sp_addrolemember N'Gestor', N'User2'
GO
EXEC sp_addrolemember N'Gestor', N'User3'
GO
EXEC sp_addrolemember N'Leitor ', N'User4'

EXECUTE AS USER='User1';
GO


REVERT
insert into Financas.metodos_pagamento values ('MBway',15,1)
select*from Financas.metodos_pagamento

revert

EXECUTE AS USER='User4';
GO

insert into [Financas].[metodos_pagamento] values ('MBway',2,1)
select*from Financas.Faturas
select*from dbo.Avaliacoes
select*from dbo.Media_Estrelas_PSG
SELECT*FROM dbo.RankingPontosPassageiros WHERE PSG_NOMEP='PEDRO'