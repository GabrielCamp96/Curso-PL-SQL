set serveroutput on
declare
    tipo_numero varchar2(100);
begin
    for j in 1..10 loop
        if mod(j,2) = 0 then
            tipo_numero := 'Numero par';
                goto mensagem;
        else
            tipo_numero := 'Numero impar';
                goto mensagem;
        end if;
    <<mensagem>>
    dbms_output.put_line(to_char(j) || ' é ' ||tipo_numero);
        
    end loop;
end;

set serveroutput on
declare
    tipo_numero varchar2(100);
    valor pls_integer := 4;
begin
    for j in 2..round(sqrt(valor)) loop
        if valor mod j = 0 then
            tipo_numero := 'este não é um número primo';
            goto mensagem;
        end if;
    end loop;
    tipo_numero :=  'Este é um número primo';
    <<mensagem>>
    dbms_output.put_line(to_char(valor) || ' ' || tipo_numero);
end;