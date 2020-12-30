SELECT * FROM tabela_de_clientes;

SELECT CPF, NOME, ENDERECO_1, ENDERECO_2, BAIRRO, CIDADE, ESTADO, CEP, DATA_DE_NASCIMENTO, IDADE, SEXO,
LIMITE_DE_CREDITO, VOLUME_DE_COMPRA, PRIMEIRA_COMPRA
FROM TABELA_DE_CLIENTES;

SELECT CPF AS IDENTIFICADOR, NOME AS CLIENTE FROM TABELA_DE_CLIENTES;

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Uva';

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Laranja';

SELECT * FROM TABELA_DE_PRODUTOS WHERE EMBALAGEM = 'PET';

SELECT * FROM TABELA_DE_PRODUTOS WHERE EMBALAGEM = 'pet'; -- não retorna nada pois pet está cadastrado com maiuscula

SELECT * FROM TABELA_DE_PRODUTOS WHERE PRECO_DE_LISTA > 19.50;



SELECT * FROM tabela_de_produtos
where sabor = 'Manga' or tamanho = '470 ml' ;

SELECT * FROM tabela_de_produtos
where sabor = 'Manga' and tamanho = '470 ml' ;


SELECT * FROM tabela_de_produtos
where not (sabor = 'Manga' and tamanho = '470 ml') ;

SELECT * FROM tabela_de_produtos
where not (sabor = 'Manga' or tamanho = '470 ml') ;

SELECT * FROM tabela_de_produtos
where (sabor = 'Manga' and not tamanho = '470 ml') ;

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR IN ('Laranja','Manga');

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Laranja' or SABOR = 'Manga';



SELECT * FROM TABELA_DE_CLIENTES WHERE CIDADE IN ('Rio de Janeiro','Sao Paulo') AND IDADE >= 20;

SELECT * FROM TABELA_DE_CLIENTES WHERE CIDADE IN ('Rio de Janeiro','Sao Paulo') AND (IDADE >= 20 AND IDADE <= 22);

SELECT * FROM tabela_de_clientes
WHERE nome LIKE '%Mattos';


SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR LIKE '%Maca%';

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR LIKE '%Maca%' AND EMBALAGEM = 'PET';

/*
o que aprendemos
A importância de conhecer a base de dados antes de fazer as consultas
Os comandos de consultas e como podemos filtrá-las
Como podemos mesclar filtros condicionais com AND e OR
Que podemos usar operadores condicionais nos filtros que envolvem valores
Como funciona o comando LIKE
*/























