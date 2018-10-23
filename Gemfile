# frozen_string_literal: true
# rubocop:disable LineLength
source 'https://rubygems.org'
ruby '2.5.0'
# Enforce git to transmitted via https.
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'activeadmin'
gem 'bootstrap-sass'
gem 'cocoon'
gem 'coffee-rails', '~> 4.2'
gem 'devise_token_auth'
gem 'font-awesome-rails'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'jquery-datatables-rails', git: 'git://github.com/rweng/jquery-datatables-rails.git'
gem 'omniauth'
gem 'puma', '~> 3.0'
gem 'rack-cors'
gem 'rails', '~> 5.0.7'
gem 'rake', '< 11.0'
gem 'responders'
gem 'sass-rails', '~> 5.0'
gem 'sqlite3'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'niceql'
gem 'active_model_serializers'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'Selenium'
  gem 'rubocop-rspec'
  gem 'byebug', platform: :mri
  gem 'capybara'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem "fake_stripe", "~> 0.1"
  gem "factory_bot_rails", "~> 4.10"
  gem "rspec-rails", "~> 3.7"
  gem 'simplecov', :require => false
  gem 'selenium-client'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'rails-controller-testing'
  gem 'ruby-prof'
  gem 'faker', :require => false
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
  gem 'rubocop'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
