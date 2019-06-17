# language: pt

Funcionalidade: Homolog
acessar funcionalidades da home
Para determinar a disponibilidade do sistema

@Cliente @teste
Cenario: Validar nome do Cliente
Dado que esteja logado
Quando acessar Trocar conta
Entao E validar o nome da empresa

@vendas @teste
Cenario: Vendas em cartao
Dado que esteja logado
Quando acessar o card vendas em cartão
Entao valido se as vendas em cartão são exibidas

@Pagamentos @teste
Cenario: Pagamentos
Dado que esteja logado
Quando acessar o card pagamentos
Entao valido se pagamentos é exibido

@Cobrança @teste
Cenario: Cobrança
Dado que esteja logado
Quando acessar o card cobrança
Entao valido se cobrança é exibido

@Investimento @testee
Cenario: Investimento
Dado que esteja logado
Quando acessar o card investimento
Entao valido se investimento é exibido

@Saldo @teste
Cenario: Saldo
Dado que esteja logado
Quando acessar a aba saldo
Entao valido se saldo é exibido

@Entradas @teste
Cenario: Entradas
Dado que esteja logado
Quando acessar a aba Entradas
Entao valido as entradas de valores

@Saidas @teste
Cenario: Saídas
Dado que esteja logado
Quando acessar a aba Saidas
Entao valido as saidas de valores

@Futuro @teste
Cenario: Futuro
Dado que esteja logado
Quando acessar a aba Futuro
Entao valido se Movimentações futuras são exibidas

