# frozen_string_literal: true

# rubocop:disable LineLength
source 'https://rubygems.org'
ruby '2.5.0'

# Enforce git to transmitted via https.
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bootstrap-sass'
gem 'cocoon'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'puma', '~> 3.0'
gem 'rack-cors'
gem 'rails', '~> 5.0.7'
gem 'rake', '< 11.0'
gem 'responders'
gem 'sass-rails', '~> 5.0'
gem 'sqlite3'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'capybara'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'factory_bot'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'rspec-rails', '~> 2.0'
  gem 'rubocop'
  gem 'Selenium'
  gem 'selenium-client'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
end

group :development do
  gem 'brakeman'
  gem 'eefgilm'
  gem 'htmlbeautifier'
  gem 'listen', '~> 3.0.5'
  gem 'pry-byebug'
  gem 'ruby-beautify'
  gem 'rubycritic', require: false
  gem 'rufo'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
