INSERT INTO categoria (codigo, descricao) 
    VALUES (1, 'Concretagem');
INSERT INTO categoria (codigo, descricao) 
    VALUES (2, 'Acesso e Elevação');
INSERT INTO categoria (codigo, descricao) 
    VALUES (3, 'Geradores e Compressores');
INSERT INTO categoria (codigo, descricao) 
    VALUES (4, 'Andaimes');
INSERT INTO categoria (codigo, descricao) 
    VALUES (5, 'Ferramenta Elétrica');

INSERT INTO construtora (codigo, nome, nome_fantasia, cnpj) 
    VALUES (20, 'alan aparecido do couto', 'alan couto', '27.240.980/0001-37');
INSERT INTO construtora (codigo, nome, nome_fantasia, cnpj) 
    VALUES (10, 'Construtora Alfa S.A.', 'Alfa Incorporações', '11.123.321/0001-62');

INSERT INTO equipamentos (codigo, nome, valor_de_uso_diario) 
    VALUES (301, 'Betoneira', 100.00);
INSERT INTO equipamentos (codigo, nome, valor_de_uso_diario) 
    VALUES (302, 'Cortadora de Piso', 10.00);
INSERT INTO equipamentos (codigo, nome, valor_de_uso_diario) 
    VALUES (303, 'Mangote', 30.50); 
INSERT INTO equipamentos (codigo, nome, valor_de_uso_diario) 
    VALUES (304, 'Guincho', 250.00); 
INSERT INTO equipamentos (codigo, nome, valor_de_uso_diario) 
    VALUES (305, 'Gerador', 451.00);
INSERT INTO equipamentos (codigo, nome, valor_de_uso_diario) 
    VALUES (306, 'Piso Metálico', 150.00);
INSERT INTO equipamentos (codigo, nome, valor_de_uso_diario) 
    VALUES (307, 'Furadeira de bancada', 65.00);
INSERT INTO equipamentos (codigo, nome, valor_de_uso_diario) 
    VALUES (308, 'Parafusadeira', 37.00);
INSERT INTO equipamentos (codigo, nome, valor_de_uso_diario) 
    VALUES (309, 'Plaina', 25.00);

INSERT INTO obras (codigo, logradura, numero, complemento, nome, FK_Codigo_construtora) 
    VALUES (115, 'Travessa dos Lagos', 100, 'Norte', 'Condomínio dos Lagos', 10);
INSERT INTO obras (codigo, logradura, numero, complemento, nome, FK_Codigo_construtora) 
    VALUES (116, 'Avenida Rio Grande', 22, 'Lado A', 'Condomínio Araras', 10);
    --item 3
INSERT INTO obras (codigo, logradura, numero, complemento, nome, FK_Codigo_construtora) 
    VALUES (200, 'Avenida professora Maria da Silva', 504, 'Próximo a pecuária', 'Loja édmais', 20);
INSERT INTO obras (codigo, logradura, numero, complemento, nome, FK_Codigo_construtora) 
    VALUES (240, 'Rua Avelina Assis', 134, 'Ao lado da escola', 'materias de construção silva', 20);

INSERT INTO telefones (numero, FK_construtora_tel)
    VALUES ('(51) 3333-3334', 10);
INSERT INTO telefones (numero, FK_construtora_tel)
    VALUES ('(51) 3333-3335', 10);
INSERT INTO telefones (numero, FK_construtora_tel)
    VALUES ('(51) 3333-3336', 10);

INSERT INTO Periodo_de_uso (FK_Codigo_obras, FK_Codigo_equipamentos, data_inicio, data_final)
    VALUES (115, 301, '18/03/2022', '24/10/2022');
INSERT INTO Periodo_de_uso (FK_Codigo_obras, FK_Codigo_equipamentos, data_inicio, data_final)
    VALUES (115, 304, '20/04/2022', '02/08/2022'); 
INSERT INTO Periodo_de_uso (FK_Codigo_obras, FK_Codigo_equipamentos, data_inicio, data_final)
    VALUES (115, 306, '06/07/2021', '18/07/2021');
INSERT INTO Periodo_de_uso (FK_Codigo_obras, FK_Codigo_equipamentos, data_inicio, data_final)
    VALUES (115, 307, '04/03/2022', '20/03/2022');
INSERT INTO Periodo_de_uso (FK_Codigo_obras, FK_Codigo_equipamentos, data_inicio, data_final)
    VALUES (115, 309, '04/08/2021', '10/08/2021');
INSERT INTO Periodo_de_uso (FK_Codigo_obras, FK_Codigo_equipamentos, data_inicio, data_final)
    VALUES (116, 304, '22/10/2022', '25/10/2022');
INSERT INTO Periodo_de_uso (FK_Codigo_obras, FK_Codigo_equipamentos, data_inicio, data_final)
    VALUES (116, 305, '07/03/2022', '10/03/2022');
INSERT INTO Periodo_de_uso (FK_Codigo_obras, FK_Codigo_equipamentos, data_inicio, data_final)
    VALUES (116, 306, '12/09/2022', '21/09/2022');
INSERT INTO Periodo_de_uso (FK_Codigo_obras, FK_Codigo_equipamentos, data_inicio, data_final)
    VALUES (116, 307, '16/08/2022', '24/08/2022');
INSERT INTO Periodo_de_uso (FK_Codigo_obras, FK_Codigo_equipamentos, data_inicio, data_final)
    VALUES (116, 308, '23/10/2022', '25/10/2022');
    ---item 4
INSERT INTO Periodo_de_uso (FK_Codigo_obras, FK_Codigo_equipamentos, data_inicio, data_final)
    VALUES (200, 301, '08/08/2022', '17/11/2022' );
INSERT INTO Periodo_de_uso (FK_Codigo_obras, FK_Codigo_equipamentos, data_inicio, data_final)
    VALUES (200, 302, '08/08/2022', '20/10/2022' );
INSERT INTO Periodo_de_uso (FK_Codigo_obras, FK_Codigo_equipamentos, data_inicio, data_final)
    VALUES (200, 305, '10/05/2022', '26/06/2022' );
INSERT INTO Periodo_de_uso (FK_Codigo_obras, FK_Codigo_equipamentos, data_inicio, data_final)
    VALUES (200, 306, '08/08/2022', '20/10/2022' );

INSERT INTO trabalhadores (cpf, nome, salario, FK_Codigo_obras_trab)
    VALUES ('101.101.101-34', 'José Chaves', 2200.00, 115);
INSERT INTO trabalhadores (cpf, nome, salario, FK_Codigo_obras_trab)
    VALUES ('102.102.102-91', 'Pedro Passos', 3502.18, 115);
INSERT INTO trabalhadores (cpf, nome, salario, FK_Codigo_obras_trab)
    VALUES ('103.103.103-18', 'Maria Aparecida', 2800.87, 115);
INSERT INTO trabalhadores (cpf, nome, salario, FK_Codigo_obras_trab)
    VALUES ('104.104.104-52', 'Carlos Dutra', 3100.00, 116);
INSERT INTO trabalhadores (cpf, nome, salario, FK_Codigo_obras_trab)
    VALUES ('105.105.105-85', 'Mário Pires', 4323.29, 116);
     ---item 3
INSERT INTO trabalhadores (cpf, nome, salario, FK_Codigo_obras_trab)
    VALUES ('106.106.106-40', 'Antônio Paixão', 5000.00, 200);
INSERT INTO trabalhadores (cpf, nome, salario, FK_Codigo_obras_trab)
    VALUES ('107.107.107-76', 'Flávio Pereira', 3999.70, 200); 
INSERT INTO trabalhadores (cpf, nome, salario, FK_Codigo_obras_trab)
    VALUES ('108.108.108-67', 'Valdir da Mota', 3200.00, 200);
INSERT INTO trabalhadores (cpf, nome, salario, FK_Codigo_obras_trab)
    VALUES ('109.109.109-78', 'Carlos Costa', 3500.00, 200);
INSERT INTO trabalhadores (cpf, nome, salario, FK_Codigo_obras_trab)
    VALUES ('110.110.110-55', 'Osvaldo do Santos', 2900.10, 200);
INSERT INTO trabalhadores (cpf, nome, salario, FK_Codigo_obras_trab)
    VALUES ('111.111.111-78', 'José Frederico', 3687.54, 240);
INSERT INTO trabalhadores (cpf, nome, salario, FK_Codigo_obras_trab)
    VALUES ('112.112.112-43', 'Naldo Francisco', 1900.80, 240);
INSERT INTO trabalhadores (cpf, nome, salario, FK_Codigo_obras_trab)
    VALUES ('113.113.113-67', 'Silvano chavez', 2450.67, 240);
INSERT INTO trabalhadores (cpf, nome, salario, FK_Codigo_obras_trab)
    VALUES ('114.114.114-89', 'Davi Neto', 1896.78, 240);
INSERT INTO trabalhadores (cpf, nome, salario, FK_Codigo_obras_trab)
    VALUES ('115.115.115-89', 'Daniel Donizete', 2345.67, 240);

