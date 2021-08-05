
USE LOCADORA;
GO

INSERT INTO EMPRESA (nomeEmpresa)
VALUES ('BRASILATA');
GO

INSERT INTO MARCA (nomeMarca)
VALUES ('CHEVROLET');
GO

INSERT INTO CLIENTE (nomeCliente)
VALUES ('FERN');
GO

/*UPDATE CLIENTE  
SET nomeCliente = 'SILVANA'
WHERE idCliente = 3; 
GO
*/

/*DELETE FROM CLIENTE
WHERE idCliente = 4;
GO
*/

INSERT INTO MODELO (idMarca, nomeModelo)
VALUES (1,'ETIOS'), (2, 'FIAT');
GO

/*UPDATE MODELO 
SET nomeModelo = 'FIT'
WHERE idModelo = 3; 
GO
*/

INSERT INTO VEICULO (idMarca, idEmpresa, idModelo, nomePlaca)
VALUES (1, 1, 1, '656'), (2, 3, 2, '565');
GO

INSERT INTO ALUGUEL (idVeiculo, idCliente, dataEmpresetimo, dataDevolucao)
VALUES (2, 2, '2021-12-29', '2021-01-29');
GO