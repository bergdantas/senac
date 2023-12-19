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
		(2, 'JOÃO CARLOS', 38, 0, 1000),
		(2, 'ROBERTA SILVA', 32, 0, 500),
		(3, 'GIOVANNA', 18, 0, 500),
		(3, 'FERNANDO TORRES', 35, 0, 2500),
		(4, 'JAIRO BATISTA', 33, 0, 1800);
--visões
--seleciono o código, nome, idade e local de crescimento de todas as pessoas com mais de 50 anos.
CREATE VIEW VW_RH AS
	SELECT COD_FUNC, IDADE_FUNC, NOME_FUNC, NASC_FUNC
		FROM funcionario
			WHERE IDADE_FUNC >=50;
--altero salário e o bonus
CREATE VIEW VW_FINANCEIRO AS
	SELECT COD_FUNC, BONUS_FUNC, SAL_FUNC
		FROM funcionario
			WHERE COD_FUNC = 8;


--insiro dados 
INSERT VW_RH (IDADE_FUNC, NOME_FUNC, NASC_FUNC) VALUES (64, 'JODISCLEISSON ALBUQUERQUE', 2);

--altero o salário
UPDATE VW_FINANCEIRO
	SET SAL_FUNC = 1000, BONUS_FUNC = 100
		WHERE COD_FUNC = 8;

--apago a visão
DROP VIEW VW_FINANCEIRO;

--seleciono tudo da visão	
SELECT * FROM VW_RH;

--apago um registro da visão
DELETE VW_RH WHERE COD_FUNC=10;  

--procedimentos armazenados
--adiciona um bônus de 50% do salário
CREATE PROCEDURE pagarDecimoTerceiroSalario
	AS
		BEGIN
			UPDATE funcionario
			SET BONUS_FUNC = SAL_FUNC * 0.5;
		END;

--remove o bônus de 50% do salário
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

--AGORA É COM VOCÊS: 
--junte os dois procedimentos em um só, que seja genérico, 
--e que consiga pagar e retirar o 13º salário 

--gatilho
CREATE TRIGGER supersalario
	ON funcionario
		AFTER INSERT
			AS
				BEGIN
					IF EXISTS(SELECT 1 FROM inserted WHERE SAL_FUNC > 10000)
						BEGIN
							RAISERROR ('Não é possível inserir funcionários com supersalário',16,1);
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
							RAISERROR ('Não é possível inserir funcionários com supersalário',16,1);
							ROLLBACK TRANSACTION;
						END
				END;

--apagando um gatilho
DROP TRIGGER supersalario;