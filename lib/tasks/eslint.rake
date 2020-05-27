# frozen_string_literal: true

namespace :eslint do
  desc 'Run eslint'
  task run: :environment do
    sh('yarn run eslint "app/javascript/**/*.js"')
  end

  desc 'Run eslint with autocorrect'
  task auto_correct: :environment do
    sh('yarn run eslint "app/javascript/**/*.js" --fix')
  end
end
