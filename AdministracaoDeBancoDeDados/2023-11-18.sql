--crio a base de dados
CREATE DATABASE aula5;

--seleciono a base de dados
USE aula5

--crio as tabelas da base de dados
CREATE TABLE cliente(
	idCliente INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(50)
)
CREATE TABLE pedido(
	idPedido INT IDENTITY(1,1) PRIMARY KEY,
	numeroDoPedido INT NOT NULL,
	idCliente INT FOREIGN KEY(idCliente) REFERENCES cliente(idCliente)
)
CREATE TABLE item(
	idItem INT IDENTITY(1,1) PRIMARY KEY,
	nomeProduto VARCHAR(30) NOT NULL,
	preco DECIMAL(5,2) NOT NULL,
)
CREATE TABLE itensPedido(
	quantidade INT NOT NULL,
	idPedido INT FOREIGN KEY(idPedido) REFERENCES pedido(idPedido),
	idItem  INT FOREIGN KEY(idItem) REFERENCES item(idItem)
)

--insiro registros na base de dados
INSERT INTO cliente(nome) VALUES ('Joaquim')
INSERT INTO cliente(nome) VALUES ('João')
INSERT INTO cliente(nome) VALUES ('Mateus')
INSERT INTO pedido(numeroDoPedido, idCliente) VALUES (1,3)
INSERT INTO pedido(numeroDoPedido, idCliente)  VALUES (2,1)
INSERT INTO pedido(numeroDoPedido, idCliente)  VALUES (3,2)
INSERT INTO item(nomeProduto, preco) VALUES('PASTEL DE QUEIJO', 2.50)
INSERT INTO item(nomeProduto, preco) VALUES('SANDUÍCHE', 5.50)
INSERT INTO item(nomeProduto, preco) VALUES('BATATA FRITA', 6.15)
INSERT INTO item(nomeProduto, preco) VALUES('COCA-COLA LATA', 4.95)
INSERT INTO item(nomeProduto, preco) VALUES('GUARANÁ 2L', 9.75)
INSERT INTO item(nomeProduto, preco) VALUES('SUCO DE MANGA 1L', 8.25)
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (1, 1, 5)
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (1, 5, 1)
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (2, 2, 3)
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (2, 4, 3)
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (3, 3, 1)
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (3, 6, 1)
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (3, 1, 2)

--selects para testar os valores inseridos na base de dados
SELECT * FROM cliente
SELECT * FROM pedido
SELECT * FROM item
SELECT * FROM itensPedido

--seleciono quais itens cada pessoa pediu
SELECT cliente.nome, item.nomeProduto
	FROM cliente
		LEFT JOIN pedido ON cliente.idCliente = pedido.idCliente	
			LEFT JOIN itensPedido ON pedido.idPedido=itensPedido.idPedido
				LEFT JOIN item ON itensPedido.idItem=item.idItem

--seleciono quais itens o cliente 1 fez
SELECT cliente.nome, item.nomeProduto
	FROM cliente
		LEFT JOIN pedido ON cliente.idCliente = pedido.idCliente	
			LEFT JOIN itensPedido ON pedido.idPedido=itensPedido.idPedido
				LEFT JOIN item ON itensPedido.idItem=item.idItem
					WHERE cliente.idCliente=1

--seleciono o(s) cliente(s) que pediu(ram) o guaraná de 2l (id=6)
SELECT cliente.nome
	FROM cliente
		RIGHT JOIN pedido ON cliente.idCliente=pedido.idCliente	
			RIGHT JOIN itensPedido ON pedido.idPedido = itensPedido.idPedido
				WHERE itensPedido.idItem=6

--seleciono pedidos que tiveram o item batata frita (id=2)
SELECT itensPedido.idPedido
	FROM itensPedido
		WHERE itensPedido.idItem=2		

--seleciono quantos pasteis foram comprados (id=1)
SELECT SUM(quantidade) 
	FROM itensPedido 
		WHERE idItem=1


--seleciono o valor total das contas pelo id
SELECT SUM(quantidade*preco) 
	FROM itensPedido JOIN item
		ON itensPedido.idItem=item.idItem
			WHERE idPedido=1