# TRABALHO 01:  Projeto Hidra
Trabalho desenvolvido durante a disciplina de Banco de Dados 1, no primeiro semestre de 2018.

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
1. Matheus Aguiar: aguiar007ax@gmail.com<br>
2. Paulo Lacerda: paulolacerda@hotmail.com<br>
3. Wagner Maurício: wmauriciu@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>

> Considerando que a Cesan e o CBMES utilizam sistemas diferentes para controle dos hidrantes, dificultando a comunicação entre as instituições.

> Considerando que as alterações feitas pela Cesan (manuteção do hidrante, manutenção da rede de água, etc...) só são descobertas pelo CBMES se for feito um contato telefônico entre stackholders.

> Considerando que Jardim Camburi foi o bairro atendido pelo Corpo de Bombeiros Militar do Espírito Santo (CBMES) com o maior número de incêndios urbanos em 2017.

> Esta é uma proposta de um sistema que armazene, permita alterações e mostre informações em tempo real, plotadas num mapa, sobre os hidrantes localizados em Jardim Camburi, Vitória - ES, visando melhorar o atendimento do CBMES a ocorrências de incêndio urbano.<br>  

### 3.MINI-MUNDO<br>

Sistema web proposto para gestão de hidrantes afim de atender as demandas do Corpo de Bombeiros Militar do Espírito Santo (CBMES) e da Companhia Espírito Santense de Saneamento (CESAN). Os recursos do sistema serão disponibilizado ao CBMES com perfil de usuário padrão, ou seja, ele poderá consultar informações sobre os hidrantes, incluir informações sobre manutenção e emitir relatórios. A Cesan terá um perfil de usuário com funções de cadastro de hidrantes, gestão de usuário, gestão das manutenções e emissão de relatórios. O sistema deve possuir um cadastro de hidrantes para armazenamento de dados como seu ID, código, data de criação, status e outros relacionados.O sistema deve possuir um cadastro de conexão do hidrante onde será armazenado o tipo de conexão, quantidade disponiveis no hidrante, status quanto a possíveis avarias na conexão e a sua vasão. O sistema também deverá possuir um cadastro de endereços para controle e identificação da sua locialização onde serão armazenado a rua, bairro, CEP e ponto de referência, latitude e longitude. O sistema deve possuir um gerenciador de usuário onde conste o ID do usuário, tipo de perfil, Nome completo ou Razão Social, endereço e telefones para contato. O sistema deve também emitir relatórios quanto aos hidrantes operantes, inoprantes e em manutenção, gerar mapa com localização dos hidrantes identificando com uma cor que será relacionada ao seu status (incluir tipos de status).

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/Inicio.png)<br>

Alterado..
![alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/arquivos/Modelo-Conceitual_Projeto_Hidra_paulo.png)<br>

#### 4.1 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    e deve ser criada antes do modelo conceitual
    c) Após criada esta tabela não deve ser modificada, pois será comparada com a tabela final na conclusão do trabalho
    
    USUARIO				
    id	        nome	                login	                senha	            perfil
    00001	    Antônio Rodrigues	    antonio.rodrigues	    senhaPadr@01	    00007
    00002	    Eduardo Pereira	        eduardo.pereira	        senhaPadr@02	    00017
    00003	    Jorge Júnior	        jorge.junior	        senhaPadr@03	    00018
    00004	    Luciano Santana	        luciano.santana  	    senhaPadr@04	    00018   
    00005	    Marcelo Costa	        marcelo.costa	        senhaPadr@05	    00017

    PERFIL		
    id	        descricao	        modulo_permitido
    00001	    SYSTEM.admin	    00001
    00002	    SYSTEM.admin	    00002
    00003	    SYSTEM.admin	    00003
    00004	    SYSTEM.admin	    00004
    00005	    SYSTEM.admin	    00005
    00006	    SYSTEM.admin	    00006
    00007	    CESAN.adm	        00001
    00008	    CESAN.adm	        00002
    00009	    CESAN.adm	        00003
    00010	    CESAN.adm	        00004
    00011	    CESAN.adm	        00005
    00012	    CESAN.user	        00001
    00013	    CESAN.user	        00002
    00014	    CESAN.user	        00003
    00015	    CESAN.user	        00004
    00016		
    00017	    CBMES.adm	
    00018	    CBMES.user	

    ENDERECO
    id      cep         bairro          rua                                 numero  ponto_referencia
    00001   29065-051   Jardim Camburi  Avenida Dante Michelini             4107    Na esquina do Hotel Canto do Sol
    00002   29065-048   Jardim Camburi  Rua Carlos Martins                  2017    Ao lado do Coronel Picanha
    00003   29065-035   Jardim Camburi  Rua Belmiro Teixeira Pimente        2014    Em frente ao Colégio Salesiano
    00004   29065-072   Jardim Camburi  Rua Natanael do Amaral Carneiro     60B     Ao lado do Forno e Lenha Disk Pizza
    00005   29065-084   Jardim Camburi  Av. Jedith Leão Castelo Ribeiro     291     Em frente ao supermercado Carone

    CONEXAO			
    id	        tipo_conexao	                                        quantidade	    tamanho
    00001	    Adaptador Storz 2.1/2"x Rosca Fêmea 2.1/2" | Bucka	    2	            50 mm
    00002	    Adaptador Hidrante Macho	                            3	            20 mm
    00003	    União de Mangueira de Hidrante ou Mangote 1.1/2"	    2	            30 mm
    00004	    Válvula Hidrante 2.1/2″	                                1	            30 mm
    00005	    Válvulas para Hidrantes                         	    3	            15 mm

    MANUTENCAO					
    id	        status	            data	        hora	        trabalho_realizado	    tecnico_responsavel
    00001	    Em dia	            20/01/2018	    09:25:15	    Troca de valvula	    Antônio Rodrigues
    00002	    Atrasada	        25/06/2015	    12:57:18	    Troca de conexão	    Eduardo Pereira
    00003	    Em andamento	    14/09/1954	    23:15:15	    Verificação status	    Jorge Júnior
    00004	    Não autorizada	    22/08/2016	    05:02:35	    Troca de valvula	    Luciano Santana
    00005	    Autorizada	        29/03/2015	    14:25:17	    Troca de valvula	    Marcelo Costa

    MODULO		
    id	        descricao	    ativo
    00001	    hidrante	    VERDADEIRO
    00002	    conexao	        VERDADEIRO
    00003	    manutencao	    VERDADEIRO
    00004	    endereco	    VERDADEIRO
    00005	    usuario	        VERDADEIRO
    00006	    perfil	        VERDADEIRO

    HIDRANTE														
    id      codigo      status	        endereco	latitude	    longitude	    tipo_hidrante	vazao_padrao	vazao_maxima	conexao	manutencao  ultima_atualizacao	usuario_resp	data_criacao	foto
    00001	VIXJDC0001	Operando	    00001	    -2.025.529.799	4.026.365.656	recalque	    100 l/min	    200 l/min	     00001   00001	     01/02/2018          00001          05/03/2015	
    00002	VIXJDC0002	Em manutenção	00002	    2.026.192.086	4.026.602.495	parede	        150 l/min	    200 l/min	     00002   00002	     30/01/2018          00002          05/01/2017	
    00003	VIXJDC0003	Aguardando peça	00003	    202.628.267	    4.025.984.514	coluna	        90 l/min	    150 l/min       00003	00003       05/04/2018          00003           28/02/2016	
    00004	VIXJDC0004	Sem Água	    00004	    2.025.626.426	4.026.699.054	recalque	    110 l/min	    300 l/min       00004	00004       22/03/2018          00004           22/09/2013	
    00005	VIXJDC0005	Operando	    00005	    2.026.324.942	4.026.160.467	coluna	        120 l/min	    300 l/min       00005	00005       21/05/2016          00005           15/10/2011	

#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes?
    
     *** O sistema Web Proposto para gestão de hidrantes disponibilizará aos seus usuários/colaboradores
     informações relevantes ao uso de hidrantes localizados, a princício, no bairro de Jardim Camburí em
     Vitória no Espírito Santo onde o índice de incendios urbanos é mais elevado. Dentre as possibilidades
     de relários o sistema atenderá uma das principais requisições do corpo de bombeiros em relação a localização
     dos hidrantes e seu estado de uso.
        
    b) Crie uma lista com os 10 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
    *** Relatório de localização de hidrantes por endereço.
    *** Relatório de localização de hidrantes por georeferenciamento.
    *** Relatório de localização de hidrantes por mapa.
    *** Relatório de funcionalidade do hidrante.
    *** Relatória dos tipos de conexões do hidrante.
    *** Relatória de manutenção.
    *** Relatório da vazão maxima e padrão do hidrante.
    *** Relatório de usuario.
    *** Relatório de atualizações do hidrante.
    *** Relatório de descrições do estado em que se encontra o hidrante.
    
>## Marco de Entrega 01 em: (02/04/2018)<br>

### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO 
        * Para nosso prótótipo limitaremos o modelo conceitual nas 6 principais entidades do escopo
        * O protótipo deve possui no mínimo duas relações N para N
        * o mínimo de entidades do modelo conceitual será igual a 5

![Alt text](https://github.com/projeto-hidra-ifes/trab01/blob/master/images/projeto_hidra_MODELO_CONCEITUAL.png?raw=true "Modelo Conceitual")
<br>
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

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
        a) inclusão das instruções de criacão das estruturas DDL 
        (criação de tabelas, alterações, etc..)          
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físic
        b) formato .SQL

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (Drop table + Create de tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
>## Marco de Entrega 03 em: (14/05/2018)<br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

>## Marco de Entrega 04 em: (04/06/2017)<br>
    
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

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


