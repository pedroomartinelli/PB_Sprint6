Então('deverá ser apresentada saldo atual da conta') do
    expect(@saldo).to include(@pagina_extrato.saldo.text)
end

Então('deverá ser apresentada os registros de movimentações da conta') do
    expect(@pagina_extrato).to have_dados_transacao
end