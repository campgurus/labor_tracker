source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do


  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'pry-byebug'


  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'rspec-rails', '~> 3.0'
  gem 'rspec-activemodel-mocks'

  gem 'factory_girl_rails'
  # tests and runs specs for you automatically when it detects changes
  gem 'guard-rspec'

  gem 'oink'

  # Install a pre-commit hook to enforce code checks before commits
  gem "pre-commit"
end



group :development do
  gem 'brakeman', :require => false
    # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

end

group :test do
  gem "faker", "~> 1.4.3"
  # makes it easy to programatically simulate users’ interactions
  gem "capybara", "~> 2.4.3"
  gem "database_cleaner", "~> 1.3.0"
  gem "launchy", "~> 2.4.2"
  gem "selenium-webdriver", "~> 2.43.0"
  gem 'shoulda-matchers', '~> 2.6.2'
  gem "codeclimate-test-reporter", require: nil
  gem 'cucumber-rails', :require => false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Adding Bootstrap
gem 'bootstrap', '~> 4.0.0.alpha3'

# Help with forms
gem 'simple_form'

gem 'rails_admin', '~> 1.0'

gem 'devise'

gem "select2-rails"

gem 'cocoon'

gem 'rails_12factor'
