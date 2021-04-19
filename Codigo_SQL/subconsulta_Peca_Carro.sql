/****** SUBCONSULTA DAS PEÇAS ASSOCIADA AOS CARROS ******/
SELECT Carro.id_carro,
		Carro.capacidade_deposito,
		Carro.tipo_carro,
		Peca.id_peca,
		Peca.nome_peca,
		Peca.dimensao_peca

  FROM Carro, Peca, Peca_Carro
  WHERE CARRO.id_carro = Peca_Carro.id_carro AND Peca_Carro.id_peca = Peca.id_peca