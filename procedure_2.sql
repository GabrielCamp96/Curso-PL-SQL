create or replace procedure pd_info_depto
is
    cursor fun_cursor
    is
        select a.department_id, b.department_name, sum(salary) as salario from employees a
        inner join departments b
        on a.department_id = b.department_id
        group by  a.department_id, b.department_name;
        
        fun_rec fun_cursor%rowtype;
begin
    for fun_rec in fun_cursor
    loop
        dbms_output.put_line('Codigo Depto: ' || fun_rec.department_id ||
            ', Nome Depto: ' || fun_rec.department_name || ', Total Salario do Depto: ' || fun_rec.salario);
    end loop;
    exception
        when others then
            dbms_output.put_line('Erro: ' || sqlerrm);
end;

execute pd_info_depto;