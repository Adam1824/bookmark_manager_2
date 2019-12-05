require_relative './setup_test_database'

ENV['RACK_ENV'] = 'test'
ENV['ENVIRONMENT'] = 'test'
# require 'rake'
#
# # Load the Rakefile
# Rake.application.load_rakefile
#
# # Then, in the RSpec config...
# RSpec.configure do |config|
#   config.before(:each) do
#     Rake::Task['setup'].execute
#   end
# end
RSpec.configure do |config|
  config.before(:each) do
    setup_test_database
  end
end

require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'capybara'
require 'capybara/rspec'
require 'rspec'

Capybara.app = BookmarkManager

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.shared_context_metadata_behavior = :apply_to_host_groups
end
