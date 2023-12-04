USE aula1

--adiciono um atributo
ALTER TABLE pessoa
	ADD sexo CHAR(1) NOT NULL;

--removo um atributo
ALTER TABLE pessoa
	DROP COLUMN rg;

--"edito" um atributo
ALTER TABLE pessoa
	DROP COLUMN sexo 
ALTER TABLE pessoa
	ADD sexo CHAR(1) NOT NULL

--apago tabelas
DROP TABLE estuda
DROP TABLE endereco
DROP TABLE telefone
DROP TABLE pessoa
DROP TABLE curso

--apago a base de dados
USE master
DROP DATABASE aula1