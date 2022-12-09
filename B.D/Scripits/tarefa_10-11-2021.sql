DROP DATABASE IF EXISTS VENDAS;

CREATE DATABASE IF NOT EXISTS VENDAS;

USE VENDAS;

CREATE TABLE IF NOT EXISTS cidades (
  id int NOT NULL AUTO_INCREMENT,
  nome varchar(40) DEFAULT NULL,
  uf char(2) DEFAULT NULL,
  PRIMARY KEY (id));

INSERT INTO cidades (NOME, UF) 
VALUES 
('JAU','SP'),
('BOCAINA','SP'),
('BARIRI','SP'),
('ITAPUI','SP'),
('DOIS CORREGOS','SP'),
('BROTAS','SP'),
('BAURU','SP'),
('MINEIROS DO TIETE','SP'),
('BARRA BONITA','SP'),
('BORACEIA', 'SP'),
('BOTUCATU', 'SP'),
('SAO PAULO','SP'),
('RIO DE JANEIRO','RJ'),
('BELO HORIZONTE','MG'),
('PORTO ALEGRE','RS'),
('SALVADOR', 'BA'),
('GOIANIA','GO'),
('CURITIBA','PR'),
('VITORIA','ES'),
('CUIABA','MT'),
('NITEROI','RJ');

  
CREATE TABLE categorias (
  Id int NOT NULL AUTO_INCREMENT,
  Descricao varchar(30) DEFAULT NULL,
  PRIMARY KEY (Id));

insert into categorias (descricao)
values
('ALIMENTOS'),
('HIGIENE'),
('LIMPEZA'),
('BEBIDAS'),
('PETSHOP'),
('JARDINAGEM'),
('UTILIDADES DOMESTICAS');

CREATE TABLE if not exists clientes (
  ID int NOT NULL AUTO_INCREMENT,
  NOME char(40) NOT NULL,
  ENDERECO char(40) NOT NULL,
  BAIRRO char(30) NOT NULL,
  ID_CIDADE smallint NOT NULL,
  CPF char(14) NOT NULL,
  RG char(12) NOT NULL,
  FONE char(14) NOT NULL,
  CELULAR char(14) NOT NULL,
  EMAIL varchar(50) NOT NULL,
  RENDA decimal(10,2) DEFAULT NULL,
  DATA_NASC date NOT NULL,
  FOTO varchar(100) NULL,
  BLOQUEADO boolean NOT NULL,
  PRIMARY KEY (ID));


INSERT INTO clientes 
VALUES 
(1,'ANTONIO APARECIDO RIBEIRO','RUA HUMAITA, 1090','CENTRO',1,'999.999.999-99','99.999.999-9','(14)9999-9999','(14)99999-9999','toto@gmail.com',5000.00,'1975-01-01',NULL,0),
(2,'TIAGO ANTONIO DA SILVA','RUA MAJOR PRADO, 44','CENTRO',2,'888.888.888-88','88.888.888-8','(14)8888-8888','(14)88888-8888','tiago@gmail.com',7000.00,'1990-02-02',NULL,1),
(3,'CHARLES SARTORI','AVENIDA COPACABANA','COPACABANA',7,'777.777.777-77','77.777.777-7','(14)7777-7777','(14)77777-7777','charles@gmail.com',12000.00,'1978-03-03',NULL,0),
(4,'MARCOS ROGERIO PAGAGNOTTI','RUA JOSE DE ABREU','CENTRO',8,'666.666.666-66','66.666.666-6','(66)6666-6666','(66)66666-6666','marcos@gmail.com',8000.00,'1970-04-04',NULL,0),
(5,'EDER ALEXANDRO DE LIMA','RUA TIETE','CENTRO',11,'555.555.555-55','55.555.555-5','(14)5555-5555','(14)55555-5555','edinho@gmail.com',3500.00,'1985-05-05',NULL,1),
(6,'TELMA JULIANA SILVA','RUA EDGARD FERRAZ','CENTRO',5,'444.444.444-44','44.444.444-4','(14)4444-4444','(14)44444-4444','telma@gmail.com',9000.00,'1977-06-06',NULL,0),
(7,'EVERTON GONZALES SETTE','RUA JOSE MONARI','CENTRO',9,'333.333.333-33','33.333.333-3','(33)3333-3333','(33)33333-3333','everton@gmail.com',2500.00,'1981-07-07',NULL,1),
(8,'ANDRE ZAGO','RUA IPANEMA','IPANEMA',12,'222.222.222-22','22.222.222-2','(22)2222-2222','(22)22222-2222','andre@gmail.com',8500.00,'1972-08-08',NULL,0);


CREATE TABLE if not exists fornecedores (
  ID int NOT NULL AUTO_INCREMENT,
  RAZAO_SOCIAL char(40) NOT NULL,
  FANTASIA char(30) NOT NULL,
  ENDERECO char(40) NOT NULL,
  BAIRRO char(30) NOT NULL,
  ID_CIDADE smallint NOT NULL,
  CNPJ char(18) NOT NULL,  
  FONE char(14) NOT NULL, 
  EMAIL varchar(50) NOT NULL,  
  PRIMARY KEY (ID));


INSERT INTO fornecedores
VALUES 
(1,'ALIMENTOS SILVA ME', 'SILVA ALIMENTOS', 'RUA HUMAITA, 1090','CENTRO',1,'99.999.999/9999-99', '(14)9999-9999','silva_alimentos@gmail.com'),
(2,'TIAGO DA SILVA ME', 'ATACADAO DO TIAGO', 'RUA MAJOR PRADO, 44','CENTRO',2,'88.888.888/8888-88','(14)8888-8888','atacadao_tiago@gmail.com'),
(3,'CHARLES SARTORI LTDA', 'ATACADAO DO SARTORI', 'AVENIDA COPACABANA','COPACABANA',7,'77.777.777/7777-77','(14)7777-7777','atacadao_sartori@gmail.com');


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


CREATE TABLE venda_cab (
  Id int NOT NULL AUTO_INCREMENT,
  id_cliente int NOT NULL,
  data date NOT NULL,
  total decimal(10,2) not null,
  PRIMARY KEY (Id));

insert into venda_cab
(id_cliente, data, total)
values
(1, '2020-01-05', 42.9),
(2, '2020-03-06', 23.3),
(3, '2020-05-08', 16.2),
(4, '2020-01-15', 26.6),  
(5, '2020-07-18', 29.4),  
(6, '2020-01-23', 44.6),  
(7, '2021-01-25', 23),  
(8, '2021-03-09', 23.7),  
(1, '2020-11-05', 20.8),  
(2, '2020-12-07', 36.5),  
(3, '2021-01-03', 21.4),
(5, '2020-07-01', 49.8);


CREATE TABLE venda_det (
  Id int NOT NULL AUTO_INCREMENT,
  id_venda int NOT NULL,
  id_produto int NOT NULL,
  qtde  decimal (10,3),
  valor_unit decimal(10,2) not null,
  PRIMARY KEY (Id));
    
insert into venda_det
(id_venda, id_produto, qtde, valor_unit)
values
(1, 1, 1, 18.9),
(1, 2, 2, 12),
(2, 3, 1, 5.5),
(2, 4, 2, 8.9),  
(3, 5, 1, 7.4),  
(3, 6, 2, 3.2),  
(4, 7, 1, 8.8),  
(4, 8, 2, 8.9),  
(5, 9, 1, 13.8),  
(5, 10, 2, 7.8),  
(6, 11, 1, 6.8),
(6, 1, 2, 18.9),
(7, 2, 1, 12),
(7, 13, 2, 5.5),
(8, 4, 1, 8.9),
(8, 5, 2, 7.4),
(9, 6, 1, 3.2),
(9, 7, 2, 8.8),
(10, 8, 1, 8.9),
(10, 9, 2, 13.8),
(11, 10, 1, 7.8),
(11, 11, 2, 6.8),
(12, 2, 1, 12),
(12, 1, 2, 18.9);

select cl.nome, ci.nome from clientes cl inner join cidades ci on cl.id_cidade = ci.id; 
-- isso é igual à: select clientes.nome, cidades.nome from clientes inner join cidades on clientes.id_cidade = cidades.id;

select cl.*, ci.nome from clientes cl inner join cidades ci on cl.id_cidade = ci.id;

-- exercício 1 --    
select produto, sum(qtde) 
from produtos 
inner join venda_det on produtos.id=venda_det.id_produto 
group by produto;

-- exercício 2 --
select produto, sum(qtde) 
from produtos 
inner join venda_det on produtos.id=venda_det.id_produto 
group by id_categoria;

-- exercício 3 --
select f.razao_social, produto, sum(vd.qtde) 
from fornecedores f
inner join produtos p on p.id_fornecedor = f.id
inner join venda_det vd on vd.id_produto = p.id
group by f.id;

-- exercício 4 --
select c.nome, sum(v.total)
from clientes c 
inner join venda_cab v on v.id_cliente = c.id
group by c.id;

-- exercício 5 --
select ci.nome, sum(v.total)
from cidades ci
inner join clientes c on c.id_cidade = ci.id
inner join venda_cab v on v.id_cliente = c.id
group by ci.id;
   
select ci.nome, produto, count(vd.qtde)
from produtos p
inner join cidades ci on ci.id = p.id
inner join venda_det vd on vd.id = ci.id
group by ci.id;

-- exercício 6 --
select ci.nome, count(*)
from clientes c
inner join cidades ci on c.id_cidade = ci.id
inner join venda_cab v on v.id_cliente = c.id_cidade
group by ci.nome;

-- exercício 7 --
select ci.nome, sum(vd.qtde)
from produtos p
inner join venda_det vd on vd.id_produto = p.id
inner join venda_cab v on vd.id_venda = v.id
inner join clientes c on v.id_cliente = c.id
inner join cidades ci on c.id_cidade = ci.id
group by ci.nome having ci.nome = 'JAU';
   
-- exercício 8 --
select id_fornecedor, produto, data_ultima_venda from produtos p 
inner join venda_det vd on vd.id_produto = p.id
 group by produto having id_fornecedor = 1;

-- exercício 9 --
select id_produto, data_ultima_venda 
from venda_det vd 
inner join produtos p on vd.id_produto = p.id 
group by data_ultima_venda;

-- exercício 10--
select data_ultima_venda, sum(qtde) 
from produtos p 
inner join venda_det vd on vd.id_produto= p.id 
group by data_ultima_venda;

-- exercício 11--
select id_venda, produto, qtde 
from venda_det vd 
inner join produtos p on vd.id_produto = p.id;

-- exercício 12--
select * from clientes c 
inner join cidades ci on c.id_cidade = ci.id 
having ci.nome = 'SÃO PAULO';
    
-- exercício 13--
select nome, produto, descricao from clientes c 
inner join produtos p on p.id_categoria = p.id 
inner join categorias ct on p.id_categoria = ct.id
group by nome 
having descricao = 'ALIMENTOS';

-- exercíco 14 --
select ci.nome, data_ultima_venda, descricao from cidades ci 
inner join clientes cl on cl.id_cidade = ci.id
inner join venda_cab vc on vc.id_cliente = cl.id
inner join venda_det vd on vd.id_venda = vc.id
inner join produtos p on vd.id_produto = p.id
inner join categorias c on p.id_categoria = c.id
group by nome 
having descricao = 'HIGIENE';

-- exercício 15 --
select cl.nome, ci.nome, cl.endereco, p.produto, vd.qtde, c.descricao, f.razao_social, id_fornecedor
from clientes cl
inner join cidades ci on cl.id_cidade = ci.id
inner join venda_cab vc on vc.id_cliente = cl.id
inner join venda_det vd on vd.id_venda = vc.id
inner join produtos p on vd.id_produto = p.id
inner join categorias c on p.id_categoria = c.id
inner join fornecedores f on p.id_fornecedor = f.id
group by cl.nome
having id_fornecedor = 1;