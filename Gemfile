# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# Core
gem 'pg'
gem 'puma'
gem 'rails'
gem 'sidekiq'

# FrontEnd
gem 'sass-rails'
gem 'webpacker'

# Utilities
gem 'aws-healthcheck'

group :test do
  gem 'factory_bot_rails'

  gem 'capybara'
  gem 'simplecov', require: false
  gem 'webdrivers'

  gem 'erb_lint', require: false
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false

  gem 'brakeman', require: false
  gem 'bundle-audit', require: false
end

group :development do
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'web-console'

  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
end

group :development, :test do
  gem 'dotenv-rails'
  gem 'rspec-rails' # If you move this to the test group, you loose the rake rspec task (sliently ignored)
end
