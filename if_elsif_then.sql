set serveroutput on
accept v_digitado prompt 'Digite o numero da sorte: '
declare
    v_numero int;
    v_sorte int default 5;

begin
    v_numero := &v_digitado;
    if v_numero = v_sorte then
        dbms_output.put_line('Parabens!! você acertou!!');
    end if;
end;

set serveroutput on
accept v_digitado prompt 'Digite o numero da sorte: '
declare
    v_numero int;
    v_sorte int default 5;
begin
    v_numero := &v_digitado;
    if v_numero = v_sorte then
        dbms_output.put_line('Parabens!! você acertou');
    else
        dbms_output.put_line('ohh! errou tente outra vez!');
    end if;
end;

set serveroutput on
accept v_digitado prompt 'Digite o numero de 0 a 100: '
declare
    v_numero int;
begin
    v_numero := &v_digitado;
    if v_numero <= 10 then
        dbms_output.put_line('seu numero está entre 0 e 10');
    elsif v_numero > 10 and v_numero <= 30 then
        dbms_output.put_line('seu numero esta entre 11 e 30');
    elsif v_numero > 30 and v_numero <= 50 then
        dbms_output.put_line('seu numero esta entre 31 e 50');
    elsif v_numero > 50 and v_numero <= 100 then
        dbms_output.put_line('seu numero esta entre 51 e 100');
    else
        dbms_output.put_line('seu numero esta fora dos limites');
    end if;
end;
    