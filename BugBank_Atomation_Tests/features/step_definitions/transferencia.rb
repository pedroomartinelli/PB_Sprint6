Dado('que esteja logado na conta') do
    @pagina_principal = Pages::PaginaPrincipal.new
    @pagina_principal.load
    @pagina_principal.register_and_login_acc
    @pagina_home = Pages::PaginaHome.new
    @pagina_home.load
  end
  
Dado('esteja na pagina de transferências') do
    @pagina_home.btn_funcionalidades.transferencia.click
    @pagina_transferencia = Pages::PaginaTransferencia.new
    @pagina_transferencia.load
end
  
Quando('realizar uma transfência') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('deverá ser apresentada menssagem {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end