create database NewAlternative;
/*drop database newalternative;*/
use NewAlternative;

create table Usuario(
idUsuario int primary key auto_increment,
nome varchar (45),
email varchar(30),
senha varchar(10),
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

select * from Usuario;

insert into Usuario values (null,'Eduarda','eduarda@gmail.com', '123', '2002-03-17', '(+55) 11 97472-1438');

insert into Post values (null, 'Malfeitona', 'A tatuadora brasileira que se orgulha de fazer desenho ‘feio’, 
								Conhecida por seus desenhos propositalmente feios, Helen começou a tatuar por acaso. 
								Ela e o noivo queriam fazer tatuagens, mas não podiam gastar muito. Resolveram investir em um kit mais em conta e fazer os desenhos em casa mesmo.
                                O resultado não foi lá grandes coisa, mas ainda assim agradou não somente a eles mas como os amigos também, 
                                que passaram a pedir tatuagens para Helen. No começo, ela levava como brincadeira, mas o negócio começou a ficar sério,
                                e ela passou inclusive a cobrar pelo trabalho.', 1);