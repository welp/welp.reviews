GraphiQL::Rails.config.headers['Authorization'] = -> (context) { "Token #{User.first.token}" }
