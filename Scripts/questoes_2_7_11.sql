-- Questão 2 

SELECT COUNT(*) FROM RESERVA WHERE (DIA_CHECK_IN LIKE '%2018%' OR DIA_CHECK_OUT LIKE '%2018%');

-- Questão 7

SELECT c.nome FROM CLIENTE c WHERE NOT EXISTS(SELECT * FROM DEPENDENTE d WHERE c.cpf = d.cpf_cliente) and c.sexo = 'Feminino';

-- Questão 11

create view quartosGastaramMais1000Frigobar as select distinct q.* from quarto q where q.numero in (
   select q.numero from quarto q, venda v, produto p 
   where 
   p.id = v.id_produto and q.numero = v.numero_quarto and p.tipo = 'Frigobar'
   group by q.numero
   having sum(v.quantidade * p.valor) > 1000
)
