Dado('que o número de conta para transferencia exista') do
    @pagina_principal = Pages::PaginaPrincipal.new
    @pagina_principal.load
    @conta = @pagina_principal.register_for_transfer
    @pagina_principal.btn_fechar_modal_sucesso.click
end

Dado('esteja na pagina de transferências') do
    @pagina_principal.register_and_login_acc
    @pagina_home = Pages::PaginaHome.new
    @pagina_home.load
    @saldo = @pagina_home.gettin_value_balance
    @pagina_transferencia = Pages::PaginaTransferencia.new
    @pagina_transferencia.load
end
  
Quando('realizar uma transfência com sucesso') do
   @pagina_transferencia.set_valid_transfer(@conta[:num_conta].to_i, @conta[:digito].to_i, @saldo)
   @pagina_transferencia.btn_transferencia.click
end
  
Então('deverá ser apresentada menssagem {string}') do |mensagem|
    expect(@pagina_transferencia.texto_modal.text).to eq(mensagem)
end

Quando('realizar uma transferência com saldo menor que o valor da transferência') do
    @pagina_transferencia.no_balance_transfer(@conta[:num_conta].to_i, @conta[:digito].to_i, @saldo)
    @pagina_transferencia.btn_transferencia.click
end

Quando('o valor da transferência for zero') do
    @pagina_transferencia.set_valid_transfer(@conta[:num_conta].to_i, @conta[:digito].to_i, @saldo)
    @pagina_transferencia.input_valor_trans.set 0
    @pagina_transferencia.btn_transferencia.click
end

Quando('o valor da transferência for negativo') do
    @pagina_transferencia.negative_transfer(@conta[:num_conta].to_i, @conta[:digito].to_i)
    @pagina_transferencia.btn_transferencia.click    
end

Quando('o numero e dígito de conta forem inválidos') do
    @pagina_transferencia.invalid_account_transfer(@saldo)
    @pagina_transferencia.btn_transferencia.click
end

Quando('o valor da transferencia estiver em branco') do
    @pagina_transferencia.set_valid_transfer(@conta[:num_conta].to_i, @conta[:digito].to_i, @saldo)
    @pagina_transferencia.input_valor_trans.set ''
    @pagina_transferencia.btn_transferencia.click
end

Então('alerta será mostrado') do
    expect(@pagina_transferencia).to have_content(@pagina_transferencia.alerta_valor.text)
end
  