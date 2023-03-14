USE dbSprintPI;

-- INSERT Empresa
insert into tbEmpresa (nomeEmpresa, cnpjEmpresa, segmento, telEmpresa ,emailEmpresa, ruaEmpresa,
						numeroEndereco, bairroEndereco ,cidadeEndereco, cepEndereco)
 VALUES
                        
	('QLL Logística', '12.610.534/0001-19', 'Logistica em geral', '(11)3185-4820' , 'contato@qll.com.br ',
		'Av. Sargento da Aeronáutica Jaime Regalo Pereira', 563 ,'Jardim Cumbica', 'Guarulhos', '07182-000');
            
-- INSER Usuario
INSERT INTO tbusuario (nomeUsuario, senhaUsuario, permissoes)
 VALUES
    ('Guilherme', '123', 'total'),
    ('Anderson', '231', 'intermediario'),
    ('Caio', '321', 'basico');

SELECT * FROM tbusuario;

-- INSERT Sensor
INSERT INTO tbsensor (tipoSensor, dtInstalacao, localInstalacao)
 VALUES
    ('presença', '2023-03-09', 'freezerA'),
    ('temperatura e umidade','2023-03-09', 'freezerB');

SELECT * FROM tbsensor;


-- INSERT EntradaDados
INSERT INTO tbentradasensor (valorEntrada, dtEntrada, idSensor)
 VALUES 
	(20.5, '2023-03-09 20:15:00', 2),
    (1, '2023-03-09 20:16:00', 1);
    
SELECT * FROM tbentradasensor;
