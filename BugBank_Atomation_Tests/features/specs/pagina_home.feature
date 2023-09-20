#language: pt

@regression
@pagina_home
Funcionalidade: Página Home
    SENDO um usuário do banco BugBank
    QUERO fazer diferentes operações
    PARA poder gerir minha contas

Contexto: Estar na página home
    Dado que esteja na página home da conta

@acesso_transferencia
Cenário: Acessar funcionalidade de transferências
    Quando acessar o botão de transferências
    Então o sistema deverá ser direcionado para página de transferências

@acesso_extrato
Cenário: Acessar funcionalidade de extratos
    Quando acessar o botão de extratos
    Então o sistema deverá ser direcionado para página de extratos

@acesso_pagamentos
Cenário: Acessar funcionalidade de pagamentos
    Quando acessar o botão de pagamentos
    Então o sistema deverá mostrar mensagem "Funcionalidade em desenvolvimento"

@acesso_saque
Cenário: Acessar funcionalidade de saque
    Quando acessar o botão de saque
    Então o sistema deverá mostrar mensagem "Funcionalidade em desenvolvimento"

@visualizar_saldo
Cenário: Visualizar saldo
    Então o sistema deverá apresentar o saldo da conta

