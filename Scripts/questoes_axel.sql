-- Questão 5
SELECT DISTINCT c.* FROM CLIENTE c, AVALIACAO a WHERE (a.nota >= (SELECT AVG(nota) FROM AVALIACAO) AND a.cpf_cliente = c.cpf);

-- Questão 6

SELECT c.cpf, c.email, c.nome, count(*) as Num_Dependente 
FROM CLIENTE c, DEPENDENTE d
WHERE  c.cpf = d.cpf_cliente AND c.cpf IN 
	(SELECT CPF_CLIENTE FROM HOSPEDA 
		WHERE DIA_CHECK_IN LIKE '%2018%' 
		OR    DIA_CHECK_OUT LIKE '%2018%')
GROUP BY c.cpf, c.email, c.nome
ORDER BY Num_Dependente;


-- Questão 9

select id, nome, valor, sum(v.quantidade * p.valor) as total_vendas from produto p, venda v 
where p.id = v.id_produto
group by id, nome, valor
having sum(v.quantidade * p.valor) < 500
