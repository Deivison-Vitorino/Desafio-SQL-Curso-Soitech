create database exercicio;
use exercicio;

create table categoria (
	`id_categoria` int not null auto_increment,
    `DescCategoria` varchar(45)
    
);
    
create table produtos (
	`id_produto` int not null auto_increment,
    `DescProduto` varchar(45),
    `preco` float,
    `qtde` int,
    `foto` varchar(200),
    `FKID_Categoria` int
);
    
create table pedidos_item (
	`id_pedido` int not null auto_increment,
    `qtde_pedido` int,
    `preco` float,
    `total` float,
    `FKID_Pedido` int,
    `FKID_Produto` int
);

create table pedidos (
	`id_pedido` int not null auto_increment,
    `data` date,
    `status_pedido` varchar(10),
    `FKID_Cliente` int
);

create table clientes (
	`id_cliente` int not null auto_increment,
    `nome_cliente` varchar(50),
    `email` varchar(50),
    `senha` varchar(50)
);