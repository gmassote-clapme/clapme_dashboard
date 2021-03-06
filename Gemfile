source 'http://rubygems.org'

## Rails default gems
#########################
ruby '2.1.2'
gem 'rails', 					'4.1.1'
gem 'rails-observers'

## ASSETS
#
gem 'sass-rails' 									# Use SASS in projects
gem 'jquery-rails' 								# Use jquery as the JavaScript library
gem 'therubyracer',			:platforms => :ruby # Use Uglifier as compressor for JavaScript assets
gem 'uglifier',				'>= 1.3.0'
gem 'yui-compressor' 								# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks' 									# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', 				'~> 1.2'

# By env
group :development do
	gem 'spring'
end

group :doc do
  gem 'sdoc', 			require: false
end

## Clapme projects gems
#########################
gem 'clapme', 				'1.0.0.75', github: 'clapme/clapme', branch: 'master'

## Third gems
#########################
# Authorization
gem 'pundit',					'~> 0.3.0'
# Integration
gem 'aws-sdk',					'~> 1.53.0'
gem 'aws-ses', 				'~> 0.5.0', :require => 'aws/ses'
gem 'paypal-sdk-rest',		'~> 0.7.0'
gem 'pusher',					'~> 0.14.1'
# Dev ops
gem 'appsignal'
gem 'newrelic_rpm'
gem 'informant-rails'
# Assets
gem 'bootstrap-validator-rails'

# By env
group :production, :stage do
  gem 'rails_12factor'
  gem 'unicorn'
  gem 'pg'
end

group :development do
  gem 'mysql2', 				'~> 0.3.15'
  gem 'better_errors', 		'>= 0.3.2'
  gem 'binding_of_caller', 	'>= 0.6.8'
  gem 'quiet_assets'
  gem 'meta_request'
end

group :test do
  gem 'sqlite3'
  gem 'rspec-rails',			'~> 3.0.0'
  gem 'capybara',				'~> 2.4.1'
  gem 'capybara-email',		'~> 2.4.0'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'codeclimate-test-reporter'
end

# Css Live Reload
# group :development do
#   gem 'guard', 				'>= 2.2.2', :require => false
#   gem 'guard-livereload',   :require => false
#   gem 'rack-livereload'
#   gem 'rb-fsevent',         :require => false
# end

gem 'bootstrap-generators', '~> 3.1.1'