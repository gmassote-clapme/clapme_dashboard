# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

require 'capybara/rspec'
require 'capybara/email/rspec'
require 'paperclip/matchers'
require 'codeclimate-test-reporter'

# Support features helpers
# Dir[Rails.root.join("spec/support/controllers/*.rb")].each { |f| require f }

ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

ENV['CODECLIMATE_REPO_TOKEN'] = ''
CodeClimate::TestReporter.start

RSpec.configure do |config|

  config.use_transactional_fixtures = false
  config.infer_base_class_for_anonymous_controllers = false

  config.include FactoryGirl::Syntax::Methods
  config.include Paperclip::Shoulda::Matchers

  I18n.default_locale = :'pt-BR'

end
