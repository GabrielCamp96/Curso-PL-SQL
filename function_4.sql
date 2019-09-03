create or replace function fn_sal_min (p_salario in number)
return number is qtd_sal_min number(10,2);
begin
    qtd_sal_min := p_salario / 954;
    return qtd_sal_min;
return qtd_sal_min;
end;

select a.first_name, a.salary, fn_sal_min(a.salary) as qtd_min
from employees a;