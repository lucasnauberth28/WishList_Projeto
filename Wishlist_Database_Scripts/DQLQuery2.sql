USE Wish

SELECT * FROM Usuario;
SELECT * FROM Desejo;

--Listar apenas o nome do desejo com a descri��o e a data;
SELECT nomeDesejo AS 'Desejo', descricao AS 'Descri��o', dataCriacaoDesejo AS 'Data' FROM Desejo

--Listar apenas o nome do usu�rio juntamente com o email e senha;
SELECT nome AS 'Nome', email AS 'Email', senha AS 'Senha' FROM Usuario

--Listar todos os usu�rios e seus respectivos desejos;
SELECT nome AS 'Usu�rio', nomeDesejo AS 'Desejo', descricao AS 'Descri��o' FROM Usuario
LEFT JOIN Desejo
ON Usuario.idUsuario = Desejo.idUsuario

--Listar todos os desejos e seus respectivos usu�rios;
SELECT nomeDesejo AS 'Desejo', descricao AS 'Descri��o', nome AS 'Quem deseja' FROM Desejo
LEFT JOIN Usuario
ON Desejo.idUsuario = Usuario.idUsuario

