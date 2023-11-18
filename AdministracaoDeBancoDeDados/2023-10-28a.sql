--adicionando um atributo
ALTER TABLE pessoa
	ADD sexo CHAR(1) NOT NULL;

--removendo um atributo
ALTER TABLE pessoa
	DROP COLUMN rg;

--"editando" um atributo
ALTER TABLE pessoa
	DROP COLUMN sexo 
ALTER TABLE pessoa
	ADD sexo CHAR(1) NOT NULL

--apagando tabelas
DROP TABLE estuda
DROP TABLE endereco
DROP TABLE telefone
DROP TABLE pessoa
DROP TABLE curso

--apagando a base de dados
USE MASTER
DROP DATABASE senac_escola

--criando a base de dados novamente
CREATE DATABASE senac_escola

--selecionando a base de dados
USE senac_escola

--criando a tabela
CREATE TABLE pessoa(
	id INT NOT NULL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	dataDeNascimento DATE NOT NULL,
	cpf CHAR(11) NOT NULL,
	sexo CHAR(1) NOT NULL
)

--listando os registros da tabela
SELECT * FROM pessoa