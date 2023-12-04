--seleciono a base de dados criada na aula anterior
USE aula5;

--faço mais alguns inserts para melhorar os exemplos
INSERT INTO pedido(numeroDoPedido, idCliente) VALUES (4,3);
INSERT INTO pedido(numeroDoPedido, idCliente)  VALUES (5,1);
INSERT INTO pedido(numeroDoPedido, idCliente)  VALUES (6,2);
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (4, 2, 1)
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (4, 5, 1)
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (5, 3, 2)
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (5, 5, 2)
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (6, 1, 10)
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (6, 6, 3)

--seleciono a quantidade de clientes cadastrados
SELECT COUNT(nome)
	AS totalDeClientes
		FROM Cliente;

--calculo de quantas unidade de um produto foram compradas
SELECT SUM (ip.quantidade)
	AS TOTALPastel
		FROM item i JOIN itensPedido ip
			ON i.idItem = ip.idItem 
				WHERE i.nomeProduto = 'PASTEL DE QUEIJO';

--utilizo o álias para simplificar consultas reincidentes
SELECT totalDeClientes, totalDeClientes * 2
	AS dobroDeClientes
		FROM (
			SELECT COUNT(nome) 
				AS totalDeClientes 
					FROM Cliente
		) 
		AS ContagemClientes;

--somo o preço total dos itens do cardápio
SELECT SUM (preco)
	AS TOTAL
		FROM item;

--conto quantos pedidos cada cliente fez, organizando o resultado pelo id do cliente
SELECT idCliente, COUNT(idPedido)
	AS numeroDoPedido
		FROM pedido
			GROUP BY idCliente;

--conto quantos nomes existem em cliente
SELECT COUNT(nome)
	AS TOTAL
		FROM Cliente;

--calculo a média dos preços dos itens
SELECT AVG (preco)
	AS TOTAL
		FROM item;

--seleciono o maior preço do produto
SELECT MAX(preco)
	AS MAXIMO
		FROM item;

--seleciono o menor preço do produto
SELECT MIN(preco)
	AS PREÇO_MINIMO
		FROM item;

--seleciono o valor de venda de cada um dos produtos
SELECT i.idItem, i.nomeProduto, SUM(ip.quantidade * i.preco)
	AS totalVendas
		FROM item i JOIN itensPedido ip 
			ON i.idItem = ip. idItem
				GROUP BY i.idItem, i.nomeProduto;