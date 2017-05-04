GraphiQL::Rails.config.headers['Authorization'] = -> { "Token #{User.first.token}" }
