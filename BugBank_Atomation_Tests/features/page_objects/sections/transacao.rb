module Sections
    class Transacao < SitePrism::Section
        element :data, '#textDateTransaction'
        element :descricao, '#textDescription'
        element :tipo, '#textTypeTransaction'
        element :valor, '#textTransferValue'
    end
end