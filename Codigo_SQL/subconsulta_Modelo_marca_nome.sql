/****** procurar os modelos pelo nome da marca ******/
SELECT TOP (1000) [id_modelo]
      ,[nome_modelo]
      ,[potencia]
      ,[Consumo]
	  ,Marca.id_marca
  FROM [EmpresaMontagemCarros].[dbo].[Modelo]
  inner join Marca on MODELO.id_marca = Marca.id_marca
  WHERE Marca.nome_marca = 'bmw'