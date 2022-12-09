CREATE DATABASE locacao;
use locacao;

CREATE TABLE IF NOT EXISTS locacao.veiculos
(ID SMALLINT AUTO_INCREMENT PRIMARY KEY,
veiculo CHAR (30) not null,
marca CHAR (30) not null,
cor CHAR (20) not null,
portas CHAR (20) not null,
ano_fab SMALLINT not null,
KM CHAR (10) not null,
revisado BOOLEAN not null,
disponivel CHAR (10) not null);

ALTER table veiculos add modelo CHAR (20) not null after marca;
ALTER table veiculos modify portas smallint not null;
ALTER table veiculos add ano_mod smallint not null after ano_fab;
ALTER table veiculos modify KM integer not null;
ALTER table veiculos add tabela_fipe decimal (10,2) not null after KM;
ALTER table veiculos add data_compra date not null after tabela_fipe;
ALTER table veiculos add IPVA BOOLEAN not null after revisado;
ALTER table veiculos modify disponivel BOOLEAN not null after IPVA;

insert into veiculos
(veiculo, marca, modelo, cor, portas, ano_fab, ano_mod, KM, tabela_fipe, data_compra, revisado, IPVA, disponivel)
values
('carro1', 'Fiat', 'modelo1', 'branco', 5, 1999, 1999, 60000, 50990, '2021-05-12', '1', '1', '0'),
('carro2', 'GM', 'modelo5', 'vermelho', 5, 2003, 2004, 0, 5880, '2021-02-01', '0', '1', '1'), --
('carro3', 'Ford', 'modelo12', 'branco', 4, 2020, 2021, 7479, 109990, '2021-02-19',  '0', '1', '0'), --
('carro4', 'Fiat', 'modelo2', 'preto', 4, 2019, 2020, 47870, 53990, '2021-05-02', '1', '0', '0'),
('carro5', 'Peugeot', 'modelo55', 'prata', 2, 2021, 2021, 130000, 74990, '2021-05-24', '1', '1', '0'),
('carro6', 'VW', 'modelo10', 'prata', 2, 2000, 2000, 300000, 30000, '2007-05-15', '0', '1', '0'), --
('carro7', 'GM', 'modelo18', 'preto', 4, 2015, 2017, 60000, 130000, '2018-05-05', '0', '1', '0'), --
('carro8', 'Ford', 'modelo3', 'branco', 2, 1999, 2000, 1000, 100050,  '2001-12-15', '1', '1', '0'), --
('carro9', 'Peugeot', 'modelo1', 'prata', 2, 1998, 1999, 50000, 80000, '2009-05-13', '0', '1', '0'), --
('carro10', 'VW', 'modelo5', 'preto', 4, 2010, 2011, 40000, 90000, '2003-05-15', '1', '0', '0'); --

UPDATE veiculos set disponivel = false, KM = KM + 200 where id = 3;
UPDATE veiculos set tabela_fipe = tabela_fipe + (5/100) where marca = 'Ford';
UPDATE veiculos set IPVA = false where ano_fab < 2001;
UPDATE veiculos set revisado = true where id in (1, 3, 6 ,9);
UPDATE veiculos set disponivel = false where ano_mod < 2000 and marca = 'Fiat';
UPDATE veiculos set revisado = true where marca = 'GM' and KM between 50000 and 100000;

delete from veiculos where KM > 200000 and ano_mod < 2005;
delete from veiculos where IPVA = false and marca = 'VW';
delete from veiculos where id in (1, 6, 8);
delete from veiculos where revisao = false and tabela_fipe < 30000;
delete from veiculos where cor = 'prata' and marca = 'Peugeot' and portas = 2;

