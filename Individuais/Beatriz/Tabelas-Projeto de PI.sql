create database PIsprint1;
use PIsprint1;

create table Cadastro_na_Eclipseed(
IdCadast int primary key auto_increment,
Nome_Emp varchar(35),
CNPJ_Emp char(14),
Email_Emp varchar(35),
Senha_Emp char(8),
Cep_Emp char(8),
Estado_Emp varchar(3),
Cidade_Emp varchar(35),
Bairro_Emp varchar(35),
Rua_Emp varchar(35),
Nº_local_Emp varchar(4),
Contato_Emp varchar(13),
Código_de_Segurança_Para_Eclipseed Char(6)
);

select*from Cadastro_na_Eclipseed;

insert into Cadastro_na_Eclipseed (Nome_Emp, CNPJ_Emp, Email_Emp,Senha_Emp,Cep_Emp,Estado_Emp,Cidade_Emp,Bairro_Emp,Rua_Emp,Nº_local_Emp,Contato_Emp,Código_de_Segurança_Para_Eclipseed) values
('Agrosojas','123456789','agrosojas.01@gmail.com','12034506','22234600','SP','Mogi das Cuzes','Fulano','Rua greenstreet','200','5511932456889','123456');





Use pisprint1;
create table Plantio_da_Empresa(
Id_Plantio int primary key auto_increment,
Empresa varchar(35),
Tamanho_plantio_Hec int,
Lux_Momento decimal (3,1),
Horário_monitorado time,
Qualidade_Plantio varchar(10),
constraint chkquali check(Qualidade_Plantio in('Ótimo','Moderado','Bom','Ruim'))
);

select*from Plantio_da_Empresa;

insert into Plantio_da_Empresa(Empresa,Tamanho_plantio_Hec,Lux_Momento,Horário_monitorado,Qualidade_Plantio) values
('Agrosojas','2','63.2','12:00','Moderado');






Use pisprint1;
create table Estoque_da_Eclipseed(
Id_Estoque int primary key auto_increment,
Data_Analisada date,
Qtd_Estoque int,
Entrada_Estoque int,
Saída_Estoque int

);
select*from Estoque_da_Eclipseed;

insert into Estoque_da_Eclipseed (Data_Analisada,Qtd_Estoque,Entrada_Estoque ,Saída_Estoque) values
('2025-02-26','26','10','1');

