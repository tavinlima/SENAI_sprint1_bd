--DML

USE EMPRESA;
GO

INSERT INTO PESSOA (nomePessoa)
VALUES ('GUSTAVO'), ('THOR'), ('FRED'), ('COLIN');
GO

INSERT INTO  TELEFONE (idPessoa,numTelefone)
VALUES (1, '1919'), (1, '9191'), (2, '5050'), (3, '6060'), (4, '3838');
GO

INSERT INTO EMAIL (idPessoa,endemail)
VALUES (1, 'gus@tavo.com'), (2, 'th@or.com'), (3, 'fr@ed.com'), (4, 'co@lin.com');
GO

INSERT INTO CNH (idPessoa,numCNH)
VALUES (1, '1111'), (2, '2222');
GO

INSERT INTO CNH (idPessoa,numCNH)
VALUES (3, '3333'), (4, '4444');
GO