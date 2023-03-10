
-- Novos scripts

-- EXIBIR PESSOAS COM PESO DIFERENTE DE 78.9

SELECT * FROM tbpessoa WHERE pesoPessoa != 78.9; -- outro jeito de diferente <>
SELECT * from tbpessoa WHERE nomePessoa <> 'Pelé';

SELECT * FROM tbpessoa WHERE alturaPessoa < 1.70;

SELECT * FROM tbpessoa WHERE nomePessoa = 'Maradona' OR nomePessoa = 'Richarlison'; -- Fazer um select com mais de um dado

-- SELECT * FROM tbpessoa WHERE nomePessoa IN ('Maradona', 'Richarlison'); -- outro jeito

SELECT * FROM tbpessoa WHERE salarioPessoa BETWEEN 9.99 and 10000; -- BETWEEN / entre um e outro


-- Criar um check quando criar tabela
CREATE TABLE foda (
	ID INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(30),
    genero varchar (100), constraint chkGenero CHECK (genero IN ('ROCK', 'SAMBA'))
) AUTO_INCREMENT = 10000;

INSERT INTO foda values
	(null, 'Muito foda esse rock', 'ROCK'),
    (null, 'Sambinha envolvente', 'SAMBA');
    
SELECT * FROM FODA;

DROP TABLE foda;

-- LIMPAR OS DADOS DA TABELA

TRUNCATE foda;


