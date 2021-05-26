USE Wish

SELECT * FROM Usuario;
SELECT * FROM Desejo;

--Listar apenas o nome do desejo e a descrição;
SELECT nomeDesejo AS 'Desejo', descricao AS 'Descrição' FROM Desejo

--Listar apenas o nome do usuário juntamente com o email e senha;
SELECT nome AS 'Nome', email AS 'Email', senha AS 'Senha' FROM Usuario

--Listar todos os usuários e seus respectivos desejos;
SELECT nome AS 'Usuário', nomeDesejo AS 'Desejo', descricao AS 'Descrição' FROM Usuario
INNER JOIN Desejo
ON Usuario.idDesejo = Desejo.idDesejo

--Listar todos os desejos e seus respectivos usuários;
SELECT nomeDesejo AS 'Desejo', descricao AS 'Descrição', nome AS 'Quem deseja' FROM Desejo
INNER JOIN Usuario
ON Desejo.idDesejo = Usuario.idDesejo

