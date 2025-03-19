create database eclipseed;
use eclipseed;

create table cliente(
	idEmpresa int primary key auto_increment,
	nomeEmpresa varchar(100),
	cnpj char(14),
	email varchar(30),
	senha varchar(50),
	cep char(8),
	contato varchar(10)
);

create table estoque(
	idEstoque int primary key auto_increment,
	qtdProduto int,
	entrada int,
	saida int,
	dtDiaria date
);

create table plantio(
	idPlantio int primary key auto_increment,
    nome varchar(20),
	tamanho decimal,
    empresa varchar(20)
);
create table luminosidade(
	idLuminosidade int primary key auto_increment,
	statusLuz varchar(50),
	horario datetime
);
create table contatosExtras(
	idContato int primary key auto_increment,
    nomeEmpresaContato varchar(30),
    telefone varchar(10)
);

insert into cliente (nomeEmpresa, cnpj, email, senha, cep, contato) values
('SojaCIA', '12345678945', 'sojacia.contato@gmail.com', 'soja_cia#123', '789612', '11 123456');
select*from cliente;

insert into estoque (qtdProduto, entrada, saida, dtDiaria) values
(25,25,15, '2025-03-12');
select*from estoque;

insert into plantio (nome, tamanho, empresa) values 
('Soja', '2 hectares', 'SojaCIA');
select*from plantio;

insert into luminosidade(statusLuz, horario) values
('bom', '2025-03-12 14:00');
select*from luminosidade;

alter table luminosidade add constraint chckStatus
					check (statusLuz = "bom" or statusLuz = "moderado" or statusLuz = "ruim");
