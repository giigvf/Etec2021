
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
('MATERIAL BASICO'),
('FERRAMENTAS'),
('TINTAS'),
('MOVEIS E DECORACAO'),
('ESQUADRIAS'),
('PISOS E REVESTIMENTOS'),
('MOVEIS E DECORACAO'),
('ELETRICA'),
('HIDRAULICA'),
('LOUCAS E METAIS'),
('ILUMINACAO');

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

select * from cidades where uf in ('sp', 'mg', 'rs');
select * from cidades order by uf, nome desc;
select nome, endereco, celular from clientes;
select nome from clientes where bloqueado = 0 and id_cidade = 1 order by renda desc;
select * from clientes where bairro = 'centro' and id_cidade = 9 order by nome; 
select * from clientes where data_nasc = '1970-01-01';
select * from clientes where  renda > 5000 and Bloqueado > 0 and data_nasc > '1980-12-31';
  
