#language: pt

@regression
@pagina_de_extrato
Funcionalidade: Extrato
    SENDO um usuário do banco BugBank
    QUERO conferir extratos
    PARA poder ter controle das entradas e saídas da conta

Contexto: Estar na página de Extrato
    Dado que esteja logado na conta
    E esteja na página home da conta
    Quando acessar o botão de extratos

@visualizaçao_de_saldo
Cenário: Validar visualização de saldo atual
    Então deverá ser apresentada saldo atual da conta

@visualização_de_transferências
Cenário: Validar visualização das transferencias
    Então deverá ser apresentada os registros de movimentações da conta