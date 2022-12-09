use ds;

create table if not exists produtos
(id bigint auto_increment primary key,
produto char(40) not null,
codigo_barras char(13) not null,
id_fornecedor bigint not null,
id_categoria smallint not null,
estoque decimal (10,3) not null,
estoque_minimo decimal (10,3) not null,
valor_compra decimal (10,2) not null,
valor_venda decimal (10,2) not null,
data_cadastro date not null,
data_ultima_venda date not null,
ativo bool not null);


insert into produtos
(produto, codigo_barras, id_fornecedor, id_categoria, estoque, estoque_minimo, valor_compra, valor_venda, data_cadastro, data_ultima_venda, ativo)
values
('ARROZ', '1111111111111', 1, 1, 100, 50, 15, 18.9, '2020-01-05', '2021-05-12', true),
('FEIJAO', '2222222222222', 2, 1, 150, 60, 8.9, 12, '2020-01-05', '2021-05-10', true),
('SABONETE', '3333333333333', 3, 2, 40, 20, 2.3, 5.5, '2020-01-05', '2021-05-08', true),
('DETERGENTE', '4444444444444', 2, 3, 60, 30, 5.4, 8.9, '2020-01-05', '2021-05-08', true),
('FARINHA', '5555555555555', 1, 1, 100, 30, 4.2, 7.4, '2020-01-05', '2021-05-05', true),
('CREME DENTAL', '6666666666666', 3, 2, 80, 20, 1.6, 3.2, '2020-01-05', '2021-05-03', true), 
('SABAO EM PO', '7777777777777', 2, 3, 95, 30, 4.8, 8.8, '2020-01-05', '2021-05-11', true),
('PO DE CAFE', '8888888888888', 1, 1, 70, 30, 4.2, 8.9, '2020-01-05', '2021-05-12', true),
('SHAMPOO', '9999999999999', 3, 2, 45, 15, 8.8, 13.8, '2020-01-05', '2021-05-09', true),
('REFRIGERANTE', '1234567891234', 2, 4, 60, 30, 4.3, 7.8, '2020-01-05', '2021-05-12', true),
('SUCO', '1234567891333', 3, 4, 50, 15, 3.3, 6.8, '2020-01-05', '2021-05-10', true);


UPDATE produtos set ativo = false where id = 11;
UPDATE produtos set estoque = estoque - 1 where id =1;
UPDATE produtos set estoque = estoque + 20 where id =1;
UPDATE produtos set valor_venda = 11 where id = 2;
UPDATE produtos set valor_venda = valor_venda * 0.9 where id = 3;



