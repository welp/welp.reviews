source 'https://rubygems.org'
ruby "2.4.0"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.0'

# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'

# GraphQL!
gem 'graphql', '~> 1.5'
gem 'graphiql-rails', '~> 1.4'

# Serialize with ActiveModel::Serializers
gem 'active_model_serializers', '~> 0.10'

# Easily paginate with Link headers
gem 'kaminari'
gem 'api-pagination', '~> 4.5'

# Use Puma as the app server
gem 'puma', '~> 3.7'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  # Call 'binding.pry' anywhere in the code to stop execution and get a debugger console
  gem 'pry-suite', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
