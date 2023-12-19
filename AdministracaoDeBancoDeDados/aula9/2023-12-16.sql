DROP DATABASE aula9;
CREATE DATABASE aula9;
USE aula9;
CREATE TABLE funcionario(
	COD_FUNC INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	NASC_FUNC INT,
	NOME_FUNC VARCHAR(50) NOT NULL,
	IDADE_FUNC INT NOT NULL,
	BONUS_FUNC DECIMAL(7,2),
	SAL_FUNC DECIMAL(7,	2)
);

INSERT INTO funcionario(NASC_FUNC, NOME_FUNC, IDADE_FUNC, BONUS_FUNC, SAL_FUNC) VALUES
		(1, 'HELENA APARECIDA', 62, 0, 5000),
		(1, 'DANIEL APARECIDO', 61, 0, 7000),
		(2, 'JO�O CARLOS', 38, 0, 1000),
		(2, 'ROBERTA SILVA', 32, 0, 500),
		(3, 'GIOVANNA', 18, 0, 500),
		(3, 'FERNANDO TORRES', 35, 0, 2500),
		(4, 'JAIRO BATISTA', 33, 0, 1800);
--vis�es
--seleciono o c�digo, nome, idade e local de crescimento de todas as pessoas com mais de 50 anos.
CREATE VIEW VW_RH AS
	SELECT COD_FUNC, IDADE_FUNC, NOME_FUNC, NASC_FUNC
		FROM funcionario
			WHERE IDADE_FUNC >=50;
--altero sal�rio e o bonus
CREATE VIEW VW_FINANCEIRO AS
	SELECT COD_FUNC, BONUS_FUNC, SAL_FUNC
		FROM funcionario
			WHERE COD_FUNC = 8;


--insiro dados 
INSERT VW_RH (IDADE_FUNC, NOME_FUNC, NASC_FUNC) VALUES (64, 'JODISCLEISSON ALBUQUERQUE', 2);

--altero o sal�rio
UPDATE VW_FINANCEIRO
	SET SAL_FUNC = 1000, BONUS_FUNC = 100
		WHERE COD_FUNC = 8;

--apago a vis�o
DROP VIEW VW_FINANCEIRO;

--seleciono tudo da vis�o	
SELECT * FROM VW_RH;

--apago um registro da vis�o
DELETE VW_RH WHERE COD_FUNC=10;  

--procedimentos armazenados
--adiciona um b�nus de 50% do sal�rio
CREATE PROCEDURE pagarDecimoTerceiroSalario
	AS
		BEGIN
			UPDATE funcionario
			SET BONUS_FUNC = SAL_FUNC * 0.5;
		END;

--remove o b�nus de 50% do sal�rio
CREATE PROCEDURE retirarDecimoTerceiroSalario
	AS 
		BEGIN
			UPDATE funcionario
			SET BONUS_FUNC = 0;
		END;

SELECT * FROM funcionario;
EXECUTE pagarDecimoTerceiroSalario;
SELECT * FROM funcionario;
EXECUTE retirarDecimoTerceiroSalario;
SELECT * FROM funcionario;

--AGORA � COM VOC�S: 
--junte os dois procedimentos em um s�, que seja gen�rico, 
--e que consiga pagar e retirar o 13� sal�rio 

--gatilho
CREATE TRIGGER supersalario
	ON funcionario
		AFTER INSERT
			AS
				BEGIN
					IF EXISTS(SELECT 1 FROM inserted WHERE SAL_FUNC > 10000)
						BEGIN
							RAISERROR ('N�o � poss�vel inserir funcion�rios com supersal�rio',16,1);
							ROLLBACK TRANSACTION;
						END
				END; 

--testando o gatilho
INSERT INTO funcionario(NASC_FUNC, NOME_FUNC, IDADE_FUNC, BONUS_FUNC, SAL_FUNC) VALUES
		(2, 'KATE ALBUQUERQUE', 60, 0, 16000);

--alterando o gatilho
ALTER TRIGGER supersalario 
	ON funcionario
		AFTER INSERT
			AS
				BEGIN
					IF EXISTS(SELECT 1 FROM inserted WHERE SAL_FUNC > 15000)
						BEGIN
							RAISERROR ('N�o � poss�vel inserir funcion�rios com supersal�rio',16,1);
							ROLLBACK TRANSACTION;
						END
				END;

--apagando um gatilho
DROP TRIGGER supersalario;