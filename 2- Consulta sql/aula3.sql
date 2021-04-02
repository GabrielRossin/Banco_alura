SELECT embalagem from tabela_de_produtos;

SELECT DISTINCT embalagem from tabela_de_produtos;

SELECT DISTINCT sabor from tabela_de_produtos;

SELECT DISTINCT sabor from tabela_de_produtos
where sabor = 'Laranja';

SELECT DISTINCT embalagem, sabor from tabela_de_produtos;

SELECT COUNT( DISTINCT bairro) FROM tabela_de_clientes
WHERE cidade = 'Rio de Janeiro';

SELECT DISTINCT bairro FROM tabela_de_clientes
WHERE cidade = 'Rio de Janeiro';

SELECT * FROM tabela_de_produtos
WHERE ROWNUM < 4;  -- retorna as 3 primeiras linhas

SELECT * FROM tabela_de_produtos
WHERE ROWNUM <= 4;  -- retorna as 4 primeiras linhas

SELECT ROWNUM, codigo_do_produto, nome_do_produto from tabela_de_produtos;

SELECT ROWNUM, codigo_do_produto, nome_do_produto from tabela_de_produtos
WHERE ROWNUM < 5;

SELECT * FROM notas_fiscais
WHERE ROWNUM <= 10 AND data_venda = TO_DATE('01/01/2017', 'DD-MM-YYYY');

SELECT * FROM tabela_de_produtos;

SELECT * FROM tabela_de_produtos
ORDER BY preco_de_lista;

SELECT * FROM tabela_de_produtos
ORDER BY preco_de_lista DESC;

SELECT * FROM tabela_de_produtos
ORDER BY nome_do_produto;

SELECT * FROM tabela_de_produtos
ORDER BY embalagem DESC, nome_do_produto ASC;

SELECT estado, SUM(Limite_de_credito) total_Credito from tabela_de_clientes
GROUP BY estado;


Select embalagem, MAX(preco_de_lista) from tabela_de_produtos
GROUP BY embalagem;

SELECT embalagem, COUNT(*)  from tabela_de_produtos
GROUP BY embalagem;

SELECT bairro, sum(Limite_de_credito) from tabela_de_clientes
GROUP BY bairro;

SELECT bairro, sum(Limite_de_credito) from tabela_de_clientes
WHERE cidade = 'Rio de Janeiro'
GROUP BY bairro; 

SELECT estado, bairro, SUM(Limite_de_Credito) FROM tabela_de_clientes
group by estado,bairro ORDER BY bairro;

SELECT COUNT(quantidade) FROM ITENS_NOTAS_FISCAIS
WHERE codigo_do_produto = '1101035' AND QUANTIDADE = 99;

SELECT nome_do_produto, preco_de_lista,
(CASE
            WHEN preco_de_lista >= 12 
                        THEN 'PRODUTO CARO'
                        
            WHEN preco_de_lista >= 7 and preco_de_lista < 12 
                        THEN 'PRODUTO EM CONTA'
            ELSE 
                    'PRODUTO BARATO'
END) AS STATUS_PRECO
FROM tabela_de_produtos
WHERE sabor = 'Manga';


SELECT embalagem,
(CASE
            WHEN preco_de_lista >= 12 
                        THEN 'PRODUTO CARO'
                        
            WHEN preco_de_lista >= 7 and preco_de_lista < 12 
                        THEN 'PRODUTO EM CONTA'
            ELSE 
                    'PRODUTO BARATO'
END) AS STATUS_PRECO,
AVG(preco_de_lista)
FROM tabela_de_produtos
GROUP BY embalagem,(CASE
            WHEN preco_de_lista >= 12 
                        THEN 'PRODUTO CARO'
                        
            WHEN preco_de_lista >= 7 and preco_de_lista < 12 
                        THEN 'PRODUTO EM CONTA'
            ELSE 
                    'PRODUTO BARATO'
END);


SELECT data_de_nascimento,
(CASE

        WHEN  TO_CHAR(data_de_nascimento, 'YYYY') <= 1990 
            THEN 'Velho'
        
        WHEN  TO_CHAR(data_de_nascimento, 'YYYY') > 1990  AND
                    TO_CHAR(data_de_nascimento, 'YYYY') <= 1995
            THEN 'Jovens'
       
        ELSE
            'Crianças' 
              
END) AS CLASSIFICAÇÃO 
FROM tabela_de_clientes
ORDER BY data_de_nascimento ;


SELECT estado, SUM(limite_de_credito) SOMA_LIMITE FROM tabela_de_clientes
GROUP BY estado
HAVING SUM(limite_de_credito) >= 900000;


SELECT embalagem, MAX(preco_de_lista) Maior_Preço, MIN(preco_de_lista) Menor_preço
FROM tabela_de_produtos
GROUP BY embalagem
HAVING SUM(preco_de_lista) <= 80;


SELECT cpf , COUNT(*) FROM notas_fiscais
WHERE TO_CHAR(data_venda,'YYYY') = '2016'
GROUP BY cpf
HAVING COUNT(*) > 2000;


/*
Nesta aula, aprendemos:

Como apresentar somente linhas distintas em uma seleção
A ordenar a saída da seleção
Como agrupar linhas por um conjunto de campos e aplicar um critério de agrupamento sobre os campos numéricos
O comando HAVING, que aplica um filtro usando como condição os campos numéricos agrupados
Como limitar a saída das consultas
A usar o CASE para classificar um determinado campo por um critério
*/



























