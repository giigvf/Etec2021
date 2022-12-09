CREATE DATABASE VENDAS;
USE VENDAS;
CREATE TABLE IF NOT EXISTS VENDAS.cidades
(ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
NOME CHAR(50),
UF CHAR(2));

CREATE TABLE IF NOT EXISTS VENDAS.clientes
(ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
NOME CHAR(40),
ENDERECO CHAR(50),
BAIRRO CHAR(40),
ID_CIDADE SMALLINT UNSIGNED NOT NULL,
CPF CHAR(14),
RG  CHAR(12),
RENDA DECIMAL,
EMAIL VARCHAR(50));

CREATE TABLE IF NOT EXISTS VENDAS.venda_cab
(ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
ID_CLIENTE SMALLINT UNSIGNED NOT NULL,
TOTAL DECIMAL);

CREATE TABLE IF NOT EXISTS VENDAS.venda_det
(ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
ID_VENDA_CAB SMALLINT UNSIGNED NOT NULL,
ID_PRODUTO SMALLINT UNSIGNED NOT NULL,
QUANTIDADE SMALLINT UNSIGNED NOT NULL,
VALOR_UNITARIO DECIMAL);

CREATE TABLE IF NOT EXISTS VENDAS.produtos
(ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
DESCRICAO CHAR (50),
CODIGO_BARRAS SMALLINT UNSIGNED NOT NULL,
ID_CATEGORIA SMALLINT UNSIGNED NOT NULL,
ESTOQUE SMALLINT UNSIGNED NOT NULL,
VALOR_COMPRA DECIMAL,
VALOR_VENDA DECIMAL);

CREATE TABLE IF NOT EXISTS VENDAS.categorias
(ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
DESCRICAO CHAR (50));