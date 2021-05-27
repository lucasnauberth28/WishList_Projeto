USE Wish

SELECT * FROM Usuario;
SELECT * FROM Desejo;

--Listar apenas o nome do desejo com a descrição e a data;
SELECT nomeDesejo AS 'Desejo', descricao AS 'Descrição', dataCriacaoDesejo AS 'Data' FROM Desejo

--Listar apenas o nome do usuário juntamente com o email e senha;
SELECT nome AS 'Nome', email AS 'Email', senha AS 'Senha' FROM Usuario

--Listar todos os usuários e seus respectivos desejos;
SELECT nome AS 'Usuário', nomeDesejo AS 'Desejo', descricao AS 'Descrição' FROM Usuario
LEFT JOIN Desejo
ON Usuario.idUsuario = Desejo.idUsuario

--Listar todos os desejos e seus respectivos usuários;
SELECT nomeDesejo AS 'Desejo', descricao AS 'Descrição', nome AS 'Quem deseja' FROM Desejo
LEFT JOIN Usuario
ON Desejo.idUsuario = Usuario.idUsuario

