Dado('que esteja no modal de registro de conta') do
    @pagina_principal = Pages::PaginaPrincipal.new
    @pagina_principal.load
    @pagina_principal.modal_login.btn_registrar.click
  end
  
Quando('realizar um registro válido') do
  @pagina_principal.register_acc_balance_off
end
  
Quando('o botão de criar conta com saldo estiver desativado') do
  @pagina_principal.balance_off   
end
  
Então('mensagem de sucesso é exibida') do
  expect(@pagina_principal.label_mensagem.text).to include('criada com sucesso')
end

Quando('o botão de criar conta com saldo estiver ativado') do
  @pagina_principal.balance_on
end

Quando('finalizar cadastro com todos campos em branco') do
  @pagina_principal.modal_registro.btn_cadastrar.click
end

Quando('realizar um registro com email em branco') do
  @pagina_principal.register_acc_balance_off
  @pagina_principal.modal_registro.input_email.set ''
  @pagina_principal.modal_registro.btn_cadastrar.click
end

Quando('realizar registro com nome em branco') do
  @pagina_principal.register_acc_balance_off
  @pagina_principal.modal_registro.input_name.set ''
  @pagina_principal.modal_registro.btn_cadastrar.click
end

Quando('realizar um registro com senha em branco') do
  @pagina_principal.register_acc_balance_off
  @pagina_principal.modal_registro.input_password.set ''
  @pagina_principal.modal_registro.btn_cadastrar.click
end

Quando('realizar um registro com confirmação de senha em branco') do
  @pagina_principal.register_acc_balance_off
  @pagina_principal.modal_registro.input_confirmation_pass.set ''
  @pagina_principal.modal_registro.btn_cadastrar.click
end

Quando('realizar um registro com um email inválido') do
  @pagina_principal.fill_invalid_register
end
  
Então('mensagem é exibida {string}') do |mensagem|
  expect(@pagina_principal.register_msg_verify(mensagem)).to be_truthy  
end

Quando('realizar um registro com os campo de senha e confirmação senha diferentes') do
  @pagina_principal.fill_invalid_register_passwords
  @pagina_principal.modal_registro.btn_cadastrar.click
end

Então('mensagem de erro é exibida {string}') do |mensagem|
  expect(@pagina_principal.label_mensagem.text).to eq(mensagem)
end
