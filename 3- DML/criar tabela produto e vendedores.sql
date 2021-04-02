CREATE TABLE PRODUTOS
(
    codigo          VARCHAR(10)     NOT NULL,
    descritor       VARCHAR(100)   NULL,
    sabor            VARCHAR(50)    NULL,
    tamanho        VARCHAR(50)    NULL,
    preco_lista     FLOAT NULL,
    PRIMARY KEY (codigo)
);    

CREATE TABLE VENDEDORES
(
    matricula               VARCHAR(5)      NOT NULL,
    nome                    VARCHAR(100)   NULL,
    bairro                    VARCHAR(50)    NULL,
    comissao               FLOAT               NULL,
    Data_adimissao     DATE                 NULL,
    Ferias                    INTEGER           NULL,
    PRIMARY KEY (matricula)
);
    
    
ALTER TABLE vendedores
RENAME COLUMN data_adimissao TO data_admissao;

CREATE TABLE CLIENTE
(
    CPF                           VARCHAR(11)       NOT          NULL,
    nome                          VARCHAR(100)    DEFAULT   NULL,
    endereco                    VARCHAR(150)    DEFAULT   NULL,
    bairro                         VARCHAR(50)      DEFAULT   NULL,
    cidade                        VARCHAR(50)      DEFAULT   NULL,
    estado                        VARCHAR(50)      DEFAULT   NULL,
    CEP                           VARCHAR(8)        DEFAULT   NULL,
    data_nascimento         DATE                   DEFAULT   NULL,
    idade                          INTEGER             DEFAULT   NULL,
    sexo                           VARCHAR(1)        DEFAULT  NULL,
    limite_credito               FLOAT                 DEFAULT  NULL,
    volume_compra           FLOAT                 DEFAULT  NULL,
    primeira_compra         NUMBER              DEFAULT  NULL,
    PRIMARY KEY (CPF)
);    


 




















    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    