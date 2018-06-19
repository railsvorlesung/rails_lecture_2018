source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
gem 'pg'
gem 'mysql2'

# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'less-rails'
gem 'therubyracer'

# Use Uglifier as compressor for JavaScript assets
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'uglifier', '>= 1.3.0'

gem 'haml'
gem 'redcarpet'

# EU Cookie Law
gem 'cookieconsent'

# Simple Form
gem 'simple_form'

gem 'flag_shih_tzu'


gem 'paperclip'

gem 'aws-sdk-s3'
gem 'fog'


# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
#

gem 'rest-client'

# Image Transformation
gem 'mini_magick'

# PDF 
gem 'prawn'

# Admin Backend
gem 'activeadmin'

# Pagination mit Boostrap Styling
gem 'kaminari'
gem 'kaminari-bootstrap'

# Controller actions je nach COntent type
gem "responders"

# Login and User Management
gem 'devise'
gem 'omniauth'
gem 'omniauth-github'
gem 'devise-i18n'
gem 'rails-i18n'

gem 'jquery-rails'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

gem 'letter_opener_web', '~> 1.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'envyable', require: 'envyable/rails-now'

  gem 'guard-rspec'
  gem 'shoulda-matchers', git: 'https://github.com/thoughtbot/shoulda-matchers'

  # Bessere Fehlermeldungen mit Konsole
  gem 'better_errors'
  gem 'binding_of_caller'

  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'

  gem 'database_cleaner'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'
  # gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
