/****** Mostrar os modelos de carros que estão associados a marca  ******/
SELECT *
  FROM [EmpresaMontagemCarros].[dbo].[Modelo] 
  inner join Marca
  on Modelo.id_marca = Marca.id_marca --(SELECT id_marca FROM Marca WHERE nome_marca ='NISSAN')



  /****** Mostrar componentes de segurança associada ao Carro  ******/
SELECT Carro.id_carro
      ,Carro.data_montagem
      ,Carro.cor_carro
      ,Carro.tipo_carro
      ,Carro.tipo_direcao
      ,Carro.volante
      ,Carro.capacidade_deposito
      ,Carro.num_KM_percorrido
      ,Carro.velocidade_max
      ,componente_seguranca.nome_comp_seg,
	   componente_seguranca.carateristica
  FROM Carro, comp_seg_carros, componente_seguranca
  WHERE Carro.id_carro = comp_seg_carros.id_carro AND  componente_seguranca.id_comp_seg = comp_seg_carros.id_comp_seg

  /**********************consultar o marca de carro pelo nome******************/
  SELECT *  FROM [EmpresaMontagemCarros].[dbo].[Marca]
  where nome_marca = 'bmw'

  /****** consultar os modelos pelo nome da marca ******/
SELECT TOP (1000) [id_modelo]
      ,[nome_modelo]
      ,[potencia]
      ,[Consumo]
	  ,Marca.id_marca
  FROM [EmpresaMontagemCarros].[dbo].[Modelo]
  inner join Marca on MODELO.id_marca = Marca.id_marca
  WHERE Marca.nome_marca = 'bmw'

  /****** consultar carros Montados  ******/
SELECT TOP (1000) [id_carro]
      ,[data_montagem]
      ,[data_criacao]
      ,[qnt_cilindros]
      ,[dimensao_cilindros]
      ,[data_fabrico]
      ,[id_modelo]
      ,[cor_carro]
      ,[num_portas]
      ,[num_retrovissor]
      ,[tipo_carro]
      ,[tipo_direcao]
      ,[volante]
      ,[id_chassis]
      ,[cod_combustivel]
      ,[id_pneu]
      ,[id_motor]
      ,[capacidade_deposito]
      ,[num_KM_percorrido]
      ,[velocidade_max]
      ,[preco]
  FROM [Carro]



  /****** Atraves do nome da marca faz-se consulta dos SUBMODELOS ASSOCIADOS A MARCA******/
SELECT [id_submodelo]
      ,[nome_submodelo]
      ,[dt_criacao_submodelo]
      ,[num_eixo]
      ,modelo.id_modelo,
	   Marca.nome_marca
  FROM [EmpresaMontagemCarros].[dbo].[SubModelo], Marca, MODELO
  WHERE MODELO.id_modelo = SubModelo.id_modelo and MODELO.id_marca = Marca.id_marca AND Marca.nome_marca LIKE '%bmw%'


  /****** CONSULTAR OS ACESSORIO ASSOCIADO AO CARRO ******/
SELECT Carro.id_carro
	  ,Carro.id_modelo
	  ,Carro.id_motor
	  ,Carro.data_fabrico
      ,Carro.cor_carro
      ,Carro.tipo_carro
      ,Carro.tipo_direcao
	  ,acessorios.nome_acessorio
	  ,acessorios.carateristica
	  ,acessorios.Carga_maxima
	  ,acessorios.material_fabrico
FROM Carro, acessorios, acessorios_carros
WHERE Carro.id_carro = acessorios_carros.id_carro AND acessorios_carros.id_acessorio = acessorios.id_acessorio



/****** CONSULTAR OS OS CARROS QUE TÊM O ACESSORIO COM ID 1 ******/
SELECT Carro.id_carro
	  ,Carro.id_modelo
	  ,Carro.id_motor
	  ,Carro.data_fabrico
      ,Carro.cor_carro
      ,Carro.tipo_carro
      ,Carro.tipo_direcao
	  ,acessorios.nome_acessorio
	  ,acessorios.carateristica
	  ,acessorios.Carga_maxima
	  ,acessorios.material_fabrico
FROM Carro, acessorios, acessorios_carros
WHERE Carro.id_carro = acessorios_carros.id_carro AND acessorios_carros.id_acessorio = 1

/****** CONTAR QUANTOS CARROS TÊM O ACESSORIO COM ID 1 ******/

SELECT DISTINCT COUNT(Carro.id_carro) AS NUM_CARROS_ACESSORIO1
FROM Carro, acessorios, acessorios_carros
WHERE Carro.id_carro = acessorios_carros.id_carro AND acessorios_carros.id_acessorio = 1