create database NewAlternative;
use NewAlternative;

create table Post(
idPost int primary key auto_increment,
titulo varchar(45),
conteudo varchar(2000)
)auto_increment=2500;

create table Usuario(
idUsuario int primary key auto_increment,
nome varchar (45),
email varchar(30),
dataNasc date,
telefone char(20)
);

create table UsuarioPost(
fkUsuario int,
fkPost int,
foreign key (fkUsuario) references Usuario(idUsuario),
foreign key (fkPost) references Post(idPost),
dataPostagem datetime
);

create table Comentario(
idComentario int primary key auto_increment,
fkUsuario int,
foreign key (fkUsuario) references Usuario(idUsuario),
comentario varchar(250)
);
