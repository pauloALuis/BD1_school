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