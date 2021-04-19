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


*/



/*********iserir combustivvel



INSERT INTO [dbo].[comustivel] ([cod_combustivel] ,[tipo_combustivel] ,[indice_octano]) VALUES (2,'GASOLINA mais ADITIVADA ', '90% octano')
INSERT INTO [dbo].[comustivel] ([cod_combustivel] ,[tipo_combustivel] ,[indice_octano]) VALUES (3,'GASOLINA SEM CHUMBO 95 ', '10% octano')
INSERT INTO [dbo].[comustivel] ([cod_combustivel] ,[tipo_combustivel] ,[indice_octano]) VALUES (4,'GASOLINA SEM CHUMBO 98', '40% octano')

INSERT INTO [dbo].[comustivel] ([cod_combustivel] ,[tipo_combustivel] ,[indice_octano]) VALUES (5,'GNL AUTO', '70% octano')
INSERT INTO [dbo].[comustivel] ([cod_combustivel] ,[tipo_combustivel] ,[indice_octano]) VALUES (6,'DIESEL ', '50% octano')
INSERT INTO [dbo].[comustivel] ([cod_combustivel] ,[tipo_combustivel] ,[indice_octano]) VALUES (7,'GASÓLEO SIMPLES ', '80% octano')
INSERT INTO [dbo].[comustivel] ([cod_combustivel] ,[tipo_combustivel] ,[indice_octano]) VALUES (8,'DIESEL ADITIVADO', '30% octano')
INSERT INTO [dbo].[comustivel] ([cod_combustivel] ,[tipo_combustivel] ,[indice_octano]) VALUES (9,'GASÓLEO COLORIDO', '30% octano')
INSERT INTO [dbo].[comustivel] ([cod_combustivel] ,[tipo_combustivel] ,[indice_octano]) VALUES (10,'GASÓLEO NÃO COLORIDO', '22% octano')
INSERT INTO [dbo].[comustivel] ([cod_combustivel] ,[tipo_combustivel] ,[indice_octano]) VALUES (11,'GASOLINA ', '33% octano')
INSERT INTO [dbo].[comustivel] ([cod_combustivel] ,[tipo_combustivel] ,[indice_octano]) VALUES (12,'GASOLINA REFINADA', '45% octano')
INSERT INTO [dbo].[comustivel] ([cod_combustivel] ,[tipo_combustivel] ,[indice_octano]) VALUES (14,'Etanol ', '13% octano')
INSERT INTO [dbo].[comustivel] ([cod_combustivel] ,[tipo_combustivel] ,[indice_octano]) VALUES (13,'Gás Natural (GNV)', '55% octano')




/********* Inserir Cilindro 


INSERT INTO Cilindro   (nome_cilindro, qnt_cilindros, dimensao_cilindros, data_fabrico)  VALUES ('Mono Cilindro - Aluminio', 1, 100, '02-05-1989')
INSERT INTO Cilindro   (nome_cilindro, qnt_cilindros, dimensao_cilindros, data_fabrico)  VALUES ('Quandro Cilindro - ferro fundido', 4, 50, '11-21-1989')
INSERT INTO Cilindro   (nome_cilindro, qnt_cilindros, dimensao_cilindros, data_fabrico)  VALUES ('8 Cilindro - Aluminio', 8, 100, '02-05-1989')
INSERT INTO Cilindro   (nome_cilindro, qnt_cilindros, dimensao_cilindros, data_fabrico)  VALUES ('2 Cilindro - ferro fundido', 2, 50, '11-21-1989')
INSERT INTO Cilindro   (nome_cilindro, qnt_cilindros, dimensao_cilindros, data_fabrico)  VALUES ('10 Cilindro - Aluminio', 10, 100, '02-05-1989')
INSERT INTO Cilindro   (nome_cilindro, qnt_cilindros, dimensao_cilindros, data_fabrico)  VALUES ('12 Cilindro - ferro fundido', 12, 50, '11-21-1989')
INSERT INTO Cilindro   (nome_cilindro, qnt_cilindros, dimensao_cilindros, data_fabrico)  VALUES ('Mono Cilindro - Aluminio', 1, 100, '02-05-1989')
INSERT INTO Cilindro   (nome_cilindro, qnt_cilindros, dimensao_cilindros, data_fabrico)  VALUES ('6 Cilindro em Linha - Aluminio', 6, 100, '02-05-1989')
INSERT INTO Cilindro   (nome_cilindro, qnt_cilindros, dimensao_cilindros, data_fabrico)  VALUES ('8 Cilindro em V8', 8, 50, '11-21-1989')
INSERT INTO Cilindro   (nome_cilindro, qnt_cilindros, dimensao_cilindros, data_fabrico)  VALUES ('BiCilindro - Aluminio', 2, 100, '02-05-1989')

/************** inserir Chassis

INSERT INTO chassi (id_chassis ,nome_chassis  ,referencia_chassi ,data_criacao_chassis ,dimensao_chassi)  VALUES (2, 'Chassi mono bloco', 'Pequenos carros', '12-12-1999', 178)
INSERT INTO chassi (id_chassis ,nome_chassis  ,referencia_chassi ,data_criacao_chassis ,dimensao_chassi)  VALUES (3, 'Classi monobloco estruturado', 'Pequenos carros', '12-12-1998', 178)
INSERT INTO chassi (id_chassis ,nome_chassis  ,referencia_chassi ,data_criacao_chassis ,dimensao_chassi)  VALUES (4, 'chassi de túnel central', 'Modelo normal', '11-12-1998', 178)
INSERT INTO chassi (id_chassis ,nome_chassis  ,referencia_chassi ,data_criacao_chassis ,dimensao_chassi)  VALUES (5, 'chassi de longarinas', 'modelo normal', '12-12-1998', 178)
INSERT INTO chassi (id_chassis ,nome_chassis  ,referencia_chassi ,data_criacao_chassis ,dimensao_chassi)  VALUES (6, 'Subchassi', 'novos carros', '12-12-1998', 178)
INSERT INTO chassi (id_chassis ,nome_chassis  ,referencia_chassi ,data_criacao_chassis ,dimensao_chassi)  VALUES (7, 'Classi carro estruturado', ' carros', '12-12-1998', 178)
INSERT INTO chassi (id_chassis ,nome_chassis  ,referencia_chassi ,data_criacao_chassis ,dimensao_chassi)  VALUES (8, 'Classi ', ' carros', '12-12-1998', 178)
INSERT INTO chassi (id_chassis ,nome_chassis  ,referencia_chassi ,data_criacao_chassis ,dimensao_chassi)  VALUES (9, 'Classi bloco 4*4', '4*4', '12-12-1998', 178)
INSERT INTO chassi (id_chassis ,nome_chassis  ,referencia_chassi ,data_criacao_chassis ,dimensao_chassi)  VALUES (10, 'Classi com amortecedor', ' 17*963*39', '12-12-1998', 178)
INSERT INTO chassi (id_chassis ,nome_chassis  ,referencia_chassi ,data_criacao_chassis ,dimensao_chassi)  VALUES (11, 'Classi bloco equipado', ' carros', '12-12-1998', 178)

*/

***********/

*/
/*************************** inserir peça carro
INSERT INTO [dbo].[Peca] ([nome_peca] ,[carateristicas_peca] ,[dimensao_peca])  VALUES ( 'Filtro de Oleo',  'Para todas marcas','30*40*12 cm' )
INSERT INTO [dbo].[Peca] ([nome_peca] ,[carateristicas_peca] ,[dimensao_peca])  VALUES ( 'Filtro de ar',  'Para todas marcas','30*10*15 cm' )
INSERT INTO [dbo].[Peca] ([nome_peca] ,[carateristicas_peca] ,[dimensao_peca])  VALUES ( 'Filtro de Habitaculo',  'Para todas marcas','15*10*12 cm' )
INSERT INTO [dbo].[Peca] ([nome_peca] ,[carateristicas_peca] ,[dimensao_peca])  VALUES ( 'Disco de travao',  'Para todas marcas','12*02cm' )
INSERT INTO [dbo].[Peca] ([nome_peca] ,[carateristicas_peca] ,[dimensao_peca])  VALUES ( 'Pastilha de travao',  'Para todas marcas','20*10*03 cm' )
INSERT INTO [dbo].[Peca] ([nome_peca] ,[carateristicas_peca] ,[dimensao_peca])  VALUES ( 'Farol Principal',  'Para todas marcas','05*03 cm' )
INSERT INTO [dbo].[Peca] ([nome_peca] ,[carateristicas_peca] ,[dimensao_peca])  VALUES ( 'Luz traseira',  'Para todas marcas','15*20*10 cm' )
INSERT INTO [dbo].[Peca] ([nome_peca] ,[carateristicas_peca] ,[dimensao_peca])  VALUES ( 'Intermitente',  'Para todas marcas','10*05*14 cm' )
INSERT INTO [dbo].[Peca] ([nome_peca] ,[carateristicas_peca] ,[dimensao_peca])  VALUES ( 'Bateria',  'Para todas marcas','25*30*12 cm' )
INSERT INTO [dbo].[Peca] ([nome_peca] ,[carateristicas_peca] ,[dimensao_peca])  VALUES ( 'Alternador',  'Para todas marcas','13*20*10 cm' )
INSERT INTO [dbo].[Peca] ([nome_peca] ,[carateristicas_peca] ,[dimensao_peca])  VALUES ( 'Pecas de alternador',  'Para todas marcas','10*10 cm' )
INSERT INTO [dbo].[Peca] ([nome_peca] ,[carateristicas_peca] ,[dimensao_peca])  VALUES ( 'Amortecedor',  'Para todas marcas','11*10*04 cm' )
INSERT INTO [dbo].[Peca] ([nome_peca] ,[carateristicas_peca] ,[dimensao_peca])  VALUES ( 'Cabecotes Amortecedor e rolamento',  'Para todas marcas','11*04*10 cm' )
INSERT INTO [dbo].[Peca] ([nome_peca] ,[carateristicas_peca] ,[dimensao_peca])  VALUES ( 'Colfa amortecedor e batente de amortecedor',  'Para todas marcas','11*10*02 cm' )
INSERT INTO [dbo].[Peca] ([nome_peca] ,[carateristicas_peca] ,[dimensao_peca])  VALUES ( 'Escovas do Limpa Vidro',  'Para todas marcas','50*40*20 cm' )
INSERT INTO [dbo].[Peca] ([nome_peca] ,[carateristicas_peca] ,[dimensao_peca])  VALUES ( 'Braco do Limpa Vidro',  'Para todas marcas','50*40*03 cm' )
INSERT INTO [dbo].[Peca] ([nome_peca] ,[carateristicas_peca] ,[dimensao_peca])  VALUES ( 'Borracha do Limpa vidro',  'Para todas marcas','50*40*02 cm' )***/



/********************Inserir Pneus 

INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de verão'  ,505 ,10,16,1)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de verão'  ,300 ,40,15,2)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de verão'  ,55 ,35,16,3)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de verão'  , 100 ,40,19,4)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de verão'  ,8 ,10,14,5)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de verão'  ,3 ,40,17,6)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de verão'  ,5 ,80,18,7)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de verão'  , 6 ,40,17,8)

INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de todas estações'  ,505 ,10,14, 9)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de todas estações'  ,300 ,40,15, 10)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de todas estações'  ,55 ,35,16,11)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de todas estações'  , 100 ,40,17,12)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de todas estações'  ,8 ,10,18, 1)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de todas estações'  ,3 ,40,19, 2)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de todas estações'  ,5 ,80,19, 3)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de todas estações'  , 6 ,40,14, 4)



INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de Inverno'  ,505 ,10,14, 5)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de Inverno'  ,300 ,40,15, 6)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de Inverno'  ,55 ,35,16, 7)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de Inverno'  , 100 ,40,17, 8)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de Inverno'  ,8 ,10,18, 9)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de Inverno'  ,3 ,40,19, 10)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de Inverno'  ,5 ,80,19, 11)
INSERT INTO [dbo].[Pneus]  ([Temporada] ,[Largura_pneu] ,[altura_pneu]  ,[diametro_pneu], id_fabricante) VALUES     ('Pneu de Inverno'  , 6 ,40,14, 12)




*******/

/********************inserir peça

INSERT INTO [dbo].[Peca]([nome_peca],[carateristicas_peca],[dimensao_peca],[id_modelo])VALUES('Amortecedor','universal','10*05','1')

INSERT INTO [dbo].[Peca]([nome_peca],[carateristicas_peca],[dimensao_peca],[id_modelo])VALUES('Arvore de Cames','universal','10*05','1')
INSERT INTO [dbo].[Peca]([nome_peca],[carateristicas_peca],[dimensao_peca],[id_modelo])VALUES('Aneis do Pistao','universal','08*05*03','2')
INSERT INTO [dbo].[Peca]([nome_peca],[carateristicas_peca],[dimensao_peca],[id_modelo])VALUES('Biela','universal','10*05*15','2')
INSERT INTO [dbo].[Peca]([nome_peca],[carateristicas_peca],[dimensao_peca],[id_modelo])VALUES('Apoios de Motor','universal','15*12*05','1')
INSERT INTO [dbo].[Peca]([nome_peca],[carateristicas_peca],[dimensao_peca],[id_modelo])VALUES('Bobina de Ignicao','universal','10*15','3')
INSERT INTO [dbo].[Peca]([nome_peca],[carateristicas_peca],[dimensao_peca],[id_modelo])VALUES('Cabecote','universal','21*15','2')
INSERT INTO [dbo].[Peca]([nome_peca],[carateristicas_peca],[dimensao_peca],[id_modelo])VALUES('Amortecedor','universal','12*15','3')
INSERT INTO [dbo].[Peca]([nome_peca],[carateristicas_peca],[dimensao_peca],[id_modelo])VALUES('Caixa de Direcao','universal','23*15*25*12','1')
INSERT INTO [dbo].[Peca]([nome_peca],[carateristicas_peca],[dimensao_peca],[id_modelo])VALUES('Luz de Placa','universal','10*25','3')
INSERT INTO [dbo].[Peca]([nome_peca],[carateristicas_peca],[dimensao_peca],[id_modelo])VALUES('Painel Lateral','universal','15*25*10','1')
INSERT INTO [dbo].[Peca]([nome_peca],[carateristicas_peca],[dimensao_peca],[id_modelo])VALUES('Farol Principal','universal','11*25*15','2')
INSERT INTO [dbo].[Peca]([nome_peca],[carateristicas_peca],[dimensao_peca],[id_modelo])VALUES('Bomba de adua do lava vidro','universal','08*05','2')
INSERT INTO [dbo].[Peca]([nome_peca],[carateristicas_peca],[dimensao_peca],[id_modelo])VALUES('Cilindro do travao da roda','universal','20*15','3')
INSERT INTO [dbo].[Peca]([nome_peca],[carateristicas_peca],[dimensao_peca],[id_modelo])VALUES('Maxilas de Travao','universal','28*25*02','1');*/

/*********************************************************inserir~******************


INSERT INTO [dbo].[fabricante]([nome_fabricante],[endereco],[Pais],[capital])VALUES('FTE','Rua A A1','Afeganistao','8788')
INSERT INTO [dbo].[fabricante]([nome_fabricante],[endereco],[Pais],[capital])VALUES('Textar','Rua I I99','Usbequistao','Tasquente')
INSERT INTO [dbo].[fabricante]([nome_fabricante],[endereco],[Pais],[capital])VALUES('Hella','Rua B B68','Zambia','Lusaca')
INSERT INTO [dbo].[fabricante]([nome_fabricante],[endereco],[Pais],[capital])VALUES('Lpr','Rua O O40','Suica','Berna')
INSERT INTO [dbo].[fabricante]([nome_fabricante],[endereco],[Pais],[capital])VALUES('ABS','Rua H H28','Somalia','Mogadiscio')
INSERT INTO [dbo].[fabricante]([nome_fabricante],[endereco],[Pais],[capital])VALUES('DAVIS','Rua W W74','Monaco','Monaco')
INSERT INTO [dbo].[fabricante]([nome_fabricante],[endereco],[Pais],[capital])VALUES('TRISC N','Rua G G52','Islandia','Reiauiavique')
INSERT INTO [dbo].[fabricante]([nome_fabricante],[endereco],[Pais],[capital])VALUES('Champion','Rua N N41','Nepal','Catmandu')
INSERT INTO [dbo].[fabricante]([nome_fabricante],[endereco],[Pais],[capital])VALUES('JURID','Rua U U02','Lesoto','Maseru')
INSERT INTO [dbo].[fabricante]([nome_fabricante],[endereco],[Pais],[capital])VALUES('MAPCO','Rua Y Y13','Jordania','Ama')
INSERT INTO [dbo].[fabricante]([nome_fabricante],[endereco],[Pais],[capital])VALUES('VAICO','Rua S S85','China','Pequim')
INSERT INTO [dbo].[fabricante]([nome_fabricante],[endereco],[Pais],[capital])VALUES('SKF','Rua R R58','Brasil','Brasilia')
INSERT INTO [dbo].[fabricante]([nome_fabricante],[endereco],[Pais],[capital])VALUES('JP','Rua T T48','Cabo Verde','Praia')
INSERT INTO [dbo].[fabricante]([nome_fabricante],[endereco],[Pais],[capital])VALUES('VICMA','Rua L L25','Austria','Viena')******/




/******************************************** inserir componente_seguranca ******


INSERT INTO [dbo].[componente_seguranca]([id_comp_seg],[nome_comp_seg],[qtd_componente],[carateristica],[material],[cor],[condicoes_conservacao],[tamanho],[espessura],[Universal],[id_fabricante])
VALUES('6','AirBag','2','Alta Resistencia','Nylon','Branco','dobrada em compartimento especial','tamanho','8mm',1,1)

INSERT INTO [dbo].[componente_seguranca]([id_comp_seg],[nome_comp_seg],[qtd_componente],[carateristica],[material],[cor],[condicoes_conservacao],[tamanho],[espessura],[Universal],[id_fabricante])
VALUES('4','Cinto de seguranca','2','Alta Resistencia','Poliester, aco e almofada','Azul','bom estado','tamanho','10mm',0,2)

INSERT INTO [dbo].[componente_seguranca]([id_comp_seg],[nome_comp_seg],[qtd_componente],[carateristica],[material],[cor],[condicoes_conservacao],[tamanho],[espessura],[Universal],[id_fabricante])
VALUES('5','AirBag','1','Alta Resistencia','Nylon','Cinza','dobrada em compartimento especial','tamanho','7.5mm',1,3)

INSERT INTO [dbo].[componente_seguranca]([id_comp_seg],[nome_comp_seg],[qtd_componente],[carateristica],[material],[cor],[condicoes_conservacao],[tamanho],[espessura],[Universal],[id_fabricante])
VALUES('7','Cinto de seguranca','5','Alta Resistencia','Poliester e aco','Vermelha','Bom estado','tamanho','10mm',1,4)

INSERT INTO [dbo].[componente_seguranca]([id_comp_seg],[nome_comp_seg],[qtd_componente],[carateristica],[material],[cor],[condicoes_conservacao],[tamanho],[espessura],[Universal],[id_fabricante])
VALUES('8','AirBag','2','Alta Resistencia','Nylon','Rosa','dobrada em compartimento especial','tamanho','8mm',0,5)

INSERT INTO [dbo].[componente_seguranca]([id_comp_seg],[nome_comp_seg],[qtd_componente],[carateristica],[material],[cor],[condicoes_conservacao],[tamanho],[espessura],[Universal],[id_fabricante])
VALUES('9','Cinto de seguranca','4','Alta Resistencia','Nylon,aco e almofada','Preto','bom estado','tamanho','10mm',0,6)

INSERT INTO [dbo].[componente_seguranca]([id_comp_seg],[nome_comp_seg],[qtd_componente],[carateristica],[material],[cor],[condicoes_conservacao],[tamanho],[espessura],[Universal],[id_fabricante])
VALUES('10','AirBag','1','Alta Resistencia','Nylon','Preto','dobrada em compartimento especial','tamanho','7.5mm',0,7)

INSERT INTO [dbo].[componente_seguranca]([id_comp_seg],[nome_comp_seg],[qtd_componente],[carateristica],[material],[cor],[condicoes_conservacao],[tamanho],[espessura],[Universal],[id_fabricante])
VALUES('11','AirBag','2','Alta Resistencia','Nylon','Amarelo','dobrada em compartimento especial','tamanho','espessura',1,8)

INSERT INTO [dbo].[componente_seguranca]([id_comp_seg],[nome_comp_seg],[qtd_componente],[carateristica],[material],[cor],[condicoes_conservacao],[tamanho],[espessura],[Universal],[id_fabricante])
VALUES('12','Cinto de seguranca','2','Alta Resistencia','Poliester','Laranja','bom estado','tamanho','10mm',1,9)

INSERT INTO [dbo].[componente_seguranca]([id_comp_seg],[nome_comp_seg],[qtd_componente],[carateristica],[material],[cor],[condicoes_conservacao],[tamanho],[espessura],[Universal],[id_fabricante])
VALUES('13','AirBag','2','Alta Resistencia','Nylon','Verde','dobrada em compartimento especial','tamanho','8mm',1,10)

INSERT INTO [dbo].[componente_seguranca]([id_comp_seg],[nome_comp_seg],[qtd_componente],[carateristica],[material],[cor],[condicoes_conservacao],[tamanho],[espessura],[Universal],[id_fabricante])
VALUES('14','Cinto de seguranca','2','Alta Resistencia','Poliester','Castanho','Bom estado','tamanho','10mm',1,11)

INSERT INTO [dbo].[componente_seguranca]([id_comp_seg],[nome_comp_seg],[qtd_componente],[carateristica],[material],[cor],[condicoes_conservacao],[tamanho],[espessura],[Universal],[id_fabricante])
VALUES('15','AirBag','2','Alta Resistencia','Nylon','Violeta','dobrada em compartimento especial','tamanho','8mm',1,12)

INSERT INTO [dbo].[componente_seguranca]([id_comp_seg],[nome_comp_seg],[qtd_componente],[carateristica],[material],[cor],[condicoes_conservacao],[tamanho],[espessura],[Universal],[id_fabricante])
VALUES('16','cinto de seguranca','7','Alta Resistencia','Nylon','Azul','bom estado','tamanho','10mm',1,13);
***/




