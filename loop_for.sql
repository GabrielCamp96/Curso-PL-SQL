accept v_digitado prompt 'Digite a tabuada: '
declare
    v_tab int;
    
begin
    v_tab := &v_digitado;
    for seq in 1..10 loop
        dbms_output.put_line(v_tab || ' x ' || seq || ' = ' || seq*v_tab);
    end loop;
end;

create table teste_for
(
    numero1 int,
    numero2 int
);

begin
    for valor in 1..10 loop
        insert into teste_for (numero1) values (valor);
    end loop;
    commit;
end;

select * from teste_for;

begin
    for valor in 1..10 loop
       update teste_For set numero2 = numero1*valor
       where numero1 = valor;
    end loop;
    commit;
end;

select * from teste_for;

begin
    for x in 1..5 loop
        dbms_output.put_line('Contador crescente: ' || to_char(x));
    end loop;
    
    dbms_output.put_line(' - ');
    
    for x in reverse 1..5 loop
        dbms_output.put_line('Contador decrescente: ' || to_char(x));
    end loop;
end;