create global temporary table minha_temp (
    id NUMBER,
    nome VARCHAR2(20)
) on commit delete rows;

insert into minha_temp values (1, 'Teste1');
insert into minha_temp values (2, 'Teste2');
insert into minha_temp values (3, 'Teste3');

select count(*) from minha_temp;

commit;