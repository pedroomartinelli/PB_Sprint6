Dado('que esteja logado na conta') do
    @pagina_principal = Pages::PaginaPrincipal.new
    @pagina_principal.load
    @pagina_principal.register_and_login_acc
end

Dado('esteja na página home da conta') do
    @pagina_home = Pages::PaginaHome.new 
    @pagina_home.load
end
  
Quando('acessar o botão de transferências') do
    @pagina_home.transfer_click
end
  
Então('o sistema deverá ser direcionado para página de transferências') do
    expect(current_url).to eq('https://bugbank.netlify.app/transfer')
end

Quando('acessar o botão de extratos') do
    @saldo = @pagina_home.saldo.text
    @pagina_home.bank_statement_click
    @pagina_extrato = Pages::PaginaExtrato.new
    @pagina_extrato.load
    
end
  
Então('o sistema deverá ser direcionado para página de extratos') do
    expect(current_url).to eq('https://bugbank.netlify.app/bank-statement')
end

Quando('acessar o botão de pagamentos') do
    @pagina_home.btn_funcionalidades.pagamentos.click
end
  
Então('o sistema deverá mostrar mensagem {string}') do |mensagem|
    expect(@pagina_home.em_desenvolvimento.text).to eq(mensagem)
end

Quando('acessar o botão de saque') do
    @pagina_home.btn_funcionalidades.saque.click
end

Então('o sistema deverá apresentar o saldo da conta') do
    expect(@pagina_home.saldo.visible?).to be_truthy
end

Quando('acessar o botão Sair') do
    @pagina_home.btn_logout.click
    @pagina_principal.wait_for_login
end
  
Então('o usuário deve ser deslogado') do
    expect(current_url).to eq("https://bugbank.netlify.app/")
end