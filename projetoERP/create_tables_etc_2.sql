create table mat_fornec (
    cod_empresa int not null,
    cod_mat int not null,
    id_for int not null,
    constraint pk_mat_for primary key(cod_empresa, cod_mat, id_for),
    constraint fk_mat_for1 foreign key (cod_empresa) references empresa(cod_empresa),
    constraint fk_mat_for2 foreign key (id_for) references fornecedores(id_for)
);
