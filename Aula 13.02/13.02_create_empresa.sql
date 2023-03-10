-- Criar a tabela empresa
CREATE TABLE tbEmpresa(
	id int primary key,
    nome varchar (100) not null,
    responsavel varchar (25)
);

Insert into tbEmpresa values
	(1, 'C6 bank', 'Andresa'),
    (2, 'Stefanini', 'Sophia'),
    (3, 'Box Delivery', 'Késsia')