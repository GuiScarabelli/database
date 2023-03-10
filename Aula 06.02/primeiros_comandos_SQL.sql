-- Criar o Banco
CREATE DATABASE sptech;

-- Criar a tabela 
CREATE TABLE aluno(
RA char (8) PRIMARY KEY,
Nome varchar(100),
Bairro varchar(100)
);

-- Descrever a minha tabela
desc aluno;

-- Exibir dados das tabelas
select * from aluno;

-- Inserir dados nas tabelas

INSERT INTO aluno VALUES
	('01231190', 'Diogo', 'Santo Amaro');

select * from aluno;
    
-- Inserir mais de um dado
INSERT INTO aluno VALUES
	('01231187', 'Gabriel', 'Butantã'),
    ('01231064', 'Lucas', 'Edu Chaves'),
    ('01231008', 'Erick', 'Piqueri');
    
select * from aluno;

