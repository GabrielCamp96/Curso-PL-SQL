set SERVEROUTPUT ON
accept v_nota_dig prompt 'Digite sua nota: '
declare
    v_nota integer;
begin
    v_nota := &v_nota_dig;
    
    case v_nota
        when 10 then dbms_output.put_line('Nota excelente');
        when 9 then dbms_output.put_line('Nota muito boa');
        when 8 then dbms_output.put_line('Nota boa');
        when 7 then dbms_output.put_line('Nota na media');
        when 6 then dbms_output.put_line('Nota abaixo da media');
        else dbms_output.put_line('Sem classificacao de notas)');
    end case;
end;

set serveroutput on
accept v_nota_dig prompt 'Digite sua nota: '
declare
    v_nota integer;
begin
    v_nota := &v_nota_dig;
    case v_nota
        when 10 then dbms_output.put_line('Nota excelente');
        when 9 then dbms_output.put_line('Nota muito boa');
        when 8 then dbms_output.put_line('Nota boa');
        when 7 then dbms_output.put_line('Nota na media');
        when 6 then dbms_output.put_line('Nota abaixo da media');
    end case;
    exception
        when case_not_found then
            dbms_output.put_line('Sem classificacao de notas');
end;