#language: pt

@regression
@login
Funcionalidade: Login
    SENDO um usuário do banco BugBank
    QUERO me autenticar na aplicação
    PARA poder realizar movimentações e relatórios

Contexto: Estar no modal de login
    Dado que esteja no modal de login

@login_credenciais_validas
Cenário: Login com credenciais válidas
    Quando insere um email válido e uma senha válida
    Então é logado com sucesso

@login_email_invalido
Cenário: Login com credenciais inválidas
    Quando insere um email inválido
    Então deverá ver uma mensagem de erro

@login_senha_invalida
Cenário: Login com senha incorreta
    Quando insere um email válido e uma senha inválida
    Então deverá ver uma mensagem de erro

@login_email_em_branco
Cenário: Login com email em branco
    Quando insere um email em branco e uma senha válida
    Então deverá ver uma mensagem de erro "É campo obrigatório"

@login_senha_em_branco
Cenário: Login com senha em branco
    Quando insere um email válido e uma senha em branco
    Então deverá ver uma mensagem de erro "É campo obrigatório"

@obrigatoriedade_de_campos_login
Cenário: Validar obrigatoriedade dos campos
    Quando clicar no campo 
    Então deverá ver uma mensagem de erro "É campo obrigatório"
    
@redirecionamento_botao_requisitos
Cenário: Verificar redirecionamento do botão "Conheça nossos requisitos"
    Quando clicar no botão "Conheça nossos requisitos"
    Então deverá ser direcionado para a página de requisitos