create database if not exists DS;
use DS;

insert into categorias (categoria) VALUES ('ALIMENTOS');
insert into categorias (categoria) VALUES ('BEBIDAS');
insert into categorias (categoria) VALUES ('LIMPEZA');
insert into categorias (categoria) VALUES ('HIGIENE');

insert into cidades (nome, UF) VALUES ('BARIRI', 'SP');
insert into cidades (nome, UF) VALUES ('JAU', 'SP');
insert into cidades (nome, UF) VALUES ('BAURU', 'SP');

insert into clientes (nome, endereco, id_cidade, CPF, RG, renda, email) VALUES ('JOAO DA SILVA', '13 de Maio', 1, '13105267883', '99999999j', '2000', 'joaodasilva@email.com ');
insert into clientes (nome, endereco, id_cidade, CPF, RG, renda, email) VALUES ('MARIA ANTONIA', 'AV Vitorio Grasceto', 3, '66666666663', '66666666h', '2200', 'mariaantonia@email.com');
insert into clientes (nome, endereco, id_cidade, CPF, RG, renda, email) VALUES ('PEDRO SANTOS', 'Mariano Lopes', 2, '85246975583', '64898213g', '4000', 'pedrosantos@email.com');

insert into produtos (produto, codigo_barras, id_categoria, estoque, valor_compra, valor_venda) VALUES ('ARROZ',3264852256419, 1, 2000, 20.00, 25.00);
insert into produtos (produto, codigo_barras, id_categoria, estoque, valor_compra, valor_venda) VALUES ('FEIJAO', 2547896631548, 1, 2200, 7.00, 10.00);
insert into produtos (produto, codigo_barras, id_categoria, estoque, valor_compra, valor_venda) VALUES ('SABAO EM PO',3256988764555, 3, 33, 5.55, 9.50);
insert into produtos (produto, codigo_barras, id_categoria, estoque, valor_compra, valor_venda) VALUES ('CARNE', 6664445558297, 1, 54, 27.00, 35.00);
insert into produtos (produto, codigo_barras, id_categoria, estoque, valor_compra, valor_venda) VALUES ('SABONETE', 3322665544119, 4, 99, 1.50, 3.40);
insert into produtos (produto, codigo_barras, id_categoria, estoque, valor_compra, valor_venda) VALUES ('COCA-COLA', 8854697231111, 2, 25, 2.00, 4.00);
insert into produtos (produto, codigo_barras, id_categoria, estoque, valor_compra, valor_venda) VALUES ('LINGUICA', 6985558968691, 1, 46, 5.33, 8.90);
insert into produtos (produto, codigo_barras, id_categoria, estoque, valor_compra, valor_venda) VALUES ('SHAMPOO', 5487963215693, 4, 79, 10.00, 12.40);
insert into produtos (produto, codigo_barras, id_categoria, estoque, valor_compra, valor_venda) VALUES ('DETERGENTE',8523647925662, 3,13, 6.12, 7.00);

insert into venda_cab (id_cliente, data, total) VALUES (1,29/04/2021, 133.00);
insert into venda_cab (id_cliente, data, total) VALUES (3, 30/04/2021, 67.20);
insert into venda_cab (id_cliente, data, total) VALUES (2, 30/04/2021, 169.30);

insert into venda_det (id_vendaCab, id_Produto, quantidade, valor_unitario) VALUES (1, 1, 3.000, 25.00);
insert into venda_det (id_vendaCab, id_Produto, quantidade, valor_unitario) VALUES (1, 2, 2.000,10.00);
insert into venda_det (id_vendaCab, id_Produto, quantidade, valor_unitario) VALUES (1, 3, 4.000, 9.50);
insert into venda_det (id_vendaCab, id_Produto, quantidade, valor_unitario) VALUES (2, 4, 2.500, 35.00);
insert into venda_det (id_vendaCab, id_Produto, quantidade, valor_unitario) VALUES (2, 5, 7.000, 3.40);
insert into venda_det (id_vendaCab, id_Produto, quantidade, valor_unitario) VALUES (2, 1, 2.000, 25.000);
insert into venda_det (id_vendaCab, id_Produto, quantidade, valor_unitario) VALUES (2, 6, 6.000, 4.00);
insert into venda_det (id_vendaCab, id_Produto, quantidade, valor_unitario) VALUES (3, 7, 2.000, 8.90);
insert into venda_det (id_vendaCab, id_Produto, quantidade, valor_unitario) VALUES (3, 8, 1.000, 12.40);
insert into venda_det (id_vendaCab, id_Produto, quantidade, valor_unitario) VALUES (3, 2, 3.000, 10.00);
insert into venda_det (id_vendaCab, id_Produto, quantidade, valor_unitario) VALUES (3, 9, 1.000, 7.00);





