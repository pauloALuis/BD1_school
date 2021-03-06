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