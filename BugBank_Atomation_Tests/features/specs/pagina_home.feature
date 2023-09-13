#language: pt

@regression
@pagina_home
Funcionalidade: Página Home
    SENDO um usuário do banco BugBank
    QUERO fazer diferentes operações
    PARA poder gerir minha contas

Contexto: Estar na página home
    Dado que esteja na página home da conta

Esquema do Cenário: Acessar botões de opções
    Quando acessar o botão "<botão>"
    Então o sistema deverá ser direcionado para página "<página>"
    Exemplos:
    |botão        |página                                    |
    |TRANSFERÊNCIA|https://bugbank.netlify.app/transfer      |
    |EXTRATO      |https://bugbank.netlify.app/bank-statement|
    |Sair         |https://bugbank.netlify.app/              |


Cenário: Visualizar saldo
    Então o sistema deverá apresentar o saldo da conta

Cenário: Verificação de funcionalidade em desenvolvimento
    Quando clicar em botão de funcionalidade
    Então o sistema deverá alertar situação de funcionalidade
