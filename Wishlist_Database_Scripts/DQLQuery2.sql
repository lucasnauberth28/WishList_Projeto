USE Wish

SELECT * FROM Usuario;
SELECT * FROM Desejo;

--Listar apenas o nome do desejo e a descri��o;
SELECT nomeDesejo AS 'Desejo', descricao AS 'Descri��o' FROM Desejo

--Listar apenas o nome do usu�rio juntamente com o email e senha;
SELECT nome AS 'Nome', email AS 'Email', senha AS 'Senha' FROM Usuario

--Listar todos os usu�rios e seus respectivos desejos;
SELECT nome AS 'Usu�rio', nomeDesejo AS 'Desejo', descricao AS 'Descri��o' FROM Usuario
INNER JOIN Desejo
ON Usuario.idDesejo = Desejo.idDesejo

--Listar todos os desejos e seus respectivos usu�rios;
SELECT nomeDesejo AS 'Desejo', descricao AS 'Descri��o', nome AS 'Quem deseja' FROM Desejo
INNER JOIN Usuario
ON Desejo.idDesejo = Usuario.idDesejo

