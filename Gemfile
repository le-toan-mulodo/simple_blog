source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.rc2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0.rc2'
gem 'bootstrap-sass'
gem 'bcrypt-ruby', '3.0.1'
gem 'will_paginate'
gem 'bootstrap-will_paginate'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
# bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', :require => false
end
gem  'activesupport', '4.0.0.rc2'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
gem 'selenium-webdriver'
group :development, :test do
  #gem 'cucumber-rails', '1.4.0', require: false
  #gem 'database_cleaner', github: 'bmabey/database_cleaner'
  gem 'mysql2'  
  gem 'capybara-screenshot'  
  gem 'sqlite3'
  gem 'database_cleaner', git: "https://github.com/scottwillson/database_cleaner"
  gem 'capybara'
  gem 'factory_girl_rails', '1.1.rc1'
  gem "rspec-rails", ">= 2.0.0"   
  gem 'cucumber-rails', '1.4.0', :require => false
end
# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
