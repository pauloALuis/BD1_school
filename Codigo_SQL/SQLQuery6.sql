/****** Script for SelectTopNRows command from SSMS  ******/

--Delete From [dbo].[Marca]
--Where -- nome_marca LIKE 'Aston Martin' AND NOME_marca <> 'Canada' 'Subaru' AND data_criacao <> '2002-07-09'
--nome_marca LIKE 'Volvo' AND  data_criacao <> '1957-11-14'

SELECT *
    FROM [EmpresaMontagemCarros].[dbo].[Marca]
  --ORDER BY id_marca ASC