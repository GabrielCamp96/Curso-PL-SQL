create table cadastro (
    nome varchar2(50) not null,
    docto varchar(20) not null
);

INSERT INTO cadastro VALUES ('Andre', '12341244');
INSERT INTO cadastro VALUES ('Joao', '12341248');
INSERT INTO cadastro VALUES ('Pedro', '12341246');

SELECT * FROM cadastro;

ROLLBACK;

COMMIT;

delete from cadastro;

INSERT INTO CADASTRO VALUES ('andre', '12341244');
SAVEPOINT P1;
INSERT INTO CADASTRO VALUES ('joao', '123451248');
SAVEPOINT P2;
INSERT INTO CADASTRO VALUES ('pedro', '12341246');
SAVEPOINT P3;

SELECT * FROM CADASTRO;

ROLLBACK TO SAVEPOINT P2;

COMMIT;