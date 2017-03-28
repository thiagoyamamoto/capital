source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use sqlite3 as the database for Active Record
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
#gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
#gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'jquery-ui-rails'

gem 'devise'
gem 'rails-i18n'
gem 'devise-i18n'
#gem 'twitter-bootstrap-rails'
gem 'rails-assets-bootstrap', source: 'https://rails-assets.org'
gem 'rails-assets-notifyjs', source: 'https://rails-assets.org' #NotifyJS
gem 'rails-assets-bootbox', source: 'https://rails-assets.org' #confirmacao
gem 'pundit'
gem 'enum_help'
gem 'money-rails'
gem "paperclip", "~> 5.0.0"
gem 'bootstrap_sb_admin_base_v2'
gem 'email_validator'
gem 'date_validator'
gem 'kaminari'
gem "cocoon"
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'sqlite3'

  #Deploy
  gem 'capistrano', '~> 3.7'
 	gem 'capistrano-bundler', '~> 1.2'
 	gem 'capistrano-rails', '~> 1.2'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
	#gem 'pg'
	gem 'mysql2'
end
