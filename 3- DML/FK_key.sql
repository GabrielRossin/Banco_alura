CREATE TABLE tabela_de_vendas
(
    numero                              VARCHAR(5)     NOT    NULL,
    data_venda                        DATE                           NULL,
    CPF                                   VARCHAR(11)   NOT    NULL,
    matricula                            VARCHAR(5)     NOT    NULL,
    imposto                              FLOAT NULL,
    
    PRIMARY KEY (numero),
    FOREIGN KEY (cpf)           REFERENCES  CLIENTE (cpf),
    FOREIGN KEY (matricula)  REFERENCES   VENDEDORES(matricula)
 );   
 
 /* Alter table tabela_de_vendas
        add constraint fk_clientes 
        foreign key (cpf) references Cliente (cpf)
        
        Alter table tabela_de_vendas
        add constraint fk_vendedores
        foreign key(matricula) references vendedores(matricula
*/



