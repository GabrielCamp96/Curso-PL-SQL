SET SERVEROUTPUT ON
<<BLOCOPRINCIPAL>> -- declaracao de label de escopo
declare
    v_num1 NUMBER := 100;
begin
    declare
        v_num1 number := 50;
    begin
        dbms_output.put_line('Impressão 1 ' || BLOCOPRINCIPAL.V_NUM1);
        dbms_output.put_line('Impressão 2 '|| v_num1);
    end;
    dbms_output.put_line('Impressão 3 ' || v_num1);
end;