require_relative '../sections/modal_login'
require_relative '../sections/modal_registro'

module Pages
    class PaginaPrincipal < SitePrism::Page
        set_url '/'

        section :modal_login, Sections::Login, '.card__login'
        section :modal_registro, Sections::Registro, '.card__register'
        element :label_mensagem, '#modalText'
        element :btn_fechar_modal_sucesso, '#btnCloseModal'        
    end
end
