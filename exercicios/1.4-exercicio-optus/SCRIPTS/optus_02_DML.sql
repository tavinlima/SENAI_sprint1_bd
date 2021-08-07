--DML

USE OPTUS;
GO

INSERT INTO ARTISTA (nomeArtista)
VALUES ('GUSTTAVO LIMA'), ('IMAGINE DRAGONS');
GO

INSERT INTO ESTILO (nomeEstilo)
VALUES ('POP'), ('ROCK'), ('FUNK'), ('ERRO');
GO

/*
DELETE FROM ESTILO
WHERE idEstilo IN (5,6,7,8);
GO
*/


INSERT INTO ALBUM (idArtista, nomeAlbum, localizacao, duracaoAlbum, estadoAlbum)
VALUES (2, 'SUNFLOWER', 'CIDADE LINDA-MG', '00:14:11', 'INATIVO');
GO

INSERT INTO ALBUM (idArtista, nomeAlbum, localizacao, duracaoAlbum, estadoAlbum)
VALUES 

/*UPDATE ALBUM
SET nomeAlbum = 'OBSIDIAN'
WHERE idAlbum = 1;
GO
*/

/*
DELETE FROM ALBUM
WHERE idAlbum = 4;
GO
*/

INSERT INTO GERENCIAMENTO (idEstilo, idAlbum, dataGravacao)
VALUES (1, 6, '2021-06-06 12:35:00'), (2, 5, '2021-03-08 13:37:00'), (1, 5, '2021-10-10 10:10:00');
GO

UPDATE GERENCIAMENTO
SET dataGravacao = '2015-06-06 12:35:00'
WHERE idAlbum = 6;
GO

INSERT INTO PERMISSAO (tipoPermissao)
VALUES ('COMUM'), ('ADMNISTRADOR');
GO

/*
UPDATE PERMISSAO
SET tipoPermissao = 'ADMINISTRADOR'
WHERE idPermissao = 1;
GO

UPDATE PERMISSAO
SET tipoPermissao = 'COMUM'
WHERE idPermissao = 2;
GO
*/

INSERT INTO USUARIO (idPermissao, nomeUsuario, emailUsuario, senhaUsuario)
VALUES (2, 'LORENZO', 'lol@lorenzo.com', 'ovatsugitoewm'), (2, 'LORENA', 'lor@lorena.con', 'ovatsugtbmeumito'), (1, 'RAFAEL', 'raf@rafael.com', 'omabtataeuemoti');
GO

INSERT INTO CONSULTA (idUsuario, idGerenciamento, dataConsulta)
VALUES (3, 9, '2021-06-06 12:35:00'), (1, 7, '2021-06-06 12:35:00'), (2, 9, '2021-06-06 12:35:00');
GO


DELETE FROM ALBUM
DELETE FROM GERENCIAMENTO
DELETE FROM CONSULTA