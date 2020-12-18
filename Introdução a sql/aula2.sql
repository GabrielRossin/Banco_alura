CREATE TABLE TB_CLIENTES2
(	
    "CPF" VARCHAR2(11), 
	"NOME" VARCHAR2(100), 
	"ENDERECO1" VARCHAR2(150), 
	"ENDERECO2" VARCHAR2(150), 
	"BAIRRO" VARCHAR2(50), 
	"CIDADE" VARCHAR2(50), 
	"ESTADO" VARCHAR2(2), 
	"CEP" VARCHAR2(8), 
	"IDADE" INT, 
	"SEXO" VARCHAR2(1), 
	"LIMITE_CREDITO" FLOAT(126), 
	"VOLUME_COMPRA" FLOAT(126), 
	"PRIMEIRA_COMPRA" NUMBER(1,0)
);

drop table TB_clientes3;

CREATE TABLE TABELA_DE_VENDEDORES2 (
     MATRICULA varchar(5),
     NOME varchar(100),
     PERCENTUAL_COMISSAO float
);

drop table tabela_de_vendedores2;

/* O que aprendemos
    Os tipos de dados que compõem uma tabela
    Um pouco do SQL Developer
    Como acessar o SQL Plus
    Como criar uma tabela, tanto via SQL como por assistente
    Como apagar uma tabela
*/    

