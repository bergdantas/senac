--crio a base de dados
CREATE DATABASE senac_escola

--seleciono a base de dados
USE senac_escola

--crio as tabelas que vão compor a base de dados
CREATE TABLE pessoa(
	id INT NOT NULL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	dataDeNascimento DATE NOT NULL,
	cpf CHAR(11) NOT NULL,
	rg VARCHAR(15)
)
CREATE TABLE curso (
	id INT NOT NULL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	professor VARCHAR(50) NOT NULL,
	sala CHAR(1) NOT NULL,
	turno CHAR(1) NOT NULL
)
CREATE TABLE endereco (
	rua VARCHAR(50) NOT NULL,
	bairro VARCHAR(30) NOT NULL,
	cidade VARCHAR(15) NOT NULL,
	numero VARCHAR(6) NOT NULL,
	cep CHAR(8) NOT NULL,
	id_pessoa INT NOT NULL FOREIGN KEY(id_pessoa) REFERENCES pessoa(id)
)
CREATE TABLE telefone (
	id_pessoa INT NOT NULL FOREIGN KEY(id_pessoa) REFERENCES pessoa(id),
	numero CHAR(11) NOT NULL
)
CREATE TABLE ESTUDA (
	id_pessoa INT NOT NULL FOREIGN KEY(id_pessoa) REFERENCES pessoa(id),
	id_curso INT NOT NULL FOREIGN KEY(id_curso) REFERENCES curso(id),
)
