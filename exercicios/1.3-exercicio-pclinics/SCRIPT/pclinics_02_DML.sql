--DML

USE PCLINICS;
GO

INSERT INTO CLINICA (nomeClinica)
VALUES ('PETREPET'), ('PETPATA');
GO

INSERT INTO VETERINARIO (idClinica, nomeVet)
VALUES (2, 'CRIS'), (1, 'CASROL'), (1, 'BEATRIZ'), (2, 'erro'), (2, 'MANUEL');
GO

/*
UPDATE VETERINARIO
SET nomeVet = 'CAROL'
WHERE idVeterinario = 12;
GO

DELETE FROM VETERINARIO
WHERE idVeterinario = 14;
GO
*/

INSERT INTO DONO (nomeDono)
VALUES ('KARINE'), ('JOSEFA'), ('FELIPE');
GO

INSERT INTO TIPOPET (nomeTipoPet)
VALUES ('CAVALO');
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

INSERT INTO ATENDIMENTO (idVeterinario, idPet, descriçãoConsulta, dataConsulta, custoAtendimento)
VALUES (11, 1, 'VACINA DE RAIVA', '2021-11-04 12:35:00', 75.00);
GO

