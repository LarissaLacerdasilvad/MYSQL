create database db_empresa;
use db_empresa;

create table tb_departamentos (
id bigint auto_increment primary key,
departamento varchar(255)
);
insert into tb_departamentos(departamento) values("financeiro");
insert into tb_departamentos(departamento) values("RH");
insert into tb_departamentos(departamento) values("Tecnologia");
insert into tb_departamentos(departamento) values("Administração");

select*from tb_departamentos;
create table tb_funcionarios(
id bigint auto_increment primary key,
nome_funcionario varchar(255),
cargo varchar(255),
localidade varchar(255),
salario decimal(10,2),
departamento_id bigint,

foreign key (departamento_id) references tb_departamentos(id)
);

insert into tb_funcionarios(nome_funcionario, cargo, localidade, salario, departamento_id) values ("Maria Freitas","Analista fiscal","SP", 2500,1);
insert into tb_funcionarios(nome_funcionario, cargo, localidade, salario, departamento_id) values ("Arlindo Lindo", "Assistente fiscal","SP",1500,1);
insert into tb_funcionarios(nome_funcionario, cargo, localidade, salario, departamento_id) values ("Jose Silva", "Gerente de RH", "MG", 8000,2);
insert into tb_funcionarios(nome_funcionario, cargo, localidade, salario, departamento_id) values ("Amanda Silva", "Desenvolvedora Java", "RJ",5100,3);
insert into tb_funcionarios(nome_funcionario, cargo, localidade, salario, departamento_id) values ("Roberto", "DBA jr","RJ",3200,3);
insert into tb_funcionarios(nome_funcionario, cargo, localidade, salario, departamento_id) values ("Adriana Carvalho","CEO","SP",20000,4);

select*from tb_funcionarios;


