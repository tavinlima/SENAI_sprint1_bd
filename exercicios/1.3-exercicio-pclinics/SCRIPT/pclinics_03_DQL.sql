--DDL

USE PCLINICS;
GO

SELECT * FROM CLINICA
SELECT * FROM VETERINARIO
SELECT * FROM DONO
SELECT * FROM TIPOPET
SELECT * FROM RACA
SELECT * FROM PET
SELECT * FROM ATENDIMENTO

-- listar todos os veterin�rios (nome e CRMV) de uma cl�nica (raz�o social)
SELECT nomeVet, CRMV FROM VETERINARIO
INNER JOIN CLINICA
ON CLINICA.idClinica = VETERINARIO.idClinica
WHERE nomeClinica = 'PETREPET';

-- listar todas as ra�as que come�am com a letra S
SELECT nomeRaca FROM RACA
WHERE nomeRaca LIKE 'M%';

-- listar todos os tipos de pet que terminam com a letra O
SELECT nomeTipoPet FROM TIPOPET
WHERE nomeTipoPet LIKE '%O';

-- listar todos os pets mostrando os nomes dos seus donos
SELECT nomePet, nomeDono FROM PET
INNER JOIN DONO
ON PET.idDono = DONO.idDono;

-- listar todos os atendimentos mostrando o nome do veterin�rio que atendeu, o nome, 
-- a ra�a e o tipo do pet que foi atendido, o nome do dono do pet e o nome da cl�nica onde o pet foi atendido
SELECT nomeVet, nomePet, nomeRaca, nomeTipoPet, nomeDono, nomeClinica FROM ATENDIMENTO
INNER JOIN VETERINARIO
ON ATENDIMENTO.idVeterinario = VETERINARIO.idVeterinario
INNER JOIN PET
ON ATENDIMENTO.idPet = PET.idPet
INNER JOIN RACA
ON PET.idRaca = RACA.idRaca
INNER JOIN TIPOPET
ON RACA.idTipoPet = TIPOPET.idTipoPet
INNER JOIN DONO
ON PET.idDono = DONO.idDono
INNER JOIN CLINICA
ON VETERINARIO.idClinica = CLINICA.idClinica;