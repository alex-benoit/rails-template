# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# Core
gem 'pg'
gem 'puma'
gem 'rails'

# FrontEnd
gem 'sass-rails'
gem 'webpacker'

# Utilities
gem 'aws-healthcheck'

group :test do
  gem 'capybara'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
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
end
