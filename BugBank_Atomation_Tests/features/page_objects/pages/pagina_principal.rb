require_relative '../sections/modal_login'
require_relative '../sections/modal_registro'

module Pages
    class PaginaPrincipal < SitePrism::Page
        set_url '/'

        section :modal_login, Sections::Login, '.card__login'
        section :modal_registro, Sections::Registro, '.card__register'
        element :label_mensagem, '#modalText'
        element :btn_fechar_modal_sucesso, '#btnCloseModal'
        element :btn_requisitos, '.login__link a'
        element :texto_modal, '#modalText'

        def login_msg_verify(mensagem)
            if (modal_login.avisos_login[0].text || modal_login.avisos_login[1].text) == mensagem
                return true
            else 
                return false
            end
        end

        def register_msg_verify(mensagem)
            for valor in modal_registro.avisos_registro
                if valor.text == mensagem
                    return true
                end
            end
        end

        def click_inputs_elements_login
            for i in 0..1
                modal_login.inputs_elements_login[i].click
            end
        end

        def balance_off
            begin
                if modal_registro.btn_conta_sem_saldo.visible?
                    modal_registro.btn_cadastrar.click
                end
            rescue Capybara::ElementNotFound
                modal_registro.btn_conta_com_saldo.click
                modal_registro.btn_cadastrar.click
            end
        end

        def balance_on
            begin
                if modal_registro.btn_conta_sem_saldo.visible?
                    modal_registro.btn_conta_sem_saldo.click
                    modal_registro.btn_cadastrar.click
                end
            rescue Capybara::ElementNotFound
                modal_registro.btn_cadastrar.click
            end
        end

        def fill_invalid_email_login
            user_login = Factory::Static.static_data('user_for_invalid_login')
            modal_login.input_email.set user_login['email']
            modal_login.input_senha.set @senha
        end

        def fill_invalid_pass_login
            user_login = Factory::Static.static_data('user_for_invalid_login')
            modal_login.input_email.set @email
            modal_login.input_senha.set user_login['password']
        end

        def fill_invalid_register
            user_register = Factory::Static.static_data('user_for_invalid_register')
            modal_registro.input_email.set user_register['email']
            modal_registro.input_name.set user_register['name']
            modal_registro.input_password.set user_register['password']
            modal_registro.input_confirmation_pass.set user_register['password_confirmation']
        end

        def fill_invalid_register_passwords
            user_register = Factory::Static.static_data('user_for_invalid_register')
            user_register_email = Factory::Static.static_data('user_for_register')
            modal_registro.input_email.set user_register_email['email']
            modal_registro.input_name.set user_register['name']
            modal_registro.input_password.set user_register['password']
            modal_registro.input_confirmation_pass.set user_register['password_confirmation']
        end

        def register_acc_balance_on
            user_data = Factory::Dynamic.user_data
            @email = user_data[:email]
            @nome = user_data[:nome]
            @senha = user_data[:senha]
            modal_login.btn_registrar.click
            #REGISTRAR
            modal_registro.input_email.set @email 
            modal_registro.input_name.set @nome
            modal_registro.input_password.set @senha
            modal_registro.input_confirmation_pass.set @senha
            modal_registro.btn_conta_sem_saldo.click
            modal_registro.btn_cadastrar.click
            wait_until_texto_modal_visible
            btn_fechar_modal_sucesso.click   
        end

        def register_acc_balance_off
            user_data = Factory::Dynamic.user_data
            email = user_data[:email]
            nome = user_data[:nome]
            senha = user_data[:senha]
            #REGISTRAR SEM SALDO
            modal_registro.input_email.set email 
            modal_registro.input_name.set nome
            modal_registro.input_password.set senha
            modal_registro.input_confirmation_pass.set senha
        end

        def login_acc
            #LOGAR
            modal_login.input_email.set @email
            modal_login.input_senha.set @senha
        end

        def register_and_login_acc
            register_acc_balance_on
            login_acc
            modal_login.btn_acessar.click
        end

        def register_for_transfer
            modal_login.btn_registrar.click
            register_acc_balance_off
            modal_registro.btn_cadastrar.click
            
            txt_conta = texto_modal.text.match(/(\d+)-(\d+)/)
            conta = {
                num_conta: txt_conta[1],
                digito: txt_conta[2]
            }
            return conta
        end

        def wait_for_login
            wait_until_modal_login_visible
        end
         
    end
end

