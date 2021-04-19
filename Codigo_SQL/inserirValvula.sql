USE [EmpresaMontagemCarros]
GO

/****** INSERIR valvula  ******/
/*
INSERT INTO valvula(id_valvula, diametro , num_furos ,data_fabrico, designacao) VALUES  ( 18,'1.7 Valvula', 3, '1910-05-05', 'Válvula de entrada')
INSERT INTO valvula(id_valvula, diametro , num_furos ,data_fabrico, designacao) VALUES  (2 , '100,7cm - 1.6 Valvula', 8, '2011-05-05', 'Válvula de entrada')
INSERT INTO valvula(id_valvula, diametro , num_furos ,data_fabrico, designacao) VALUES  (4 , '3cm - 2.7 Valvula', 4, '2010-05-05', 'Válvula de entrada')
INSERT INTO valvula(id_valvula, diametro , num_furos ,data_fabrico, designacao) VALUES  (5 , '100,72cm - 1.6 Valvula', 16, '2011-05-05', 'Válvula de entrada')
INSERT INTO valvula(id_valvula, diametro , num_furos ,data_fabrico, designacao) VALUES  (6 , '1,73cm - 2.7 Valvula', 4, '2010-05-05', 'Válvula de Saida')
INSERT INTO valvula(id_valvula, diametro , num_furos ,data_fabrico, designacao) VALUES  (7 , '110,72cm - 1.6 Valvula', 8, '2011-05-05', 'Válvula de Saida')
INSERT INTO valvula(id_valvula, diametro , num_furos ,data_fabrico, designacao) VALUES  (8 , '3cm - 2.7 Valvula', 4, '2010-05-05', 'Válvula de Saida')
INSERT INTO valvula(id_valvula, diametro , num_furos ,data_fabrico, designacao) VALUES  (9 , '2cm - 1.6 Valvula', 16, '2011-05-05', 'Válvula de Saida')
INSERT INTO valvula(id_valvula, diametro , num_furos ,data_fabrico, designacao) VALUES  (10 , '2cm - 1.7 Valvula', 2, '2010-05-05', 'Válvula de Saida')
INSERT INTO valvula(id_valvula, diametro , num_furos ,data_fabrico, designacao) VALUES  (11 , '9cm - 1.6 Valvula', 8, '2011-05-05', 'Válvula de Entrada')
INSERT INTO valvula(id_valvula, diametro , num_furos ,data_fabrico, designacao) VALUES  (12 , '180cm - 2.7 Valvula', 4, '2010-05-05', 'Válvula de entrada')
INSERT INTO valvula(id_valvula, diametro , num_furos ,data_fabrico, designacao) VALUES  (13 , '7cm - 1.6 Valvula', 16, '2011-05-05', 'Válvula de entrada')

GO

SELECT * FROM valvula

/****** INSERIR Tipo_motor  ******/
INSERT INTO Tipo_motor (nome_tipo_motor, carateristicas_tipo_motor, dimensao) VALUES ('Motor turbo', 'mais potencia e menor tamanho', '10*20*0 cm');
INSERT INTO Tipo_motor (nome_tipo_motor, carateristicas_tipo_motor, dimensao) VALUES ('Motor 2.0',' bom desempenho de alta velocidade',  '10*20*90 cm ');
INSERT INTO Tipo_motor (nome_tipo_motor, carateristicas_tipo_motor, dimensao) VALUES ('Motor 1.8 ', 'media pontencia',  '10*18 cm ');
INSERT INTO Tipo_motor (nome_tipo_motor, carateristicas_tipo_motor, dimensao) VALUES ('Motor 1.0', 'menos potente', '180*100 ');
INSERT INTO Tipo_motor (nome_tipo_motor, carateristicas_tipo_motor, dimensao) VALUES ('Motor Electrico', 'Electrico Alta-Potencia 0 poluinte ','87*46');
INSERT INTO Tipo_motor (nome_tipo_motor, carateristicas_tipo_motor, dimensao) VALUES ('Motor 1.4', 'economia e desempenho', '10*14');
INSERT INTO Tipo_motor (nome_tipo_motor, carateristicas_tipo_motor, dimensao) VALUES ('Motor 1.8', 'pouco consumo e maxima potencia','10*17');
INSERT INTO Tipo_motor (nome_tipo_motor, carateristicas_tipo_motor, dimensao) VALUES ('Motor 1.6', 'menos emissao de poluentes','10*16cm');
