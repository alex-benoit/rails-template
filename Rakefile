# frozen_string_literal: true

# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

begin
  require 'rubocop/rake_task'
  RuboCop::RakeTask.new
rescue LoadError
  nil
end

task(:default).clear
task default: [
  'factory_bot:lint',
  'rubocop:auto_correct',
  'erblint:auto_correct',
  'stylelint:auto_correct',
  'eslint:auto_correct',
  :spec
]
