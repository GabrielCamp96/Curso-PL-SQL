CREATE TABLE funcionario (
    matricula INT not null primary key,
    nome VARCHAR2(50) NOT NULL,
    sobrenome VARCHAR2(50) NOT NULL,
    endereco VARCHAR2(50),
    cidade VARCHAR2(50),
    pais VARCHAR2(25),
    data_nasc DATE --TIMESTAMP POSSIVEL TAMBEM
);


-- DDL SEQUENCIA FUNCIONARIO
create sequence ID_FUNC2
START WITH 1
INCREMENT BY 1
NOCACHE;

--DDL CRIANDO TABELA COM CHAVE ESTRANGEIRA
CREATE TABLE salario (
    matricula INT NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY(matricula) REFERENCES funcionario(matricula)
);

-- DDL CRIAÇÃO DE TABELA COM CHAVE PRIMARIA
CREATE TABLE audit_salario (
    transacao int not null,
    matricula int not null,
    data_trans timestamp not null,
    sal_antigo decimal(10,2),
    sal_novo decimal(10,2),
    usuario VARCHAR2(20) not null,
    primary key(transacao),
    foreign key(matricula) references funcionario(matricula)
);

-- DDL SEQUENCIA TRANSAÇÃO
CREATE SEQUENCE ID_TRAN
START WITH 1
INCREMENT BY 1
NOCACHE;

-- DDL CRIACAO DE INDEX

CREATE INDEX ix_func1 ON funcionario(data_nasc);

CREATE INDEX ix_func2 ON funcionario(cidade,pais);

-- Adicionando novo campo na tabela
ALTER TABLE funcionario ADD genero CHAR(1);

-- RENOMEANDO CAMPO/COLUNA DA TABELA

ALTER TABLE funcionario RENAME COLUMN genero TO sexo;

-- Modificando tipo do campo
alter table funcionario modify sexo VARCHAR2(1);

-- Renomeando tabela
alter table funcionario rename to pessoa;

-- Retornando situacao anterior
alter table pessoa rename to funcionario;

-- DDL criacao de database
CREATE DATABASE TESTE;

-- Excluindo database
DROP DATABASE TESTE;

-- Excluindo Tabela
DROP TABLE funcionario;

-- Criação de View
CREATE VIEW v_funcionario
    AS
    SELECT * FROM funcionarios
    
select user from dual;