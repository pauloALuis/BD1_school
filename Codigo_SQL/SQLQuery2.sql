/****** Script for SelectTopNRows command from SSMS  ******/




	Delete From [dbo].[Marca] 
Where 1 < (Select max(2) From [dbo].[Marca] t2 Where [dbo].[Marca].nome_marca = [dbo].[Marca].nome_marca);