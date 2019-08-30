declare
    p_valor number := 0;
begin
    loop
        dbms_output.put_line ('Dentro do loop o valor � igual a: ' || to_char(p_valor));
        p_valor := p_valor + 1;
        continue when p_valor < 5;
        dbms_output.put_line('Ap�s a clausula CONTINUE, o valor � igual a: ' || to_char(p_valor));
        exit when p_valor = 5;
    end loop;
    dbms_output.put_line('Ap�s o loop, o valor � igual a: ' || to_char(p_valor));
end;

declare 
    valor number := 0;
begin
    loop
        dbms_output.put_line('Valor apresentado no interior do loop � igual a: ' || to_char(valor));
        valor := valor + 1;
        if valor < 15 then
            continue;
        end if;
        dbms_output.put_line('No interior do loop, ap�s a clausula CONTINUE, o valor � igual a: ' || to_char(valor));
        exit when valor > 15;
    end loop;
    dbms_output.put_line('Ap�s o loop, o valor � igual a: ' || to_char(valor));
end;