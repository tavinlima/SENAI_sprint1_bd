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


INSERT INTO ALBUM (idArtista, nomeAlbum)
VALUES (2, 'SUNFLOWER');
GO

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
VALUES (1, 2, '2021-06-06 12:35:00'), (2, 1,'2021-08-03 13:37:18'), (1, 1,'2021-10-10 10:10:10');
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

DELETE FROM USUARIO
WHERE idUsuario IN(4,5,6);
GO

INSERT INTO CONSULTA (idUsuario, idGerenciamento, dataConsulta)
VALUES (3, 3, '2021-06-06 12:35:00'), (1, 1, '2021-06-06 12:35:00'), (2, 3, '2021-06-06 12:35:00');
GO