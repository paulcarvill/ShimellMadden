source 'https://rubygems.org'

ruby "2.1.2"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'
gem 'rake'

gem 'capistrano-rvm'

gem 'rails_12factor'

gem 'minitest'

group :development do
	gem "wraith"
	gem "phantomjs"
	# gem 'sqlite3'
	gem 'mysql2', '>= 0.3'
	gem 'capistrano', '3.2.1', require: false
	gem 'capistrano-rails',   '~> 1.1', require: false
	gem 'capistrano-bundler', '~> 1.1', require: false
end

group :development, :test do
	gem 'capybara_minitest_spec'
	gem 'selenium-webdriver'
end

group :production do
    gem 'mysql2', '>= 0.3'
    gem 'unicorn'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'
gem 'neat'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 2.2.1'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

gem 'json', '1.7.7'

gem "rails-backbone"

gem 'paperclip', github: 'thoughtbot/paperclip'
gem 'paperclip-meta'

gem 'will_paginate', '~> 3.0'

gem 'devise'
gem 'activeadmin', github: 'gregbell/active_admin'
gem 'active_admin_editor'
gem 'active_skin'

gem 'shopify_theme'
