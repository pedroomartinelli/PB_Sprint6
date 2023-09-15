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
    Quando insiro um email válido e uma senha válida
    Então devo ser logado com sucesso

@login_credenciais_invalidas
Cenário: Login com credenciais inválidas
    Quando insiro um email inválido 
    Então devo ver uma mensagem de erro

@login_email_em_branco
Cenário: Login com email em branco
    Quando insiro um email em branco e uma senha válida
    Então devo ver uma mensagem de erro "É campo obrigatório"

@login_senha_em_branco
Cenário: Login com senha em branco
    Quando insiro um email válido e uma senha em branco
    Então devo ver uma mensagem de erro "É campo obrigatório"

@login_senha_incorreta
Cenário: Login com senha incorreta
    Quando insiro um email válido e uma senha inválida
    Então devo ver uma mensagem de erro "Usuário ou senha inválido.Tente novamente ou verifique suas informações!"


@obrigatoriedade_de_campos_login
Esquema do Cenário: Validar obrigatoriedade dos campos
    Quando clicar no campo "<campo>"
    Então o sistema deverá exibir uma mensagem "<msg>"
    Exemplos:
    |campo  |msg                |
    |e-mail |É campo obrigatório|
    |senha  |É campo obrigatório|

@redirecionamento_botao_requisitos
Cenário: Verificar redirecionamento do botão "Conheça nossos requisitos"
    Quando clicar no botão "Conheça nossos requisitos"
    Então deverá ser direcionado para a página "requeriments"##############

@redirecionamento_botao_acessar ###########################################
Cenário: Verificar redirecionamento do botão "Acessar" 
    Quando clicar no botão "Acessar"
    E a conta for válida
    Então deverá ter acesso a home da conta


