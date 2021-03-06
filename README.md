# TRABALHO 01:  Projeto Hidra
Trabalho desenvolvido durante a disciplina de Banco de Dados 1, no primeiro semestre de 2018.

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
1. Matheus Aguiar: aguiar007ax@gmail.com<br>
2. Paulo Lacerda: paulolacerda@hotmail.com<br>
3. Wagner Maurício: wmauriciu@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>

<p align="justify">Considerando que a Companhia Espírito Santense de Saneamento (Cesan) e o Corpo de Bombeiros Militar do Espírito Santo (CBMES) utilizam sistemas diferentes para controle dos hidrantes e não há um canal de comunicação entre as instituições e devido as alterações feitas pela Cesan, manuteções dos hidrantes, manutenções nas redes de água e instalação de novos hidrantes só serem descobertos pelo CBMES através de contato telefônico. Conforme dados estatisticos o bairro de Jardim Camburi em Vitória foi o mais atendido pelo CBMES com o maior número de incêndios urbanos em 2017. Com base messas informações propomos o desenvolvimento de um sistema que armazene, permita alterações e mostre informações em tempo real, plotadas num mapa, sobre os hidrantes localizados em Jardim Camburi, Vitória - ES, visando melhorar o atendimento do CBMES as ocorrências de incêndio urbano.</p>

### 3.MINI-MUNDO<br>

<p align="justify">Sistema web proposto para gestão de hidrantes afim de atender as demandas do Corpo de Bombeiros Militar do Espírito Santo (CBMES) e da Companhia Espírito Santense de Saneamento (CESAN). Os recursos do sistema serão disponibilizado ao CBMES com perfil de usuário padrão, ou seja, ele poderá consultar informações sobre os hidrantes, incluir informações sobre manutenção e emitir relatórios. A Cesan terá um perfil de usuário com funções de cadastro de hidrantes, gestão de usuário, gestão das manutenções e emissão de relatórios. O sistema deve possuir um cadastro de hidrantes para armazenamento de dados como seu ID, código, data de criação, status e outros relacionados.O sistema deve possuir um cadastro de conexão do hidrante onde será armazenado o tipo de conexão, quantidade disponiveis no hidrante, status quanto a possíveis avarias na conexão e a sua vasão. O sistema também deverá possuir um cadastro de endereços para controle e identificação da sua locialização onde serão armazenado a rua, bairro, CEP e ponto de referência, latitude e longitude. O sistema deve possuir um gerenciador de usuário onde conste o ID do usuário, tipo de perfil, Nome completo ou Razão Social, endereço e telefones para contato. O sistema deve também emitir relatórios quanto aos hidrantes operantes, inoprantes e em manutenção, gerar mapa com localização dos hidrantes identificando com uma cor que será relacionada ao seu status (incluir tipos de status).</p>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Inicio.png?raw=true)<br>
[Arquivo PDF do protótipo Balsamiq (MOCKUPS)](https://github.com/projeto-hidra-ifes/trab01/blob/master/ProjetoHidra%2001%2007%202018%200955.pdf)

#### 4.1 TABELA DE DADOS DO SISTEMA:
[TABELA DE DADOS DO SISTEMA](https://github.com/projeto-hidra-ifes/trab01/blob/master/Tabelas%20do%20sistema%2029%2006%202018%202034.xlsx)

#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes?<br>
<p align="justify">O sistema Web Proposto para gestão de hidrantes disponibilizará aos seus usuários/colaboradores informações relevantes ao uso de hidrantes localizados, a princício, no bairro de Jardim Camburí em Vitória no Espírito Santo onde o índice de incendios urbanos, conforme dados estatísticos de 2017, foi o mais elevado. Dentre as possibilidades de relários o sistema atenderá uma das principais requisições do Corpo de Bombeiros junto a Cesan em relação a localização dos hidrantes e seu estado de uso.</p>
        
b) Crie uma lista com os 10 principais relatórios que poderão ser obtidos por meio do sistema proposto!<br>
<li>Relatório de localização de hidrantes por endereço (GeoReferenciamento).</li>
<li>Relatório de empresa (Razão Social e os funcionários pertecentes que fazem parte do sistema).</li>
<li>Relatório de status do hidrantes (Mostra o hidrante e sua condição atual).</li>
<li>Relatório com o histórico de acesso ao sistema e log de eventos por usuário.</li>
<li>Relatória dos tipos de conexões do hidrante (Mostra o tipo de conexão disponivel no hidrante).</li>
<li>Relatória de manutenção (Mostra um hisstórico das manutenções realizados no hidrante).</li>
<li>Relatório da vazão maxima e padrão do hidrante (Mostra a capacidade normal e máxina suportada pelo hidrante).</li>
<li>Relatório de usuario (Mostra uma lista de usuários e seus endereço).</li>
<li>Relatório de atualizações do hidrante (Mostra dados sobre troca de hidrante após sua substituição devido vencimento).</li>
<li>Relatório de quantitativo de hidrantes por CEP (Mostra quantos hidrantes possui um determinado CEP).</li><br>

>## Marco de Entrega 01 em: (02/04/2018)<br>

### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO 
        * Para nosso prótótipo limitaremos o modelo conceitual nas 6 principais entidades do escopo
        * O protótipo deve possui no mínimo duas relações N para N
        * o mínimo de entidades do modelo conceitual será igual a 5

![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/arquivos/Modelo-Conceitual_Projeto_Hidra%20-%2025%2006%202018.png?raw=true)<br>

    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo da Vaga]: [Leonardo Laia Arpini, Luciano Ananias, Thiago Alves]
    [Casa Inteligente - JARVIS]: [Rebeca Borlini]

#### 5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

>## Marco de Entrega 02 em: (11/05/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
    Usuário:
    U_id = Número de identificação do usuário.
    Nome = Nome do usuário.
    Login = Login do usuário.
    Senha = Senha do usuário.
    Perfil = Identificação do usuário (se ele é administrador, usuário padrão…).
    Sescrição = Usuário padrão, administrador… 
    Modulo_permitido = Tipo de modelo permitido.
    Hidrante:
    H_id = Número de do hidrante.
    Codigo = Código do hidrante.
    Status = Mostra se o hidrante esta em estado ‘operando’, ‘manutenção’, ‘sem água’, ‘aguardando Peça’ ou ‘inoperante’.
    Latitude = Latitude onde se localiza o hidrante.
    Longitude = Longitude onde se localiza o hidrante.
    Tipo_hidrante = Modelo do hidrante ‘recalque’, ‘parede’, ‘coluna’.
    Vazão_padrão = Quantidade de litros padrão por minuto de água que o hidrante expele.
    Vazão_máxima = Quantidade de litros máximos por minuto de água que o hidrante expele.
    Conexão = Tipo de mangueira que pode ser usada no hidrante.
    Manutenção = Indica se a manutenção esta em dia ou atrasada.
    Ultima_atualização = Dia que foi realizado a ultima atualização do hidrante.
    Usuário_resp = Usuário responsável pelo hidrante.
    Data_criação = Data de criação do hidrante.
    Foto = Foto do hidrante.
    Endereço:
    E_id = Identificação do endereço.
    Cep = Cep do endereço.
    Bairro = Nome do bairro.
    Rua = Nome da rua.
    Número = Número de referência.
    Ponto_referencia = Algum ponto de referência.
    Conexão:
    C_id= Identificação da conexão.
    Tipo_conexão = Tipo da mangueira que encaixa no hidrante.
    Quantidade = Quantidade de mangueiras de um certo tipo disponível.
    Tamanho = Tamanho da mangueira.
    Manutenção:
    Ma_id = Identificação da manutenção.
    Status = Indica se a manutenção está em dia ou atrasada.
    Data = Dia da manutenção.
    Hora = Horário que foi realizado a manutenção.
    Trabalho_realizado = Tipo de trabalho que foi realizado no hidrante (‘troca de válvula’, ‘troca de conexão’…).
    Técnico_responsável = Pessoa qualifica que foi responsável pela manutenção.
    Módulo:
    Mo_id = Identificação do módulo.
    Descrição = Descreve a identificação do modulo.
    Ativo = Indica se o modulo está ativo ou não.o de Pessoa Física para cada cliente da empresa.<br>


### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

### 7	MODELO FÍSICO<br>
	create table Modulo(
		id_P serial not null,
		descricao varchar(30),
		status varchar(30),
		primary key(id_P));
        
	create table Empresa(
		id_P serial not null,
		descricao varchar(30),
		primary key (id_P));

	create table Tipo_Perfil(
		id_P serial not null,
		descricao varchar(30),
		primary key (id_P));
		
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
        
	create table Usuario(
		id_P serial not null,
		nome varchar(50),
		login varchar(20),
		senha varchar(20),
		fk_Perfil int not null,
		primary key (id_P),
		FOREIGN KEY(fk_Perfil) REFERENCES Perfil(id_P)
		);
    
	create table vazao_padrao(
		id_H serial not null,
		descricao varchar(30),
		primary key (id_H));
        
	create table Tipo_hidrante(
		id_H serial not null,
		descricao varchar(30),
		primary key (id_H));

	create table Conexao(
		id_H serial not null,
		tipo_conexao varchar(30),
		tamanho float,
		primary key (id_H));
        
	create table Manutencao(
		id_H serial not null,
		status varchar(30),
		data date,
		hora time,
		trabalho_realizado varchar(30),
		tecnico_responsavel varchar(30),
		primary key (id_H));
        
	create table Endereco(
		id_H serial not null,
		cep varchar(30),
		bairro varchar(50),
		rua varchar(30),
		numero int not null,
		ponto_referencia varchar(50),
		primary key (id_H));
		
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
    
    
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES <br>

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
         

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL

[Script para criação de tabela e inserção dos dados](https://github.com/projeto-hidra-ifes/trab01/blob/master/arquivos/DBHidra-Script-Create-Insert.sql)

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


#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (Drop table + Create de tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL

[Script para exclusão de tabelas existentes, criação de tabelas novas e inserção dos dados.](https://github.com/projeto-hidra-ifes/trab01/blob/master/arquivos/DBHidra-Script-Drop-Table.sql)

	DROP TABLE IF EXISTS Perfil;
	DROP TABLE IF EXISTS Modulo;
	DROP TABLE IF EXISTS Empresa;
	DROP TABLE IF EXISTS Tipo_Perfil;
	DROP TABLE IF EXISTS Usuario;
	DROP TABLE IF EXISTS Historico;
	DROP TABLE IF EXISTS Hidrante;
	DROP TABLE IF EXISTS vazao_padrao;
	DROP TABLE IF EXISTS Tipo_hidrante;
	DROP TABLE IF EXISTS Conexao;
	DROP TABLE IF EXISTS Manutencao;
	DROP TABLE IF EXISTS Endereco;
	
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
	
>## Marco de Entrega 03 em: (14/05/2018)<br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
	Select * From Perfil;
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%20Select%20Table%20Perfil.png)<br>

	Select * From Modulo;
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%20Select%20Table%20Modulo.png)<br>
	
	Select * From Empresa;
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%20Select%20Table%20Empresa.png)<br>
	
	Select * From Tipo_Perfil;
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%20Select%20Table%20Tipo_Perfil.png)<br>	

	Select * From Usuario;
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%20Select%20Table%20Usuario.png)<br>

	Select * From Historico;
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%20Select%20Table%20Historico.png)<br>

	Select * From Hidrante;
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%20Select%20Table%20Hidrante.png)<br>

	Select * From vazao_padrao;
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%20Select%20Table%20Vazao_Padrao.png)<br>

	Select * From Tipo_hidrante;
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%20Select%20Table%20Tipo_Hidrante.png)<br>

	Select * From Conexao;
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%20Select%20Table%20Conexao.png)<br>

	Select * From Manutencao;
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%20Select%20Table%20Manutencao.png)<br>

	Select * From Endereco;
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%20Select%20Table%20Endereco.png)<br>


#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
	select * from Manutencao
	where Manutencao.tecnico_responsavel = 'matheus';
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/where%201.png?raw=true)<br>

	select * from Manutencao
	where Manutencao.status = 'em dia';
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/where%202.png?raw=true)<br>

	select * from Endereco
	where Endereco.numero < 05;
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/where%203.png?raw=true)<br>

	select * from Endereco
	where Endereco.numero >= 05;
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/where%204.png?raw=true)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    
    	1 - select * from Endereco where Endereco.numero < 03 or Endereco.numero > 09;
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.3-a.1.png?raw=true)<br>
	
    	2 - select * from Endereco where Endereco.numero < 03 and Endereco.bairro <> 'Laranjeiras';
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.3-a.2.png?raw=true)<br>
	
    	3 - select * from Endereco where Endereco.numero > 09 and Endereco.bairro <> 'Centro';
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.3-a.3.png?raw=true)<br>
	
    	4 - select * from Endereco where Endereco.numero Is Not Null;
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.3-a.4.png?raw=true)<br>
	
    	5 - select * from Endereco where Endereco.bairro = 'algo sei la o que 1' or  Endereco.bairro = 'algo sei la o que 9';
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.3-a.5.png?raw=true)<br>
    
    
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    
    	1 - Select (vazao_maxima*10^3)/3600 as "Vazao Máxima em M³/s" From Hidrante
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.3-b.1.png?raw=true)<br>

    	2 - Select now() - data as "Dias de Manutenção" From Manutencao;
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.3-b.2.png?raw=true)<br>

    	3 - Select now() - data_criacao as "Tempo de vida do Hidrante" From Hidrante
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.3-b.3.png?raw=true)<br>


    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
    
    	1 - Select now() - data_criacao as "Tempo de vida do Hidrante" From Hidrante
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.3-c.1.png?raw=true)<br>

    	2 - Select now() - data as "Dias de Manutenção" From Manutencao;
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.3-c.2.png?raw=true)<br>

    	3 - Select tecnico_responsavel as "Supervisor" From Manutencao
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.3-c.3.png?raw=true)<br>
    
    
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    	1 - Select * From Empresa Where Descricao Like '%esa%'
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.4-a.1.png?raw=true)<br>

	2 - Select * From Endereco Where rua Like '%algo%'
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.4-a.2.png?raw=true)<br>

	3 - Select * From Usuario Where nome iLike 'c%'
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.4-a.3.png?raw=true)<br>

	4 - Select * From Usuario Where nome iLike 'y%'
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.4-a.4.png?raw=true)<br>

	5 - Select * From Usuario Where nome Like 'T%'
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.4-a.5.png?raw=true)<br>
	
    b) Criar uma consulta para cada tipo de função data apresentada.
	1 - Select current_date - data as "Qtd de Dias" From Manutencao
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.4-b.1.png?raw=true)<br>

	2 - Select now() - data as "Qtd de Dias" From Manutencao
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.4-b.2.png?raw=true)<br>

	3 - Select Age(current_date, data) as "Qtd de Dias" From Manutencao
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.4-b.3.png?raw=true)<br>

	4 - Select date_part('year',(Age(current_date, data))) as "Qtd de Anos" From Manutencao
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.4-b.4.png?raw=true)<br>

	5 - Select extract ('year' from data) as "Anos da ultima manutenção" From Manutencao
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.4-b.5.png?raw=true)<br>

>## Marco de Entrega 04 em: (04/06/2017)<br>
    
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
	1 - Update Endereco Set Bairro = 'Jardim Camburi';

	2 - Update Endereco Set rua = 'Joao de Oliveira Soares' Where id_h = 1;

	3 - Update Endereco Set rua = 'Pedro Busatto' Where id_h = 2;

	4 - Update Endereco Set rua = 'Milton Manoel dos Santos' Where id_h = 3;

	5 - Delete From Endereco Where id_h = 4 and id_h = 5;

	6 - Update Endereco Set Bairro = 'Bairro de Fatima' Where id_h = 10;


#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
		Select Endereco.Bairro, Endereco.Rua From Historico
		Inner Join Usuario on (Historico.fk_usuario = Usuario.id_P)
		Inner Join Perfil on (Usuario.fk_Perfil = Perfil.id_P)
		Inner Join Modulo on (Perfil.fk_Modulo = Modulo.id_P)
		Inner Join Empresa on (Perfil.fk_Empresa = Empresa.id_P)
		Inner Join Tipo_Perfil on (Perfil.fk_Tipo_Perfil = Tipo_Perfil.id_P)
		Inner Join Hidrante on (Historico.fk_Hidrante = Hidrante.id_H)
		Inner Join Vazao_Padrao on (Hidrante.fk_Vazao_Padrao = Vazao_Padrao.id_H)
		Inner Join Tipo_Hidrante on (Hidrante.fk_Tipo_Hidrante = Tipo_Hidrante.id_H)
		Inner Join Endereco on (Hidrante.fk_Endereco = Endereco.id_H)
		Inner Join Manutencao on (Hidrante.fk_Manutencao = Manutencao.id_H)
		Inner Join Conexao on (Hidrante.fk_Conexao = Conexao.id_H)

![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.6-a.png?raw=true)<br>

        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
	
		Select Endereco.Bairro, Endereco.Rua, Endereco.CEP From Historico
		Inner Join Usuario on (Historico.fk_usuario = Usuario.id_P)
		Inner Join Perfil on (Usuario.fk_Perfil = Perfil.id_P)
		Inner Join Modulo on (Perfil.fk_Modulo = Modulo.id_P)
		Inner Join Empresa on (Perfil.fk_Empresa = Empresa.id_P)
		Inner Join Tipo_Perfil on (Perfil.fk_Tipo_Perfil = Tipo_Perfil.id_P)
		Inner Join Hidrante on (Historico.fk_Hidrante = Hidrante.id_H)
		Inner Join Vazao_Padrao on (Hidrante.fk_Vazao_Padrao = Vazao_Padrao.id_H)
		Inner Join Tipo_Hidrante on (Hidrante.fk_Tipo_Hidrante = Tipo_Hidrante.id_H)
		Inner Join Endereco on (Hidrante.fk_Endereco = Endereco.id_H)
		Inner Join Manutencao on (Hidrante.fk_Manutencao = Manutencao.id_H)
		Inner Join Conexao on (Hidrante.fk_Conexao = Conexao.id_H)

![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.6-b.png?raw=true)<br>

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
	1)
	Select Endereco.Bairro, Endereco.Rua, Endereco.CEP From Historico
		Inner Join Usuario on (Historico.fk_usuario = Usuario.id_P)
		Inner Join Perfil on (Usuario.fk_Perfil = Perfil.id_P)
		Inner Join Modulo on (Perfil.fk_Modulo = Modulo.id_P)
		Inner Join Empresa on (Perfil.fk_Empresa = Empresa.id_P)
		Inner Join Tipo_Perfil on (Perfil.fk_Tipo_Perfil = Tipo_Perfil.id_P)
		Inner Join Hidrante on (Historico.fk_Hidrante = Hidrante.id_H)
		Inner Join Vazao_Padrao on (Hidrante.fk_Vazao_Padrao = Vazao_Padrao.id_H)
		Inner Join Tipo_Hidrante on (Hidrante.fk_Tipo_Hidrante = Tipo_Hidrante.id_H)
		Inner Join Endereco on (Hidrante.fk_Endereco = Endereco.id_H)
		Inner Join Manutencao on (Hidrante.fk_Manutencao = Manutencao.id_H)
		Inner Join Conexao on (Hidrante.fk_Conexao = Conexao.id_H)
	Group By Endereco.Bairro,Endereco.Rua, Endereco.CEP
		
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.7-a.png?raw=true)<br>

	2)
	Select Endereco.Bairro From Endereco
	Group By Endereco.Bairro
		
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.7-b.png?raw=true)<br>

	3)
	Select Hidrante.Status as "Situação", Count(Hidrante.Status) as "Quantidade de Hidrantes" From Hidrante
	Group By Hidrante.Status
		
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.7-c.png?raw=true)<br>

	4)
	Select Hidrante.Codigo as "Codigo do Hidrante", Max(Hidrante.data_criacao) as "Hidrante mais antigo"
	From Hidrante
	Group By Hidrante.Codigo, Hidrante.data_criacao
	Order By Hidrante.data_criacao
		
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.7-d.png?raw=true)<br>

	5)
	Select Hidrante.Codigo as "Codigo do Hidrante", Max(Hidrante.data_criacao) as "Hidrante mais novo"
	From Hidrante
	Group By Hidrante.Codigo, Hidrante.data_criacao
	Order By Hidrante.data_criacao Desc
		
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.7-e.png?raw=true)<br>

	6)
	Select Count(Manutencao.Status) as "Hidrantes com Manutenção em Dia", Manutencao.data as "Data de Criação"
	From Hidrante
	Inner Join Manutencao on (Hidrante.fk_Manutencao = Manutencao.Id_h)
	Group By Manutencao.Status, Manutencao.data
		
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.7-f.png?raw=true)<br>


#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
	1)
	Select Hidrante.Codigo, Hidrante.Status, Endereco.Rua, Endereco.Numero, Endereco.Bairro
	From Hidrante
	Right Outer Join Endereco
	On (Endereco.Id_h = Hidrante.fk_Endereco)
		
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.8-a.png?raw=true)<br>

	2)
	Select Hidrante.Codigo, Hidrante.Status, Tipo_Hidrante.Descricao as "Tipo de Hidrante"
	From Hidrante
	Right Outer Join Tipo_Hidrante
	On (Tipo_Hidrante.Id_h = Hidrante.fk_Tipo_Hidrante)
		
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.8-b.png?raw=true)<br>

	3)
	Select Hidrante.Codigo, Hidrante.Status, Manutencao.Status, Manutencao.Trabalho_Realizado
	From Hidrante
	Left Outer Join Manutencao
	On (Manutencao.Id_h = Hidrante.fk_Manutencao)
		
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.8-c.png?raw=true)<br>

	4)
	Select Hidrante.Codigo, Hidrante.Status, Conexao.Tipo_Conexao, Conexao.Tamanho
	From Hidrante
	Left Outer Join Conexao
	On (Conexao.Id_h = Hidrante.fk_Conexao)
		
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.8-d.png?raw=true)<br>

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
		Select Ha.Codigo, Ha.Status
		From Hidrante ha, Hidrante hb
		Where ha.codigo = 'VIX0001'
	
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.9-a.png?raw=true)<br>
	
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
	
	1)
	Create View View_Endereco as
		Select Endereco.Bairro, Endereco.Rua From Historico
		Inner Join Usuario on (Historico.fk_usuario = Usuario.id_P)
		Inner Join Perfil on (Usuario.fk_Perfil = Perfil.id_P)
		Inner Join Modulo on (Perfil.fk_Modulo = Modulo.id_P)
		Inner Join Empresa on (Perfil.fk_Empresa = Empresa.id_P)
		Inner Join Tipo_Perfil on (Perfil.fk_Tipo_Perfil = Tipo_Perfil.id_P)
		Inner Join Hidrante on (Historico.fk_Hidrante = Hidrante.id_H)
		Inner Join Vazao_Padrao on (Hidrante.fk_Vazao_Padrao = Vazao_Padrao.id_H)
		Inner Join Tipo_Hidrante on (Hidrante.fk_Tipo_Hidrante = Tipo_Hidrante.id_H)
		Inner Join Endereco on (Hidrante.fk_Endereco = Endereco.id_H)
		Inner Join Manutencao on (Hidrante.fk_Manutencao = Manutencao.id_H)
		Inner Join Conexao on (Hidrante.fk_Conexao = Conexao.id_H)
	
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.9-a.png?raw=true)<br>

	2)
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.9-a.png?raw=true)<br>

	3)
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.9-a.png?raw=true)<br>

	4)
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.9-a.png?raw=true)<br>

	5)
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.9-a.png?raw=true)<br>

	
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
	1)
	Select Hidrante.Codigo, Hidrante.Status, Tipo_Hidrante.Descricao as "Tipo de Hidrante"
	From Hidrante
	Right Outer Join Tipo_Hidrante
	On (Tipo_Hidrante.Id_h = Hidrante.fk_Tipo_Hidrante)
	Where status in ('operando', 'inoperante')
		
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.10-a.png?raw=true)<br>

	2)
	Select Hidrante.Codigo, Hidrante.Status, Tipo_Hidrante.Descricao as "Tipo de Hidrante"
	From Hidrante
	Right Outer Join Tipo_Hidrante
	On (Tipo_Hidrante.Id_h = Hidrante.fk_Tipo_Hidrante)
    	Where Descricao in ('coluna', 'recalque')
		
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.10-b.png?raw=true)<br>

	3)
	Select Hidrante.Codigo, Hidrante.Status, Endereco.Rua, Endereco.Numero, Endereco.Bairro
	From Hidrante
	Right Outer Join Endereco
	On (Endereco.Id_h = Hidrante.fk_Endereco)
	Where Endereco.Rua in ('Joao de Oliveira Soares', 'Pedro Busatto')
		
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Img%209.10-c.png?raw=true)<br>

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.
[Backup completo do banco de dados - DBHidra.](https://github.com/projeto-hidra-ifes/trab01/blob/master/Bkp_dbhidra_02072018_2111)


### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 13   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
>## Marco de Entrega Final em: (25/06/2018)<br>
        
### 14  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/



    

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


