require_relative '../sections/transacao'

module Pages
    class PaginaExtrato < SitePrism::Page
        set_url 'bank-statement'

        section :dados_transacao, Sections::Transacao, '.fUCxBP'
        element :saldo, '#textBalanceAvailable'
    end
end