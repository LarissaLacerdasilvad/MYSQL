CREATE database	db_pizzaria;
use db_pizzaria;

create table tb_categorias(
id bigint auto_increment primary key,
descricao varchar (255),
tamanho varchar (255),
borda_recheada boolean
);
create table tb_pizzas(
id bigint auto_increment primary key,
sabor varchar(255),
preco decimal (6,2),
massa varchar(255),
quantidade int,
categoria_id bigint,
foreign key (categoria_id) references tb_categorias(id)
);

select*from tb_categorias;
insert into tb_categorias(descricao, tamanho, borda_recheada) values ("salgada","brotinho",true);
insert into tb_categorias(descricao, tamanho, borda_recheada) values ("salgada","brotinho",false);
insert into tb_categorias(descricao, tamanho, borda_recheada) values ("salgada","media", true);
insert into tb_categorias(descricao, tamanho, borda_recheada) values ("salgada","media",false);
insert into tb_categorias(descricao, tamanho, borda_recheada) values ("salgada","grande", true);
insert into tb_categorias(descricao, tamanho, borda_recheada) values ("salgada","grande", false);
insert into tb_categorias(descricao, tamanho, borda_recheada) values ("doce","brotinho",true);
insert into tb_categorias(descricao, tamanho, borda_recheada) values ("doce", "brotinho",false);
insert into tb_categorias(descricao, tamanho, borda_recheada) values ("doce", "media", true);
insert into tb_categorias(descricao, tamanho, borda_recheada) values ("doce","media", false);
insert into tb_categorias(descricao, tamanho, borda_recheada) values ("doce","grande", true);
insert into tb_categorias(descricao, tamanho, borda_recheada) values ("doce","grande", false);

select*from tb_pizzas;
insert into tb_pizzas(sabor, preco, massa, quantidade, categoria_id) values ("Frango", 30.00,"tradicional",5,1);
insert into tb_pizzas(sabor, preco, massa, quantidade, categoria_id) values ("Mussarela",40.60,"tradicional",3,2);
insert into tb_pizzas(sabor, preco, massa, quantidade, categoria_id) values ("brigadeiro", 60.00,"fina",5,10);
insert into tb_pizzas(sabor, preco, massa, quantidade, categoria_id) values ("lombo",60.99,"tradicional",6,6);
insert into tb_pizzas(sabor, preco, massa, quantidade, categoria_id) values ("brocolis",39.99,"tradicional",3,4);
insert into tb_pizzas(sabor, preco, massa, quantidade, categoria_id) values ("calabresa",45.00, "tradicional",6,6);

select*from tb_pizzas where preco > 45.00 order by preco desc;
select*from tb_pizzas where preco >= 50 and preco <=100;
select*from tb_pizzas where preco between 50 and 100;
select sabor from tb_pizzas where preco between 50 and 100;
select*from tb_pizzas where sabor like "%m%";
select*from tb_pizzas inner join tb_categorias
on tb_categorias.id = tb_pizzas.categoria_id;





