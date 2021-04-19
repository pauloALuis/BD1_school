--CREATE DATABASE EmpresaMontagemCarros
----------
------------

--USE EmpresaMontagemCarros
--GO


--CREATE TABLE Tipo_motor(
--	cod_tipo_motor int IDENTITY(1,1) PRIMARY KEY,
--	nome_tipo_motor varchar(80) not null,
--	carateristicas_tipo_motor varchar(100) not null,
--	dimensao varchar(40)
--)
-------------
----------------
--CREATE TABLE Injector(
--	id_injector int IDENTITY(1,1) PRIMARY KEY,
--	marca varchar(80) not null,
--	tipo_injetor varchar(100) not null,
--	qntAtuadores int
--)

-------------
----------------
--CREATE TABLE SubModelo
--(
--	id_submodelo int IDENTITY(1,1) PRIMARY KEY,
--	nome_submodelo varchar(80) not null,
--	dt_criacao_submodelo smalldatetime,
--)


----------
--------------------
--CREATE TABLE Marca(
--	id_marca int IDENTITY(1,1) PRIMARY KEY,
--	nome_marca varchar(80) not null,
--	data_criacao date,
--	nome_pais varchar(90)
-- )
-- ----
-- ------------
--CREATE TABLE Modelo(
--	id_modelo int IDENTITY(1,1) PRIMARY KEY,
--	nome_modelo varchar(80) not null,
--	id_submodelo int 
--	FOREIGN KEY REFERENCES submodelo (id_submodelo),
--	id_marca int 
--	FOREIGN KEY REFERENCES Marca (id_marca)
--);
---------------

--CREATE TABLE Cilindro(
--	id_cilindro int IDENTITY(1,1) PRIMARY KEY,
--	nome_cilindro varchar(80) not null,
--	qnt_cilindros int,
--	dimensao_cilindros int,
--	data_fabrico date,
--);


--------------
---------------
--	create table valvula
--	(
--		id_valvula smallint primary key,
--		diametro varchar (255),
--		num_furos smallint,
--		data_fabrico date,
--	);

---------------------
--	create table comustivel
--	(
--		cod_combustivel smallint primary key,
--		tipo_combustivel varchar(255),
--		indice_octano varchar(255)
--	);

-----------------------------------
--	create table chassi
--	(
--		id_chassis smallint primary key,
--		nome_chassis varchar (255),
-- 		referencia_chassi varchar (255),
--		data_criacao_chassis date,
--		dimensao_chassi int,
		
--);
---------
--	create table airbag
--	(
--		cod_airbag smallint primary key,
--		tipo_airbag varchar (255),
--		marca varchar (255),
--	);
--	----------------
--	----------------
--	create table componente_seguranca
--	(
--		id_componente_seguranca smallint primary key,
--		tipo_limpa_vidro varchar (255),
--		qtd_limpa_vidro_traseiro smallint,
--		qtd_limpa_vidro_frontal smallint,
--		qtd_pisca_alerta smallint,
--		qtd_cinto_seguranca smallint,
--		sensores varchar (255),
--		num_cinto_seguranca smallint,
--		buzina varchar (255),
--		cod_airbag smallint
--	);

--	----------


--CREATE TABLE Peca(
--	id_peca int IDENTITY(1,1) PRIMARY KEY,
--	nome_peca varchar(80) not null,
--	carateristicas_peca varchar(100) ,
--	dimensao_peca varchar(40),
--	id_modelo int
--    FOREIGN KEY REFERENCES modelo (id_modelo),
--)


	--create table comp_seg_carros
	--(
	--	id_comp_seg_carros int IDENTITY(1,1) primary key,
	--	id_componente_seguranca smallint FOREIGN KEY REFERENCES componente_seguranca (id_comp_seg),
	--	id_carro int FOREIGN KEY REFERENCES Carro (id_carro)
	--);
----------
----------------
--CREATE TABLE Carro(
--	id_carro int IDENTITY(1,1) PRIMARY KEY,
--	data_montagem varchar(80) not null,
--	data_mo varchar(80) not null,
--	qnt_cilindros int,
--	dimensao_cilindros int,
--	data_fabrico date,
--	id_modelo int
--    FOREIGN KEY REFERENCES modelo (id_modelo),
--)
---------
----------
--CREATE TABLE Peca_Carro
--(
--	id_peca_carro INT IDENTITY(1, 1),
--	id_carro int 
--	FOREIGN KEY REFERENCES Carro(id_carro),
--	id_peca int 
--	FOREIGN KEY REFERENCES PECA(ID_PECA)
--)

--CREATE TABLE fabricante
--(
--	id_fabricante INT IDENTITY(1, 1) PRIMARY KEY,
--	nome_fabricante nvarchar(200),
--	endereco nvarchar(100),
--	Pais int,
--	capital_social int,

----)

--CREATE TABLE Pneus
--(
--	id_pneu INT IDENTITY(1, 1) PRIMARY KEY,
--	Temporada nvarchar(200),
--	Largura_pneu int,
--	altura_pneu int,
--	diametro_pneu int,
--	id_fabricante int
--	FOREIGN KEY REFERENCES fabricante(id_fabricante)
--)

--CREATE TABLE Pneus_carro
--(
--	id_pneus_carro INT IDENTITY(1, 1),
--	id_carro int 
--	FOREIGN KEY REFERENCES Carro(id_carro),
--	id_pneu int 
--	FOREIGN KEY REFERENCES Pneus (ID_pneu)
--)


--CREATE TABLE acessorios_automovel(
--	id_acessorio INT IDENTITY(1, 1) PRIMARY KEY,
--	nome_acessorio varchar(255) NULL,
--	carateristica varchar(500) NULL,
--	material_fabrico varchar(100) NULL,
--	cor varchar(100) NULL,
--	condicoes_conservacao varchar(550) NULL,
--	altura nvarchar(80) NULL,
--	largura nvarchar(80) NULL,
--	Universal bit NULL,
--	Carga_maxima nvarchar(80) NULL,
--	Peso_acessorio nvarchar(80) NULL,
--	ajustavel nvarchar(80) NULL,
--	id_fabricante int NULL
--     FOREIGN KEY REFERENCES fabricante(id_fabricante)
--)

--CREATE TABLE acessorios_carros
--(
--	id_acessorio_carro INT IDENTITY(1, 1) PRIMARY KEY,
--	id_carro int 
--	FOREIGN KEY REFERENCES Carro(id_carro),
--	id_acessorio int 
--	FOREIGN KEY REFERENCES acessorios_automovel (id_acessorio)
--)


--CREATE TABLE motor(
--	id_motor int IDENTITY(1,1) PRIMARY KEY,
--	nome_motor varchar(80) not null,
--	tipo_correntes varchar(140),
--	tipo_bombas varchar(140),
--	tipo_correia varchar(140),
--	tipo_suporte varchar(140),
--	outros_componentes varchar(580),
	
--	cod_tipo_motor int FOREIGN KEY REFERENCES Tipo_motor (cod_tipo_motor),
--	id_injector int FOREIGN KEY REFERENCES Injector (id_injector),
--	id_cilindro int FOREIGN KEY REFERENCES Cilindro (id_cilindro),
--	id_valvula smallint	FOREIGN KEY REFERENCES valvula (id_valvula),
--	id_marca int FOREIGN KEY REFERENCES Marca (id_marca),
--	id_fabricante int	FOREIGN KEY REFERENCES fabricante (id_fabricante)

--)

alter table carro
DROP COLUMN id_comp_seg
