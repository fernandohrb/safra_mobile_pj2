class Home < InterfaceFramework
  @@btn_verMais = "//android.widget.Button[@text='Ver mais']"
  @@card_Pagamentos = "(//android.view.View[@text='Pagamentos Gestão de pagamentos '])[1]"
  @@btn_autorizar = "//android.widget.Button[@text='Pagamentos pendentes R$ 0,00 Autorizar']"

  @@card_cobranca = "(//android.widget.Button[@text='Cobrança Gestão de recebimentos e cobrança '])[1]"
  @@val_cobranca = "//android.view.View[@text='Liquidações']"
  @@btn_abaSaldo = "(//android.widget.Button[@text='Saldo total disponível a utilizar Saldos e limites aprovados '])[1]"

  @@aba_saldo = "//android.view.View[@text='Saldo']"
  @@saldo = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.widget.TabWidget/android.view.View[2]/android.view.View[1]/android.view.View[2]"

  @@card_investimento = "(//android.widget.Button[@text='Investimentos Aumento de capital e gestão de patrimônio '])[2]"

  @@card_vendasEmCartao = "(//android.widget.Button[@text='Vendas em cartão SafraPay '])[2]"
  @@val_vendasEmCartao = "	/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.widget.TabWidget/android.view.View[2]"

  @@aba_Entradas = "//android.view.View[@text='Entradas']"
  @@clicar_Entradas = "//android.widget.Button[@text='Entradas previstas Últimas movimentações de entrada na conta ']"
  @@saldo_Em_Conta = "//android.view.View[@text='Saldo em conta']"
  @@entradas = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.widget.TabWidget/android.view.View[2]/android.view.View[2]"

  @@aba_Saidas = "//android.view.View[@text='Saídas']"
  @@clicar_Saidas = "//android.widget.Button[@text='Saídas Últimas movimentações de saídas na conta ']"

  @@aba_Futuro = "//android.view.View[@text='Futuro']"
  @@clicar_Futuro = "//android.widget.Button[@text='Futuro Futuras movimentações na conta corrente ']"

  @@loading2 = "com.safra.mobile.pj:id/progressBarSplash"

  @@TrocarConta = "//android.widget.Button[@bounds='[20,68][570,140]']"
  @@camp_cliente = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.webkit.WebView/android.webkit.WebView/android.app.Dialog/android.view.View/android.view.View/android.widget.ListView/android.view.View/android.view.View[1]"

#find_elemente tratado em um metodo chamado find em interface/core_fremework.rb

  def validar_home
    find(@@btn_verMais).displayed?
  end

  def clicar_card_pagamentos
    find(@@card_Pagamentos).click
  end

  def validar_card_pagamentos
    Appium::TouchAction.new.swipe(start_x: 144, start_y: 400, end_x: 40, end_y: 30).perform
    find(@@btn_autorizar).displayed? 
  end

  def clicar_card_cobranca
    Appium::TouchAction.new.swipe(start_x: 144, start_y: 400, end_x: 40, end_y: 20).perform
    find(@@card_cobranca).click 
  end

  def valdar_card_cobranca
    Appium::TouchAction.new.swipe(start_x: 144, start_y: 400, end_x: 40, end_y: 20).perform
    find(@@val_cobranca).displayed? 
  end

  def clicar_card_VendasEmCartao
    find(@@card_vendasEmCartao).click
  end

  def validar_card_VendasEmCartao
    find(@@val_vendasEmCartao).displayed? 
  end

  def clicar_aba_saldo
    aguardar_loading()
    find(@@aba_saldo).displayed? 
  end

  def validar_saldo
    find(@@btn_abaSaldo).displayed? 
    #saldo = find(@@saldo).text
    #puts "O saldo é " + saldo
  end

  def clicar_aba_Entradas
    aguardar_loading()
    find(@@aba_Entradas).click 
  end

  def validar_Entradas
    find(@@clicar_Entradas).displayed?
  end

  def clicar_aba_Saidas
    aguardar_loading()
    find(@@aba_Saidas).click
  end

  def validar_saidas
    find(@@clicar_Saidas).displayed? 
  end

  def clicar_aba_Futuro
    aguardar_loading()
    find(@@aba_Futuro).click
  end

  def validar_Futuro
    find(@@clicar_Futuro).displayed?
  end

  def clicar_TrocarConta
    aguardar_loading()
    find( @@TrocarConta).click
  end

  def validar_Cliente
    cliente = $login[$ambiente]["Cliente"]
    label = find(@@camp_cliente).text
    if (cliente == label)
      puts "Nome do cliente é " + cliente
    else
      puts "Nome do cliente incorreto"
      return fail
    end
  end

  def clicar_verMais
    aguardar_loading()
    find(@@btn_verMais).click
  end
end
