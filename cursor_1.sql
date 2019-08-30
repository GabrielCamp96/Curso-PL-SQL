declare
    v_idfunc employees.employee_id%type;
    v_nome employees.first_name%type;
    v_salario employees.salary%type;

cursor cs_salario_top_10 is
    select a.employee_id, a.first_name, a.salary
    from employees a
    order by a.salary desc;
    
begin
    open cs_salario_top_10;
    
    for i in 1..10 loop
        fetch cs_salario_top_10 into v_idfunc, v_nome, v_salario;
        dbms_output.put_line(v_idfunc || ' - ' || v_nome || ' - ' || v_salario);
    end loop;
    
    close cs_salario_top_10;
end;