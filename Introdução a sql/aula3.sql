INSERT INTO TABELA_DE_VENDEDORES 
(MATRICULA, NOME, PERCENTUAL_COMISSAO) 
VALUES 
(
     '00233','João Geraldo da Fonseca',0.10
);

INSERT INTO TB_PRODUTOS
(PRODUTOS, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES
('1037797','Clean - 2 Litros - Laranja', 'PET',
'2 Litros','Laranja',16.01);

INSERT INTO TB_PRODUTOS
(PRODUTOS, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES
('1000889','Sabor da Montanha - 700 ml - Uva', 'Garrafa',
'700 ml','Uva',6.31);

INSERT INTO TB_PRODUTOS
(PRODUTOS, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES
('1004327','Videira do Campo - 1,5 Litros - Melância', 'PET',
'1,5 Litros','Melância',19.51);

--SELECT * FROM TB_PRODUTOS;

INSERT INTO tabela_de_vendedores

VALUES
('00235','MÁRCIO ALMEIDA SILVA',0.08);


INSERT INTO tabela_de_vendedores

VALUES
('00236','CLÁUDIA MORAIS',0.08);


INSERT INTO TB_PRODUTOS 
(PRODUTOS,  NOME, EMBALAGEM, TAMANHO, SABOR,PRECO_LISTA) 
VALUES
('544931', 'Frescor do Verão - 350 ml - Limão', 'PET', '350 ml','Limão',3.20);

INSERT INTO TB_PRODUTOS 
(PRODUTOS,  NOME, EMBALAGEM, TAMANHO, SABOR,PRECO_LISTA) 
VALUES
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);

UPDATE tb_produtos
SET embalagem = 'Lata' , 
        preco_lista = 2.46
WHERE produtos = '544931';

UPDATE tb_produtos 
SET embalagem = 'Garrafa'
WHERE produtos = '1078680'
;

--SELECT  * FROM tb_produtos;

UPDATE tabela_de_vendedores

SET percentual_comissao = 0.11
WHERE matricula = 00236;

UPDATE tabela_de_vendedores

SET nome = 'José Geraldo da Fonseca Junior'
WHERE matricula = 00233;

DELETE 
FROM tb_produtos
WHERE produtos = 1078680
;

DELETE 
FROM tabela_de_vendedores
WHERE matricula = 00233
;

ALTER TABLE tb_produtos
ADD CONSTRAINT pk_tb_produtos 
PRIMARY KEY(produtos)
;


ALTER TABLE TB_CLIENTES 
ADD CONSTRAINT pk_tb_clientes
PRIMARY KEY (cpf);

ALTER TABLE tb_clientes
add data_nascimento date;

INSERT INTO tb_clientes 
(CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO,
LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA, DATA_NASCIMENTO)
VALUES
( 
    '00388934505', ' João da Silva', 'Rua projetada A número 10', NULL, 'Vila Roman', 
    ' Três rios',' RJ ','22222-222', 53, 'M', 20000.00, 2000, 0, 
      TO_DATE ('12/10/1965','DD/MM/YYYY')
);


drop table tabela_de_vendedores;

CREATE TABLE tabela_de_vendedores
(
    matricula int ,
    nome VARCHAR(50),
    comissao FLOAT(50),
    data_admissao DATE,
    ferias NUMBER(1),
    PRIMARY KEY (matricula)
);    

INSERT INTO tabela_de_vendedores
(matricula , nome, comissao,data_admissao,ferias)
VALUES
('00235','Márcio Almeida Silva',0.08,TO_DATE('15/08/2014','DD/MM/YYYY'),0);


INSERT INTO tabela_de_vendedores
(matricula , nome, comissao,data_admissao,ferias)
VALUES
('00236','Cláudia Morais',0.08,TO_DATE('17/09/2013','DD/MM/YYYY'),1);

INSERT INTO tabela_de_vendedores
(matricula , nome, comissao,data_admissao,ferias)
VALUES
('00237','Roberta Martins',0.11,TO_DATE('18/03/2017','DD/MM/YYYY'),1);

INSERT INTO tabela_de_vendedores
(matricula , nome, comissao,data_admissao,ferias)
VALUES
('00238','Péricles Alves',0.11,TO_DATE('21/08/2016','DD/MM/YYYY'),0);



INSERT INTO TB_PRODUTOS (
    PRODUTOS, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA
) VALUES (
    '1040107', 'Light - 350 ml - Melância', 'Lata', '350 ml', 'Melância', 4.56
);

INSERT INTO TB_PRODUTOS (
    PRODUTOS, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA
) VALUES (
    '1037797', 'Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja', 16.01
);

INSERT INTO TB_PRODUTOS (
    PRODUTOS, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA
) VALUES (
    '1000889', 'Sabor da Montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva', 6.31
);

INSERT INTO TB_PRODUTOS (
    PRODUTOS, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA
) VALUES (
    '1004327', 'Videira do Campo - 1,5 Litros - Melância', 'PET', '1,5 Litros', 'Melância', 19.51
);

INSERT INTO TB_PRODUTOS (
    PRODUTOS, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA
) VALUES (
    '544931', 'Frescor do Verão - 350 ml - Limão', 'PET', '350 ml', 'Limão', 3.20
);

INSERT INTO TB_PRODUTOS (
    PRODUTOS, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA
) VALUES (
    '1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml', 'Manga', 5.18
);
    

select * from tb_produtos;


UPDATE tb_produtos
SET embalagem = 'Lata',
        preco_lista = 2.46
WHERE produtos = '544931';

UPDATE tb_produtos
SET embalagem = 'Garrafa'
WHERE produtos = '1078680';

delete from tb_produtos
WHERE produtos = '1078680';




/* 
O que aprendemos
A incluir dados em uma tabela, de diversas formas
Como alterar um dado já existente na tabela
Como apagar um dado
A importância das chaves primárias e o cuidado que temos que ter ao criá-las
A manipular campos lógicos e de datas

*/















