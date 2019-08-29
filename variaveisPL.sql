SET SERVEROUTPUT ON
DECLARE

v_tot_sal NUMBER(10,2);
v_depto NUMBER;
v_qtd INT;

BEGIN
    v_depto := 100;
    SELECT SUM (a.salary), count(*) qtd
        INTO v_tot_sal, v_qtd
        FROM employees a WHERE a.department_id = v_depto;
        
    dbms_output.put_line ('Total de salario depto ' || v_depto ||' � '|| v_tot_sal);
    dbms_output.put_line ('Total de colaboradores � ' || v_qtd);
    dbms_output.put_line ('M�dia de Sal�rio ' || round(v_tot_sal/v_qtd, 2));

END;