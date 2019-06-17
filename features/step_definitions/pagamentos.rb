Quando("acessar pagamento com código de barras através do Ver mais") do
  Home.new.clicar_verMais
  VerMais.new.acessar_pagamento_codigo_barras
end

Quando("realizar pagamento de um boleto") do
  Pagamentos.new.realizar_pagamento_com_codigo_barras
end

Entao("valido se pagamento foi efetuado") do
  pending # Write code here that turns the phrase above into concrete actions
end