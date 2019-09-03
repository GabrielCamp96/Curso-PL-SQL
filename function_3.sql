declare
    p_num1 number;
    p_num2 number;
    p_num_aux number;
    
    function fn_maxval (
        p_num1 in number,
        p_num2 in number)
    return number as p_num_aux number;
    
    begin
        if p_num1 > p_num2 then
            p_num_aux := p_num1;
        else
            p_num_aux := p_num2;
        end if;
        return p_num_aux;
    end;
begin
    p_num1 := 86;
    p_num2 := 85;
    p_num_aux := fn_maxval(p_num1, p_num2);
    dbms_output.put_line('O maior valor entre ' || p_num1 || ' e ' || p_num2 || ' é ' || p_num_aux);
end;