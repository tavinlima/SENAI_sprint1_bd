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

-- listar todos os usu�rios administradores, sem exibir suas senhas
SELECT nomeUsuario, emailUsuario FROM USUARIO
INNER JOIN PERMISSAO
ON PERMISSAO.idPermissao = USUARIO.idPermissao
WHERE tipoPermissao = 'ADMINISTRADOR';

-- listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento
SELECT nomeAlbum, localizacao, duracaoAlbum, estadoAlbum FROM ALBUM
INNER JOIN GERENCIAMENTO
ON GERENCIAMENTO.idAlbum = ALBUM.idAlbum
WHERE dataGravacao > '2016-01-01 12:12:12';

-- listar os dados de um usu�rio atrav�s do e-mail e senha
SELECT idPermissao, nomeUsuario, emailUsuario, senhaUsuario FROM USUARIO
WHERE emailUsuario = 'lol@lorenzo.com' and senhaUsuario = 'ovatsugitoewm';

-- listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum 
SELECT idArtista, nomeAlbum, localizacao, duracaoAlbum, estadoAlbum FROM ALBUM
INNER JOIN GERENCIAMENTO
ON GERENCIAMENTO.idAlbum = ALBUM.idAlbum
WHERE estadoAlbum = 'ATIVO';