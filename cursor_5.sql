begin

    for v_func in (select a.employee_id, a.first_name, a.salary
                    from employees a
                    order by a.salary desc)
    loop
        dbms_output.put_line(v_func.employee_id || ' - ' || v_func.first_name || ' - ' || v_func.salary);
    end loop;
end;