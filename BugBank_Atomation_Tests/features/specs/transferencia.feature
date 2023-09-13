#language: pt

@regression
@pagina_home
Funcionalidade: Transferência
    SENDO um usuário do banco BugBank
    QUERO realizar transferências
    PARA poder transferir quantias para outras contas

Contexto: Estar na página de Transferência
    Dado que esteja na página de transferência
    Quando realizar uma transfência 

Cenário: Validar transferência com sucesso
    E o saldo for maior que o valor da transferência
    Então deverá ser apresentada menssagem "Transferencia realizada com sucesso"

Cenário: Validar transferência sem saldo
    E o saldo for menor que o valor da transferência
    Então deverá ser apresentada menssagem "Você não tem saldo suficiente para essa transação"

Esquema do Cenário: Validar transferências com valores inválidos
    E a transferência cconter valor "<tipo>" 
    Então deverá ser apresentada menssagem "<msg>"
    Exemplos:
    |tipo    |msg                                              |
    |0       |Valor da transferência não pode ser 0 ou negativo|
    |negativo|Valor da transferência não pode ser 0 ou negativo|

