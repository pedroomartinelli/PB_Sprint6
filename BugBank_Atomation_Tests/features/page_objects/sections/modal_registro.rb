module Sections
    class Registro < SitePrism::Section
        element :btn_saldo, '#toggleAddBalance'
        element :input_email, '.card__register input[name="email"]'
        element :input_name, '.card__register input[name="name"]'
        element :input_password, '.card__register input[name="password"]'
        element :input_confirmation_pass, '.card__register input[name="passwordConfirmation"]'
        element :btn_cadastrar, '.CMabB'
        element :btn_conta_sem_saldo, '.kIwoPV'
        element :btn_conta_com_saldo, '.hsmFIT'
        element :btn_requisitos, '.login__link a'
        elements :avisos_registro, '.card__register .input__warging'
        elements :register_inputs, '.card__register .input__default'
    end
end
