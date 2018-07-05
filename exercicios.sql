#EXERCICIO 1 :)
SELECT IF(
(select preco_emb from produto where cod_produto = 1)>25.85,
(select concat(descricao," ",preco_unit) from produto where cod_produto = 1),
'Menor que 25.85'); 

#EXERCICIO 2 :(

select preco_unit, cod_produto, if(preco_unit = 0.10, 'é igual', 'não é igual')from produto where cod_produto <= 150; 

#EXERCICIO 3 :)
select nome from cad_usuario;
select nome, if(nome LIKE 'ni%', true, false) from cad_usuario;

#EXERCICIO 4 :(

#EXERCICIO 5 :(
set sql_safe_updates = 0;

update logradouro
set tipo_logradouro_cd_tipolog = (select cd_tipo_logradouro from tipo_logradouro
where desc_tip_logradouro = 'Rua')
where ds_logradouro_nome like 'Rua%';

#select * from logradouro where cd_tipo_logradouro = 0;

#EXERCICIO 6

