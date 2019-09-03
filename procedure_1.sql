create or replace procedure pd_func
is
    cursor emp_cur
    is
        select first_name, last_name, salary from employees;
        emp_rec emp_cur%rowtype;
begin
    for emp_rec in emp_cur
    loop
        dbms_output.put_line('Nome do funcionario: ' || emp_rec.first_name);
        dbms_output.put_line('Sobrenome do funcionario: ' || emp_rec.last_name);
        dbms_output.put_line('Salário do funcionario: ' || emp_rec.salary);
    end loop;
end;

begin
    pd_func;
end;

execute pd_func;