# frozen_string_literal: true

namespace :erblint do
  desc 'Run ERB lint'
  task :run do
    sh('bundle exec erblint "app/**/*.html.erb"')
  end

  desc 'Run ERB lint with autocorrect'
  task :auto_correct do
    sh('bundle exec erblint "app/**/*.html.erb" --autocorrect')
  end
end
