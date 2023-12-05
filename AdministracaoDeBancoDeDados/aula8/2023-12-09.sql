--crio a base de dados se ela ainda não existir
IF NOT EXISTS(SELECT name FROM sys.databases WHERE name='aula8')
	BEGIN
		CREATE DATABASE aula8;
	END
ELSE
	BEGIN
		PRINT 'A base de dados já existe'
	END;

--se a base de dados existir, irei selecioná-la
IF EXISTS(SELECT name FROM sys.databases WHERE name='aula8')
	BEGIN
		USE aula8;
	END
ELSE
	BEGIN
		PRINT 'A base de dados não foi encontrada';
	END;

--crio as tabelas na base de dados, caso ainda não existam
IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE 
	TABLE_NAME = 'funcionario')
	BEGIN
		CREATE TABLE funcionario(
			COD_FUNC INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
			NASC_FUNC INT NOT NULL,
			NOME_FUNC VARCHAR(50) NOT NULL,
			IDADE_FUNC INT NOT NULL,
			BONUS_FUNC FLOAT NOT NULL,
			SAL_FUNC FLOAT NOT NULL
		);
	END
ELSE
	BEGIN
		PRINT 'A tabela já existe';
	END; 

--insiro valores na base de dados
INSERT INTO funcionario(NASC_FUNC, NOME_FUNC, IDADE_FUNC, BONUS_FUNC, SAL_FUNC) VALUES
		(1, 'HELENA APARECIDA', 62, 0, 5000),
		(1, 'DANIEL APARECIDO', 61, 0, 7000),
		(2, 'JOÃO CARLOS', 38, 0, 1000),
		(2, 'ROBERTA SILVA', 32, 0, 500),
		(3, 'GIOVANNA', 18, 0, 500),
		(3, 'FERNANDO TORRES', 35, 0, 2500),
		(4, 'JAIRO BATISTA', 33, 0, 1800);

--crio variaveis
DECLARE @nome VARCHAR(50);

--under...
SELECT @nome = NOME_FUNC 
	FROM FUNCIONARIO
		WHERE COD_FUNC = 1