accept v_digitado prompt 'Digite a tabuada: '
declare
    v_tab int;
    v_limit int default 1;
begin
    v_tab := &v_digitado;
    while v_limit <= 10 loop
        dbms_output.put_line(v_tab || ' x ' || v_limit || ' = ' || v_limit*v_tab);
        v_limit := v_limit + 1;
    end loop;
end;

accept v_digitado prompt 'digite a tabuada: '
declare
    v_tab int;
    v_limit int default 1;
begin
    v_tab := &v_digitado;
    while v_limit <= 10 loop
        dbms_output.put_line(v_tab || ' x ' || v_limit || ' = ' || v_limit * v_tab);
        v_limit := v_limit + 1;
        exit when v_limit > 5;
    end loop;
end;