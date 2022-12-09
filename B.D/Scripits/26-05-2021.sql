use ds;
UPDATE produtos set ativo = false where estoque = 0;
UPDATE produtos set estoque_minimo = 0.20 where id_categoria in (1, 3);
UPDATE produtos set valor_compra = valor_compra * 1.15  where id_fornecedor in (1, 4);
UPDATE produtos set estoque_minimo = estoque_minimo * 0.9 where estoque between 100 and 200;
UPDATE produtos set estoque_minimo = estoque_minimo * 0.80 where estoque between 0 and 400;

