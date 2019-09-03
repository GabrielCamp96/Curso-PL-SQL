create table empregados(
    codigo int not null primary key,
    nome varchar2(20),
    salario decimal (10,2)
);

create table log_salario(
    codigo int,
    salario_anterior decimal(10,2),
    salario_atual decimal(10,2),
    data_alteracao date,
    usuario varchar2(20),
    operacao varchar2(10)
);

create or replace trigger trg_salario_aud
after insert on empregados
for each row
begin
    insert into log_salario (codigo, salario_anterior, salario_atual, data_alteracao, usuario, operacao)
    values (:new.codigo, :old.salario, :new.salario, sysdate, user, '');
end;

insert into empregados values (1, 'Peter', 2999);
insert into empregados values (2, 'John', 3490);

select * from empregados;
select * from log_salario;

update empregados set salario = salario * 1.10
where codigo = 1;

alter trigger trg_salario_aud disable;

alter trigger trg_salario_aud enable;

create or replace trigger trg_salario_aud
    after insert or delete or update on empregados
    for each row
    declare
        p_oper varchar2(10);
    begin
        if inserting then
            p_oper := 'insert';
            insert into log_salario (codigo, salario_anterior, salario_atual, data_alteracao, usuario, operacao)
            values (:new.codigo, null, :new.salario, sysdate, user, p_oper);
        elsif updating then
            p_oper := 'update';
            insert into log_salario (codigo, salario_anterior, salario_atual, data_alteracao, usuario, operacao)
            values (:new.codigo, :old.salario, :new.salario, sysdate, user, p_oper);
        elsif deleting then
            p_oper := 'delete';
            insert into log_salario (codigo, salario_anterior, salario_atual, data_alteracao, usuario, operacao)
            values (:old.codigo, :old.salario, null, sysdate, user, p_oper);
        end if;
    end;
    
update empregados set salario = salario * 1.05;
insert into empregados values (3, 'martha', 3000);
delete from empregados where codigo = '5';

select * from log_salario;