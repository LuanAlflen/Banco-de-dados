select * from produto; #visualiza dados da tabela

select preco_emb / preco_unit from produto where cod_produto = 1;

SELECT IF(
(select preco_unit from produto where cod_produto=2)<=3.00, 
(select descricao from produto where cod_produto = 2),
(select preco_emb from produto where cod_produto = 2)) as bla; 

select descricao, preco_unit, preco_emb, if(preco_unit <=3.00,"ok","erro")
from produto where cod_produto <=11;




update produto set preco_unit = if(preco_unit = 4.25,3.00,preco_unit)
 where cod_produto <=11;
 
 
 
 
 update produto set preco_unit = 3.00 where preco_unit = 4.25 
 and cod_produto <=11;

select * from produto where cod_produto <=11;


select cod_produto,round(preco_emb / preco_unit) 
from produto where cod_produto <=11;

select cod_produto,qtd_emb from produto where cod_produto<=11;

-- update produto set qtd_emb = if(
-- (select qtd_emb from produto where cod_produto<=11) 
-- (select round(preco_emb / preco_unit) 
-- from produto where cod_produto <=11),
-- (select qtd_emb from produto where cod_produto<=11),
-- (select qtd_emb from produto where cod_produto<=11));


select * from logradouro;
explain cad_usuario;

select cd_logradouro, bairros_cd_bairro, ds_logradouro_nome
from logradouro
where ds_logradouro_nome like "rua%";


#EXERCICIO 1
SELECT IF(
(select preco_emb from produto where cod_produto = 1)>25.85,
(select concat(descricao," ",preco_unit) from produto where cod_produto = 1),
'Menor que 25.85'); 

#EXERCICIO 2



