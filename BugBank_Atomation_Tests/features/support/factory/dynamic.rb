require 'faker'

module Factory
    class Dynamic
        def self.transfer_data
            {
                valor: Faker::Number.between(from: 1, to: 1000)
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