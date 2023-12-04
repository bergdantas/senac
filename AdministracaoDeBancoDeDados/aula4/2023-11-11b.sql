--crio a base de dados
CREATE DATABASE aula4

--seleciono a base de dados
USE aula4

--crio as tabelas 
CREATE TABLE cliente (
	idCliente INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(50)
)
CREATE TABLE pedido(
	idPedido INT IDENTITY(1,1) PRIMARY KEY,
	numeroDoPedido INT NOT NULL,
	idCliente INT FOREIGN KEY(idCliente) REFERENCES cliente(idCliente)
)
CREATE TABLE itensPedido(
	idItem INT IDENTITY(1,1) PRIMARY KEY,
	nomeProduto VARCHAR(30) NOT NULL,
	quantidade INT NOT NULL,
	idPedido INT FOREIGN KEY(idPedido) REFERENCES pedido(idPedido)
)

--insiro dados nas tabelas
INSERT INTO cliente(nome) VALUES ('Joaquim')
INSERT INTO cliente(nome) VALUES ('João')
INSERT INTO cliente(nome) VALUES ('Mateus')
INSERT INTO pedido(numeroDoPedido, idCliente) VALUES (1,3)
INSERT INTO pedido(numeroDoPedido, idCliente)  VALUES (2,1)
INSERT INTO pedido(numeroDoPedido, idCliente)  VALUES (3,2)
INSERT INTO itensPedido(nomeProduto, quantidade,idPedido) VALUES ('Fanta Uva LATA', 2, 1)
INSERT INTO itensPedido(nomeProduto, quantidade,idPedido) VALUES ('Batata Frita', 1, 1)
INSERT INTO itensPedido(nomeProduto, quantidade,idPedido) VALUES ('Sanduíches', 3, 2)
INSERT INTO itensPedido(nomeProduto, quantidade,idPedido) VALUES ('Coca-Cola LATA', 3, 2)
INSERT INTO itensPedido(nomeProduto, quantidade,idPedido) VALUES ('Pasteis de queijo', 5, 3)
INSERT INTO itensPedido(nomeProduto, quantidade,idPedido) VALUES ('Guaraná 2L', 1, 3)

--select para testar se os dados foram adicionados
SELECT * FROM cliente
SELECT * FROM pedido
SELECT * FROM itensPedido

--seleciono o nome do cliente e o numero do pedido feito por ele
SELECT cliente.nome, pedido.numeroDoPedido
	FROM cliente JOIN pedido 
		ON cliente.idCliente = pedido.idCliente

--seleciono o nome do cliente e o numero do pedido feito por ele (modo menos usual)
SELECT cliente.nome, pedido.numeroDoPedido
	FROM cliente, pedido
		WHERE cliente.idCliente = pedido.idCliente

--seleciono os itens que cada pessoa pediu
SELECT cliente.nome, itensPedido.nomeProduto
	FROM cliente
	LEFT JOIN pedido ON cliente.idCliente = pedido.idCliente	
	LEFT JOIN itensPedido ON pedido.idPedido = itensPedido.idPedido

--seleciono a pessoa que pediu o item 5
SELECT cliente.nome, itensPedido.nomeProduto
	FROM cliente
	LEFT JOIN pedido ON cliente.idCliente = pedido.idCliente	
	LEFT JOIN itensPedido ON pedido.idPedido = itensPedido.idPedido
	WHERE itensPedido.idItem=5