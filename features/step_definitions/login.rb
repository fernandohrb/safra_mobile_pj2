Dado("que estou na tela inicial do aplicativo") do
  Tela.new.validar_tela_login
end

Quando("logar na aplicação") do
  Tela.new.realizar_login
end

Entao("validar tela HOME do aplicativo") do
  Home.new.validar_home
end
