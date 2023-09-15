#language: pt

@regression
@registro
Funcionalidade: Registro de conta
    SENDO um usuário do sistema
    QUERO registrar uma conta
    PARA poder acesso ao banco BugBank

Contexto: Estar no modal de Registro de conta
    Dado que esteja no modal de registro de conta 

@registro_conta_com_saldo
Cenário: Registro de conta válida sem saldo
    Quando realizar um registro válido
    E o botão de criar conta com saldo estiver desativado
    Então mensagem de sucesso é exibida 

@registro_conta_sem_saldo
Cenário: Registro de conta válida com saldo
    Quando realizar um registro válido
    E o botão de criar conta com saldo estiver ativado ##################
    Então mensagem é exibida "A conta foi criada com sucesso"

@registro_email_invalido
Cenário: Registro de conta com email inválido
    Quando realizar um registro com um email inválido
    Então mensagem é exibida "Formato inválido"

@registro_campos_em_branco
Cenário: Registro de conta com campos em branco
    Quando realizar um registro com algum campo em branco
    Então mensagem é exibida "Formato inválido"

@obrigatoriedade_de_campos_registro
Cenário: Validação de campos obrigatórios
    Quando um campo for obrigatório
    E o campo estiver selecionado
    Então mensagem é exibida "É campo obrigatório"

@campos_de_senha_diferentes
Cenário: Registro de contas com confirmação de senha diferente
    Quando realizar um registro com os campos "<senha>" e "<confirmação senha>" diferentes ####
    Então mensagem é exibida "As senhas não são iguais."





