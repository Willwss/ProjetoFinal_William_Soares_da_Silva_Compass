require 'faker'

module Factory
    class Dynamic

        def self.register_fake
            {
                nome: Faker::Internet.username,
                email: Faker::Internet.email,
                senha: Faker::Internet.password
                #(min_length:6)
            }
        end

    end
end
