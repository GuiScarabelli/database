-- task 1
USE sprint1;

-- Criar a tabela chamada Atleta 

CREATE TABLE tbAtleta (
	idAtleta INT PRIMARY KEY AUTO_INCREMENT,
    nomeAtleta VARCHAR (40),
	modalidade varchar(40),
	qtdMedalha int
);


INSERT INTO tbatleta (nomeAtleta, modalidade, qtdMedalha) VALUES 
('Guilherme', 'Futebol', '3'),
('Caique', 'Futebol', 1),
('Ricardo', 'Volêi', '7'),
('Nayra', 'Volêi', '2'),
('Winicius', 'Basquete', '5'),
('Vivian', 'Basquete',  '1'),
('Andre', 'Ping-pong', '12'),
('Rubens', 'Ping-pong', '10');

-- Exibir todos os dados da tabela.
SELECT * FROM tbAtleta;

-- Atualizar a quantidade de medalhas do atleta com id=1;
SELECT qtdMedalha FROM tbAtleta 
	WHERE idAtleta = 1;
    
-- Atualizar a quantidade de medalhas do atleta com id=2 e com o id=3;
SELECT qtdMedalha FROM tbatleta
	WHERE idAtleta IN (2, 3);


-- Atualizar o nome do atleta com o id=4;
SELECT nomeAtleta FROM tbatleta
	WHERE idAtleta = 4;

-- Adicionar o campo dtNasc na tabela, com a data de nascimento dos atletas, tipo date;
ALTER TABLE tbatleta
	ADD COLUMN dtNasc date;
    
SELECT * FROM tbAtleta;

    
-- Atualizar a data de nascimento de todos os atletas;
UPDATE tbatleta SET dtNasc = '2004-10-07'
	WHERE idAtleta = 1;
    
UPDATE tbatleta SET dtNasc = '2004-03-10'
	WHERE idAtleta = 2;
    
UPDATE tbatleta SET dtNasc = '1994-02-02'
	WHERE idAtleta = 3;
    
UPDATE tbatleta SET dtNasc = '2005-03-03'
	WHERE idAtleta = 4;
    
UPDATE tbatleta SET dtNasc = '2004-10-02'
	WHERE idAtleta = 5;

UPDATE tbatleta SET dtNasc = '2003-10-02'
	WHERE idAtleta = 6;

UPDATE tbatleta SET dtNasc = '1993-10-13'
	WHERE idAtleta = 7;

UPDATE tbatleta SET dtNasc = '1990-08-01'
	WHERE idAtleta = 8;

UPDATE tbatleta SET dtNasc = '1980-12-08'
	WHERE idAtleta = 9;

-- Excluir o atleta com o id=5;
DELETE FROM tbatleta
	WHERE idAtleta = 4;

-- Exibir os atletas onde a modalidade é diferente de natação;
SELECT * FROM tbatleta
	WHERE modalidade <> 'natação';

-- Exibir os dados dos atletas que tem a quantidade de medalhas maior ou igual a 3;
SELECT * FROM tbatleta 
	WHERE qtdMedalha >= 3;
    
-- Modificar o campo modalidade do tamanho 40 para o tamanho 60;
ALTER TABLE tbatleta 
	MODIFY COLUMN modalidade varchar (60);

-- Descrever os campos da tabela mostrando a atualização do campo modalidade;
desc tbatleta;

-- Limpar os dados da tabela; 
TRUNCATE TABLE tbAtleta;




-- TASK 2
-- Criar a tabela chamada Musica

CREATE TABLE tbMusica (
	idMusica int primary key auto_increment,
    titulo varchar(40),
	artistaMusica varchar(40),
	generoMusica varchar(40)
);

DROP TABLE tbMusica;

INSERT INTO tbmusica (titulo, artistaMusica, generoMusica) VALUES
('Você','Tim maia','MPB'),
('Primavera (vai chuva)','Tim Maia','MPB'),
('Toxicity','System of a Down','ROCK'),
('BYOB','System of a Down','ROCK'),
('Real Slim Shady','Eminem','RAP'),
('Without me','Eminem','RAP'),
('Meu lugar','Arlindo Cruz','Samba'),
('O Bem','Arlindo Cruz','Samba');

-- a) Exibir todos os dados da tabela.
SELECT * FROM tbmusica;


-- b) Adicionar o campo curtidas do tipo int na tabela;
ALTER TABLE tbmusica
	ADD COLUMN curtidasMusicas int;
    
-- c) Atualizar o campo curtidas de todas as músicas inseridas;
UPDATE tbmusica SET curtidasMusicas = 1000
	WHERE idMusica = 1;
    
UPDATE tbmusica SET curtidasMusicas = 123421
	WHERE idMusica = 2;
    
    UPDATE tbmusica SET curtidasMusicas = 12425
	WHERE idMusica = 3;

UPDATE tbmusica SET curtidasMusicas = 20000
	WHERE idMusica = 4;

UPDATE tbmusica SET curtidasMusicas = 42324
	WHERE idMusica = 5;
    
UPDATE tbmusica SET curtidasMusicas = 15252
	WHERE idMusica = 6;
    
UPDATE tbmusica SET curtidasMusicas = 312455
	WHERE idMusica = 7;

UPDATE tbmusica SET curtidasMusicas = 231252
	WHERE idMusica = 8;

UPDATE tbmusica SET curtidasMusicas = 123897
	WHERE idMusica = 9;


-- d) Modificar o campo artista do tamanho 40 para o tamanho 80;
ALTER TABLE tbmusica
MODIFY artistaMusica VARCHAR (80);

-- e) Atualizar a quantidade de curtidas da música com id=1;
UPDATE tbMusica set curtidasMusicas = 200000 
	WHERE idMusica = 1;
    
    
-- f) Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3;
UPDATE tbMusica set curtidasMusicas = 40000 
	WHERE idMusica IN (2, 3);
    
-- g) Atualizar o nome da música com o id=5;
UPDATE tbMusica SET titulo = 'Lonely day' where idMusica = 5;

-- h) Excluir a música com o id=4;
DELETE FROM tbmusica WHERE idMusica = 4;

-- i) Exibir as músicas onde o gênero é diferente de funk;
SELECT * FROM tbmusica
	WHERE generoMusica <> 'funk';
    
-- j) Exibir os dados das músicas que tem curtidas maior ou igual a 20;
SELECT * FROM tbmusica
	WHERE curtidasMusicas >= 20;
    
-- k) Descrever os campos da tabela mostrando a atualização do campo artista;
DESC tbmusica;

-- l) Limpar os dados da tabela;

TRUNCATE TABLE tbmusica;


-- TASK 3
-- Criar a tabela chamada Filme

CREATE TABLE tbFilme(
	idFilme int primary key auto_increment,
    tituloFilme varchar(40),
    generoFilme varchar(40),
    diretorFilme varchar(40)
);

drop table tbfilme;

INSERT INTO tbFilme (tituloFilme, generoFilme, diretorFilme) values
('O Telefone Preto', 'Terror', 'Scott Derrickson'),
('Doutor Estranho','Ação', 'Scott Derrickson'),
('Todo Mundo em Pânico', 'Comédia', 'Keenen Ivory Wayans'),
('O Pequenino', 'Comédia','Keenen Ivory Wayans'),
('Fragmentado','Suspense','M. Night Shyamalan'),
('O Sexto Sentido','Suspense','M. Night Shyamalan'),
('Batman: O Cavaleiro das Trevas Ressurge','Ação','Christopher Nolan'),
('Interestelar','Ação','Christopher Nolan');

-- Exibir todos os dados da tabela.
SELECT * FROM tbfilme;

-- • Adicionar o campo protagonista do tipo varchar(50) na tabela;
ALTER TABLE tbfilme 
	ADD COLUMN protagonista varchar(50);
    
-- • Atualizar o campo protagonista de todas os filmes inseridos;


UPDATE tbfilme SET protagonista = 'Ethan Hawke'
	WHERE idFilme = 1;
    
UPDATE tbfilme SET protagonista = 'Benedict Cumberbatch'
	WHERE idFilme = 2;
    
    UPDATE tbfilme SET protagonista = 'Marlon Wayans'
	WHERE idFilme = 3;

UPDATE tbfilme SET protagonista = 'Marlon Wayans'
	WHERE idFilme = 4;

UPDATE tbfilme SET protagonista = 'James McAvoy'
	WHERE idFilme = 5;
    
UPDATE tbfilme SET protagonista = 'Haley Joel Osment'
	WHERE idFilme = 6;
    
UPDATE tbfilme SET protagonista = 'Christian Bale'
	WHERE idFilme = 7;

UPDATE tbfilme SET protagonista = 'Marlon Wayans'
	WHERE idFilme = 8;
    

-- Modificar o campo diretor do tamanho 40 para o tamanho 150
ALTER TABLE tbfilme
	MODIFY diretorFilme VARCHAR (150);


-- • Atualizar o diretor do filme com id=5;
UPDATE tbfilme SET DIRETORFILME = 'Voz de galinha'
	WHERE idFilme = 5;
    
-- • Atualizar o diretor dos filmes com id=2 e com o id=7;
UPDATE tbfilme SET DIRETORFILME = 'Felipe Fofo'
	WHERE idFilme IN (2, 7);
    
-- • Atualizar o título do filme com o id=6;
UPDATE tbfilme SET tituloFilme = 'To vendo fantasma'
	WHERE idFilme = 6;
    
-- • Excluir o filme com o id=3;
DELETE FROM tbfilme 
	WHERE idFilme = 3;

-- • Exibir os filmes em que o gênero é diferente de drama;
SELECT * FROM tbfilme
	WHERE generoFilme <> 'Drama';

-- Exibir os dados dos filmes que o gênero é igual ‘suspense’;
SELECT * FROM tbfilme
	WHERE generoFilme = 'suspense';

-- • Descrever os campos da tabela mostrando a atualização do campo protagonista e
-- diretor;

DESC tbfilme ;

-- Limpar os dados da tabela;
TRUNCATE TABLE tbfilme;


-- TASK 4
-- Criar a tabela chamada Professor

CREATE TABLE tbProfessor(
	idProfessor INT PRIMARY KEY AUTO_INCREMENT,
    nomeProfessor VARCHAR (40),
    especialidadeProfessor VARCHAR(40),
	dtNasc DATE
);

INSERT INTO tbprofessor (nomeProfessor, especialidadeProfessor, dtNasc) VALUES
('Vivian','DBA','1993-10-13'),
('Marcelo','DBA','1983-07-22'),
('Thiago Bonacelli','Gestor de projetos','1980-10-10'),
('Richarlison','Gestor de projetos','1983-03-10'),
('Karine', 'SocioEmocional','1980-04-12'),
('Thiago Abravanel','SocioEmocional','1983-03-10');

 -- Exibir todos os dados da tabela.
 SELECT * FROM tbprofessor;
 
 -- Adicionar o campo funcao do tipo varchar(50), onde a função só pode ser ‘monitor’,
 -- ‘assistente’ ou ‘titular’;

 ALTER TABLE tbprofessor
	ADD COLUMN funcao varchar(50);
    
     ALTER TABLE tbprofessor
		ADD CONSTRAINT chkFuncao
		CHECK (funcao = 'monitor' OR funcao = 'assistente' OR funcao = 'titular');
    
-- c) Atualizar os professores inseridos e suas respectivas funções;
UPDATE tbprofessor SET funcao = 'titular'
	WHERE idProfessor = 1;

UPDATE tbprofessor SET funcao = 'assistente'
	WHERE idProfessor = 2;
    
UPDATE tbprofessor SET funcao = 'titular'
	WHERE idProfessor = 3;
    
UPDATE tbprofessor SET funcao = 'monitor'
	WHERE idProfessor = 4;
    
UPDATE tbprofessor SET funcao = 'titular'
	WHERE idProfessor = 5;
    
UPDATE tbprofessor SET funcao = 'monitor'
	WHERE idProfessor = 6;

-- d) Inserir um novo professor;
INSERT INTO tbprofessor (nomeProfessor, especialidadeProfessor, dtNasc) VALUES
('Joao Programação (JP)','Algoritmo','1999-03-10');


-- e) Excluir o professor onde o idProfessor é igual a 5;
DELETE FROM tbprofessor
	WHERE idProfessor = 5;
    
-- f) Exibir apenas os nomes dos professores titulares;
SELECT nomeProfessor, funcao FROM tbprofessor
	WHERE FUNCAO = 'TITULAR';
    
-- g) Exibir apenas as especialidades e as datas de nascimento dos professores monitores;
SELECT especialidadeProfessor, dtNasc FROM tbprofessor
	WHERE funcao = 'monitor';
    
-- h) Atualizar a data de nascimento do idProfessor igual a 3
UPDATE tbprofessor SET dtNasc = '1990-12-21'
	WHERE idpROFESSOR = 3;
	
-- i) Limpar a tabela Professor;

TRUNCATE tbprofessor;


-- TASK 5
-- Criar a tabela chamada Curso

CREATE TABLE tbCurso(
	idCurso INT PRIMARY KEY AUTO_INCREMENT,
    nomeCurso varchar(50),
    siglaCurso char(3),
    coordenadorCurso varchar(10)
);

INSERT INTO tbcurso (nomeCurso, siglaCurso, coordenadorCurso) VALUES
('Analise e Desenvolvimento de Sistemas', 'ADS', 'Gerson'),
('Ciência da Computação','CCO','Vivian'),
('Sistemas de Informação','SIS','Paula');

-- Exibir todos os dados da tabela.
SELECT * FROM tbcurso;

-- Exibir todos os dados da tabela.
SELECT * FROM tbcurso;

-- Exibir apenas os coordenadores dos cursos.
SELECT coordenadorCurso FROM tbcurso;

-- Exibir apenas os dados dos cursos de uma determinada sigla
SELECT * FROM tbcurso
	WHERE siglaCurso LIKE 'CCO';
    
-- Exibir os dados da tabela ordenados pelo nome do curso.
SELECT * FROM tbcurso
	ORDER BY nomeCurso;
    
-- Exibir os dados da tabela ordenados pelo nome do coordenador em ordem 
-- decrescente.
SELECT * FROM tbcurso
	ORDER BY coordenadorCurso DESC;
    
--  Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.
SELECT * FROM tbcurso
	WHERE nomeCurso LIKE 'A%';
    
-- Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.
SELECT * FROM tbcurso
	WHERE nomeCurso LIKE '%O';


-- Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma 
-- determinada letra
SELECT * FROM tbcurso
	WHERE nomeCurso LIKE '_I%';
    
--  Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma 
-- determinada letra.

SELECT * FROM tbcurso
	WHERE nomeCurso LIKE '_%A_';

-- Elimine a tabela.
DROP TABLE tbcurso;

CREATE TABLE tbRevista(
	idRevista int primary key auto_increment,
    nomeRevista varchar(40) not null,
    categoriaRevista varchar(30)
);

INSERT INTO tbrevista (nomeRevista) values 
('Veja'),
('ESPN'),
('Tititi'),
('Mundo Nerd');

 -- Exibir todos os dados da tabela.
 SELECT * FROM tbrevista;
 
-- Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela 
-- novamente para verificar se atualizou corretamente.

UPDATE tbrevista SET categoriaRevista = 'Noticia'
	WHERE idRevista = '1';
SELECT * FROM tbrevista;

UPDATE tbrevista SET categoriaRevista = 'Fofoca'
	WHERE idRevista = '3';
    
UPDATE tbrevista SET categoriaRevista = 'Esporte'
	WHERE idRevista = '2';
    
UPDATE tbrevista SET categoriaRevista = 'Geek'
	WHERE idRevista = '4';


-- Insira mais 3 registros completos.
INSERT INTO tbrevista (nomeRevista, categoriaRevista) values 
('Java, a linguagem mais odiada', 'Tecnologia'),
('Flamengo melhor do mundo', 'Futebol'),
('Como saber se sou chato?', 'desenvolvimento pessoal');


--  Exibir novamente os dados da tabela.
SELECT * FROM tbrevista;

-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.
ALTER TABLE tbrevista
MODIFY COLUMN categoriaRevista varchar (40);


--  Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o 
-- tamanho da coluna categoria.

DESC tbrevista;

-- Acrescentar a coluna periodicidade à tabela, que é varchar(15).
ALTER TABLE tbrevista
	ADD COLUMN periodicamente varchar(15);
    
--  Exibir os dados da tabela.

SELECT * FROM tbrevista;

-- Excluir a coluna periodicidade da tabela.
ALTER TABLE tbrevista
DROP COLUMN periodicamente;

	
/*
Ta na mão mais uma atividade vivan
Saiba que eu fiquei com medo de vc 
nao ter gostado da mensagem kakakakakakakakak
Mas obrigado pelo feedback

ass: mac lovin : )
*/
