USE Wish
GO

INSERT INTO Usuario (nome, email, senha)
VALUES				('Caic','caic@hotmail.com','caic@caic'),
					('Marco','marco@hotmail.com','marco@marco'),
					('Nauberth','nauberth@hotmail.com','nauberth@nauberth'),
					('Strilicherk','strili@hotmail.com','strili@strili')

INSERT INTO Desejo (idUsuario, nomeDesejo, descricao, dataCriacaoDesejo)
VALUES				(1,'Namorado','Namorar o Gabriel Monteiro','27/05/2021'),
					(1,'Playstation 5','Desejo de ter um Playstation 5','27/05/2021'),
					(2,'PC GAMER','Desejo de ter um PC Gamer de última geração','27/05/2021'),
					(2,'Playstation 5','Desejo de ter um Playstation 5','27/05/2021'),
					(3,'Namorado','Namorar o Gabriel Monteiro','27/05/2021'),
					(3,'PC GAMER','Desejo de ter um PC Gamer de última geração','27/05/2021'),
					(4,'Namorado','Namorar o Gabriel Monteiro','27/05/2021'),
					(4,'Carreira','Desejo de seguir carreira policial','27/05/2021')

