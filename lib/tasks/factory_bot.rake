# frozen_string_literal: true

# https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md#linting-factories
namespace :factory_bot do
  desc 'Verify that all FactoryBot factories are valid'
  task lint: :environment do
    if Rails.env.test?
      require 'factory_bot_rails'
      print 'Linting factories...'

      # Make sure migrations have run
      begin
        ActiveRecord::Migration.maintain_test_schema!
      rescue ActiveRecord::PendingMigrationError => e
        puts e.to_s.strip
        exit 1
      end

      # Run in transaction to allow easy clean up
      ActiveRecord::Base.transaction do
        FactoryBot.lint
        raise ActiveRecord::Rollback
      end

      puts ' done'
    else
      system("bundle exec rake factory_bot:lint RAILS_ENV='test'")
      raise if $CHILD_STATUS.exitstatus.nonzero?
    end
  end
end
