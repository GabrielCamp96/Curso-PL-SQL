create or replace function fn_calculo(
    p_1 in number,
    p_2 in number,
    res out number
)
return number is aux number := 0;
begin 
    res:= p_1 + p_2;
    aux := res + 100;
    return (aux);
    exception
        when others then
            dbms_output.put_line('Erro: ' || sqlerrm);
    end;

declare
    res0 number := 0;
    res1 number := 0;
begin
    res0 := fn_calculo(6, 14, res1);
    dbms_output.put_line('O resultado é: ' || res0 || ' e ' || res1);
end;
