--crio a base de dados novamente
CREATE DATABASE aula2

--seleciono a base de dados
USE aula2

--crio a tabela pessoa
CREATE TABLE pessoa(
	id INT NOT NULL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	dataDeNascimento DATE NOT NULL,
	cpf CHAR(11) NOT NULL,
	sexo CHAR(1) NOT NULL
)

--listo os registros da tabela
SELECT * FROM pessoa

--crio 100 registros para a base de dados pessoa
INSERT INTO PESSOA(id, nome, dataDeNascimento, cpf, sexo) VALUES
(1, 'Josefina de Albuquerque', '1920-05-06', '98652354785', 'F'),
(2, 'Antônio Silva', '1985-03-15', '12345678901', 'M'),
(3, 'Maria da Conceição', '1972-09-20', '98765432109', 'F'),
(4, 'Pedro Ferreira', '1990-12-10', '45678901234', 'M'),
(5, 'Isabela Santos', '1988-07-25', '56789012345', 'F'),
(6, 'Rafael Pereira', '1982-06-08', '65432109876', 'M'),
(7, 'Luiza Oliveira', '1995-04-14', '34567890123', 'F'),
(8, 'João Rodrigues', '1978-11-30', '78901234567', 'M'),
(9, 'Carla Fernandes', '2000-02-03', '23456789012', 'F'),
(10, 'André Souza', '1965-10-19', '89012345678', 'M'),
(11, 'Mariana Costa', '1999-08-05', '09876543210', 'F'),
(12, 'Lucas Pereira', '1984-12-01', '43210987654', 'M'),
(13, 'Sofia Santos', '1987-06-22', '87654321098', 'F'),
(14, 'Gabriel Carvalho', '1971-01-27', '32109876543', 'M'),
(15, 'Ana Lima', '2002-03-08', '65432109876', 'F'),
(16, 'Eduardo Rodrigues', '1976-09-11', '10987654321', 'M'),
(17, 'Vitória Fernandes', '1991-04-09', '54321098765', 'F'),
(18, 'Mateus Oliveira', '1980-07-17', '98765432109', 'M'),
(19, 'Laura Silva', '1979-08-23', '76543210987', 'F'),
(20, 'Felipe Costa', '1993-05-02', '21098765432', 'M'),
(21, 'Clara Souza', '2005-11-18', '43210987654', 'F'),
(22, 'Thiago Pereira', '1968-02-14', '87654321098', 'M'),
(23, 'Beatriz Santos', '1974-07-03', '32109876543', 'F'),
(24, 'Gustavo Ferreira', '1994-01-25', '65432109876', 'M'),
(25, 'Juliana Fernandes', '1986-12-29', '10987654321', 'F'),
(26, 'Matheus Lima', '2004-08-07', '54321098765', 'M'),
(27, 'Lívia Carvalho', '1966-03-12', '98765432109', 'F'),
(28, 'Enzo Rodrigues', '1973-10-28', '76543210987', 'M'),
(29, 'Rafaela Oliveira', '1989-09-16', '21098765432', 'F'),
(30, 'Leonardo Silva', '1977-07-04', '43210987654', 'M'),
(31, 'Bianca Costa', '2001-06-21', '87654321098', 'F'),
(32, 'Fernando Souza', '1970-04-26', '32109876543', 'M'),
(33, 'Camila Santos', '1997-02-10', '65432109876', 'F'),
(34, 'Ricardo Fernandes', '1983-08-31', '10987654321', 'M'),
(35, 'Isabelly Pereira', '2003-12-15', '54321098765', 'F'),
(36, 'Lucas Fernandes', '1975-05-29', '98765432109', 'M'),
(37, 'Lara Lima', '1969-11-07', '76543210987', 'F'),
(38, 'Carlos Costa', '1996-10-01', '21098765432', 'M'),
(39, 'Ana Paula Souza', '2006-07-27', '43210987654', 'F'),
(40, 'Miguel Carvalho', '1963-01-04', '87654321098', 'M'),
(41, 'Cecília Rodrigues', '1974-06-13', '32109876543', 'F'),
(42, 'Diego Silva', '1998-09-02', '65432109876', 'M'),
(43, 'Larissa Ferreira', '1981-03-20', '10987654321', 'F'),
(44, 'André Oliveira', '1988-02-11', '54321098765', 'M'),
(45, 'Natalia Santos', '1977-08-24', '98765432109', 'F'),
(46, 'Giovanni Souza', '1989-07-16', '76543210987', 'M'),
(47, 'Valentina Lima', '1996-05-31', '21098765432', 'F'),
(48, 'Eduardo Carvalho', '1979-04-17', '43210987654', 'M'),
(49, 'Amanda Rodrigues', '2000-11-12', '87654321098', 'F'),
(50, 'Lucas Silva', '1971-10-22', '32109876543', 'M'),
(51, 'Isadora Costa', '1987-09-07', '65432109876', 'F'),
(52, 'Thales Fernandes', '1982-01-18', '10987654321', 'M'),
(53, 'Maria Eduarda Pereira', '1993-07-19', '54321098765', 'F'),
(54, 'Rafael Costa', '1970-06-06', '98765432109', 'M'),
(55, 'Valeria Lima', '1990-03-23', '76543210987', 'F'),
(56, 'Guilherme Carvalho', '2005-08-26', '21098765432', 'M'),
(57, 'Júlia Fernandes', '1965-12-14', '43210987654', 'F'),
(58, 'Ricardo Rodrigues', '1978-02-28', '87654321098', 'M'),
(59, 'Manuela Souza', '1999-01-15', '32109876543', 'F'),
(60, 'Gustavo Silva', '1986-05-13', '65432109876', 'M'),
(61, 'Mariana Costa', '2002-04-03', '10987654321', 'F'),
(62, 'João Vitor Ferreira', '1975-11-10', '54321098765', 'M'),
(63, 'Luana Oliveira', '1983-07-09', '98765432109', 'F'),
(64, 'Pedro Henrique Lima', '1991-03-25', '76543210987', 'M'),
(65, 'Elisa Carvalho', '1987-10-12', '21098765432', 'F'),
(66, 'Henrique Rodrigues', '1998-06-08', '43210987654', 'M'),
(67, 'Larissa Silva', '1969-08-29', '87654321098', 'F'),
(68, 'Lucas Souza', '2001-05-17', '32109876543', 'M'),
(69, 'Juliana Ferreira', '1980-09-14', '65432109876', 'F'),
(70, 'Miguel Costa', '1984-01-16', '10987654321', 'M'),
(71, 'Camila Lima', '1997-12-30', '54321098765', 'F'),
(72, 'Rafaela Oliveira', '1976-06-24', '98765432109', 'F'),
(73, 'Lucas Fernandes', '2004-02-05', '76543210987', 'M'),
(74, 'Beatriz Silva', '1999-03-15', '21098765432', 'F'),
(75, 'Fernando Carvalho', '1974-05-19', '43210987654', 'M'),
(76, 'Maria Eduarda Rodrigues', '1981-04-01', '87654321098', 'F'),
(77, 'Giovanni Souza', '2002-09-09', '32109876543', 'M'),
(78, 'Manuela Silva', '1973-11-11', '65432109876', 'F'),
(79, 'Ricardo Fernandes', '1965-07-12', '10987654321', 'M'),
(80, 'Valentina Lima', '1989-10-28', '54321098765', 'F'),
(81, 'Júlia Carvalho', '1978-12-07', '98765432109', 'F'),
(82, 'Rafael Rodrigues', '1990-05-01', '76543210987', 'M'),
(83, 'Luana Souza', '1982-06-16', '21098765432', 'F'),
(84, 'Henrique Costa', '2005-08-13', '43210987654', 'M'),
(85, 'Larissa Ferreira', '1971-02-28', '87654321098', 'F'),
(86, 'Guilherme Lima', '1996-10-30', '32109876543', 'M'),
(87, 'Mariana Oliveira', '1987-01-04', '65432109876', 'F'),
(88, 'Pedro Henrique Silva', '1995-09-11', '10987654321', 'M'),
(89, 'Isadora Carvalho', '2001-03-22', '54321098765', 'F'),
(90, 'Lucas Rodrigues', '1976-11-15', '98765432109', 'M'),
(91, 'Elisa Souza', '1980-04-09', '76543210987', 'F'),
(92, 'Gustavo Ferreira', '2003-05-25', '21098765432', 'M'),
(93, 'Bianca Costa', '1974-09-03', '43210987654', 'F'),
(94, 'Thiago Carvalho', '1989-07-18', '87654321098', 'M'),
(95, 'Larissa Lima', '2000-02-10', '32109876543', 'F'),
(96, 'Lucas Silva', '1968-06-04', '65432109876', 'M'),
(97, 'Isabella Fernandes', '1987-08-19', '10987654321', 'F'),
(98, 'Mateus Costa', '1975-12-07', '54321098765', 'M'),
(99, 'Valeria Oliveira', '1993-11-29', '98765432109', 'F'),
(100, 'Cecília Rodrigues', '1972-04-16', '76543210987', 'F');

--listo os registros da tabela
SELECT * FROM pessoa

--modifico o nome da pessoa cujo id é 74
UPDATE pessoa
	SET nome='Beatriz Fernandes'
	WHERE ID=74

--modifico o estado civil de todas as pessoas
UPDATE pessoa
	SET estadoCivil='C'