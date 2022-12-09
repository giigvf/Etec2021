use vendas;
-- 1
select * from cidades where UF = "sp"; 
-- 2
select nome from clientes where data_nasc < "2003-10-04"; 
-- 3
select * from clientes where email not like "%gmail%"; 
-- 4
select * from produtos where estoque < estoque_minimo; 
-- 5
select * from produtos where valor_venda < (valor_compra + (valor_compra/2)); 
-- 6
select * from produtos where estoque < 0 and id_fornecedor = 1 and id_categoria = 2; 
-- 7
select avg(valor_compra) from produtos; 
-- 8
select avg(data_nasc) from clientes where id_cidade = 1; 
-- 9
select min(valor_venda) from produtos where id_fornecedor = 3 and valor_venda > 100; 
-- 10
select sum(valor_venda and valor_compra) from produtos group by id_fornecedor;