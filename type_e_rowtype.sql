SET SERVEROUTPUT ON;
DECLARE 
    v_id employees.employee_id%TYPE;
    v_name employees.first_name%TYPE;
    v_sal employees.salary%TYPE;
    
BEGIN
    SELECT a.employee_id, a.first_name, a.salary INTO v_id, v_name, v_sal
    FROM employees a
    WHERE a.employee_id=&emp_id; 
    
    dbms_output.PUT_LINE('-----------------------------------');
    dbms_output.put_line('ID: ' || to_char(v_id));
    dbms_output.put_line('Nome: ' || to_char(v_name));
    dbms_output.put_line('Salário: ' || to_char(v_sal));
    dbms_output.PUT_LINE('-----------------------------------');
END;

SET SERVEROUTPUT ON
DECLARE
    v_emp employees%ROWTYPE;
BEGIN
    SELECT * INTO v_emp
    FROM EMPLOYEES
    WHERE employee_id=&emp_id;
    
    dbms_output.put_line('-------------------------');
    dbms_output.put_line('ID: '  || TO_CHAR(v_emp.employee_id));
    dbms_output.put_line('Nome: '  || TO_CHAR(v_emp.first_name));
    dbms_output.put_line('Sobrenome: '  || TO_CHAR(v_emp.salary));
    dbms_output.put_line('-------------------------');
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Matrícula não existe');
END;