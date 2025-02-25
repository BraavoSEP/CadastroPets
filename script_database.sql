--
-- File generated with SQLiteStudio v3.4.17 on seg fev 24 21:39:29 2025
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Pet
DROP TABLE IF EXISTS Pet;

CREATE TABLE IF NOT EXISTS Pet (
    ID              INTEGER        PRIMARY KEY,
    Especie         TEXT (50)      NOT NULL,
    Raca            TEXT (50)      NOT NULL,
    Cor             TEXT (50)      NOT NULL,
    Sexo            TEXT (1)       NOT NULL,
    Peso            NUMERIC (6, 2),
    Proprietario_ID INTEGER        REFERENCES Proprietario (ID) 
);

INSERT INTO Pet (ID, Especie, Raca, Cor, Sexo, Peso, Proprietario_ID) VALUES (1, 'Pantera', 'srd', 'Rosa', 'M', NULL, 1);
INSERT INTO Pet (ID, Especie, Raca, Cor, Sexo, Peso, Proprietario_ID) VALUES (2, 'Pinguin', 'abc', 'Verde', 'F', '1,98', 2);

-- Table: Proprietario
DROP TABLE IF EXISTS Proprietario;

CREATE TABLE IF NOT EXISTS Proprietario (
    ID       INTEGER    PRIMARY KEY,
    Nome     TEXT (50)  NOT NULL,
    Telefone TEXT (15)  NOT NULL,
    Endereco TEXT (100) 
);

INSERT INTO Proprietario (ID, Nome, Telefone, Endereco) VALUES (1, 'Braavo', '6212345678', 'Av dos Bobos, Nº 0');
INSERT INTO Proprietario (ID, Nome, Telefone, Endereco) VALUES (2, 'Zé da Pinga', '62 9876543', NULL);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
