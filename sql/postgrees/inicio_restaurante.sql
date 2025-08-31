create table cliente(
id integer not null primary key,
nome_cliente varchar(20) not null
)

insert into cliente values(1, 'ana')

select * from pedido order by id_pedido

create table tel_cliente(
id_cliente integer not null,
telefone char(20) not null,
primary key(id_cliente, telefone),
foreign key (id_cliente) references cliente(id)
)

create table mesa(
	id_mesa integer not null primary key
)

create table pedido(
id_pedido integer not null primary key,
dt_pedido date not null,
situacao varchar(30) null,
motivo_cancel varchar(40) null,
id_cliente integer not null,
id_mesa integer null,
foreign key (id_mesa) references mesa(id_mesa),
foreign key (id_cliente) references cliente(id)
)

insert into mesa values(101)
insert into pedido values( 3, '20/12/2007', 'entregue', 'frio', 1, 101)

