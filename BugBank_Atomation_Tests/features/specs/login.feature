#language: pt

@regression
@login
Funcionalidade: Login
    SENDO um usuário do banco BugBank
    QUERO me autenticar na aplicação
    PARA poder realizar movimentações e relatórios

Contexto: Estar no modal de login
    Dado que esteja no modal de login

@validacao_autenticacao_usuario
Esquema do Cenário: Validar a autenticação do usuário
    Quando preencher os campos "<e-mail>" e "<senha>"
    E realizar login "<tipo>"
    Então será liberado acesso a aplicação logada "<msg>"
    Exemplos:
    |e-mail         |senha       |tipo    |msg                                                                     |
    |teste@teste.com|123456      |válido  |                                                                        |
    |teste_teste    |123456      |válido  |Formato inválido                                                        |
    |               |123456      |válido  |É campo obrigatório                                                     |
    |teste@teste.com|            |válido  |É campo obrigatório                                                     |
    |teste@teste.com|teste_inv123|inválido|Usuário ou senha inválido.Tente novamente ou verifique suas informações!|

@obrigatoriedade_de_campos_login
Esquema do Cenário: Validar obrigatoriedade dos campos
    Quando clicar no campo "<campo>"
    Então o sistema deverá exibir uma mensagem "<msg>"
    Exemplos:
    |campo  |msg                |
    |e-mail |É campo obrigatório|
    |senha  |É campo obrigatório|

@redirecionamento_botao_registrar
Cenário: Verificar redirecionamento do botão "Registrar"
    Quando clicar no botão "Registrar"
    Então deverá ser aberto o modal de registro de contas

@redirecionamento_botao_requisitos
Cenário: Verificar redirecionamento do botão "Conheça nossos requisitos"
    Quando clicar no botão "Conheça nossos requisitos"
    Então deverá ser direcionado para a página "requeriments"##############

@redirecionamento_botao_acessar ###########################################
Cenário: Verificar redirecionamento do botão "Acessar" 
    Quando clicar no botão "Acessar"
    E a conta for válida
    Então deverá ter acesso a home da conta


