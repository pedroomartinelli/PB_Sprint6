module Sections
    class Login < SitePrism::Section
        element :modal_login, '.card__login'
        element :input_email, '.card__login input[name="email"]'
        element :input_senha, '.card__login input[name="password"]'
        element :btn_acessar, '.login__buttons .otUnI'
        element :btn_registrar, '.login__buttons .ihdmxA'
        elements :avisos_login, '.card__login .input__warging'
        elements :inputs_elements_login, '.card__login .input__default'
        element :btn_requisitos, '.login__link a'

        def wait_btn_acessar_visible
            wait_until_btn_acessar_visible
        end
    end
end