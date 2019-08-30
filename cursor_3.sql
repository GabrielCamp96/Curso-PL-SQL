declare
    v_idfunc employees.employee_id%type;
    v_nome employees.first_name%type;
    v_salario employees.salary%type;
    v_posicao int default 0;

cursor cs_salario_top_10 is
    select a.employee_id, a.first_name, a.salary
    from employees a
    order by a.salary desc;
    
begin
    if not cs_salario_top_10%isopen then
        open cs_salario_top_10;
    end if;
    
    loop
        fetch cs_salario_top_10 into v_idfunc, v_nome, v_salario;
        exit when cs_salario_top_10%notfound;
        v_posicao := v_posicao + 1;
        dbms_output.put_line(v_posicao || ' - ' || v_idfunc || ' - ' || v_nome || ' - ' || v_salario);
    end loop;
    
    close cs_salario_top_10;
end;