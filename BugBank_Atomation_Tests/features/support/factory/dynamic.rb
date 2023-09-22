require 'faker'

module Factory
    class Dynamic
        def self.transfer_data
            {
                numero_conta: Faker::Bank.account_number(digits: 3),
                descricao: Faker::Lorem.paragraph
            }
        end

        def self.user_data
            {
                email: Faker::Internet.email,
                nome: Faker::Name.name,
                senha: Faker::Internet.password
            }
        end
    end
end