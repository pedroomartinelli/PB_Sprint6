#language: pt

@regression
@pagina_de_transferencia
Funcionalidade: Transferência
    SENDO um usuário do banco BugBank
    QUERO realizar transferências
    PARA poder transferir quantias para outras contas

Contexto: Estar na página de Transferência
    Dado que esteja logado na conta
    E esteja na pagina de transferências
    Quando realizar uma transfência 

@transferencia_com_sucesso
Cenário: Validar transferência com sucesso
    Então deverá ser apresentada menssagem "Transferencia realizada com sucesso"

@transferencia_sem_saldo
Cenário: Validar transferência sem saldo
    E o saldo for menor que o valor da transferência
    Então deverá ser apresentada menssagem "Você não tem saldo suficiente para essa transação"

@transferencia_com_valor_invalido
Esquema do Cenário: Validar transferências com valores inválidos
    E a transferência conter valor "<tipo>" 
    Então deverá ser apresentada menssagem "<msg>"
    Exemplos:
    |tipo|msg                                              |
    |0   |Valor da transferência não pode ser 0 ou negativo|
    |-9  |Valor da transferência não pode ser 0 ou negativo|

