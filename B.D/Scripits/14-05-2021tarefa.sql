use ds;
UPDATE produtos set estoque = estoque - 5, data_ultima_venda = '2021-05-19' where id = 3;

UPDATE produtos set estoque = 0, ativo = false where id = 11;

UPDATE produtos set valor_compra = valor_compra * 1.15 where id_fornecedor = 1;    -- ou (valotr_compra * 15/100)

UPDATE produtos set valor_venda = valor_venda * 1.2 where id_categoria =2;  -- ou (valor_venda * 20/100)

UPDATE produtos set estoque = estoque + 30, data_ultima_compra = '2021-05-19' where id_categoria = 3 and id_fornecedor = 2;

UPDATE produtos set valor_venda = valor_compra * 1.3 where id_categoria = 1;

UPDATE produtos set estoque = estoque - 5 where id_fornecedor = 2;

UPDATE produtos set estoque_minimo = estoque / 2 where id_categoria =3;  -- ou (estoque * 0.5)

UPDATE produtos set estoque = estoque - 1, data_ultima_venda = '2021-05-19' where id= 1;
UPDATE produtos set estoque = estoque - 2, data_ultima_venda = '2021-05-19' where id= 5;
UPDATE produtos set estoque = estoque - 1, data_ultima_venda = '2021-05-19' where id= 8;
UPDATE produtos set estoque = estoque - 3, data_ultima_venda = '2021-05-19' where id= 10;

UPDATE produtos set valor_venda = valor_venda * 1.15 where id_categoria = 1 or id_categoria = 3; -- duas ou mais campos ao mesmo tempo ou "id_categoria in (1, 3, 4)"

UPDATE produtos set valor_venda = valor_venda * 1.15 where id_categoria in (1, 3, 4);

UPDATE produtos set valor_venda = valor_venda / 0.9 where estoque between 100 and 200; -- where estoque >= 100 and estoque <= 200

UPDATE produtos set valor_venda = valor_venda * 0.95 where data_ultima_venda between '2021-01-01' and '2021-03-31';




