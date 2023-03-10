-- Aula002 13/02
-- Excluir a tabela aluno

DROP TABLE tbaluno;

-- Alterar o nome da tabela
ALTER table aluno
rename tbAluno;

-- Exibir os dados dos alunos
SELECT * FROM tbaluno;

-- Adicionar a tabela email
ALTER TABLE tbaluno
ADD COLUMN email varchar (50) NOT NULL;

DESC tbaluno;

SELECT * FROM tbaluno;

-- Adicionar os emails dos alunos
-- No comando update deve existir o WHEREb
UPDATE tbaluno SET email = 'erick@sptech.school'
	WHERE RA = '01231008';
    
UPDATE tbaluno SET email = 'lucas@sptech.school'
	WHERE RA = '01231064';
    
UPDATE tbaluno SET email = 'gabriel@sptech.school'
	WHERE RA = '01231187';
    
-- ADICIONAR O CAMPO DATA DE NASCIMENTO E DEPOIS DELETAR
ALTER TABLE tbaluno
-- ADD COLUMN dtNasc date;
DROP COLUMN dtNasc;


-- Alterar o tipo do campo email
ALTER TABLE tbaluno
MODIFY COLUMN email varchar (80);

INSERT INTO tbaluno VALUES
('01231999','Marcelo','Paraiso','marcelo@sptech.school');

-- Deletar o registro de um aluno
DELETE FROM tbaluno where ra = '01231999';

-- Inserir apenas alguns campos do aluno
INSERT INTO tbaluno (RA, nome, bairro) values
	('01231777', 'Vivian', 'Sacomã');
    
SELECT * FROM tbaluno;


-- FAZER UM SELECT DE DETERMINADOS DADOS, COM ESPECIFICAÇÕES
SELECT * FROM tbaluno WHERE Bairro like 'S%';

-- Exibir bairro do aluno que terminam com a letra A
SELECT * FROM tbaluno WHERE Bairro like '%ã';

-- Exibir os alunos ordenando pelo email
SELECT * FROM  tbaluno ORDER BY email;

-- Exibir nome e email do aluno onde o bairro começa com S
SELECT Nome, email FROM tbaluno WHERE Bairro LIKE 'S%'
	ORDER BY Nome desc;
    
-- Exibir nome que contem A
SELECT Nome FROM tbaluno where nome like '%a%' 