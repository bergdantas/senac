--se a base de dados existir, irei selecioná-la
IF EXISTS(SELECT name FROM sys.databases WHERE name='aula7')
	BEGIN
		USE aula7;
	END
ELSE
	BEGIN
		PRINT 'A base de dados não foi encontrada';
	END;

--crio as tabelas na base de dados, caso ainda não existam
IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE 
	TABLE_NAME = 'cliente')
	BEGIN
		CREATE TABLE cliente(
			idCliente INT IDENTITY(1,1) PRIMARY KEY,
			nome VARCHAR(50)
		);
	END
ELSE
	BEGIN
		PRINT 'A tabela já existe';
	END 

IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE 
	TABLE_NAME = 'pedido')
	BEGIN
		CREATE TABLE pedido(
			idPedido INT IDENTITY(1,1) PRIMARY KEY,
			numeroDoPedido INT NOT NULL,
			idCliente INT FOREIGN KEY(idCliente) REFERENCES cliente(idCliente)
		);
	END
ELSE
	BEGIN
		PRINT 'A tabela já existe';
	END 

IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE 
	TABLE_NAME = 'item')
	BEGIN
		CREATE TABLE item(
			idItem INT IDENTITY(1,1) PRIMARY KEY,
			nomeProduto VARCHAR(30) NOT NULL,
			preco DECIMAL(5,2) NOT NULL,
		);
	END
ELSE
	BEGIN
		PRINT 'A tabela já existe';
	END 

IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE 
	TABLE_NAME = 'itensPedido')
	BEGIN
		CREATE TABLE itensPedido(
			quantidade INT NOT NULL,
			idPedido INT FOREIGN KEY(idPedido) REFERENCES pedido(idPedido),
			idItem  INT FOREIGN KEY(idItem) REFERENCES item(idItem)
		);
	END
ELSE
	BEGIN
		PRINT 'A tabela já existe';
	END 