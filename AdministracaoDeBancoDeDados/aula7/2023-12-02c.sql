--seleciono a base de dados
USE aula7;

--insiro registros na base de dados
INSERT INTO cliente(nome) VALUES ('Joaquim');
INSERT INTO cliente(nome) VALUES ('João');
INSERT INTO cliente(nome) VALUES ('Mateus');
INSERT INTO pedido(numeroDoPedido, idCliente) VALUES (1,3);
INSERT INTO pedido(numeroDoPedido, idCliente)  VALUES (2,1);
INSERT INTO pedido(numeroDoPedido, idCliente)  VALUES (3,2);
INSERT INTO pedido(numeroDoPedido, idCliente) VALUES (4,3);
INSERT INTO pedido(numeroDoPedido, idCliente)  VALUES (5,1);
INSERT INTO pedido(numeroDoPedido, idCliente)  VALUES (6,2);
INSERT INTO item(nomeProduto, preco) VALUES('PASTEL DE QUEIJO', 2.50);
INSERT INTO item(nomeProduto, preco) VALUES('SANDUÍCHE', 5.50);
INSERT INTO item(nomeProduto, preco) VALUES('BATATA FRITA', 6.15);
INSERT INTO item(nomeProduto, preco) VALUES('COCA-COLA LATA', 4.95);
INSERT INTO item(nomeProduto, preco) VALUES('GUARANÁ 2L', 9.75);
INSERT INTO item(nomeProduto, preco) VALUES('SUCO DE MANGA 1L', 8.25);
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (1, 1, 5);
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (1, 5, 1);
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (2, 2, 3);
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (2, 4, 3);
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (3, 3, 1);
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (3, 6, 1);
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (3, 1, 2);
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (4, 2, 1);
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (4, 5, 1);
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (5, 3, 2);
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (5, 5, 2);
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (6, 1, 10);
INSERT INTO itensPedido(idPedido, idItem, quantidade) VALUES (6, 6, 3);