-- Aula 03
-- Revisão

-- tipagem numérica
-- float 7 digitos 12345,67
-- double 15 digitos 1234567890123,45
-- decimal (total, qtd digitos) max digitos 32
-- decimal (3,1) 12,3

CREATE TABLE tbPessoa(
	idPessoa int primary key auto_increment,
	nomePessoa varchar (50) not null,
    pesoPessoa FLOAT,
    alturaPessoa FLOAT,
    salarioPessoa decimal(10,2)
);

desc tbPessoa;

INSERT INTO tbPessoa values
	(null, 'Pelé', 79.8, 1.71, 1000),
    (null, 'Maradona', 89.8, 1.69, 1010),
	(null, 'Dudu', 82.8, 1.78, 500);

select * from tbpessoa




