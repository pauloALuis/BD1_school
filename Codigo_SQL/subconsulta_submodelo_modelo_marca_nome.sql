/****** Atraves do nome da marca faz-se consulta dos SUBMODELOS ASSOCIADOS A MARCA******/
SELECT [id_submodelo]
      ,[nome_submodelo]
      ,[dt_criacao_submodelo]
      ,[num_eixo]
      ,modelo.id_modelo,
	   Marca.nome_marca
  FROM [EmpresaMontagemCarros].[dbo].[SubModelo], Marca, MODELO
  WHERE MODELO.id_modelo = SubModelo.id_modelo and MODELO.id_marca = Marca.id_marca AND Marca.nome_marca LIKE '%bmw%'