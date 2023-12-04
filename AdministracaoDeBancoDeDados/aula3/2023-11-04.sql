--crio a base de dados
CREATE DATABASE aula3

--seleciono a base de dados
USE aula3

--crio a tabela pessoa
CREATE TABLE pessoa(
	id INT PRIMARY KEY IDENTITY(1,1), --INCREMENTOS UNIT�RIOS
	nome VARCHAR(50) NOT NULL,
	dataDeNascimento DATE NOT NULL,
	cpf CHAR(11) NOT NULL,
	sexo CHAR(1) NOT NULL
)

--insiro 10 tuplas na tabela pessoa
INSERT INTO PESSOA(nome, dataDeNascimento, cpf, sexo) VALUES
('Josefina de Albuquerque', '1920-05-06', '98652354785', 'F'),
('Antônio Silva', '1985-03-15', '12345678901', 'M'),
('Maria da Conceição', '1972-09-20', '98765432109', 'F'),
('Pedro Ferreira', '1990-12-10', '45678901234', 'M'),
('Isabela Santos', '1988-07-25', '56789012345', 'F'),
('Rafael Pereira', '1982-06-08', '65432109876', 'M'),
('Luiza Oliveira', '1995-04-14', '34567890123', 'F'),
('João Rodrigues', '1978-11-30', '78901234567', 'M'),
('Carla Fernandes', '2000-02-03', '23456789012', 'F'),
('André Souza', '1965-10-19', '89012345678', 'M')

--mostro tudo o que está armazenado na tabela pessoa
SELECT * FROM pessoa

--mostro tudo o que está armazenado na pessoa cujo id é 5
SELECT * FROM pessoa
	WHERE id=5

--mostro tudo o que está armazenado na pessoa cujo cpf é 56789012345
SELECT * FROM pessoa
	WHERE cpf=56789012345

--edito um registro de pessoa (o nome de Isabela Santos será alterado para Isabela Ferreira)
UPDATE pessoa
	SET nome='Isabela Ferreira'
	WHERE cpf=56789012345

--apago um registro de pessoa (apagarei o registro de Isabela usando o cpf dela)
DELETE pessoa
	WHERE cpf=56789012345

--crio uma tabela de dependentes
CREATE TABLE dependente(
	cpf CHAR(11) NOT NULL,
	nome VARCHAR(50) NOT NULL,
	idPessoa INT NOT NULL FOREIGN KEY(idPessoa) REFERENCES pessoa(id) 
)

--insiro três tuplas na tabela dependentes (todas estarão associadas a pessoa cujo id é 1)
INSERT INTO dependente(cpf, nome, idPessoa) VALUES
('58742458859', 'Joaquim', 1),
('85421548752', 'Maria', 1),
('74587424589', 'Bernardo', 1)

--SELECTS:
--descobrir o cpf dos dependentes, usando o cpf da pessoa.
SELECT dependente.cpf FROM dependente, pessoa
	WHERE pessoa.cpf='98652354785'

--DESAFIO: descobrir quantos dependentes a pessoa tem, usando o id


