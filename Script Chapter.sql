CREATE DATABASE Chapter;

USE Chapter;

CREATE TABLE Livros
(
	Id INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR(150) NOT NULL,
	QuantidadePaginas INT,
	Disponivel BIT

);

INSERT INTO Livros (Titulo, QuantidadePaginas, Disponivel)
VALUES ('Titulo A', 120, 1);

INSERT INTO Livros (Titulo, QuantidadePaginas, Disponivel)
VALUES ('Titulo B', 220, 0);

INSERT INTO Livros (Titulo, QuantidadePaginas, Disponivel)
VALUES ('Titulo C', 225, 1);

SELECT * FROM Livros

USE Chapter;
CREATE TABLE Usuarios
(
	Id INT PRIMARY KEY IDENTITY,
	Email VARCHAR(255) NOT NULL UNIQUE,
	Senha VARCHAR(120) NOT NULL,
	Tipo CHAR(1) NOT NULL
);

INSERT INTO Usuarios VALUES ('teste@email.com.br','1234','0');

SELECT * FROM Usuarios WHERE email = 'teste@email.com.br' AND senha = '1234';