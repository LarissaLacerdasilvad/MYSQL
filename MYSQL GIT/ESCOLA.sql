CREATE DATABASE db_escola;

USE db_escola;
Create table tb_alunos(
id bigint auto_increment primary key,
nome varchar(255),
data_nascimento date,
turma int,
nota decimal(4,2)
);
insert into tb_alunos (nome, data_nascimento, turma, nota) Values("Larissa","1998-08-08",57,8);
insert into tb_alunos (nome, data_nascimento, turma, nota) values ("Fabio","1974-11-11",57,9);
insert into tb_alunos (nome, data_nascimento, turma, nota) values ("Vilckson","1990-05-26",57,7);
insert into tb_alunos (nome, data_nascimento, turma, nota) values ("Elisabete","1974-07-20",57,7);

select*from tb_alunos;

select*from tb_alunos where nota >7;
select*from tb_alunos where nota <7;

update tb_alunos set nota = 7 where id=3;


