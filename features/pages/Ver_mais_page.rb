class VerMais < InterfaceFramework

@@btn_pagamentos = "//android.widget.Button[@text='pagsafra']"
@@btn_pagamentosComCodigo = "//android.widget.Button[@text='Pagamento com código de barras saf']"

def acessar_pagamento_codigo_barras
find(@@btn_pagamentos).click 
find(@@btn_pagamentosComCodigo).click

end
end