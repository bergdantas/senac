--correção da primeira atividade
CREATE  DATABASE atividade1

USE atividade1

CREATE TABLE pessoa(
id INT PRIMARY KEY IDENTITY (1,1),
nome VARCHAR(50) NOT NULL
)

CREATE TABLE telefone(
Operadora VARCHAR(5) NOT NULL,
numero CHAR(11) NOT NULL,
idPessoa INT FOREIGN KEY(idPessoa) REFERENCES pessoa(id)
)

CREATE TABLE endereco(
estado VARCHAR(30) NOT NULL,
cidade VARCHAR(30) NOT NULL,
bairro VARCHAR(30) NOT NULL,
rua VARCHAR(50) NOT NULL,
numero VARCHAR (5) NOT NULL,
cep CHAR(8) NOT NULL,
idPessoa INT FOREIGN KEY(idPessoa) REFERENCES pessoa(id)
)

INSERT INTO pessoa (nome) values
('Ana Julia'),
('João Medeiros'),
('Josenilda Santos'),
('Matheus Silva'),
('Francisco Morais')
SELECT * FROM pessoa

INSERT INTO telefone (operadora, numero, idPessoa) values
('Claro', '84985452158',1),
('Tim', '84985452159',1),
('Vivo', '84985425487',1),
('Vivo', '84998548752',2),
('Claro', '84998562548',3),
('Tim', '84985425148',3),
('Tim', '84985425698',4),
('Vivo', '84985425159',4),
('Claro', '84985426598',5),
('Oi', '84985425698',5);
select * from telefone

INSERT INTO endereco (estado, cidade, bairro, rua, numero, cep, idPessoa) values
('Bahia', 'Vitoria da Conquista', 'Centro', 'Av. Edgar Santos', '95','45658609', 1),
('Pernambuco', 'Recife', 'Bongi', 'Tv. Santo Angelo', '517','51047952', 2),
('Pernambuco', 'Recife', 'Bongi', 'Av. Governador Magalhaes', '2569','51500270', 2),
('Rio Grande do Norte', 'Parnamirim', 'Nova Parnamirim', 'Av. Maria Lacerda', '912','59054320', 3),
('Rio Grande do Norte', 'Natal', 'Tirol', 'Av. Prudente de Morais', '1420','59063545', 3),
('Bahia', 'Salvador', 'Cidade Baixa', 'Av. Tancredo Neves', '95','45864540', 4),
('Pernambuco', 'Casa Forte', 'Centro', 'Av. Governador Magalhaes', '2569','51500270', 5),
('Rio Grande do Norte', 'Parnamirim', 'Nova Parnamirim', 'Av. Maria Lacerda', '873','59054320', 5),
('Rio Grande do Norte', 'Natal', 'Alecrim', 'Av. Coronel Estevam', '1220','59020650', 5)
SELECT * FROM endereco

--Pesquiso pela quantidade de telefones da pessoa 1
SELECT COUNT(*)  
	FROM telefone 
		WHERE idPessoa=5

--Pesquiso pela quantidade de endereços da pessoa 4
SELECT COUNT(*) 
	FROM endereco 
		WHERE idPessoa=4

--Retomando a tabela inicial (antes da modelagem)
SELECT p.nome, t.numero, e.estado, e.cidade, e.bairro, e.rua, e.numero, e.cep FROM pessoa p, telefone t, endereco e
	WHERE p.id = t.idPessoa AND P.id = e.idPessoa