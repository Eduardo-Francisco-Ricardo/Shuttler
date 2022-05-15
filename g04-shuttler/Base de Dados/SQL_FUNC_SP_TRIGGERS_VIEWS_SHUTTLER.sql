------------------------------------------------------------------
--------------------------TRIGGERS--------------------------------
CREATE TRIGGER Inserir_categorias
ON [Categorias]
AFTER INSERT
AS
BEGIN
	PRINT('-----------------------------------')
	PRINT('Categoria(s) registada(s) com sucesso!')
	PRINT('-----------------------------------')
END
-------------------------------------------------------------
CREATE TRIGGER Inserir_veiculos
ON RH.[Veiculos]
AFTER INSERT
AS
BEGIN
	PRINT('-----------------------------------')
	PRINT('Veiculo(s) registado(s) com sucesso!')
	PRINT('-----------------------------------')
END
-------------------------------------------------------------
CREATE TRIGGER Inserir_condutores
ON RH.[Condutores]
AFTER INSERT
AS
BEGIN
	PRINT('-----------------------------------')
	PRINT('Condutor(es) registado(s) com sucesso!')
	PRINT('-----------------------------------')
END
-------------------------------------------------------------
CREATE TRIGGER Inserir_passageiros
ON Pessoa.[Passageiros]
AFTER INSERT
AS
BEGIN
	PRINT('-----------------------------------')
	PRINT('Passageiro(s) registado(s) com sucesso!')
	PRINT('-----------------------------------')
END
-------------------------------------------------------------
CREATE TRIGGER Inserir_trajetos
ON Servico.[Trajetos]
AFTER INSERT
AS
BEGIN
	PRINT('-----------------------------------')
	PRINT('Trajeto(s) registado(s) com sucesso!')
	PRINT('-----------------------------------')
END
-------------------------------------------------------------
CREATE TRIGGER Inserir_descontos
ON Financas.[Descontos]
AFTER INSERT
AS
BEGIN
	PRINT('-----------------------------------')
	PRINT('Desconto(s) registado(s) com sucesso!')
	PRINT('-----------------------------------')
END
-------------------------------------------------------------
CREATE TRIGGER Inserir_reservas
ON Servico.[Reservas]
AFTER INSERT
AS
BEGIN
	PRINT('-----------------------------------')
	PRINT('Reserva(s) registada(s) com sucesso!')
	PRINT('-----------------------------------')
END
-------------------------------------------------------------
CREATE TRIGGER Inserir_enderecos
ON Servico.[Enderecos]
AFTER INSERT
AS
BEGIN
	PRINT('-----------------------------------')
	PRINT('Endereço(s) registado(s) com sucesso!')
	PRINT('-----------------------------------')
END
-------------------------------------------------------------
CREATE TRIGGER Inserir_tarifas
ON Financas.[Tarifas]
AFTER INSERT
AS
BEGIN
	PRINT('-----------------------------------')
	PRINT('Tarifa(s) registada(s) com sucesso!')
	PRINT('-----------------------------------')
END
-------------------------------------------------------------
CREATE TRIGGER Inserir_avaliacao
ON [dbo].[Avaliacoes]
AFTER INSERT
AS
BEGIN
	PRINT('-----------------------------------')
	PRINT('Avaliação registada com sucesso!')
	PRINT('-----------------------------------')
END

-------------------------------------------------------------
CREATE TRIGGER Inserir_mPagamento
ON Financas.[metodos_pagamento]
AFTER INSERT
AS
BEGIN
	PRINT('-----------------------------------')
	PRINT('Método(s) de pagamento registado(s) com sucesso!')
	PRINT('-----------------------------------')
END

-------------------------------------------------------------
CREATE TRIGGER Inserir_pontos
ON Pessoa.[Pontos]
AFTER INSERT
AS
BEGIN
	PRINT('-----------------------------------')
	PRINT('Ponto(s) registado(s) com sucesso!')
	PRINT('-----------------------------------')
END

-------------------------------------------------------------
CREATE TRIGGER Inserir_faturas
ON Financas.[Faturas]
AFTER INSERT
AS
BEGIN
	PRINT('-----------------------------------')
	PRINT('Fatura(s) registada(s) com sucesso!')
	PRINT('-----------------------------------')
END


--------------------------------------------------------------------------------------------------
--------------------------------STORED PROCEDURES-------------------------------------------------
--INSERIR OU ATUALIZAR NOVOS DADOS NA TABELA PASSAGEIROS
CREATE PROCEDURE sp_InserirAtualizarDados
(   @nomeP VARCHAR(50),
    @nomeA VARCHAR(50),
	@DataNasc date,
	@Ccidadao varchar(8),
	@tlm char(9),
    @email VARCHAR(50),
	@username varchar(50),
	@password varchar(255),
    @ranking VARCHAR(15))
AS
BEGIN set nocount on;
    IF EXISTS (SELECT 1 FROM [Passageiros]
    WHERE psg_username=@username
	)
    BEGIN
        UPDATE [Passageiros] SET 
	       psg_nomeP = @nomeP,
	       psg_nomeA = @nomeA,
		   psg_DataNasc =@DataNasc,
		   psg_num_CC=@Ccidadao,
		   psg_tlm = @tlm,
		   psg_email =@email,
		   psg_username=@username,
		   psg_password=@password,
		   psg_ranking = @ranking
	       WHERE psg_username = @username
	PRINT 'Dados do passageiro atualizados!'
    END
ELSE
    BEGIN
        INSERT INTO [Passageiros] VALUES (@nomeP, @nomeA,@DataNasc,@Ccidadao,@tlm, @email, @username, @password,@ranking)
	PRINT 'Novos dados dos passageiros inseridos com sucesso!'
    END
END;

exec sp_InserirAtualizarDados 'José','Amaral','2000-01-15',12141526,914211221,'jotamaral@gmail.com',jamaral,1234,'Ocasional'

select*from Passageiros

-------------------------------------------
-- ATUALIZAR TARIFA DO TRAJETO
CREATE PROCEDURE sp_AtualizarTrajetoTarifa
(	@id_psg INT,
	@id_cdt INT,
	@origem INT,
    @destino INT,
	@kms INT,
	@data_partida datetime,
	@data_chegada datetime,
	@tarifa_id int
	)
AS
BEGIN
		INSERT INTO servico.Trajetos VALUES (@id_psg,@id_cdt,@origem, @destino, @kms, @data_partida,@data_chegada,@tarifa_id)
    IF (select trj_kms From servico.Trajetos where trj_id =(SELECT max(trj_id) FROM servico.Trajetos)) <10
	BEGIN
	set @tarifa_id=13
        UPDATE servico.Trajetos SET 
		trj_psg_id =@id_psg,
		trj_cdt_id =@id_cdt,
		trj_origem = @origem,
		trj_destino = @destino,
		trj_kms = @kms,
		trj_data_partida= @data_partida,
		trj_data_chegada= @data_chegada,
		trj_tarifa_id = @tarifa_id
		
		where trj_id =(SELECT max(trj_id) FROM servico.Trajetos)
	PRINT 'Dados do trajeto atualizados!'
    END
	ELSE
		IF (select trj_kms From servico.Trajetos where trj_id =(SELECT max(trj_id) FROM servico.Trajetos)) >11 and (select trj_kms From servico.Trajetos where trj_id =(SELECT max(trj_id) FROM servico.Trajetos)) <35
	BEGIN
	set @tarifa_id=10
        UPDATE Trajetos SET 
		trj_psg_id =@id_psg,
		trj_cdt_id =@id_cdt,
		trj_origem = @origem,
		trj_destino = @destino,
		trj_kms = @kms,
		trj_data_partida= @data_partida,
		trj_data_chegada= @data_chegada,
		trj_tarifa_id = @tarifa_id
		where trj_id =(SELECT max(trj_id) FROM servico.Trajetos)
	PRINT 'Dados do trajeto atualizados!'
    END
	ELSE
	IF (select trj_kms From servico.Trajetos where trj_id =(SELECT max(trj_id) FROM servico.Trajetos)) >36 and (select trj_kms From servico.Trajetos where trj_id =(SELECT max(trj_id) FROM servico.Trajetos)) <49
	BEGIN
	set @tarifa_id=7
        UPDATE servico.Trajetos SET 
		trj_psg_id =@id_psg,
		trj_cdt_id =@id_cdt,
		trj_origem = @origem,
		trj_destino = @destino,
		trj_kms = @kms,
		trj_data_partida= @data_partida,
		trj_data_chegada= @data_chegada,
		trj_tarifa_id = @tarifa_id
		where trj_id =(SELECT max(trj_id) FROM servico.Trajetos)
	PRINT 'Dados do trajeto atualizados!'
    END
	ELSE
		BEGIN
	    set @tarifa_id=4
        UPDATE servico.Trajetos SET  
		trj_psg_id =@id_psg,
		trj_cdt_id =@id_cdt,
		trj_origem = @origem,
		trj_destino = @destino,
		trj_kms = @kms,
		trj_data_partida= @data_partida,
		trj_data_chegada= @data_chegada,
		trj_tarifa_id = @tarifa_id
		where trj_id =(SELECT max(trj_id) FROM Servico.Trajetos)
	PRINT 'Dados do trajeto atualizados!'
	END
	END


exec sp_AtualizarTrajetoTarifa 2,2,1,3,200,'2022-04-12 14:00', '2022-04-12 16:00',1
select*from Servico.Trajetos

----------------------------------------------------------------------------------------------------------
---------------------------------------VIEWS--------------------------------------------------------------

----- View Media de estrelas dos Passageiros 
CREATE VIEW Media_Estrelas_PSG
AS
SELECT TOP 5 av_id_psg, psg_nomeP, psg_nomeA, COUNT(av_numeroAv) AS [Numero de avaliações], AVG(av_numeroAv) AS [Média de Estrelas]
FROM Avaliacoes INNER JOIN Pessoa.Passageiros ON Pessoa.Passageiros.psg_id = Avaliacoes.av_id_psg
WHERE (av_avaliador = 'C')
GROUP BY av_id_psg, psg_nomeP,psg_nomeA
ORDER BY [Média de Estrelas] DESC

SELECT * FROM Media_Estrelas_PSG

--View Média de estrelas dos condutores
CREATE VIEW Media_Estrelas_CDT
AS
SELECT TOP 5 av_id_cdt, cdt_nomeP, cdt_nomeA, COUNT(av_numeroAv) AS [Numero de avaliações], AVG(av_numeroAv) AS [Média de Estrelas]
FROM Avaliacoes INNER JOIN RH.Condutores ON RH.Condutores.cdt_id = Avaliacoes.av_id_cdt
WHERE (av_avaliador = 'P')
GROUP BY av_id_cdt, cdt_nomeP,cdt_nomeA
ORDER BY [Média de Estrelas] DESC

SELECT * FROM Media_Estrelas_CDT


--View Ranking de pontos
CREATE VIEW RankingPontosPassageiros
AS
Select psg_nomeP,psg_nomeA, SUM(pnt_pontos) as 'total de pontos'  FROM Pessoa.pontos
inner join Pessoa.Passageiros on Pessoa.Passageiros.psg_id = Pessoa.Pontos.pnt_id_psg
group by psg_nomeP,psg_nomeA

select*from RankingPontosPassageiros order by 3 desc

