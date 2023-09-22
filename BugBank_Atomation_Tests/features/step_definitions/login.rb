Dado('que esteja no modal de login') do
    @pagina_principal = Pages::PaginaPrincipal.new
    @pagina_requisitos = Pages::PaginaRequisitos.new    
    @pagina_principal.load
    @pagina_principal.register_acc_balance_on
    @pagina_principal.modal_login.wait_btn_acessar_visible
end
  
Quando('insere um email válido e uma senha válida') do
    @pagina_principal.login_acc
    @pagina_principal.modal_login.btn_acessar.click  
end
  
Então('é logado com sucesso') do
    expect(@pagina_principal).to have_current_path('/home')
end

Quando('insere um email inválido') do
    @pagina_principal.modal_login.wait_btn_acessar_visible
    @pagina_principal.fill_invalid_email_login
    @pagina_principal.modal_login.btn_acessar.click
end
  
Então('deverá ver uma mensagem de erro') do
    expect(@pagina_principal.label_mensagem.text).to include('Usuário ou senha inválido.')
end

Quando('insere um email válido e uma senha inválida') do
    @pagina_principal.modal_login.wait_btn_acessar_visible
    @pagina_principal.fill_invalid_pass_login
    @pagina_principal.modal_login.btn_acessar.click
end

Quando('insere um email em branco e uma senha válida') do
    @pagina_principal.login_acc
    @pagina_principal.modal_login.input_email.set ''
    @pagina_principal.modal_login.btn_acessar.click
end

Quando('insere um email válido e uma senha em branco') do
    @pagina_principal.login_acc
    @pagina_principal.modal_login.input_senha.set ''
    @pagina_principal.modal_login.btn_acessar.click
end
  
Então('deverá ver uma mensagem de erro {string}') do |mensagem|
    expect(@pagina_principal.login_msg_verify(mensagem)).to be_truthy
end

Quando('insire um email válido e uma senha em branco') do
    @pagina_principal.login_acc
    @pagina_principal.modal_login.input_senha.set ''
    @pagina_principal.modal_login.btn_acessar.click
end

Quando('clicar no campo') do
    @pagina_principal.click_inputs_elements_login
end

Quando('clicar no botão {string}') do |string|
    if @pagina_principal.modal_login.btn_requisitos.text == string
        @pagina_principal.btn_requisitos.click
        @pagina_requisitos.load
    end
end
  
Então('deverá ser direcionado para a página de requisitos') do
    expect(current_url).to eq('https://bugbank.netlify.app/requirements')
end
  

