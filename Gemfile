source 'https://rubygems.org'
gem 'rails', '3.2.8'
gem 'sqlite3', :group => [:development, :test]
gem 'pg', :group => :production
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
group :production do
  gem 'thin'
end
gem 'jquery-rails'
gem "rspec-rails", ">= 2.11.0", :group => [:development, :test]
gem "capybara", ">= 1.1.2", :group => :test
gem "email_spec", ">= 1.2.1", :group => :test
gem "cucumber-rails", ">= 1.3.0", :group => :test, :require => false
gem "database_cleaner", ">= 0.8.0", :group => :test
gem "launchy", ">= 2.1.2", :group => :test
gem "compass-rails", ">= 1.0.3", :group => :assets
gem "zurb-foundation", ">= 3.0.9"
gem "sendgrid", ">= 1.0.1"
gem "devise", ">= 2.1.2"
gem "devise_invitable", ">= 1.0.3"
gem "cancan", ">= 1.6.8"
gem "rolify", ">= 3.2.0"
gem "hub", ">= 1.10.2", :require => nil, :group => [:development]
gem 'twilio-ruby'


group :development do
  gem 'guard'
	gem 'guard-livereload'
end
