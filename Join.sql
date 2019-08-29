CREATE TABLE ALUNOS (
    id_aluno int not null,
    nome varchar(20) not null,
    primary key(id_aluno)
);

create table disciplina (
    id_disciplina int not null,
    nome_disc varchar(20),
    primary key(id_disciplina)
);

create table matricula (
    id_aluno int not null,
    id_disciplina int not null,
    periodo varchar2(10),
    primary key (id_aluno, id_disciplina),
    foreign key (id_aluno) references alunos(id_aluno),
    foreign key (id_disciplina) references disciplina(id_disciplina)
);

insert into alunos (id_aluno, nome) values (1,'Joao');
insert into alunos (id_aluno, nome) values (2,'Maria');
insert into alunos (id_aluno, nome) values (3,'Pedro');
insert into alunos (id_aluno, nome) values (4,'Tiago');
insert into alunos (id_aluno, nome) values (5,'Henrique');

SELECT * FROM ALUNOS;


insert into disciplina(id_disciplina, nome_disc) values (1, 'Física');
insert into disciplina(id_disciplina, nome_disc) values (2, 'Química');
insert into disciplina(id_disciplina, nome_disc) values (3, 'Matemática');
insert into disciplina(id_disciplina, nome_disc) values (4, 'Banco de Dados');
insert into disciplina(id_disciplina, nome_disc) values (5, 'Programação');

select * from disciplina;

insert into matricula values ('1', '1', 'Noturno');
insert into matricula values ('1', '2', 'Vespertino');
insert into matricula values ('1', '3', 'Matutino');
insert into matricula values ('2', '3', 'Noturno');
insert into matricula values ('2', '4', 'Noturno');
insert into matricula values ('3', '1', 'Noturno');
insert into matricula values ('3', '3', 'Noturno');
insert into matricula values ('3', '4', 'Noturno');
insert into matricula values ('5', '1', 'Matutino');
insert into matricula values ('5', '2', 'Vespertino');
insert into matricula values ('5', '4', 'Noturno');

select * from matricula;

SELECT a.nome, c.nome_disc, b.periodo
FROM alunos a
INNER JOIN matricula b
ON a.id_aluno = b.id_aluno
INNER JOIN disciplina c
ON b.id_disciplina=c.id_disciplina;

SELECT a.nome, c.nome_disc, b.periodo
FROM alunos a
LEFT JOIN matricula b
ON a.id_aluno = b.id_aluno
LEFT JOIN disciplina c
ON b.id_disciplina=c.id_disciplina;

SELECT a.nome, c.nome_disc, b.periodo
FROM alunos a
RIGHT JOIN matricula b
ON a.id_aluno = b.id_aluno
RIGHT JOIN disciplina c
ON b.id_disciplina=c.id_disciplina;

SELECT a.nome, c.nome_disc, b.periodo
FROM alunos a
FULL JOIN matricula b
ON a.id_aluno = b.id_aluno
FULL JOIN disciplina c
ON b.id_disciplina=c.id_disciplina;