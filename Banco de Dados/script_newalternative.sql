create database NewAlternative;
/*drop database newalternative; */
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

insert into Usuario values (null,'Eduarda','eduarda@gmail.com', '1234', '2002-03-17', '(+55) 11 97472-1438'),
							(null,'Julia','julia@gmail.com', '1234', '2003-03-15', '(+55) 11 94002-8922'),
                            (null,'Mayara','mayara@gmail.com', '1234', '1990-02-10', '(+55) 11 98922-3206'),
                            (null,'Kaline','kaline@gmail.com', '1234', '1980-02-14', '(+55) 11 91122-3467');

insert into Post values (null, 'Malfeitona', 'A tatuadora brasileira que se orgulha de fazer desenho ‘feio’, 
								Conhecida por seus desenhos propositalmente feios, Helen começou a tatuar por acaso. 
								Ela e o noivo queriam fazer tatuagens, mas não podiam gastar muito. Resolveram investir em um kit mais em conta e fazer os desenhos em casa mesmo.
                                O resultado não foi lá grandes coisa, mas ainda assim agradou não somente a eles mas como os amigos também, 
                                que passaram a pedir tatuagens para Helen. No começo, ela levava como brincadeira, mas o negócio começou a ficar sério,
                                e ela passou inclusive a cobrar pelo trabalho. Para saber mais, acesse o instagram da Helen: @malfeitona', 1), (null, 'Nosferotika', 'Rúbia, mais conhecida 
                                como "lubbyh", é a maior influencer digital do meio gótico e alternativo atualmente, 
                                com mais de 380 mil inscritos em seu canal do YouTube. Lá ela posta dicas, maquiagens, looks, rolês e tudo sobre moda gótica. Para saber mais acesse o insta da Rúbia: @nosferotika', 2),
							(null, 'Satine Piercer', 'Satine é uma bodypiercer e tatuadora que atende por um estúdio na Vila Formosa em São Paulo. Lá, ela
                            atende e também ministra cursos para aquele(a) que pretende seguir por este ramo também. Para ver fotos dos trabalhos dela, siga: @saty_servasat',1);
                                
select * from Post;
select * from Usuario;