# language: pt

Funcionalidade: Homolog
Determinar a disponibilidade da execusão
de pagamentos de com código de barras

@Boleto
Cenario: Realizar pagamento com código de barras
Dado que esteja logado
Quando acessar pagamento com código de barras através do Ver mais
E realizar pagamento de um boleto
Entao valido se pagamento foi efetuado