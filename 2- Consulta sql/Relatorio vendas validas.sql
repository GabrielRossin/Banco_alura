
SELECT 
nf.cpf ,TO_CHAR( nf.data_venda , 'YYYY-MM') MES_ANO , SUM( inf.quantidade)  
FROM notas_fiscais nf
INNER JOIN itens_notas_fiscais inf
ON nf.numero = inf.numero
GROUP BY nf.cpf ,TO_CHAR( nf.data_venda , 'YYYY-MM');

SELECT cpf , nome , volume_de_compra FROM tabela_de_clientes;



SELECT
    cadastro.cpf , cadastro.nome , vendas.mes_ano , cadastro.volume_de_compra volume_limite ,
    vendas.volume_vendido,

Case
            WHEN cadastro.volume_de_compra <=  vendas.volume_vendido
                        THEN 'Vendas válidas'
            ELSE
                        'Vendas inválidas'
END  RESULTADO                        

FROM
(
    SELECT 
    nf.cpf ,TO_CHAR( nf.data_venda , 'YYYY-MM') MES_ANO , 
    SUM( inf.quantidade) volume_vendido
    FROM notas_fiscais nf
    INNER JOIN itens_notas_fiscais inf
    ON nf.numero = inf.numero
    GROUP BY nf.cpf ,TO_CHAR( nf.data_venda , 'YYYY-MM')
) vendas
INNER JOIN (
                        SELECT cpf , nome , volume_de_compra FROM tabela_de_clientes
                    ) cadastro
ON vendas.cpf = cadastro.cpf
WHERE vendas.mes_ano = '2018-01';






SELECT
    cadastro.cpf , cadastro.nome , vendas.mes_ano , 
    cadastro.volume_de_compra, vendas.volume_vendido volume_limite,
    (1- (cadastro.volume_de_compra / vendas.volume_vendido) *100) diferença,

Case
            WHEN cadastro.volume_de_compra <=  vendas.volume_vendido
                        THEN 'Vendas válidas'
            ELSE
                        'Vendas inválidas'
                       
END  RESULTADO                        

FROM
(
    SELECT 
    nf.cpf ,TO_CHAR( nf.data_venda , 'YYYY-MM') MES_ANO , 
    SUM( inf.quantidade) volume_vendido
    FROM notas_fiscais nf
    INNER JOIN itens_notas_fiscais inf
    ON nf.numero = inf.numero
    GROUP BY nf.cpf ,TO_CHAR( nf.data_venda , 'YYYY-MM')
) vendas
INNER JOIN (
                        SELECT cpf , nome , volume_de_compra FROM tabela_de_clientes
                    ) cadastro
ON vendas.cpf = cadastro.cpf
WHERE  cadastro.volume_de_compra >  vendas.volume_vendido;






















































   







