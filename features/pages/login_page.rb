class Tela < InterfaceFramework
  @@campo_Shorthname = "(//android.widget.EditText[@class='android.widget.EditText'])[1]"
  @@campo_Usuario = "(//android.widget.EditText[@class='android.widget.EditText'])[2]"
  @@btn_entrar = "//android.widget.Button[@text='ENTRAR']"
  @@btn_token = "//android.widget.Button[@text='TOKEN']"

  @@campo_senha = "//android.widget.EditText[@resource-id='senhaEletronica']"
  @@btn_confirmar_senha = "//android.widget.Button[@text='CONFIRMAR']"

  
  def validar_tela_login
    find(@@btn_entrar).displayed?

   
  end

  def realizar_login
    empresa = $login[$ambiente]["empresa"]
    usuario = $login[$ambiente]["usuario"]
    senha_eletronica = $login[$ambiente]["senha"]

    find(@@btn_token).displayed?
    find(@@campo_Shorthname).send_keys(empresa)
    find(@@campo_Usuario).send_keys(usuario)
    find(@@btn_entrar).click
    find(@@campo_senha).send_keys(senha_eletronica)
    find(@@btn_confirmar_senha).click
  end
end
