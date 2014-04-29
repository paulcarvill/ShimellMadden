source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.4'
gem 'rake'

gem 'capistrano-rvm'

gem 'rails_12factor'

group :development do
	gem 'sqlite3'
	gem 'capistrano', '~> 3.0', require: false
	gem 'capistrano-rails',   '~> 1.1', require: false
	gem 'capistrano-bundler', '~> 1.1', require: false
end

group :production do
    gem 'mysql2', '>= 0.3'
    gem 'unicorn'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

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

gem 'json', '1.5.5'