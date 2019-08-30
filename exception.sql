declare
    lv_excessao exception;
    pragma exception_init (lv_excessao, -6502);
begin
    raise lv_excessao;
    exception
    when others then
        if sqlcode = 1 then
            dbms_output.put_line('Erro que usuario tratou linha 1 ' || sqlcode|| ' - '|| sqlerrm);
        else
            dbms_output.put_line('Erro que o usuario tratou linha 2 ' || sqlcode || ' - ' || sqlerrm);
        end if;
end;

declare
    lv_excessao exception;
    pragma exception_init (lv_excessao, -20000);
begin
    raise_application_error(-20000, 'Mensagem tratada');
    exception
        when lv_excessao then
            dbms_output.put_line(sqlcode);
            dbms_output.put_line(sqlerrm);
end;

declare
    p_num int default 90;
    exc_menor exception;
    exc_maior exception;
begin
    if p_num > 100 then
        raise exc_maior;
    elsif p_num < 50 then
        raise exc_menor;
    else
        dbms_output.put_line('Ok!!!');
    end if;
    exception
    when exc_menor then
        dbms_output.put_line('Numero menor que 50 digite um entre 50 e 100.');
    when exc_maior then
        dbms_output.put_line('Numero maior que 100 digite um entre 50 e 100.');
    when others then
        dbms_output.put_line('CODIGO E ERRO ' || SQLCODE || 'MSG: ' || SQLERRM);
end;

declare
    v_num number;
begin
    v_num := 1/0;
    exception
        when ZERO_DIVIDE then
            dbms_output.put_line('--------------------------------------');
            dbms_output.put_line('Erro: divisao por zero');
            dbms_output.put_line('Nao é possivel obter v_num = 1 / 0');
            dbms_output.put_line('--------------------------------------');
            dbms_output.put_line('Codigo Oracle: ' || SQLCODE);
            dbms_output.put_line('Mensagem Oracle: ' || SQLERRM);
end;

declare
    v_num number;
begin
    v_num := 1/0;
    exception
    when others then
        if sqlcode = '-12170' then
            dbms_output.put_line('Erro de conexão! Verifique se a máquina está ligada!');
        else
            dbms_output.put_line('Erro na integracao!' || sqlerrm);
        end if;
end;