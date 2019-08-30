declare
    cursor cs_func(p_menor number, p_maior number) is
        select a.employee_id, a.first_name, a.salary
        from employees a
        where a.salary between p_menor and p_maior
        order by a.salary desc;

begin
    dbms_output.put_line('Funcionarios com média entre 1000 e 9999');
    for r_func in cs_func(1000,9999) loop
        dbms_output.put_line(r_func.employee_id || ' - ' || r_func.first_name || ' - ' || r_func.salary);
    end loop;
    
    dbms_output.put_line('Funcionarios com édia entre 10000 19000');
    for r_func in cs_func(10000,19000) loop
        dbms_output.put_line(r_func.employee_id || ' - ' || r_func.first_name || ' - ' || r_func.salary);
    end loop;
end;