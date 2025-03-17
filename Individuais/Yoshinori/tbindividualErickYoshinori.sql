create database eclipseed;
use eclipseed;

CREATE TABLE  cliente
(
idCliente int auto_increment PRIMARY KEY,
nome varchar(60),
CNPJ char(19),
email varchar(35),
senha varchar(18),
CEP varchar(10),
endereco varchar(35),
contatoTelefone varchar(13)
);

insert into cliente (nome, CNPJ, email, senha, CEP, endereco, contatoTelefone) values 
('Erick','81.797.752/0001-27','erick.fuzimoto@sptech.school','senha123','91570-650','Rua tal','11982958461');

CREATE TABLE Plantio
(
idPlantio int auto_increment PRIMARY KEY,
tamanho varchar(22),
grao varchar(25),
horarioMonitorado varchar(25),
statusPlantio varchar(35)
);

CREATE TABLE estoque
(
idEstoque int auto_increment PRIMARY KEY,
qtdProduto int(5),
entrada int (5),
saida int (5)
);

insert into estoque (qtdProduto, entrada, saida) values
(400, 200, 300);

select * from estoque;
