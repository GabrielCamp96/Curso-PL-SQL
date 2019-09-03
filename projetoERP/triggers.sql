create or replace trigger trg_empresa1
    before insert on empresa
    for each row begin
        if :new.cod_empresa is null then
            select seq_emp.nextval into :new.cod_empresa from dual;
        end if;
    end;
    
create or replace trigger trg_apont 
    before insert on apontamentos
     for each row begin
        if :new.id_apon is null then
            select seq_apon.nextval into :new.id_apon from dual;
        end if;
    end;
    
create or replace trigger trg_cap 
    before insert on contas_pagar
     for each row begin
        if :new.id_doc is null then
            select seq_cap.nextval into :new.id_doc from dual;
        end if;
    end;
    
create or replace trigger trg_cliente 
    before insert on clientes
     for each row begin
        if :new.id_cliente is null then
            select seq_cli.nextval into :new.id_cliente from dual;
        end if;
    end;
    
create or replace trigger trg_cre
    before insert on contas_receber
     for each row begin
        if :new.id_doc is null then
            select seq_cre.nextval into :new.id_doc from dual;
        end if;
    end;
    
create or replace trigger trg_for 
    before insert on fornecedores
     for each row begin
        if :new.id_for is null then
            select seq_for.nextval into :new.id_for from dual;
        end if;
    end;
    
    
create or replace trigger trg_ger
    before insert on gerentes
     for each row begin
        if :new.id_ger is null then
            select seq_gerentes.nextval into :new.id_ger from dual;
        end if;
    end;

create or replace trigger trg_movest
    before insert on estoque_mov
     for each row begin
        if :new.id_mov is null then
            select seq_movest.nextval into :new.id_mov from dual;
        end if;
    end;
    
create or replace trigger trg_op
    before insert on ordem_prod
     for each row begin
        if :new.id_ordem is null then
            select seq_op.nextval into :new.id_ordem from dual;
        end if;
    end;
    
create or replace trigger trg_cod_pagto
    before insert on cond_pagto
     for each row begin
        if :new.cod_pagto is null then
            select seq_pagto.nextval into :new.cod_pagto from dual;
        end if;
    end;
    
create or replace trigger trg_cod_tip_mat
    before insert on tipo_mat
     for each row begin
        if :new.cod_tip_mat is null then
            select seq_tip_mat.nextval into :new.cod_tip_mat from dual;
        end if;
    end;
    
create or replace trigger trg_vendedor
    before insert on vendedores
     for each row begin
        if :new.id_vend is null then
            select seq_vendedores.nextval into :new.id_vend from dual;
        end if;
    end;
    
    
create or replace trigger trg_num_nfe 
    before insert on nota_fiscal
     for each row begin
        update param_nfe set num_nfe = num_nfe + 1 where cod_empresa = :new.cod_empresa;
        select num_nfe into :new.num_nf from param_nfe where cod_empresa = :new.cod_empresa;
    end;
    
create or replace trigger trg_num_ped_compras
    before insert on ped_compras
    for each row begin
        update param_ped_compras set num_ped = num_ped + 1 where cod_empresa = :new.cod_empresa;
        select num_ped into :new.num_pedido from param_ped_compras where cod_empresa = :new.cod_empresa;
    end;
    
create or replace trigger trg_num_ped_vendas
    before insert on ped_vendas
    for each row begin
        update param_ped_vendas set num_ped = num_ped + 1 where cod_empresa = :new.cod_empresa;
        select num_ped into :new.num_pedido from param_ped_vendas where cod_empresa = :new.cod_empresa;
    end;

create or replace trigger trg_mat_func
    before insert on funcionario
    for each row begin
        update param_matricula set matricula = matricula + 1 where cod_empresa = :new.cod_empresa;
        select matricula into :new.matricula from param_matricula where cod_empresa = :new.cod_empresa;
    end;    
