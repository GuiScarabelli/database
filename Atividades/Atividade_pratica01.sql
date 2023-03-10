-- Criar tabela chamada Atleta
CREATE DATABASE Sprint1;

CREATE TABLE tbAtleta (
	idAtleta int primary key auto_increment,
    nomeAtleta varchar (40) not null,
    modalidade varchar(40),
    qtdMedalha int not null
);



-- Exibir todos os dados da tabela.
SELECT * FROM tbAtleta;

-- Exibir apenas os nomes e quantidade de medalhas dos atletas.
SELECT nomeAtleta, qtdMedalha FROM tbAtleta;

-- Exibir apenas os dados dos atletas de uma determinada modalidade.
SELECT * FROM tbatleta WHERE modalidade like 'volêi';

-- Exibir os dados da tabela ordenados pela modalidade
SELECT * FROM tbatleta 
	ORDER BY modalidade;
    
-- Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem
-- decrescente
SELECT * FROM tbatleta 
	ORDER BY qtdMedalha desc;
    
-- Exibir os dados da tabela, dos atletas cujo nome contenha a letra s
SELECT * FROM tbatleta WHERE nomeAtleta like '%S%';


-- Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra.
SELECT * FROM tbatleta WHERE nomeAtleta LIKE 'A%';

-- Exibir os dados da tabela, dos atletas cujo nome termine com a letra o.
SELECT * FROM tbatleta WHERE nomeAtleta LIKE '%O';

-- Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r.
 SELECT * FROM tbatleta WHERE nomeAtleta LIKE '%R_';

-- Eliminar a tabela.
DROP TABLE tbatleta;

-- 2 TASK 
-- CRIAR TABELA MUSICA
CREATE table tbMusica(
	idMusica int primary key auto_increment,
    tituloMusica varchar (40),
    artista  varchar (40), 
    generoMusica varchar(40)
);

INSERT INTO tbmusica (tituloMusica, artista, generoMusica) VALUES
('Você','Tim maia','MPB'),
('Só os loucos sabem','Charlie Brown Jr.','ROCK'),
('Real Slim Shady','Eminem','RAP'),
('A banda','Chico Buarque','MPB'),
('Primavera (vai chuva)','Tim Maia','MPB'),
('Quando bate aquela Saudade','Rubel','Alternativa'),
('Do i wanna know; ','Artic Monkey','Indie'),
('Exagerado','Cazuza','MPB'),
('Toxicity','System of a Down','ROCK'),
('O Bem','Arlindo Cruz','Samba');

-- a) Exibir todos os dados da tabela.
SELECT * FROM tbMusica;

-- b) Exibir apenas os títulos e os artistas das músicas.
SELECT tituloMusica, artista FROM tbmusica;

-- c) Exibir apenas os dados das músicas de um determinado gênero
SELECT * FROM tbmusica WHERE generoMusica LIKE 'Indie';

-- d) Exibir apenas os dados das músicas de um determinado artista.
SELECT * FROM tbmusica WHERE artista LIKE 'Tim maia';

-- e) Exibir os dados da tabela ordenados pelo título da música.
SELECT * FROM tbmusica
	ORDER BY tituloMusica;
    
-- f) Exibir os dados da tabela ordenados pelo artista em ordem decrescente.
SELECT * FROM tbmusica
	ORDER BY artista;
    
-- g) Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.
SELECT * FROM tbmusica WHERE tituloMusica LIKE 'A%';

-- h) Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.
SELECT * FROM tbmusica WHERE artista LIKE '%E';

-- i) Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma 
-- determinada letra.

SELECT * FROM tbmusica WHERE generoMusica LIKE '_P%';

-- j) Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma 
-- determinada letra.

SELECT * FROM tbmusica WHERE tituloMusica LIKE '_%T_';

-- k) Elimine a tabela.
DROP TABLE tbMusica;


-- 3 TASK 
-- Criar a tabela chamada Filme

CREATE TABLE tbFilme(
	idFilme int primary key auto_increment,
    tituloFilme varchar (50) not null,
    generoFilme varchar (40) not null,
    diretorFilme varchar (40) not null
);

INSERT INTO tbfilme (tituloFilme, generoFilme, diretorFilme) values
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

-- Exibir apenas os títulos e os diretores dos filmes.
SELECT tituloFilme, diretorFilme FROM tbfilme;

-- Exibir apenas os dados dos filmes de um determinado gênero
SELECT * FROM tbfilme WHERE generoFilme LIKE 'Ação';

-- Exibir apenas os dados dos filmes de um determinado diretor.
SELECT * FROM tbfilme WHERE diretorFilme LIKE 'M. Night Shyamalan';

-- Exibir os dados da tabela ordenados pelo título do filme.
SELECT * FROM tbfilme 
	ORDER BY tituloFilme;
    
-- Exibir os dados da tabela ordenados pelo diretor em ordem decrescente.
SELECT * FROM tbfilme
	ORDER BY diretorFilme desc;
    
-- Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra.
SELECT * FROM tbfilme WHERE tituloFilme LIKE 'O%';

-- Exibir os dados da tabela, dos filmes cujo diretor termine com uma determinada letra.
SELECT * FROM tbfilme WHERE diretorFilme LIKE '%N';

--  Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma 
-- determinada letra.
SELECT * FROM tbfilme WHERE generoFilme LIKE '_U%';

-- Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma 
-- determinada letra.
SELECT * FROM tbfilme WHERE tituloFilme LIKE '_%N_';

-- Elimine a tabela.
DROP TABLE tbfilme;

-- TASK 4
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
 
 --  Exibir apenas as especialidades dos professores.
SELECT especialidadeProfessor FROM tbprofessor;

-- Exibir apenas os dados dos professores de uma determinada especialidade.
SELECT * FROM tbprofessor WHERE especialidadeProfessor LIKE 'DBA';

-- Exibir os dados da tabela ordenados pelo nome do professor.
SELECT * FROM tbprofessor
	ORDER BY nomeProfessor;
    
--  Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem 
-- decrescente.
SELECT * FROM tbprofessor
	ORDER BY dtNasc desc;
    
-- Exibir os dados da tabela, dos professores cujo nome comece com uma determinada 
-- letra
SELECT * FROM tbprofessor WHERE nomeProfessor LIKE 'V%';

-- Exibir os dados da tabela, dos professores cujo nome termine com uma determinada 
-- letra.
SELECT * FROM tbprofessor WHERE nomeProfessor LIKE '%O';

-- Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma 
-- determinada letra.
SELECT * FROM tbprofessor WHERE nomeProfessor LIKE '_H%';

-- Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma 
-- determinada letra.

SELECT * FROM tbprofessor WHERE nomeProfessor LIKE '_%L_';

-- Elimine a tabela.
DROP TABLE tbprofessor;

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

-- Exibir apenas os coordenadores dos cursos.
SELECT coordenadorCurso FROM tbcurso;

-- Exibir apenas os dados dos cursos de uma determinada sigla
SELECT * FROM tbcurso
	WHERE siglaCurso LIKE 'SIS';
    
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
	WHERE nomeCurso LIKE '_%a_';

-- Elimine a tabela.
DROP TABLE tbcurso;


-- TASK 6
-- Criar a tabela chamada Revista

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
('JavaScript é vida', 'Tecnologia'),
('Vascão meu timão', 'Futebol'),
('Chinelo e meia é a tendencia?', 'Moda');


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
Te amo vivian <3
Sua matéria é a minha favorita
só nao deixa os outros professores saberem hahahahaha
abraço: mc lovin :)
*/