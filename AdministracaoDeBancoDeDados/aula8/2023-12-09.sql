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
			BONUS_FUNC FLOAT,
			SAL_FUNC FLOAT
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
DECLARE @resultado1 VARCHAR(50);

--inicializo a variável
SET @resultado1 = 'Godofredo Albuquerque';

--declaro e inicializo uma variável
DECLARE @resultado2 VARCHAR(50) = 'Maslayane Soares';

--escrevo o valor da variável no prompt 
PRINT @resultado1;
PRINT @resultado2;

---EXEMPLO 01
--declaro uma variável
DECLARE @nome VARCHAR(50);

--crio o select, retornando um nome e o armazeno em uma variável 
SELECT @nome = NOME_FUNC 
	FROM FUNCIONARIO
		WHERE COD_FUNC = 1

--escrevo o valor da variável no prompt 
PRINT @nome;

--EXEMPLO 02
--uso a variável so exemplo anterior em outro select
SELECT SAL_FUNC
	FROM FUNCIONARIO
		WHERE NOME_FUNC = @nome;

--EXEMPLO 03
--estrutura condicional IF
DECLARE @ModificaSalario INT, @aumenta25 DECIMAL(3,2) = 0.25, @aumenta5 DECIMAL(3,2)=0.05;
SELECT @ModificaSalario = IDADE_FUNC FROM funcionario WHERE COD_FUNC=1;

--seleciono o funcionario 1, aplicando o aumento de acordo com a idade
IF (@ModificaSalario) > 50
	BEGIN
		UPDATE funcionario SET SAL_FUNC = SAL_FUNC + (@aumenta25 * SAL_FUNC) WHERE COD_FUNC=1;
	END
ELSE
	BEGIN
		UPDATE funcionario SET SAL_FUNC = SAL_FUNC + (@aumenta5 * SAL_FUNC) WHERE COD_FUNC=1;
	END

--EXEMPLO 04
--estrutura condicional CASE
SELECT	COD_FUNC, IDADE_FUNC, BONUS_FUNC, SAL_FUNC, 'Nacionalidade' =
	CASE NASC_FUNC
		WHEN 1 THEN 'Brasileiro(a)'
		WHEN 2 THEN 'Chinês(a)'
		WHEN 3 THEN 'Japonês(a)'
		ELSE 'Lugar de nascimento desconhecido'
	END
FROM funcionario;

--EXEMPLO 05
--estrutura condicional CASE
SELECT	COD_FUNC, NOME_FUNC, IDADE_FUNC, BONUS_FUNC, SAL_FUNC, 'CLASSIFICAÇÃO' =
	CASE
		WHEN IDADE_FUNC BETWEEN 16 AND 17 THEN 'Jovem aprendiz'
		WHEN IDADE_FUNC BETWEEN 18 AND 30 THEN 'Trabalhador jovem'
		WHEN IDADE_FUNC BETWEEN 31 AND 40 THEN 'Trabalhor adulto - fase 1'
		WHEN IDADE_FUNC BETWEEN 41 AND 50 THEN 'Trabalhor adulto - fase 2'
		WHEN IDADE_FUNC BETWEEN 51 AND 60 THEN 'Trabalhor adulto - fase 3'
		WHEN IDADE_FUNC BETWEEN 61 AND 65 THEN 'Trabalhor adulto - fase 4'
		WHEN IDADE_FUNC > 65 THEN 'Trabalhor aposentado'
	END
FROM funcionario;

--EXEMPLO 06
--estrutura de repetição WHILE
DECLARE @salario DECIMAL(6,2), @bonus DECIMAL(6,2); 

SELECT @salario = SAL_FUNC, @bonus = BONUS_FUNC FROM  funcionario WHERE COD_FUNC = 7
	WHILE @salario < 1000
		BEGIN
			SET @salario = @salario * 0.9;
			SET @bonus = @bonus + @salario;
			IF @bonus < 1000
				BEGIN
					SET @bonus = 1000;
					BREAK
				END
			ELSE
				BEGIN
					CONTINUE
				END
		END
		UPDATE funcionario SET BONUS_FUNC = @bonus WHERE COD_FUNC = 7;
PRINT @bonus;
PRINT @salario;