create table Modulo(
	id_P serial not null,
	descricao varchar(30),
	status varchar(30),
	primary key(id_P));

Insert Into Modulo(id_P, descricao)
	values	(0001, 'pessoal1'),
	(0002, 'pessoal2'),
	(0003, 'pessoal3'),
	(0004, 'pessoal4'),
	(0005, 'pessoal5'),
	(0006, 'pessoal6'),
	(0007, 'pessoal7'),
	(0008, 'pessoal8'),
	(0009, 'pessoal9'),
	(0010, 'pessoal10');

    
create table Empresa(
	id_P serial not null,
	descricao varchar(30),
	primary key (id_P));

Insert Into Empresa(id_P, descricao)
	values	(0001, 'cesan'),
	(0002, 'cesan'),
	(0003, 'cesan'),
	(0004, 'cesan'),
	(0005, 'cesan'),
	(0006, 'cesan'),
	(0007, 'cesan'),
	(0008, 'cesam'),
	(0009, 'cesan'),
	(0010, 'cesan');


create table Tipo_Perfil(
	id_P serial not null,
	descricao varchar(30),
	primary key (id_P));

Insert Into Tipo_Perfil(id_P, descricao)
	values	(0001, 'admin'),
	(0002, 'admin'),
	(0003, 'admin'),
	(0004, 'admin'),
	(0005, 'admin'),
	(0006, 'admin'),
	(0007, 'admin'),
	(0008, 'admin'),
	(0009, 'admin'),
	(0010, 'admin');
	
create table Perfil(
	id_P int not null,
	descricao varchar(30),
	fk_Modulo int not null,
	fk_Empresa int not null,
	fk_tipo_perfil  int not null,
	primary key(id_P),
	FOREIGN KEY(fk_Modulo) REFERENCES Modulo(id_P),
	FOREIGN KEY(fk_Empresa) REFERENCES Empresa(id_P),
	FOREIGN KEY(fk_tipo_perfil) REFERENCES Tipo_Perfil(id_P)
	);

Insert Into Perfil(id_P, descricao, fk_Modulo, fk_Empresa, fk_Tipo_Perfil)
	values	(0001, 'System.admin', 1, 1, 1),
	(0002, 'System.admin', 1, 1, 1),
	(0003, 'System.admin', 1, 1, 1),
	(0004, 'System.admin', 1, 1, 1),
	(0005, 'System.admin', 1, 1, 1),
	(0006, 'System.admin', 1, 1, 1),
	(0007, 'System.admin', 1, 1, 1),
	(0008, 'Cesan.admin', 1, 1, 1),
	(0009, 'Cesan.admin', 1, 1, 1),
	(0010, 'cesan.admin', 1, 1, 1);
    
create table Usuario(
	id_P serial not null,
	nome varchar(50),
	login varchar(20),
	senha varchar(20),
	fk_Perfil int not null,
	primary key (id_P),
	FOREIGN KEY(fk_Perfil) REFERENCES Perfil(id_P)
	);

Insert Into Usuario(id_P, nome, login, senha, fk_Perfil)
	values	(0001, 'Rimuru', 'Rimuru.Tempest', 'Tempest', 1),
	(0002, 'Tempest', 'Tempest.Rimuru', 'Riumuru', 1),
	(0003, 'Yun', 'Yun.Che', 'ATG', 1),
	(0004, 'Itautec', 'Ita.U.Tec', 'Tec.U.Ita', 1),
	(0005, 'Clig', 'Gilc', 'Lcig', 1),
	(0006, 'Chaotic', 'Chaos', 'Destruction', 1),
	(0007, 'Sowrd', 'Chaotic', 'Fast', 1),
	(0008, 'God', 'ChaoticSword', 'SwordGod', 1),
	(0009, 'Tyr', 'GodOfWar', 'Nordic', 1),
	(0010, 'Dragon', 'Verad', 'Control', 1);

create table vazao_padrao(
	id_H serial not null,
	descricao varchar(30),
	primary key (id_H));

Insert Into vazao_padrao (id_H, descricao)
	values	(0001, '50 l/min'),
	(0002, '40 l/min'),
	(0003, '35 l/min'),
	(0004, '30 l/min'),
	(0005, '50 l/min'),
	(0006, '40 l/min'),
	(0007, '35 l/min'),
	(0008, '30 l/min'),
	(0009, '50 l/min'),
	(0010, '40 l/min');
    
create table Tipo_hidrante(
	id_H serial not null,
	descricao varchar(30),
	primary key (id_H));

Insert Into Tipo_hidrante (id_H, descricao)
	values	(0001, 'coluna'),
	(0002, 'recalque'),
	(0003, 'recalque'),
	(0004, 'coluna'),
	(0005, 'recalque'),
	(0006, 'recalque'),
	(0007, 'coluna'),
	(0008, 'recalque'),
	(0009, 'recalque'),
	(0010, 'coluna');

create table Conexao(
	id_H serial not null,
	tipo_conexao varchar(30),
	tamanho float,
	primary key (id_H));

Insert Into Conexao (id_H, tipo_conexao, tamanho)
	values	(0001, 'adaptador storz', 2.5),
	(0002, 'adaptador storz', 1.5),
	(0003, 'válvula globo em 45º', 2.5),
	(0004, 'adaptador storz', 2.5),
	(0005, 'adaptador storz', 1.5),
	(0006, 'válvula globo em 45º', 2.5),
	(0007, 'adaptador storz', 2.5),
	(0008, 'adaptador storz', 1.5),
	(0009, 'válvula globo em 45º', 2.5),
	(0010, 'adaptador storz', 2.5);
    
create table Manutencao(
	id_H serial not null,
	status varchar(30),
	data date,
	hora time,
	trabalho_realizado varchar(30),
	tecnico_responsavel varchar(30),
	primary key (id_H));

Insert Into Manutencao (id_H, Status, data, hora, trabalho_realizado, tecnico_responsavel)
	values	(0001, 'em dia', '1999/01/03', '23:45', 'troca de válvula', 'wagner'),
	(0002, 'atrasada', '2000/02/05', '20:40', 'troca de coneção', 'matheus'),
	(0003, 'em andamento', '2001/03/07', '19:30', 'verificação de status', 'paulo'),
	(0004, 'não autorizada', '2002/04/09', '10:23', 'troca de válvula', 'wagner'),
	(0005, 'autorizada', '2003/05/11', '06:30', 'troca de coneção', 'matheus'),
	(0006, 'em dia', '2004/06/13', '05:47', 'verificação de status', 'paulo'),
	(0007, 'atradada', '2005/07/15', '08:55', 'troca de válvula', 'wagner'),
	(0008, 'em andamento', '2006/08/17', '23:54', 'troca de coneção', 'matheus'),
	(0009, 'nao autorizada', '2007/09/19', '21:34', 'verificação de status', 'paulo'),
	(0010, 'autorizada', '2008/10/21', '10:25', 'troca de vávula', 'wagner');
    
create table Endereco(
	id_H serial not null,
	cep varchar(30),
	bairro varchar(50),
	rua varchar(30),
	numero int not null,
	ponto_referencia varchar(50),
	primary key (id_H));

Insert Into Endereco (id_H, cep, bairro, rua, numero, ponto_referencia)
	values	(0001, '45635-435', 'algo sei la o que 1', 'rua algo 1', 01, 'na frente de algo 1'),
	(0002, '34657-212', 'algo sei la o que 2', 'rua algo 2', 02, 'na frente de algo 2'),
	(0003, '93456-532', 'algo sei la o que 3', 'rua algo 3', 03, 'na frente de algo 3'),
	(0004, '45567-653', 'algo sei la o que 4', 'rua algo 4', 04, 'na frente de algo 4'),
	(0005, '12345-567', 'algo sei la o que 5', 'rua algo 5', 05, 'na frente de algo 5'),
	(0006, '54321-678', 'algo sei la o que 6', 'rua algo 6', 06, 'na frente de algo 6'),
	(0007, '87654-321', 'algo sei la o que 7', 'rua algo 7', 07, 'na frente de algo 7'),
	(0008, '98712-345', 'algo sei la o que 8', 'rua algo 8', 08, 'na frente de algo 8'),
	(0009, '54678-432', 'algo sei la o que 9', 'rua algo 9', 09, 'na frente de algo 9'),
	(0010, '98712-987', 'algo sei la o que 10', 'rua algo 10', 10, 'na frente de algo 10');  
	
create table Hidrante(
	id_H serial not null,
	vazao_maxima float,
	codigo varchar(30),
	status varchar(30),
	data_criacao date,
	latitude float,
	longitude float,
	foto varchar(50),
	fk_Conexao int not null,
	fk_Manutencao int not null,
	fk_Endereco int not null,
	fk_Tipo_Hidrante int not null,
	fk_Vazao_Padrao int not null,
	primary key (id_H),
	FOREIGN KEY(fk_Conexao) REFERENCES Conexao(id_H),
	FOREIGN KEY(fk_Manutencao) REFERENCES Manutencao(id_H),
	FOREIGN KEY(fk_Endereco) REFERENCES Endereco(id_H),
	FOREIGN KEY(fk_Tipo_Hidrante) REFERENCES Tipo_hidrante(id_H),
	FOREIGN KEY(fk_Vazao_Padrao) REFERENCES vazao_padrao(id_H)
	);

Insert Into Hidrante (id_H, vazao_maxima, codigo, status, data_criacao, latitude, longitude, foto, fk_Conexao, fk_Manutencao, fk_Endereco, fk_Tipo_Hidrante, fk_Vazao_Padrao)
values	(0001, 100.44, 'VIX0001', 'operando', '1995/09/25', -134.6584365, -65.52454, 'imagem', 1, 1, 1, 1, 1),
(0002, 99.55, 'VIX0002', 'inoperante', '2001/12/21', 3425.3542, 352.6532, 'imagem', 1, 1, 1, 1, 1),
(0003, 70.33, 'VIX0003', 'operando', '2002/11/02', 3453.23542, 4521.6545, 'imagem', 1, 1, 1, 1, 1),
(0004, 60.55, 'VIX0004', 'em manutenção', '2003/10/13', 87.45667, 6778.3422, 'imagem', 1, 1, 1, 1, 1),
(0005, 75.55, 'VIX0005', 'operando', '2004/09/28', 97.32546, 1233.654778, 'imagem', 1, 1, 1, 1, 1),
(0006, 80.55, 'VIX0006', 'inoperante', '20005/08/01', 634.46574, 255.6322, 'imagem', 1, 1, 1, 1, 1),
(0007, 90.55, 'VIX0007', 'operando', '2006/07/25', 65347.2345626, 75453.2345, 'imagem', 1, 1, 1, 1, 1),
(0008, 95.55, 'VIX0008', 'em manutenção', '2007/06/06', 754.256, 673.2566, 'imagem', 1, 1, 1, 1, 1),
(0009, 100.55, 'VIX0009', 'operando', '2012/12/12', 87435.234677, 754232.74532, 'imagem', 1, 1, 1, 1, 1),
(0010, 99.55, 'VIX0010', 'inoperante', '2011/11/11', 63.2356, 74622.7232, 'imagem', 1, 1, 1, 1, 1);

create table Historico(
	id_P serial not null,
	data date,
	hora time,
	atributo_alterado varchar(30),
	fk_Usuario int not null,
	fk_Hidrante int not null,
	primary key (id_P),
	FOREIGN KEY(fk_Usuario) REFERENCES Usuario(id_P),
	FOREIGN KEY(fk_Hidrante) REFERENCES Hidrante(id_H)
	);

Insert Into Historico(data, hora, atributo_alterado, id_P, fk_Usuario, fk_Hidrante)
	values	('2010/07/25', '12:30', 'login', 0001, 1, 1),
	('2010/08/23', '13:56', 'login', 0002, 1, 1),
	('2009/11/04', '18:45', 'senha', 0003, 1, 1),
	('2011/02/05', '10:20', 'login', 0004, 1, 1),
	('2010/07/25', '12:30', 'login', 0005, 1, 1),
	('2010/08/23', '13:56', 'login', 0006, 1, 1),
	('2009/11/04', '18:45', 'senha', 0007, 1, 1),
	('2011/02/05', '10:20', 'login', 0008, 1, 1),
	('2010/07/25', '12:30', 'login', 0009, 1, 1),
	('2010/08/23', '13:56', 'login', 0010, 1, 1);
	
