CREATE DATABASE escola;
USE escola;
CREATE TABLE IF NOT EXISTS escola.cidades
(ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
NOME CHAR(50),
UF CHAR(2));
DROP TABLE IF EXISTS escola.cidades;