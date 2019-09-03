create or replace function fn_nome
return varchar is v_nome varchar(20);
begin
    select a.first_name into v_nome 
    from employees a
    where a.employee_id = 100;
    
    return v_nome;
end;

select fn_nome from dual;

create or replace function fn_nome2(p_id in number)
return varchar is v_nome varchar(20);
begin
    select a.first_name into v_nome
    from employees a
    where a.employee_id = p_id;
    
    return v_nome;
end;

select fn_nome2(101) from dual;

create or replace function fn_aumento(p_pct in number, p_id_func in number)
return number is v_sal_novo number(20);
begin
    select ((a.salary/100)*p_pct) + a.salary into v_sal_novo
    from employees a where a.employee_id = p_id_func;
    
    return v_sal_novo;
end;

select a.first_name, a.salary as sal_antigo, fn_aumento(10, a.employee_id) as sal_novo
from employees a;