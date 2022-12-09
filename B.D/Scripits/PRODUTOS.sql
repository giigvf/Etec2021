CREATE DATABASE ATIVIDADE;
USE ATIVIDADE;
CREATE TABLE IF NOT EXISTS ATIVIDADE.produto
(ID smallint unsigned primary key not null,
produtos CHAR (40),
Barras bigint,
Quantidade DECIMAL(10,2),
Estoque int,
ID_Cliente bigint, 
Valor_Compra INTEGER,
Categoria CHAR (20),
Data_Cadastro CHAR (12),
Data_Venda date,
Estoque_Minimo DECIMAL (10,3));

ALTER table produto rename produtos;
ALTER table produtos change produtos produto CHAR (40);
ALTER table produtos change Barras Codigo_Barras CHAR (13);
ALTER table produtos add ID_Fornecedor BIGINT after Codigo_Barras;
ALTER table produtos drop column Quantidade;
ALTER table produtos change Categoria ID_Categoria smallint;
ALTER table produtos modify Estoque decimal (10,3);
ALTER table produtos modify Valor_Compra decimal (10,2);
ALTER table produtos add Valor_Venda decimal (10,2) after Valor_Compra;
ALTER table produtos modify Data_Cadastro date;
ALTER table produtos add Data_Utima_Venda date after Data_Cadastro;
ALTER table produtos add Ativo bool not null after Data_Utima_Venda;
ALTER table produtos drop column ID_Cliente;
ALTER table produtos drop column Data_Venda;


