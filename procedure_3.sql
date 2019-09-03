create or replace procedure pd_calc(
    p_num1 in number,
    p_num2 in number,
    operacao in char,
    retorno out number)
is
    msg_outras exception;
begin
    if operacao = 'A' then
        retorno := p_num1 + p_num2;
    elsif operacao = 'S' then
        retorno := p_num1 - p_num2;
    elsif operacao = 'M' then
        retorno := p_num1 * p_num2;
    elsif operacao = 'D' then
        retorno := p_num1 / p_num2;
    else
        raise msg_outras;
    end if;
    exception
        when msg_outras then
            dbms_output.put_line('Erro nao catalogado: ' || sqlerrm);
end;
            
declare
    retorno number;
begin
    pd_calc(2,2,'A', retorno);
    dbms_output.put_line('Resultado: ' || retorno);
end;