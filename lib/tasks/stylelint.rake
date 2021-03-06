# frozen_string_literal: true

namespace :stylelint do
  desc 'Run stylelint with autocorrect'
  task :run do
    sh('yarn run stylelint "app/assets/stylesheets/**/*.scss" --syntax scss --formatter verbose')
  end

  desc 'Run stylelint with autocorrect'
  task :auto_correct do
    sh('yarn run stylelint "app/assets/stylesheets/**/*.scss" --syntax scss --fix')
  end
end
