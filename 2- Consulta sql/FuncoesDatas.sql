  SELECT SYSDATE  FROM DUAL; -- PEGA DATA ATUAL
  
  SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH:MM:SS')
  FROM DUAL;
  
  SELECT SYSDATE + 10 FROM Dual;
  
  SELECT SYSDATE - 10 FROM Dual;
  
  SELECT MONTHS_BETWEEN(SYSDATE, TO_DATE('2019-01-01', 'YYYY-MM-DD'))
  FROM DUAL;
  
  SELECT ADD_MONTHS(SYSDATE, 10) FROM DUAL;
  
  SELECT NEXT_DAY(Sysdate , 'Sexta') FROM dual;
  
   SELECT Last_DAY(Sysdate) FROM dual;
   
   SELECT TRUNC(sysdate, 'year') FROM dual;
   
      SELECT Round (sysdate, 'year') FROM dual;

SELECT nome, MONTHS_BETWEEN (SYSDATE, DATA_DE_NASCIMENTO)/12 
FROM tabela_de_clientes;