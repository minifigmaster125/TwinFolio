source 'https://rubygems.org'

#heroku requires
ruby '2.0.0'
gem 'rails_12factor', group: :production

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

gem 'paperclip', '~> 3.4.2'
# Use postgresql as the database for Active Record
gem 'pg'


# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

gem 'zurb-foundation', '~> 4.0.0' 

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Use Rails Admin for Administration
gem 'rails_admin'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

#Easier testing for db associations
gem 'shoulda-matchers'
#Pagination
gem'will_paginate', '~> 3.0'

#for rails variables in js
gem 'gon'

group :development, :test do
  gem 'rspec-rails'
end 

group :test do
  gem 'capybara'
  gem 'guard-rspec'
  gem 'factory_girl_rails'
  require 'rbconfig'
  gem 'wdm', '>= 0.1.0' if RbConfig::CONFIG['target_os'] =~ /mswin|mingw/i
  
end
group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
 gem 'bcrypt-ruby', :git => 'git://github.com/hananamar/bcrypt-ruby.git', :require => 'bcrypt'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]


gem "devise"
