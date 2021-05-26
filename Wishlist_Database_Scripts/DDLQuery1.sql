CREATE DATABASE Wish

USE Wish
GO;

DROP TABLE USUARIO
CREATE TABLE Desejo 
(
	idDesejo INT PRIMARY KEY IDENTITY
	,nomeDesejo VARCHAR (50) NOT NULL
	,descricao VARCHAR (300)
)

CREATE TABLE Usuario
(
	idUsuario INT PRIMARY KEY IDENTITY
	,idDesejo INT FOREIGN KEY REFERENCES Desejo(idDesejo)
	,nome VARCHAR(30) NOT NULL
	,email VARCHAR(40) NOT NULL UNIQUE
	,senha VARCHAR(255) NOT NULL
)