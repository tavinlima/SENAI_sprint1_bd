--DQL

USE OPTUS;
GO

SELECT * FROM ARTISTA
SELECT * FROM ESTILO
SELECT * FROM ALBUM
SELECT * FROM GERENCIAMENTO
SELECT * FROM PERMISSAO
SELECT * FROM USUARIO
SELECT * FROM CONSULTA

-- listar todos os usuários administradores, sem exibir suas senhas
SELECT nomeUsuario, emailUsuario FROM USUARIO
INNER JOIN PERMISSAO
ON PERMISSAO.idPermissao = USUARIO.idPermissao
WHERE tipoPermissao = 'ADMINISTRADOR';

-- listar todos os álbuns lançados após o um determinado ano de lançamento
SELECT nomeAlbum, localizacao, duracaoAlbum, estadoAlbum FROM ALBUM
INNER JOIN GERENCIAMENTO
ON GERENCIAMENTO.idAlbum = ALBUM.idAlbum
WHERE dataGravacao > '2016-01-01 12:12:12';

-- listar os dados de um usuário através do e-mail e senha
SELECT idPermissao, nomeUsuario, emailUsuario, senhaUsuario FROM USUARIO
WHERE emailUsuario = 'lol@lorenzo.com' and senhaUsuario = 'ovatsugitoewm';

-- listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum 
SELECT idArtista, nomeAlbum, localizacao, duracaoAlbum, estadoAlbum FROM ALBUM
INNER JOIN GERENCIAMENTO
ON GERENCIAMENTO.idAlbum = ALBUM.idAlbum
WHERE estadoAlbum = 'ATIVO';