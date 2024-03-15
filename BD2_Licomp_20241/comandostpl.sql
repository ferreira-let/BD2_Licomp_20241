-- acessando o mysql pelo terminal do xampp
mysql -u root

-- visualizando os bancos de dados instalados 
show databases;

-- criando um novo banco de dados 
create database exemplodb;

-- acessando o banco de dados 
use exemplodb;

 -- excluindo um banco dde dados 
 drop database exemplodb;

 -- criar o bancoDB

create database bancoDB;

-- acesssar bancoDB 
use bancoDB;

-- criando tabela bancos
create table bancos(
    numero int not null, 
    nome varchar(100) not null,
    constraint bancos_pk primary key(numero)

);

-- criando tabela agencias
create table agencias (
    numero varchar(100) not null,
    nome varchar(100) not null,
    telefone int,
    banco int not null,
    constraint agencias_pk primary key(numero)
);

-- criando a tabela clientes
create table clientes (
    id int not null auto_increment,
    nome varchar(100) not null,
    email varchar(100) not null,
    constraint clientes_pk primary key(id)
);

-- criar coluna UF do tipo char com tmanho 2 e valor padrão 'RJ' na tabela clientes
alter table clientes
add uf char(2) default 'RJ';

-- criar coluna Dia e Mes no tipo inteiro not null

alter table clientes
add dia int(2);

alter table clientes
add mes int(2);

--****** configurações do github
-- definindo usuario
git init
git config -- global user.name "ferreira-let"
git config -- global user.email "ferreira.let315@gmail.com"
git add . 
git commit -m "aula dia 14/03"
git remot add origin https://github.com/ferreira-let/BD2_Licomp_20241.git
git push -u origin master