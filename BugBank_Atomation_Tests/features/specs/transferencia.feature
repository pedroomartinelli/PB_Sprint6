#language: pt

@regression
@pagina_de_transferencia
Funcionalidade: Transferência
    SENDO um usuário do banco BugBank
    QUERO realizar transferências
    PARA poder transferir quantias para outras contas

Contexto: Estar na página de Transferência
    Dado que o número de conta para transferencia exista
    E esteja na pagina de transferências 

@transferencia_com_sucesso
Cenário: Validar transferência com sucesso
    Quando realizar uma transfência com sucesso
    Então deverá ser apresentada menssagem "Transferencia realizada com sucesso"

@transferencia_sem_saldo
Cenário: Validar transferência sem saldo
    Quando realizar uma transferência com saldo menor que o valor da transferência
    Então deverá ser apresentada menssagem "Você não tem saldo suficiente para essa transação"

@transferencia_com_valor_zero
Cenário: Validar transferências com valor zero
    Quando o valor da transferência for zero
    Então deverá ser apresentada menssagem "Valor da transferência não pode ser 0 ou negativo"

@transferencia_com_valor_negativo
Cenário: Validar transferências com valores negativos
    Quando o valor da transferência for negativo
    Então deverá ser apresentada menssagem "Valor da transferência não pode ser 0 ou negativo"

@transferencia_conta_inexistente
Cenário: Validar transferência para conta inexistente
    Quando o numero e dígito de conta forem inválidos
    Então deverá ser apresentada menssagem "Conta inválida ou inexistente"

@transferencia_valor_em_branco
Cenário: Validar transferência com valor em branco
    Quando o valor da transferencia estiver em branco
    Então alerta será mostrado 


