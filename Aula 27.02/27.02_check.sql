USE Sprint1;

-- tratamento de numeros, para nao inserir numeros negativos
-- ou incorretos


INSERT INTO tbPessoa values
	(null, 'Richarlison', 90.8, 1.90, -1000);

ALTER TABLE tbPessoa
	ADD CONSTRAINT foda
		CHECK (salarioPessoa >=0);
    
    
-- alter table / alterar a tabela
-- add constraint nomeConstraint / adicionar config / restrição no campo
-- check (configuração) / definir restrição

update tbPessoa set salarioPessoa = 10.00
	where idPessoa = 4;
    
INSERT INTO tbPessoa (nomePessoa, salarioPessoa) values
	('ronaldo', 5.00);