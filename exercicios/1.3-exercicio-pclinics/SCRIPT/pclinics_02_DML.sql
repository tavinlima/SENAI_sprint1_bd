--DML

USE PCLINICS;
GO

INSERT INTO CLINICA (nomeClinica)
VALUES ('PETREPET'), ('PETPATA');
GO

INSERT INTO VETERINARIO (idClinica, nomeVet, CRMV)
VALUES (2, 'CRIS', 79472), (1, 'CAROL', 21091), (1, 'BEATRIZ', 72180), (2, 'erro', 55555), (2, 'MANUEL', 31132);
GO

/*
UPDATE VETERINARIO
SET nomeVet = 'CAROL'
WHERE idVeterinario = 12;
GO

DELETE FROM VETERINARIO
WHERE idVeterinario = 19;
GO
*/

INSERT INTO DONO (nomeDono)
VALUES ('KARINE'), ('JOSEFA'), ('FELIPE');
GO

INSERT INTO TIPOPET (nomeTipoPet)
VALUES ('HAMSTER');
GO

INSERT INTO RACA (idTipoPet, nomeRaca)
VALUES (2, 'SPHYNX'), (2, 'PERSA'), (3, 'MANGALARGA');
GO

/*
UPDATE RACA
SET idTipoPet = 1
WHERE idRaca = 3;
GO
*/

INSERT INTO PET (idRaca, idDono, nomePet)
VALUES (2, 1, 'PRINCESA'), (2, 2, 'POLLY');
GO

INSERT INTO ATENDIMENTO (idVeterinario, idPet, descricaoConsulta, dataConsulta, custoAtendimento)
VALUES (18, 4, 'CHECK-UP COMPLETO', '2012-12-12 12:12:12', 105.80);
GO
