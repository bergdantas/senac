--crio a base de dados caso ela ainda n�o exista
IF NOT EXISTS(SELECT name FROM sys.databases WHERE name='aula7')
	BEGIN
		CREATE DATABASE aula7;
	END
ELSE
	BEGIN
		PRINT 'A base de dados j� existe'
	END;