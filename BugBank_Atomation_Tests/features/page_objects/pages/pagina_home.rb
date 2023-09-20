require_relative '../sections/home_btns'

module Pages
    class PaginaHome < SitePrism::Page
        set_url '/home'

        section :btn_funcionalidades, Sections::HomeButtons, '.geApET'
        element :info_pagina_transferencia, 'p[class^=transfer__TextInformation]'
        element :info_pagina_extrato, 'div[class^=bank-statement__ContainerContent]'
        element :em_desenvolvimento, '#modalText'
        element :saldo, '#textBalance'

        def transfer_click
            btn_funcionalidades.transferencia.click
            wait_until_info_pagina_transferencia_visible
        end

        def bank_statement_click
            btn_funcionalidades.extratos.click
            wait_until_info_pagina_extrato_visible
        end
    end
end