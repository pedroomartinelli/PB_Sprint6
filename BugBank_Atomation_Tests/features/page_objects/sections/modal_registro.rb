module Sections
    class Registro < SitePrism::Section
        element :btn_saldo, '#toggleAddBalance'
        element :input_email, '.card__register input[name="email"]'
        element :input_name, '.card__register input[name="name"]'
        element :input_password, '.card__register input[name="password"]'
        element :input_confirmation_pass, '.card__register input[name="passwordConfirmation"]'
        element :btn_cadastrar, '.CMabB'
        element :btn_conta_sem_saldo, '.kIwoPV'
        element :btn_conta_com_saldo, '.fLTrsw'
        element :btn_voltar_para_login, '#btnBackButton'
    end
end
