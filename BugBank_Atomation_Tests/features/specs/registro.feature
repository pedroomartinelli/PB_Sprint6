#language: pt

@regression
@registro
Funcionalidade: Registro de conta
    SENDO um usuário do sistema
    QUERO registrar uma conta
    PARA poder acesso ao banco BugBank

Contexto: Estar no modal de Registro de conta
    Dado que esteja no modal de registro de conta 

@registro_conta_sem_saldo
Cenário: Registro de conta válida sem saldo
    Quando realizar um registro válido
    E o botão de criar conta com saldo estiver desativado
    Então mensagem de sucesso é exibida 

@registro_conta_com_saldo
Cenário: Registro de conta válida com saldo
    Quando realizar um registro válido
    E o botão de criar conta com saldo estiver ativado
    Então mensagem de sucesso é exibida 

@registro_em_branco
Cenário: Registro com todos dados em branco
    Quando finalizar cadastro com todos campos em branco
    Então mensagem é exibida "É campo obrigatório"

@registro_com_email_em_branco
Cenário: Registro de conta com email em branco
    Quando realizar um registro com email em branco
    Então mensagem é exibida "É campo obrigatório"

@registro_com_nome_em_branco
Cenário: Registro com campo de nome em branco
    Quando realizar registro com nome em branco
    Então mensagem de erro é exibida "Nome não pode ser vazio."

@registro_com_senha_em_branco
Cenário: Registro de conta com senha em branco
    Quando realizar um registro com senha em branco
    Então mensagem é exibida "É campo obrigatório"

@registro_com_confirmacao_de_senha_em_branco
Cenário: Registro de conta com confirmação de senha em branco
    Quando realizar um registro com confirmação de senha em branco
    Então mensagem é exibida "É campo obrigatório"

@registro_email_invalido
Cenário: Registro de conta com email inválido
    Quando realizar um registro com um email inválido
    Então mensagem é exibida "Formato inválido"

@campos_de_senha_diferentes
Cenário: Registro de contas com confirmação de senha diferente
    Quando realizar um registro com os campo de senha e confirmação senha diferentes
    Então mensagem de erro é exibida "As senhas não são iguais."

