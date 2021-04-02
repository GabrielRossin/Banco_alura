Select
venda_sabor.tamanho , venda_sabor.ano, venda_sabor.quantida_vendida, 
--total_venda.quantida_vendida total ,
ROUND(((venda_sabor.quantida_vendida / total_venda.quantida_vendida)*100),2) || '%' ||' '
participacao
from 
(
    SELECT   tp.tamanho ,TO_CHAR(nf.data_venda, 'YYYY') ano,SUM( inf.quantidade) Quantida_vendida
    FROM itens_notas_fiscais inf
    INNER JOIN tabela_de_produtos tp
    ON inf.codigo_do_produto = tp.codigo_do_produto
    INNER JOIN notas_fiscais nf 
    ON inf.numero = nf.numero
    WHERE TO_CHAR(nf.data_venda, 'YYYY') = '2016'
    GROUP BY  tp.tamanho ,TO_CHAR(nf.data_venda, 'YYYY') 
    ORDER BY SUM( inf.quantidade) desc 
) Venda_sabor
INNER JOIN
(
    SELECT
    TO_CHAR(nf.data_venda, 'YYYY') ano ,SUM( inf.quantidade) Quantida_vendida
    FROM itens_notas_fiscais inf
    INNER JOIN tabela_de_produtos tp
    ON inf.codigo_do_produto = tp.codigo_do_produto
    INNER JOIN notas_fiscais nf 
    ON inf.numero = nf.numero
    WHERE TO_CHAR(nf.data_venda, 'YYYY') = '2016'
    GROUP BY TO_CHAR(nf.data_venda, 'YYYY') 
    ORDER BY SUM( inf.quantidade) desc 
)total_venda
ON venda_sabor.ano = total_venda.ano;