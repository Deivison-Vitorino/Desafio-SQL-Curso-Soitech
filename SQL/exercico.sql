CREATE DATABASE cadastro;
USE cadastro;

CREATE TABLE categoria (
	`id_cliente` INT NOT NULL AUTO_INCREMENT,
    `descCategoria` VARCHAR(45),
    primary key (`id_cliente`)
);


insert into categoria (id_cliente, descCategoria)
values (default, 'macarrao');

insert into categoria (id_cliente, descCategoria)
values (default, 'tomate');

insert into categoria (id_cliente, descCategoria)
values (default, 'mamao');

update categoria
set descCategoria = 'laranja'
where id_cliente = 2;

delete from categoria where Id_cliente = 2;


CREATE TABLE produtos (
	`id_produto` INT NOT NULL auto_increment,
	`descProduto` VARCHAR(45) NOT NULL,
	`preco` FLOAT,
	`quantidade` INT,
	`foto` VARCHAR(200),
	`FKIDCategorias` INT NOT NULL,
	primary key (`id_produto`)
	);
    
    CREATE TABLE pedidos_itens (
	`id_pdd_itens` INT NOT NULL auto_increment,
	`qtde` INT,
	`preco` FLOAT,
	`total` FLOAT,
	`FKIDPedidos` INT NOT NULL,
	`FKIDProdutos` INT NOT NULL,
	primary key (`id_pdd_itens`)
	);
    
    CREATE TABLE pedidos (
	`id_pedido` INT NOT NULL auto_increment,
	`data` DATE,
	`status` VARCHAR(10),
	`FKIDCliente` INT NOT NULL,
	primary key (`id_pedido`)
	);

CREATE TABLE clientes (
	`id_cliente` INT NOT NULL auto_increment,
	`nome` VARCHAR(200),
	`email` VARCHAR(50),
	`senha` VARCHAR(50),
	primary key (`id_cliente`)
	);