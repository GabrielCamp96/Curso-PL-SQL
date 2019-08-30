declare
    type TFuncionario is record (
        v_idfunc employees.employee_id%type,
        v_nome employees.first_name%type,
        v_salario employees.salary%type
    );
    v_func TFuncionario;

cursor cs_salario_top_10 is
    select a.employee_id, a.first_name, a.salary
    from employees a
    order by a.salary desc;
    
begin
    if not cs_salario_top_10%isopen then
        open cs_salario_top_10;
    end if;
    
    loop
        fetch cs_salario_top_10 into v_func;
        exit when cs_salario_top_10%notfound;
        dbms_output.put_line(v_func.v_idfunc || ' - ' || v_func.v_nome || ' - ' || v_func.v_salario);
    end loop;
    
    close cs_salario_top_10;
end;