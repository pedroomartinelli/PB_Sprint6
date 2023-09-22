module Pages
    class PaginaTransferencia < SitePrism::Page
        set_url 'transfer'

        element :input_numero_conta, '.input__default[name=accountNumber]'
        element :input_digito_conta, '.input__default[name=digit]'
        element :input_valor_trans, '.input__default[name=transferValue]'
        element :input_descricao, '.input__default[name=description]'
        element :btn_transferencia, '.CMabB'
        element :texto_modal, '#modalText'
        element :alerta_valor, '.kOeYBn  .input__warging'

        def set_valid_transfer(num, digit, saldo)
            transfer_data = Factory::Dynamic.transfer_data
            input_numero_conta.set num
            input_digito_conta.set digit
            input_valor_trans.set rand(1..saldo)
            input_descricao.set transfer_data[:descricao]
        end

        def no_balance_transfer(num, digit, saldo)
            transfer_data = Factory::Dynamic.transfer_data
            input_numero_conta.set num
            input_digito_conta.set digit
            valor = rand(saldo..Float::MAX)
            input_valor_trans.set valor
            input_descricao.set transfer_data[:descricao]
        end

        def negative_transfer(num, digit)
            transfer_data = Factory::Dynamic.transfer_data
            input_numero_conta.set num
            input_digito_conta.set digit
            input_valor_trans.set rand(-Float::MAX..-1)
            input_descricao.set transfer_data[:descricao]
        end

        def invalid_account_transfer(saldo)
            transfer_data = Factory::Dynamic.transfer_data
            input_numero_conta.set transfer_data[:numero_conta]
            input_digito_conta.set rand(1..9)
            input_valor_trans.set rand(1..saldo)
            input_descricao.set transfer_data[:descricao]
        end

    end
end