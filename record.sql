set SERVEROUTPUT on;
declare
    type TFuncionario IS RECORD(
        nome varchar2(40),
        depto varchar2(20),
        salario number(10,2)
    );
    
    v_func TFuncionario;
begin
    select a.first_name, a.department_id, a.salary
    into v_func.nome, v_func.depto, v_func.salario
    from employees a
    where a.employee_id = &emp_id;
    
    dbms_output.put_line(
        'Nome do funcionario: ' || v_func.nome || chr(10) ||
        'Depto: ' || v_func.depto || chr(10) ||
        'Salario: ' || to_char(v_func.salario)
    );
end;