Dado("que esteja logado") do
  Tela.new.validar_tela_login
  Tela.new.realizar_login
  Home.new.validar_home
end

Quando("acessar o card vendas em cartão") do
  Core.new.aguardar_loading
  Home.new.clicar_card_VendasEmCartao
end

Entao("valido se as vendas em cartão são exibidas") do
  Home.new.validar_card_VendasEmCartao
end

Quando("acessar o card pagamentos") do
  #Core.new.aguardar_loading
  Home.new.clicar_card_pagamentos
end

Entao("valido se pagamentos é exibido") do
  Home.new.validar_card_pagamentos
end

Quando("acessar o card cobrança") do
  #Core.new.aguardar_loading
  Home.new.clicar_card_cobranca
end

Entao("valido se cobrança é exibido") do
  Home.new.valdar_card_cobranca
end

Quando("acessar o card investimento") do
  pending # Write code here that turns the phrase
end

Entao("valido se investimento é exibido") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("acessar a aba saldo") do
  #Core.new.aguardar_loading
  Home.new.clicar_aba_saldo
end

Entao("valido se saldo é exibido") do
  Home.new.validar_saldo
end

Quando("acessar a aba Entradas") do
  #Core.new.aguardar_loading
  Home.new.clicar_aba_Entradas
end

Entao("valido as entradas de valores") do
  Home.new.validar_Entradas
end

Quando("acessar a aba Saidas") do
  #Core.new.aguardar_loading
  Home.new.clicar_aba_Saidas
end

Entao("valido as saidas de valores") do
  Home.new.validar_saidas
end

Quando("acessar a aba Futuro") do
  #Core.new.aguardar_loading
  Home.new.clicar_aba_Futuro
end

Entao("valido se Movimentações futuras são exibidas") do
  Home.new.validar_Futuro
end

Quando("acessar Trocar conta") do
  #Core.new.aguardar_loading
  Home.new.clicar_TrocarConta
end

Entao("E validar o nome da empresa") do
  Home.new.validar_Cliente
end
