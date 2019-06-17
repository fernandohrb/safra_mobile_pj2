class Pagamentos < InterfaceFramework

@@Btn_digitarCodigo = "//android.widget.Button[@text='Digitar código de barras']"
@@campo_CodigoBarras = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View[16]/android.view.View[1]/android.widget.EditText"
#//android.view.View[@index='11']
@@btn_Continuar = "//android.widget.Button[@text='Continuar']"

 def realizar_pagamento_com_codigo_barras
    boleto = $pagamentos[$ambiente]["boleto1"]
    
    find(@@Btn_digitarCodigo).click
    find(@@campo_CodigoBarras).send_keys(boleto)
    sleep(5)
 end
end