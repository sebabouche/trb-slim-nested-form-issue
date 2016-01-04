source 'https://rubygems.org'



### RAILS INITIAL GEMS

gem 'rails', '4.2.5'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

gem "therubyracer", platform: "ruby"
gem "thin"

gem "slim"
gem "slim-rails"

gem 'simple_form'
gem "responders"
gem "rails-timeago"
gem "email_validator"
gem "bootstrap-sass"


### TRB GEMS

gem "trailblazer"
gem "trailblazer-rails"
gem "representable"
gem "reform"

gem "virtus"

gem "tyrant"

gem "cells"
gem "cells-slim"
gem "kaminari-cells"

gem "paperdragon"
gem "file_validators"
gem "roar" 



group :development do
  gem "binding_of_caller", platforms: [:mri_21]
  gem "quiet_assets"
  gem "rails_layout"
end

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'

  gem 'rspec-rails'
  gem 'rspec-cells'
  gem 'rspec-trailblazer', git: "https://github.com/trailblazer/rspec-trailblazer.git"

  gem 'capybara'
  gem 'selenium-webdriver'

  gem 'database_cleaner'
  gem 'launchy'
end

group :test do
  gem "memory_test_fix"
  gem "sqlite3"
end

group :production do
  gem 'rails_12factor'
  gem 'puma'
end
