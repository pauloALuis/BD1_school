/****** Procurar os modelos com o nome da marca ******/
SELECT *
     
  FROM Modelo, Marca
  WHERE modelo.id_marca =   marca.id_marca and  marca.id_marca = (SELECT [id_marca]
     
  FROM [EmpresaMontagemCarros].[dbo].[Marca]
  where nome_marca = 'bmw')