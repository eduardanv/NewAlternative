create database NewAlternative;
/*drop database newalternative; */
use NewAlternative;

create table Usuario(
idUsuario int primary key auto_increment,
nome varchar (45),
email varchar(30),
dataNasc date,
telefone char(20)
);

create table Post(
idPost int primary key auto_increment,
titulo varchar(45),
descricao varchar(2000),
fkUsuario int,
foreign key (fkUsuario) references Usuario(idUsuario)
)auto_increment=2500;

create table Comentario(
idComentario int primary key auto_increment,
fkUsuario int,
fkPost int,
foreign key (fkUsuario) references Usuario(idUsuario),
foreign key (fkPost) references Post(idPost),
comentario varchar(250)
);
