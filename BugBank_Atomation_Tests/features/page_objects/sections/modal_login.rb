module Sections
    class Login < SitePrism::Section
        element :modal_login, '.card__login'
        element :input_email, '.card__login input[name="email"]'
        element :input_senha, '.card__login input[name="password"]'
        element :btn_acessar, '.otUnI'
        element :btn_registrar, '.ihdmxA'
        element :warning, '.kOeYBn .input__warging'
    end
end