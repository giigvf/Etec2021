use vendas;
select id_categoria, min(estoque_minimo) menor_estoque from produtos group by Id_categoria having min(estoque_minimo) < 5;
select id_categoria, id_fornecedor, max(valor_venda) maior_valor from produtos group by id_categoria, id_fornecedor having max(valor_venda) <= 30;
select  id_fornecedor, id_categoria, avg(estoque) from produtos group by id_fornecedor, id_categoria having avg(estoque) < 20;
select id_fornecedor, id_categoria, sum(estoque) dinheiro_total from produtos group by id_fornecedor, id_categoria having sum(estoque) > 200;