
SELECT
nome,  UPPER(nome)  , Lower(nome)
FROM tabela_de_clientes;

SELECT nome_do_produto, INITCAP(nome_do_produto)
FROM tabela_de_produtos;

SELECT CONCAT(Endereco_1, Bairro) 
FROM tabela_de_clientes;

SELECT 
nome, 'Endereço: ' || endereco_1 || '    ' 
                            || bairro || '    '
                            || cidade || '    ' 
                            ||estado ||
        ', CEP: ' || cep
        endereco
FROM tabela_de_clientes;


SELECT nome_do_produto , LPAD(nome_do_produto, 60, '*' )
FROM tabela_de_produtos;

SELECT nome_do_produto , RPAD(nome_do_produto, 60, '*' )
FROM tabela_de_produtos;

SELECT nome_do_produto, SUBSTR(nome_do_produto, 3 , 5)
FROM tabela_de_produtos;

SELECT nome_do_produto, INSTR(nome_do_produto, '-')
FROM tabela_de_produtos;

SELECT LTRIM('                      AAAAAAA') FROM Dual;

SELECT RTRIM('AAAAAAA                                  ') FROM Dual; -- o que fica em branco é nulo

SELECT nome_do_produto,REPLACE( REPLACE(nome_do_produto, 'Litro', 'L'), 'Ls', 'L')
FROM tabela_de_produtos;

SELECT 
nome, 'Endereço: ' || endereco_1 || '    ' 
                             || bairro || '    '
                            || cidade || '    ' 
                            ||estado endereço
FROM tabela_de_clientes;

























